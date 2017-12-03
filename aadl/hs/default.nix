{ mkDerivation, base, bytestring, deepseq, directory, exceptions
, filepath, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "aadl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring deepseq directory exceptions filepath monad-logger
    mtl pretty text transformers
  ];
  license = stdenv.lib.licenses.mit;
}
