{ mkDerivation, arm-mras-types, arm-mras-values, base, containers
, lens, mtl, stdenv
}:
mkDerivation {
  pname = "arm-mras";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-types arm-mras-values base containers lens mtl
  ];
  license = stdenv.lib.licenses.mit;
}
