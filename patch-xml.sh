#!/bin/sh

set -e

root=$1

for f in $(find $root -name 'shared_pseudocode.xml'); do
  sed -i 's/impl-aarch64.IsEL1TransRegimeRegs.0/impl-shared.IsEL1TransRegimeRegs.0/' $f
done
