with import <nixpkgs> {};
with callPackage ../. {};

stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    (haskellPackages.ghcWithPackages (hp: with hp; [
        arm-mras
        asl
        filepath
        lens
    ]))
  ];
}
