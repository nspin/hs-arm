{ mkDerivation, alex, arm-mras, array, base, deepseq, directory
, filepath, happy, lens, mtl, stdenv, transformers
}:
mkDerivation {
  pname = "arm-mras-asl";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    arm-mras array base deepseq directory filepath lens mtl
    transformers
  ];
  libraryToolDepends = [ alex happy ];
  license = stdenv.lib.licenses.mit;
}
