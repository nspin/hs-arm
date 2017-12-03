{ mkDerivation, array, base, bytestring, deepseq, directory
, exceptions, filepath, monad-logger, mtl, pretty, stdenv, text
, transformers
, alex
}:
mkDerivation {
  pname = "aadl";
  version = "0.1";
  src = ./.;
  libraryToolDepends = [ alex ];
  libraryHaskellDepends = [
    array base bytestring deepseq directory exceptions filepath
    monad-logger mtl pretty text transformers
  ];
  license = stdenv.lib.licenses.mit;
}
