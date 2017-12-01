{ mkDerivation, base, deepseq, stdenv }:
mkDerivation {
  pname = "harm-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base deepseq ];
  license = stdenv.lib.licenses.mit;
}
