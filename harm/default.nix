{ mkDerivation, base, stdenv, tagged }:
mkDerivation {
  pname = "arm-mra";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base tagged ];
  license = stdenv.lib.licenses.mit;
}
