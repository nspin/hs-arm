with import <nixpkgs> {};

let arm-mras = callPackage ../. {};

in stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    (haskellPackages.ghcWithPackages (hp: with hp; [
        arm-mras.types
        arm-mras.values
        filepath
        lens
    ]))
  ];
}
