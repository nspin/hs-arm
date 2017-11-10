set -e

expr='(import <nixpkgs> {}).callPackage ./gen.nix {}'

mkdir -p results/dtd
nix-build -E '(import <nixpkgs> {}).callPackage ./gen.nix {}' -A dtd-src.sysreg -o results/dtd/sysreg
nix-build -E "$expr" -A dtd-src.a64 -o results/dtd/a64
nix-build -E "$expr" -A dtd-src.aarch32 -o results/dtd/aarch32

mkdir -p results/xml
nix-build -E "$expr" -A xml.sysreg -o results/xml/sysreg
nix-build -E "$expr" -A xml.a64 -o results/xml/a64
nix-build -E "$expr" -A xml.aarch32 -o results/xml/aarch32
nix-build -E "$expr" -A patched-a64 -o results/xml/patched-a64
nix-build -E "$expr" -A patched-aarch32 -o results/xml/patched-aarch32
