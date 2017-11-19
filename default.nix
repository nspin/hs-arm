{ callPackage, stdenv, lib, fetchurl, haskellPackages, binutils }:

let

  harmLib = callPackage ./lib.nix {};

in with harmLib; rec {

  inherit harmLib;

  arm-mras = callPackage ./arm-mras {
    inherit harmLib;
  };

  arm-binutils-tables = callPackage ./arm-binutils-tables {
    inherit harmLib;
  };

  arm-go-tables = callPackage ./arm-go-tables {
    inherit harmLib;
  };

  harm = haskellPackages.mkDerivation {
    pname = "harm";
    version = "0.1";
    src = harm-src;
    executableHaskellDepends = with haskellPackages; [
      base tagged arm-mras.types
    ];
    license = stdenv.lib.licenses.mit;
  };

  harm-gen-utils = haskellPackages.callPackage ./harm-gen-utils {
    arm-mras = arm-mras.values;
    arm-mras-types = arm-mras.types;
  };

  harm-src = mergeFrom ./harm [ "harm.cabal" "src" ] (stdenv.mkDerivation {
    name = "harm-src";
    utils = harm-gen-utils;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-harm $out
    '';
  });

}
