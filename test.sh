#!/bin/sh

set -e

root=gen-test

expr='(import <nixpkgs> {}).callPackage ./gen.nix {}'

go() {
    attr="$1"
    dst="$root/$attr"
    store_path="$(nix-build -E "$expr" --no-out-link -A "$attr")"
    echo "$store_path -> $dst"
    rm -rf "$dst"
    cp -r "$store_path" "$dst"
    chown -R nick "$dst"
    chmod -R 755 "$dst"
}

mkdir -p "$root"

go dtd-src.sysreg
go dtd-src.a64
go dtd-src.aarch32
go xml.sysreg
go xml.a64
go xml.aarch32
go patched-a64
go patched-aarch32
