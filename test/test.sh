#!/bin/sh

set -e

here="$(dirname "$0")"

. "$here/lib.sh"

root="$here/nix-results"

mkdir -p "$root"

go_r $1
