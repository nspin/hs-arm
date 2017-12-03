{ mkDerivation, arm-binutils-tables-types, base, deepseq, directory
, filepath, haskell-src-exts, language-c, stdenv
}:
mkDerivation {
  pname = "arm-binutils-tables-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-binutils-tables-types base deepseq directory filepath
    haskell-src-exts language-c
  ];
  license = stdenv.lib.licenses.mit;
}
