#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/../generated-sources"

rm -r "$root"
mkdir -p "$root"

go_rw arm-mras.dtd-src.sysreg
go_rw arm-mras.dtd-src.a64
go_rw arm-mras.dtd-src.aarch32
go_rw arm-mras.values-src

go_rw arm-asm-impl-tables.binutils.c
go_rw arm-asm-impl-tables.binutils.types-src
go_rw arm-asm-impl-tables.binutils.values-src

go_rw arm-asm-impl-tables.go.types-src
go_rw arm-asm-impl-tables.go.values-src
