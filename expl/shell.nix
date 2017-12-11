with import <nixpkgs> {};

let harm = callPackage ../. {};

in stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    (haskellPackages.ghcWithPackages (hp: with hp; [
        harm.arm-mras.types
        harm.arm-mras.values

        attoparsec
        bytestring
        deepseq
        directory
        exceptions
        filepath
        monad-logger
        mtl
        pretty
        text
        transformers
    ]))
  ];
}
