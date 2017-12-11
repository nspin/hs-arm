{ mkDerivation, arm-mras-dtd-a64, arm-mras-dtd-aarch32
, arm-mras-dtd-sysreg, arm-mras-types, base, deepseq, directory
, exceptions, filepath, HaXml, lens, monad-logger, mtl, pretty
, stdenv, text, transformers
}:
mkDerivation {
  pname = "arm-mras-parse";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-dtd-a64 arm-mras-dtd-aarch32 arm-mras-dtd-sysreg
    arm-mras-types base deepseq directory exceptions filepath HaXml
    lens monad-logger mtl pretty text transformers
  ];
  license = stdenv.lib.licenses.mit;
}
