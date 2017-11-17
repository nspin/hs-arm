{ mkDerivation, arm-mras-dtd-a64, arm-mras-dtd-aarch32
, arm-mras-dtd-sysreg, arm-mras-types, attoparsec, base, bytestring
, Cabal, directory, exceptions, filepath, haskell-src-exts, HaXml
, monad-logger, mtl, pretty, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-mras-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mras-dtd-a64 arm-mras-dtd-aarch32 arm-mras-dtd-sysreg
    arm-mras-types attoparsec base bytestring Cabal directory
    exceptions filepath haskell-src-exts HaXml monad-logger mtl pretty
    text transformers
  ];
  license = stdenv.lib.licenses.mit;
}
