#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/../generated-sources"

mkdir -p "$root"

go_r arm-binutils-tables.c
go_r arm-binutils-tables.types-src
go_r arm-binutils-tables.values-src

go_r arm-go-tables.types-src
go_r arm-go-tables.values-src

go_r arm-mras.dtd-src.sysreg
go_r arm-mras.dtd-src.a64
go_r arm-mras.dtd-src.aarch32
go_r arm-mras.values-src
