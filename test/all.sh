#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/nix-results"

mkdir -p "$root"

go_r arm-mras.values
go_r arm-asm-impl-tables.binutils.values
go_r arm-asm-impl-tables.go.values
go_r harm.values
