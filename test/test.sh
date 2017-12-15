#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/nix-results"

[ -d "$root" ] && rm -r "$root"
mkdir -p "$root"

go_r $1
