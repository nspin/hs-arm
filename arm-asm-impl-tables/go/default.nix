{ callPackage, stdenv, fetchurl, fetchgit, haskellPackages, buildGoPackage , harmLib }:

with harmLib;

rec {

  types-gen-utils = haskellPackages.callPackage ./types-gen-utils {};

  types-src = mergeFrom ./types [ "arm-go-tables-types.cabal" "src" ] (stdenv.mkDerivation {
    name = "types-src";
    utils = types-gen-utils;
    inherit (arch) src;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-arm-go-tables-types $out $src
    '';
  });

  types = with haskellPackages; mkDerivation {
    pname = "arm-go-tables-types";
    version = "0.1";
    src = types-src;
    libraryHaskellDepends = [ base ];
    license = stdenv.lib.licenses.mit;
  };

  values-gen-utils = haskellPackages.callPackage ./values-gen-utils {
    arm-go-tables-types = types;
  };

  values-src = mergeFrom ./values [ "arm-go-tables.cabal" "src" ] (stdenv.mkDerivation {
    name = "values-src";
    utils = values-gen-utils;
    inherit (arch) src;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-arm-go-tables $out $src
    '';
  });

  values = with haskellPackages; mkDerivation {
    pname = "arm-go-tables";
    version = "0.1";
    src = values-src;
    libraryHaskellDepends = [
      base types
    ];
    license = stdenv.lib.licenses.mit;
  };

  pdf = fetchurl {
    name = "armv8_arm.pdf";
    url = "https://static.docs.arm.com/ddi0487/bb/DDI0487B_b_armv8_arm.pdf";
    sha256 = "28e6a511347368de5b9d60d01a19a18f062ae5eeaa0e56fdde2cb42b5beb018f";
  };

  arch = buildGoPackage rec {
    name = "arch-${version}";
    version = "${stdenv.lib.strings.substring 0 7 rev}";
    rev = "c319b3c35cc82ad104ce1308d983fdaed7a2fbcb";
    goPackagePath = "golang.org/x/arch";
    src = fetchgit {
      inherit rev;
      url = "https://github.com/golang/arch.git";
      sha256 = "1hsnwx3c6wps87s55a4wj7kklhj8dr0fq1gnwmmiqn0g1pkq48vc";
      fetchSubmodules = true;
    };
  };

  json = stdenv.mkDerivation {
    name = "inst.json";
    inherit pdf;
    buildInputs = [ arch.bin ];
    builder = builtins.toFile "builder.sh" ''
      source $stdenv/setup
      arm64spec $pdf
      mv inst.json $out
    '';
  };

}
