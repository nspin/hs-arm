#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/../nix-results"

[ -d "$root" ] && rm -r "$root"
mkdir -p "$root"

go_rw arm-mras.arm-mras-values-src
go_rw harm.harm-tables-src
