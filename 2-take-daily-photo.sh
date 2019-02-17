#!/bin/sh
# Take photo from webcam /dev/video0
fswebcam -d /dev/video0 -r 1920x1080 --no-banner photo.JPG
# Crop to square aspect ratio
convert -define jpeg:size=1920x1080 photo.JPG  -thumbnail 1080x1080^ -gravity center -extent 1080x1080  photo.JPG
