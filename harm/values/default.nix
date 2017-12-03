{ mkDerivation, base, stdenv, tagged }:
mkDerivation {
  pname = "harm";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base tagged ];
  license = stdenv.lib.licenses.mit;
}
