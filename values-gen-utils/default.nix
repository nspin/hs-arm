{ mkDerivation, arm-mras-dtd-a64, arm-mras-dtd-aarch32
, arm-mras-dtd-sysreg, arm-mras-types, base, directory, filepath
, haskell-src-exts, stdenv
}:
mkDerivation {
  pname = "arm-mras-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mras-dtd-a64 arm-mras-dtd-aarch32 arm-mras-dtd-sysreg
    arm-mras-types base directory filepath haskell-src-exts
  ];
  license = stdenv.lib.licenses.mit;
}
