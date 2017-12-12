{ mkDerivation, arm-mras-dtd-a64, arm-mras-dtd-aarch32
, arm-mras-dtd-sysreg, arm-mras-types, base, deepseq, filepath
, HaXml, lens, stdenv
}:
mkDerivation {
  pname = "arm-mras-parse";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-dtd-a64 arm-mras-dtd-aarch32 arm-mras-dtd-sysreg
    arm-mras-types base deepseq filepath HaXml lens
  ];
  license = stdenv.lib.licenses.mit;
}
