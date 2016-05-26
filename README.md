# Oh my, an Aztech Code


## Dependencies

### Python 3

- treepoem
- pillow
- numpy

### System

- xxd
- convert
- ffmpeg

## iPhone 6 resolution

- 750 × 1334

# OSX Devel

brew install --with-ffplay --with-libcaca --witg-openssl --with-fontconfig --with-tools --with-zeromq --with-x265 --with-zimg --with-fdk-aac --with-freetype --with-libvpx ffmpeg

https://gist.github.com/dergachev/4627207

## Overlay image on video

ffmpeg -i input.mp4 -i image.png \
-filter_complex "[0:v][1:v] overlay=25:25:enable='between(t,0,20)'" \
-pix_fmt yuv420p -c:a copy \
output.mp4

## Overlay text on video

ffmpeg -f video4linux2 -i /dev/video0 -s 640x480 -r 30 -vf \
"drawtext=fontfile=/usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Bold.ttf: \
text='\%T': fontcolor=white@0.8: x=7: y=460" -vcodec libx264 -vb 2000k \
-preset ultrafast -f mp4 output.mp4

ffmpeg -i input.mp4 -vf "drawtext=fontfile=Arial.ttf: \
#text='\%T': fontcolor=white@0.8: x=7: y=460" -vcodec libx264 -vb 2000k \
#expansion=normal:timecode=11\\\:30\\\:00.00:r=29.97:text=' | A Very Nice Show (PDT) ': fontcolor=white@0.8: x=7: y=1200" -vcodec libx264 -vb 2000k \
expansion=normal:timecode=11\\\:30\\\:00.00:r=29.97:text=' | A Very Nice Show (PDT) ': fontcolor=white:fontsize=34: x=7: y=1200" -vcodec libx264 -vb 2000k \
-preset ultrafast -f mp4 output.mp4

ffmpeg -f video4linux2 -input_format mjpeg -s 1280x720 -i /dev/video0 \
-vf "drawtext=fontfile=/usr/share/fonts/dejavu/DejaVuSans-Bold.ttf: \
text='%{localtime\:%T}': fontcolor=white@0.8: x=7: y=700" -vcodec libx264 \
-preset veryfast -f mp4 -pix_fmt yuv420p -y output.mp4

### Color

fontcolor=white@0.8 means that we have an 80% opacity.

# Fonts

https://www.microsoft.com/typography/fonts/family.aspx?FID=244

SF UI Regular 34px

# Ticket IDs

## Short-term
481da233cc8728
5bb00f4f480c3

## Long-term
2305d5aed9282c

Positioning

Time: Center @ x:13px size:29px

y: 153px
obj: Start Valid until

y: 241px
obj: End Valid until

y: 381px
obj: Start 2D-Code bleed

y: 397px
obj: Start 2D-Code

x: 112px
Obj: Start 2D-Code bleed

x: 142px
obj: Start 2D-Code

y: 906px
obj: Stop 2D-Code bleed

y: 890px
obj: Stop 2D-Code

x: 637px
obj: Stop 2D-Code bleed

x:621px
obj: Stop 2D-Code

y: 1070px
obj: Start Ticket ID / Ticket Type / Date
44px distance

2D Code Box 526x526