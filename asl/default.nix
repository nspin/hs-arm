{ mkDerivation, alex, arm-mras, array, base, deepseq, happy, lens
, mtl, stdenv, transformers
}:
mkDerivation {
  pname = "arm-mras-asl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras array base deepseq lens mtl transformers
  ];
  libraryToolDepends = [ alex happy ];
  testHaskellDepends = [
    arm-mras array base deepseq lens mtl transformers
  ];
  license = stdenv.lib.licenses.mit;
}
