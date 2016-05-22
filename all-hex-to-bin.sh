#!/usr/bin/env sh
cd hex
for a in `ls *.hex`; do
  xxd -r -p ${a} ../bin/${a}.bin
done