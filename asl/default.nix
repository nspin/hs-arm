{ mkDerivation, alex, arm-mras, arm-mras-types, array, base
, bytestring, deepseq, directory, exceptions, filepath, happy, lens
, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-mras-asl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras array base bytestring deepseq directory exceptions
    filepath lens monad-logger mtl pretty text transformers
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [
    arm-mras arm-mras-types array base bytestring deepseq directory
    exceptions filepath lens monad-logger mtl pretty text transformers
  ];
  license = stdenv.lib.licenses.mit;
}
