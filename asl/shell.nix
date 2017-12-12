with import <nixpkgs> {};
with callPackage ../. {};
with haskellPackages;

(mkDerivation {
  pname = "env";
  version = "0";
  src = ./shell.nix;
  libraryHaskellDepends = [
    values
    array base deepseq lens mtl transformers
  ];
  libraryToolDepends = [ alex happy ];
  license = stdenv.lib.licenses.mit;
}).env
