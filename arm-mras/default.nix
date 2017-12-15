{ callPackage, lib, stdenv, fetchurl, haskellPackages, myLib }:

with myLib;

let

  specInfo = {
    sysreg = {
      name = "ARMv83A-SysReg-00bet5";
      rev = "4905a576-484e-42d9-95c8-d4fc8a2371e6";
      sha256 = "0irpvz3snqxqj394y5wjfr1zxmmdb63sb1airbnpnncanbzabjjk";
    };
    aarch64 = {
      name = "A64_v83A_ISA_xml_00bet5";
      rev = "7a897785-9279-4c4f-ac3d-727b13d365ff";
      sha256 = "0gjgdih57r5w9f5pdn43jmsy316idz4wx4zwbicmd6p8hl5isdmk";
    };
    aarch32 = {
      name = "AArch32_v83A_ISA_xml_00bet5";
      rev = "3505a833-ff2c-41aa-8fdc-a9c04b4be81e";
      sha256 = "1ncgm9nshmsn23169lqgqi750v4kd9qag76mzw4xdpbdw2vdz1ki";
    };
  };

in rec {

  arm-mras = haskellPackages.callPackage ./arm-mras {
    inherit arm-mras-types arm-mras-values;
  };

  arm-mras-dtd-gen = haskellPackages.callPackage ./arm-mras-dtd-gen {};

  arm-mras-types = haskellPackages.callPackage ./arm-mras-types {};

  arm-mras-parse = haskellPackages.callPackage ./arm-mras-parse {
    inherit arm-mras-types;
    arm-mras-dtd-sysreg = dtd.sysreg;
    arm-mras-dtd-aarch64 = dtd.aarch64;
    arm-mras-dtd-aarch32 = dtd.aarch32;
  };

  arm-mras-values-gen = haskellPackages.callPackage ./arm-mras-values-gen {
    inherit arm-mras-types arm-mras-parse;
  };

  arm-mras-values-src = mergeFrom ./arm-mras-values [ "arm-mras-values.cabal" "src" ] (stdenv.mkDerivation {
    name = "arm-mras-values-src";
    src = patched-aarch64;
    gen = arm-mras-values-gen;
    builder = builtins.toFile "builder.sh" ''
      $gen/bin/gen-arm-mras-values $out $src/ISA_v83A_A64_xml_00bet5
    '';
  });

  arm-mras-values = with haskellPackages; mkDerivation {
    pname = "arm-mras";
    version = "0.1";
    src = arm-mras-values-src;
    executableHaskellDepends = [
      base directory filepath arm-mras-types
    ];
    libraryHaskellDepends = [ base arm-mras-types ];
    license = stdenv.lib.licenses.mit;
  };

  raw = lib.flip lib.mapAttrs specInfo (k: v: fetchurl {
    inherit (v) name sha256;
    url = "https://developer.arm.com/-/media/developer/products/architecture/armv8-a-architecture/${v.name}.tar.gz?revision=${v.rev}&la=en";
  });

  xml = lib.flip lib.mapAttrs specInfo (k: v: stdenv.mkDerivation {
    name = "arm-xml-${v.name}-0.${v.rev}";
    src = builtins.getAttr k raw;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cd $out
      tar -xf $src
      for f in *.tar.gz; do
        tar -xf $f
        rm $f
      done
    '';
  });

  patched-aarch64 = stdenv.mkDerivation {
    name = xml.aarch64.name + "-patched";
    inherit (xml) aarch64;
    patch_dtd = ./patch-dtd.sh;
    patch_xml = ./patch-xml.sh;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -r $aarch64/* $out
      chmod -R 744 $out/*
      bash $patch_dtd $out
      bash $patch_xml $out
    '';
  };

  patched-aarch32 = stdenv.mkDerivation {
    name = xml.aarch32.name + "-patched";
    inherit (xml) aarch32;
    patch_dtd = ./patch-dtd.sh;
    patch_xml = ./patch-xml.sh;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -r $aarch32/* $out
      chmod -R 744 $out/*
      bash $patch_dtd $out
      bash $patch_xml $out
    '';
  };

  dtd-src =
    let
      genDtd = specName: specXML: stdenv.mkDerivation {
        name = "arm-mras-dtd-src-${specName}";
        version = "0.0-${arm-mras-dtd-gen.version}";
        inherit specName specXML;
        gen = arm-mras-dtd-gen;
        builder = builtins.toFile "builder.sh" ''
          source $stdenv/setup
          mkdir $out
          $gen/bin/gen-arm-mras-dtd 0.0 $specName $specXML/*5 $out
        '';
      };
    in {
      sysreg = genDtd "SysReg" xml.sysreg;
      aarch64 = genDtd "AArch64" patched-aarch64;
      aarch32 = genDtd "AArch32" patched-aarch32;
  };

  dtd =
    let
      buildDtd = suffix: src: with haskellPackages; mkDerivation {
        pname = "arm-mras-dtd-${suffix}";
        version = "0.1";
        inherit src;
        libraryHaskellDepends = [
          base HaXml
        ];
        license = stdenv.lib.licenses.mit;
      };
    in {
      sysreg = buildDtd "sysreg" dtd-src.sysreg;
      aarch64 = buildDtd "aarch64" dtd-src.aarch64;
      aarch32 = buildDtd "aarch32" dtd-src.aarch32;
    };

}
