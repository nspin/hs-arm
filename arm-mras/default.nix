{ mkDerivation, arm-mras-types, arm-mras-values, base, stdenv }:
mkDerivation {
  pname = "arm-mras";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ arm-mras-types arm-mras-values base ];
  license = stdenv.lib.licenses.mit;
}
