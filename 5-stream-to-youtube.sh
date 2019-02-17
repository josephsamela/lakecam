#!/bin/sh
ffmpeg -i /home/pi/audio.mp3 -codec:a libvorbis -f v4l2 -codec:v h264 -framerate 24 -video_size 1280x720 -i /dev/video0 -codec:v copy -b:v 6000k -minrate 6000k -maxrate 6000k -g 24 -keyint_min 12 -f flv rtmp://x.rtmp.youtube.com/your-stream-key-here
