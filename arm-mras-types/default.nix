{ mkDerivation, base, deepseq, lens, stdenv }:
mkDerivation {
  pname = "arm-mras-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base deepseq lens ];
  license = stdenv.lib.licenses.mit;
}
