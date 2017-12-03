{ callPackage, stdenv, fetchurl, haskellPackages, harmLib, arm-mras }:

with harmLib;

rec {

  values = haskellPackages.mkDerivation {
    pname = "harm";
    version = "0.1";
    src = values-src;
    executableHaskellDepends = with haskellPackages; [
      base tagged arm-mras.types
    ];
    license = stdenv.lib.licenses.mit;
  };

  values-gen-utils = haskellPackages.callPackage ./values-gen-utils {
    arm-mras = arm-mras.values;
    arm-mras-types = arm-mras.types;
  };

  values-src = mergeFrom ./values [ "harm.cabal" "src" ] (stdenv.mkDerivation {
    name = "harm-src";
    utils = values-gen-utils;
    builder = builtins.toFile "builder.sh" ''
      $utils/bin/gen-harm $out
    '';
  });

}
