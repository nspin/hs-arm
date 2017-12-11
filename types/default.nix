{ mkDerivation, attoparsec, base, deepseq, exceptions, lens, stdenv
, text
}:
mkDerivation {
  pname = "arm-mras-types";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base deepseq exceptions lens text
  ];
  license = stdenv.lib.licenses.mit;
}
