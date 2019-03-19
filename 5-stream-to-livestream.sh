#!/bin/sh
bash ifttt_livestream_notification.sh
ffmpeg -i /home/pi/audio.mp3 -codec:a libvorbis -f v4l2 -codec:v h264 -framerate 24 -video_size 1920x1080 -i /dev/video0 -codec:v copy -b:v 1000k -minrate 1000k -maxrate 1000k -f flv rtmp://x.rtmp.youtube.com/live2/{streamkey}

