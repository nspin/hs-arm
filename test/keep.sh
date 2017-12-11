#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/../nix-results"

[ -d "$root" ] && rm -r "$root"
mkdir -p "$root"

go_rw dtd-src.sysreg
go_rw dtd-src.a64
go_rw dtd-src.aarch32
go_rw values-src
