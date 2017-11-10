{ mkDerivation, arm-mra-dtd-a64, arm-mra-dtd-aarch32
, arm-mra-dtd-sysreg, attoparsec, base, bytestring, Cabal
, directory, exceptions, filepath, haskell-src-exts, HaXml
, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-mra-src-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mra-dtd-a64 arm-mra-dtd-aarch32 arm-mra-dtd-sysreg attoparsec
    base bytestring Cabal directory exceptions filepath
    haskell-src-exts HaXml monad-logger mtl pretty text transformers
  ];
  license = stdenv.lib.licenses.mit;
}