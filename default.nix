{ stdenv, lib, fetchurl, haskellPackages }:

let

  merge = drvs: stdenv.mkDerivation {
    name = "merge";
    inherit drvs;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      for drv in $drvs; do
        cp -rT $drv $out
      done
    '';
  };

  mergeFrom = parent: children: dst: stdenv.mkDerivation {
    name = "mergeFrom";
    inherit parent children dst;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -rT $dst $out
      for c in $children; do
        cp -r $parent/$c $out
      done
    '';
  };

in rec {

  harm = haskellPackages.mkDerivation {
    pname = "harm";
    version = "0.1";
    src = harm-src;
    executableHaskellDepends = with haskellPackages; [
      base tagged arm-mras-types
    ];
    license = stdenv.lib.licenses.mit;
  };

  arm-mras = haskellPackages.mkDerivation {
    pname = "arm-mras-dtd-gen-utils";
    version = "0.1";
    src = arm-mras-src;
    executableHaskellDepends = with haskellPackages; [
      base directory filepath arm-mras-types
    ];
    license = stdenv.lib.licenses.mit;
  };

  arm-mras-types = haskellPackages.callPackage ./arm-mras-types {};

  arm-mras-dtd-gen-utils = haskellPackages.callPackage ./arm-mras-dtd-gen-utils {};
  arm-mras-gen-utils = haskellPackages.callPackage ./arm-mras-gen-utils {
    inherit arm-mras-types;
    arm-mras-dtd-sysreg = dtd.sysreg;
    arm-mras-dtd-a64 = dtd.a64;
    arm-mras-dtd-aarch32 = dtd.aarch32;
  };
  harm-gen-utils = haskellPackages.callPackage ./harm-gen-utils {
    inherit arm-mras arm-mras-types;
  };

  harm-src = mergeFrom ./harm [ "harm.cabal" "src" ] (stdenv.mkDerivation {
    name = "harm-src";
    utils = harm-gen-utils;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-harm $out
    '';
  });

  arm-mras-src = mergeFrom ./arm-mras [ "arm-mras.cabal" "src" ] (stdenv.mkDerivation {
    name = "arm-mras-src";
    utils = arm-mras-gen-utils;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-arm-mras $out
    '';
  });

  xml =
    let
      fetchSpec = { name, rev, sha256 }: stdenv.mkDerivation {
        name = "arm-xml-${name}-0.${rev}";
        src = fetchurl {
          inherit name sha256;
          url = "https://developer.arm.com/-/media/developer/products/architecture/armv8-a-architecture/${name}.tar.gz?revision=${rev}&la=en";
        };
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
      };
    in {
      sysreg = fetchSpec {
        name = "ARMv83A-SysReg-00bet5";
        rev = "4905a576-484e-42d9-95c8-d4fc8a2371e6";
        sha256 = "0irpvz3snqxqj394y5wjfr1zxmmdb63sb1airbnpnncanbzabjjk";
      };
      a64 = fetchSpec {
        name = "A64_v83A_ISA_xml_00bet5";
        rev = "7a897785-9279-4c4f-ac3d-727b13d365ff";
        sha256 = "0gjgdih57r5w9f5pdn43jmsy316idz4wx4zwbicmd6p8hl5isdmk";
      };
      aarch32 = fetchSpec {
        name = "AArch32_v83A_ISA_xml_00bet5";
        rev = "3505a833-ff2c-41aa-8fdc-a9c04b4be81e";
        sha256 = "1ncgm9nshmsn23169lqgqi750v4kd9qag76mzw4xdpbdw2vdz1ki";
      };
    };

  patched-a64 = stdenv.mkDerivation {
    name = xml.a64.name + "-patched";
    inherit (xml) a64;
    patch = ./patch-dtd.sh;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -r $a64/* $out
      chmod -R 744 $out/*
      bash $patch $out
    '';
  };

  patched-aarch32 = stdenv.mkDerivation {
    name = xml.aarch32.name + "-patched";
    inherit (xml) aarch32;
    patch = ./patch-dtd.sh;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      cp -r $aarch32/* $out
      chmod -R 744 $out/*
      bash $patch $out
    '';
  };

  dtd-src =
    let
      genDtd = specName: specXML: stdenv.mkDerivation {
        name = "arm-mras-dtd-src-${specName}";
        version = "0.0-${arm-mras-dtd-gen-utils.version}";
        inherit specName specXML;
        utils = arm-mras-dtd-gen-utils;
        builder = builtins.toFile "builder.sh" ''
          source $stdenv/setup
          mkdir $out
          $utils/bin/gen-arm-mras-dtd 0.0 $specName $specXML/*5 $out
        '';
      };
    in {
      sysreg = genDtd "SysReg" xml.sysreg;
      a64 = genDtd "A64" patched-a64;
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
      a64 = buildDtd "a64" dtd-src.a64;
      aarch32 = buildDtd "aarch32" dtd-src.aarch32;
    };

}
