{ mkDerivation, arm-mras-parse, arm-mras-types, base, directory
, filepath, haskell-src-exts, stdenv
}:
mkDerivation {
  pname = "arm-mras-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mras-parse arm-mras-types base directory filepath
    haskell-src-exts
  ];
  license = stdenv.lib.licenses.mit;
}
