{ mkDerivation, arm-go-tables-types, attoparsec, base, directory
, filepath, haskell-src-exts, stdenv, text
}:
mkDerivation {
  pname = "arm-go-tables-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-go-tables-types attoparsec base directory filepath
    haskell-src-exts text
  ];
  license = stdenv.lib.licenses.mit;
}
