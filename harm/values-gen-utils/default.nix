{ mkDerivation, arm-mras, arm-mras-types, base, bytestring
, directory, exceptions, filepath, haskell-src-exts, stdenv
}:
mkDerivation {
  pname = "harm-gen-utils";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mras arm-mras-types base bytestring directory exceptions
    filepath haskell-src-exts
  ];
  license = stdenv.lib.licenses.mit;
}
