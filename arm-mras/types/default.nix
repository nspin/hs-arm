{ mkDerivation, arm-mras-dtd-a64, arm-mras-dtd-aarch32
, arm-mras-dtd-sysreg, attoparsec, base, bytestring, Cabal, deepseq
, directory, exceptions, filepath, haskell-src-exts, HaXml
, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-mras-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-dtd-a64 arm-mras-dtd-aarch32 arm-mras-dtd-sysreg
    attoparsec base bytestring Cabal deepseq directory exceptions
    filepath haskell-src-exts HaXml monad-logger mtl pretty text
    transformers
  ];
  license = stdenv.lib.licenses.mit;
}
