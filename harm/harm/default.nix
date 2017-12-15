{ mkDerivation, base, harm-types, harm-values, stdenv }:
mkDerivation {
  pname = "harm";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base harm-types harm-values ];
  license = stdenv.lib.licenses.mit;
}
