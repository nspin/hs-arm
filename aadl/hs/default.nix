{ mkDerivation, alex, array, base, bytestring, deepseq, directory
, exceptions, filepath, happy, lens, monad-logger, mtl, pretty
, stdenv, text, transformers
}:
mkDerivation {
  pname = "aadl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    array base bytestring deepseq directory exceptions filepath lens
    monad-logger mtl pretty text transformers
  ];
  libraryToolDepends = [ alex happy ];
  license = stdenv.lib.licenses.mit;
}
