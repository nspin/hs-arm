{ mkDerivation, base, bytestring, Cabal, directory, filepath
, haskell-src-exts, HaXml, pretty, stdenv
}:
mkDerivation {
  pname = "arm-mras-dtd-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring Cabal directory filepath haskell-src-exts HaXml
    pretty
  ];
  license = stdenv.lib.licenses.mit;
}
