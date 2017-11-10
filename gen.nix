{ stdenv, fetchurl, haskellPackages }:

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

  genDtdFrom = { specName, specXML, dtd-gen-utils }: stdenv.mkDerivation {
    name = "arm-mra-dtd-src-${specName}";
    version = "0.${dtd-gen-utils.version}";
    dtdGenUtils = dtd-gen-utils;
    inherit specName specXML;
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      $dtdGenUtils/bin/gen-arm-mra-dtd 0.0 $specName $specXML/*5 $out
    '';
  };

  buildDtd = suffix: src: with haskellPackages; mkDerivation {
    pname = "arm-mra-dtd-${suffix}";
    version = "0.1";
    inherit src;
    libraryHaskellDepends = [
      base HaXml
    ];
    license = stdenv.lib.licenses.mit;
  };


in rec {

  dtd-gen-utils = haskellPackages.callPackage ./dtd-gen-utils {};
  src-gen-utils = haskellPackages.callPackage ./src-gen-utils {
    arm-mra-dtd-sysreg = dtd.sysreg;
    arm-mra-dtd-a64 = dtd.a64;
    arm-mra-dtd-aarch32 = dtd.aarch32;
  };

  xml = {

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

  dtd-src = {

    sysreg = genDtdFrom {
      specName = "SysReg";
      specXML = xml.sysreg;
      inherit dtd-gen-utils;
    };

    a64 = genDtdFrom {
      specName = "A64";
      specXML = patched-a64;
      inherit dtd-gen-utils;
    };

    aarch32 = genDtdFrom {
      specName = "AArch32";
      specXML = patched-aarch32;
      inherit dtd-gen-utils;
    };

  };

  dtd = {
    sysreg = buildDtd "sysreg" dtd-src.sysreg;
    a64 = buildDtd "a64" dtd-src.a64;
    aarch32 = buildDtd "aarch32" dtd-src.aarch32;
  };

  src = stdenv.mkDerivation rec {

    name = "arm-mra-src";
    version = "0.0";

    copyFiles = [./src ./README.md ./LICENSE];

    srcGenUtils = src-gen-utils;

    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      mkdir $out
      for f in $copyFiles; do
        cp -r $f $out/$(echo $f | cut -d - -f 2-)
      done
      $srcGenUtils/bin/gen-arm-mra-src $out/gen
    '';

  };

}
