{ mkDerivation, base, bytestring, directory, exceptions, filepath
, haskell-src-exts, monad-logger, mtl, stdenv, transformers, xml
}:
mkDerivation {
  pname = "arm-mra";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring directory exceptions filepath haskell-src-exts
    monad-logger mtl transformers xml
  ];
  license = stdenv.lib.licenses.mit;
}
