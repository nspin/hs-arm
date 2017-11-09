{ mkDerivation, base, bytestring, Cabal, directory, filepath, HaXml
, pretty, stdenv
}:
mkDerivation {
  pname = "arm-mra-dtd-gen-util";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring Cabal directory filepath HaXml pretty
  ];
  license = stdenv.lib.licenses.mit;
}
