#!/bin/sh

set -e

root=$1

for f in $(find $root -name 'shared_pseudocode.xml'); do
  sed -i 's|impl-aarch64.IsEL1TransRegimeRegs.0|impl-shared.IsEL1TransRegimeRegs.0|' $f
  sed -i 's|^AArch32.SErrorSyndrome <anchor link="AArch32.PhysicalSErrorSyndrome.0"|<a link="AArch32.SErrorSyndrome" file="shared_pseudocode.xml" hover="type AArch32.SErrorSyndrome is ( bits(2) AET, bit ExT )">AArch32.SErrorSyndrome</a> <anchor link="AArch32.PhysicalSErrorSyndrome.0"|' $f
done

for f in $(find $root -name '*.xml'); do
  sed -i 's|<box hibit="14" width="11" name="imm3:imm2:type">|<box hibit="14" width="7" name="imm3:imm2:type">|' $f
done
