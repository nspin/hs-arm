{ callPackage, stdenv, fetchurl, haskellPackages, myLib, arm-mras }:

with myLib;

rec {

  harm = haskellPackages.callPackage ./harm {
    inherit harm-types harm-tables;
  };

  harm-types = haskellPackages.callPackage ./harm-types {};

  harm-tables-gen = haskellPackages.callPackage ./harm-tables-gen {
    inherit harm-types arm-mras;
  };

  harm-tables-src = mergeFrom ./harm-tables [ "harm-tables.cabal" "src" ] (stdenv.mkDerivation {
    name = "harm-tables-src";
    gen = harm-tables-gen;
    builder = builtins.toFile "builder.sh" ''
      $gen/bin/gen-harm-tables $out
    '';
  });

  harm-tables = haskellPackages.mkDerivation {
    pname = "harm-tables";
    version = "0.1";
    src = harm-tables-src;
    libraryHaskellDepends = with haskellPackages; [
      base harm-types attoparsec
    ];
    license = stdenv.lib.licenses.mit;
  };

}
