{ callPackage, stdenv, fetchurl, fetchgit, haskellPackages, python3 }:

let

  myLib = callPackage ./lib.nix {};

in rec {

  arm-mras = callPackage ./arm-mras {
    inherit myLib;
  };

  asl = haskellPackages.callPackage ./asl {
    inherit (arm-mras) arm-mras;
  };

  test-asl = callPackage ./asl/test-asl.nix {
    inherit arm-mras;
  };

  harm = callPackage ./harm {
    inherit myLib;
    inherit (arm-mras) arm-mras;
  };

}
