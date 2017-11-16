{ mkDerivation, attoparsec, base, bytestring, Cabal, deepseq
, directory, exceptions, filepath, haskell-src-exts, language-c
, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-asm-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    attoparsec base bytestring Cabal deepseq directory exceptions
    filepath haskell-src-exts language-c monad-logger mtl pretty text
    transformers
  ];
  license = stdenv.lib.licenses.mit;
}
