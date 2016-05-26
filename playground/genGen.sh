#!/usr/bin/env sh

# between only enables the overlay between x and y seconds.
# enable='between(t,0,20)'
## -filter_complex "[0:v][1:v] overlay=127:397:enable='between(t,0,20)'" \

ffmpeg -y -i Mobiliteit_crop.mov -i ../images/750x150_header.png \
-filter_complex "[0:v][1:v] overlay=0:0" \
-pix_fmt yuv420p -c:a copy \
output_header.mp4

ffmpeg -y -i output_header.mp4 -i ../images/526x526_white.png \
-filter_complex "[0:v][1:v] overlay=112:381" \
-pix_fmt yuv420p -c:a copy \
output_white.mp4

ffmpeg -y -i output_white.mp4 -i ../images/aztech_sample.png \
-filter_complex "[0:v][1:v] overlay=127:397'" \
-pix_fmt yuv420p -c:a copy \
output_aztech.mp4

ffmpeg -y -i output_aztech.mp4 -vf "[in] \
drawtext=fontsize=34:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='11\:28':                                      x=((w)/2)-(text_w)/2: y=13,   \
drawtext=fontsize=38:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='Valid until\: lun. 16/05/2016 11\:28\:16':    x=((w)/2)-(text_w)/2: y=188,   \
drawtext=fontsize=34:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='Ticket-ID\: 481da233cc8728':                  x=((w)/2)-(text_w)/2: y=1072,   \
drawtext=fontsize=38:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='Short-term ticket':                           x=((w)/2)-(text_w)/2: y=1072+70, \
drawtext=fontsize=38:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='%{localtime\: %d/%m/%Y %I.%M.%S}':            x=((w)/2)-(text_w)/2: y=1072+140" \
-vcodec libx264 -vb 2000k \
-preset ultrafast -f mp4 output_date.mp4


#drawtext=fontsize=38:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':text='%{localtime\: %d/%m/%Y %I\:%M\:%S}': ((w)/2)-(text_w)/2: y=1072+100" \


# drawtext=fontsize=34:fontcolor=white:fontfile='fonts/SF-UI-Text-Regular.otf':expansion=normal:timecode=11\\\:30\\\:00.00:r=29.97:text='': x=150: y=1072+100" \
#  %{localtime\:%T}
