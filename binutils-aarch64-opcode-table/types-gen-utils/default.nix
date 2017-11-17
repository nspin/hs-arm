{ mkDerivation, base, directory, filepath, haskell-src-exts
, language-c, pretty, stdenv
}:
mkDerivation {
  pname = "aarch64-opcode-table-types-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base directory filepath haskell-src-exts language-c pretty
  ];
  license = stdenv.lib.licenses.mit;
}
