{ mkDerivation, alex, arm-mras-types, arm-mras-values, array, base
, deepseq, directory, filepath, happy, lens, mtl, stdenv
, transformers
}:
mkDerivation {
  pname = "arm-mras-asl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras-types arm-mras-values array base deepseq directory
    filepath lens mtl transformers
  ];
  libraryToolDepends = [ alex happy ];
  license = stdenv.lib.licenses.mit;
}
