with import <nixpkgs> {};

let harm = callPackage ../../. {};

in stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    (haskellPackages.ghcWithPackages (hp: with hp; [
        harm.arm-mras.types

        attoparsec
        bytestring
        Cabal
        deepseq
        directory
        exceptions
        filepath
        haskell-src-exts
        HaXml
        monad-logger
        mtl
        pretty
        text
        transformers
    ]))
  ];
}
