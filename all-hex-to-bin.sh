#!/usr/bin/env sh
cd hex
for a in `ls *.hex`; do
  if [[ -e "../bin/${a}.bin" ]]; then
    echo "File ${a} already converted to bin, skipping."
  else
    xxd -r -p ${a} ../bin/${a}.bin
  fi
done