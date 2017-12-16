with import <nixpkgs> {};
with callPackage ../. {};

stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    binutils-raw
    (haskellPackages.ghcWithPackages (hp: with hp; [
        harm.harm
        arm-mras
        asl
        filepath
        lens
    ]))
  ];
}
