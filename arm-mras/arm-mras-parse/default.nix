{ mkDerivation, arm-mras-dtd-aarch32, arm-mras-dtd-aarch64
, arm-mras-dtd-sysreg, arm-mras-types, base, deepseq, filepath
, HaXml, lens, stdenv
}:
mkDerivation {
  pname = "arm-mras-parse";
  version = "0.1";
  doHaddock = false;
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-dtd-aarch32 arm-mras-dtd-aarch64 arm-mras-dtd-sysreg
    arm-mras-types base deepseq filepath HaXml lens
  ];
  license = stdenv.lib.licenses.mit;
}
