#!/bin/sh

set -e

dst="$(dirname "$0")/gen"

out="$(nix-build -E '((import <nixpkgs> {}).callPackage ../../. {}).arm-binutils-tables.values-src' --no-out-link)"

rm -rf "$dst"
cp -r "$out/gen" "$dst"
chown -R "$(whoami)" "$dst"
chmod -R 755 "$dst"
