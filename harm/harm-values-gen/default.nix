{ mkDerivation, arm-mras, base, directory, filepath, harm-types
, haskell-src-exts, lens, stdenv
}:
mkDerivation {
  pname = "harm-values-gen";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    arm-mras base directory filepath harm-types haskell-src-exts lens
  ];
  license = stdenv.lib.licenses.mit;
}
