{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "arm-mras-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base ];
  license = stdenv.lib.licenses.mit;
}
