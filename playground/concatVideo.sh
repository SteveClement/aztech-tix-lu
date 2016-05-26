#!/usr/bin/env sh
copyCount=`wc -l list.txt`
echo 'Concatenating ${copyCount} files'
ffmpeg -f concat -i list.txt -c copy output.mp4