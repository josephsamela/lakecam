#!/bin/sh

# Wait for youtube and instagram to be reachable
sh 1-wait-for-network.sh
# Capture and prepare instagram-ready photograph
sh 2-take-daily-photo.sh
# Generate caption from local weather report
python3 3-generate-caption-weather.py
# Post photo to instagram
python3 4-post-to-instagram.py
# Stream webcam video to youtube
sh 5-stream-to-youtube.sh
