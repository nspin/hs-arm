{ callPackage, stdenv, fetchurl, fetchgit, haskellPackages, buildGoPackage }:

rec {

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