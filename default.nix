{ callPackage, stdenv, lib, fetchurl, haskellPackages, binutils }:

let

  harmLib = callPackage ./lib.nix {};

in with harmLib; rec {

  inherit harmLib;

  arm-mras = callPackage ./arm-mras {
    inherit harmLib;
  };

  harm = callPackage ./harm {
    inherit harmLib arm-mras;
  };

  arm-asm-impl-tables = {
    binutils = callPackage ./arm-asm-impl-tables/binutils { inherit harmLib; };
    go = callPackage ./arm-asm-impl-tables/go { inherit harmLib; };
  };

}
