#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/../generated-sources"

mkdir -p "$root"

go_rw arm-binutils-tables.c
go_rw arm-binutils-tables.types-src
go_rw arm-binutils-tables.values-src

go_rw arm-go-tables.types-src
go_rw arm-go-tables.values-src

go_rw arm-mras.dtd-src.sysreg
go_rw arm-mras.dtd-src.a64
go_rw arm-mras.dtd-src.aarch32
go_rw arm-mras.values-src
