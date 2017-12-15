#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/nix-results"

[ -d "$root" ] && rm -r "$root"
mkdir -p "$root"

go_r xml.sysreg
go_r xml.aarch64
go_r xml.aarch32
go_r patched-aarch64
go_r patched-aarch32
go_r dtd-src.sysreg
go_r dtd-src.aarch64
go_r dtd-src.aarch32
go_r arm-mras-values-src

go_r arm-mras
go_r asl

go_r test-asl
