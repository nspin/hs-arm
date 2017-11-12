#!/bin/sh

set -e

root=gen-test-out

expr='(import <nixpkgs> {}).callPackage ./. {}'

go_r() {
    attr="$1"
    dst="$root/$attr"
    nix-build -E "$expr" -A "$attr" -o "$dst"
}

go_rw() {
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

go_r xml.sysreg
go_r xml.a64
go_r xml.aarch32
go_r patched-a64
go_r patched-aarch32
go_r dtd-src.sysreg
go_r dtd-src.a64
go_r dtd-src.aarch32
go_r arm-mras-src
go_r harm-src
