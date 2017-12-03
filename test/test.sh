#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/nix-results"

mkdir -p "$root"

go_r arm-mras.xml.sysreg
go_r arm-mras.xml.a64
go_r arm-mras.xml.aarch32
go_r arm-mras.patched-a64
go_r arm-mras.patched-aarch32
go_r arm-mras.dtd-src.sysreg
go_r arm-mras.dtd-src.a64
go_r arm-mras.dtd-src.aarch32
go_r arm-mras.values-src

go_r arm-asm-impl-tables.binutils.c
go_r arm-asm-impl-tables.binutils.types-src
go_r arm-asm-impl-tables.binutils.values-src

go_r arm-asm-impl-tables.go.json
go_r arm-asm-impl-tables.go.arch.src
go_r arm-asm-impl-tables.go.types-src
go_r arm-asm-impl-tables.go.values-src

go_r harm.values-src
