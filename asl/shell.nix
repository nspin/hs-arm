with import <nixpkgs> {};
with callPackage ../. {};
with haskellPackages;

(mkDerivation {
  pname = "env";
  version = "0";
  src = ./shell.nix;
  libraryHaskellDepends = [
    types values
    array base bytestring deepseq directory exceptions filepath lens
    monad-logger mtl pretty text transformers
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [
  ];
  license = stdenv.lib.licenses.mit;
}).env
