{ callPackage, stdenv, fetchurl, haskellPackages, myLib, arm-mras }:

with myLib;

rec {

  harm = haskellPackages.callPackage ./harm {
    inherit harm-types harm-values;
  };

  harm-types = haskellPackages.callPackage ./harm-types {};

  harm-values-gen = haskellPackages.callPackage ./harm-values-gen {
    inherit harm-types arm-mras;
  };

  harm-values-src = mergeFrom ./harm-values [ "harm-values.cabal" "src" ] (stdenv.mkDerivation {
    name = "harm-values-src";
    gen = harm-values-gen;
    builder = builtins.toFile "builder.sh" ''
      $gen/bin/gen-harm-values $out
    '';
  });

  harm-values = haskellPackages.mkDerivation {
    pname = "harm-values";
    version = "0.1";
    src = harm-values-src;
    libraryHaskellDepends = with haskellPackages; [
      base harm-types
    ];
    license = stdenv.lib.licenses.mit;
  };

}
