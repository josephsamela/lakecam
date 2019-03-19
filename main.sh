#!/bin/sh

# Wait for youtube and instagram to be reachable
bash /home/pi/1-wait-for-network.sh
# Capture and prepare instagram-ready photograph
bash /home/pi/2-take-daily-photo.sh
# Generate caption from local weather report
python  /home/pi/3-generate-caption-weather.py
# Post photo to instagram
source  /home/pi/venv-instapy/bin/activate
bash  /home/pi/4-post-to-instagram.sh
# Stream webcam video to youtube
bash  /home/pi/5-stream-to-livestream.sh
