#!/bin/sh

set -e

root=gen-test-out

expr='(import <nixpkgs> {}).callPackage ./. {}'

go_r() {
    attr="$1"
    if [ -n "$2" ]; then
        dst="$2"
    else
        dst="$attr"
    fi
    dst="$root/$dst"
    rm -f "$dst"
    nix-build -E "$expr" -A "$attr" -o "$dst"
}

go_rw() {
    attr="$1"
    if [ -n "$2" ]; then
        dst="$2"
    else
        dst="$attr"
    fi
    dst="$root/$dst"
    store_path="$(nix-build -E "$expr" --no-out-link -A "$attr")"
    echo "$store_path -> $dst"
    rm -rf "$dst"
    cp -r "$store_path" "$dst"
    chown -R nick "$dst"
    chmod -R 755 "$dst"
}

mkdir -p "$root"

go_r binutils-aarch64-opcode-table.c aarch64-tbl.h
go_r binutils-aarch64-opcode-table.types-src
go_r binutils-aarch64-opcode-table.values-src

go_r arm-mras.xml.sysreg
go_r arm-mras.xml.a64
go_r arm-mras.xml.aarch32
go_r arm-mras.patched-a64
go_r arm-mras.patched-aarch32
go_r arm-mras.dtd-src.sysreg
go_r arm-mras.dtd-src.a64
go_r arm-mras.dtd-src.aarch32
go_r arm-mras.values-src

go_r harm-src
