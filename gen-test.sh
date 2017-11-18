#!/bin/sh

set -e

expr='(import <nixpkgs> {}).callPackage ./. {}'

root="gen-test-out"

setup_dst () {
    attr="$1"
    if [ -n "$2" ]; then
        dst="$2"
    else
        dst="$attr"
    fi
    dst="$root/$dst"
    rm -f "$dst"
    echo "$dst"
}

go_r() {
    attr="$1"
    dst="$(setup_dst "$@")"
    echo "$dst"
    nix-build -E "$expr" -A "$attr" -o "$dst"
}

go_rw() {
    store_path="$(nix-build -E "$expr" --no-out-link -A "$attr")"
    dst="$(setup_dst "$@")"
    echo "$store_path -> $dst"
    cp -r "$store_path" "$dst"
    chown -R nick "$dst"
    chmod -R 755 "$dst"
}

mkdir -p "$root"

go_r arm-binutils-tables.c
go_r arm-binutils-tables.types-src
go_r arm-binutils-tables.values-src

go_r arm-mras.xml.sysreg
go_r arm-mras.xml.a64
go_r arm-mras.xml.aarch32
go_r arm-mras.patched-a64
go_r arm-mras.patched-aarch32
go_r arm-mras.dtd-src.sysreg
go_r arm-mras.dtd-src.a64
go_r arm-mras.dtd-src.aarch32
go_r arm-mras.values-src

go_r arm-go.json

go_r harm-src
