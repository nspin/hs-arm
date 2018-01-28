{ mkDerivation, base, deepseq, lens, stdenv }:
mkDerivation {
  pname = "arm-mras-types";
  version = "0.1";
  doHaddock = false;
  src = ./.;
  libraryHaskellDepends = [ base deepseq lens ];
  license = stdenv.lib.licenses.mit;
}
