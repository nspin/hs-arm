with import <nixpkgs> {}; stdenv.mkDerivation {
  name = "env";
  buildInputs = with haskellPackages; [
    alex
  ];
}
