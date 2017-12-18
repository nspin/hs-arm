{ mkDerivation, base, deepseq, ghc-prim, stdenv }:
mkDerivation {
  pname = "harm-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base deepseq ghc-prim ];
  license = stdenv.lib.licenses.mit;
}
