#!/usr/bin/env sh
ffmpeg -i Mobiliteit_crop.mov -i ../images/526x526_white.png \
-filter_complex "[0:v][1:v] overlay=112:381:enable='between(t,0,20)'" \
-pix_fmt yuv420p -c:a copy \
output.mp4