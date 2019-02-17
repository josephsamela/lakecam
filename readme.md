# LakeCam

## Description

Wait for network
take photo
generate caption
post to instagram
start streaming to youtube

## Hardware

* Raspberry Pi Zero W (Use a case with plenty of mounting options)
* 32GB SD Card (With raspbian installed, NOOBS or equivelant)
* Logitech C920 Webcam (Any usb webcam or picam will work)
* Micro USB to Type-A cable (To connect webcam to pi)
* USB Power adapter (User a good 2A charger)

## Setup

Install raspbian from NOOBS or equivelant. Edit `/etc/wpa_supplicant/wpa_supplicant.conf` with set ssid and password of any future wifi connections. 

```
network={
    ssid="access-point-name"
    psk="password"
}
```
Install required software.
* [python](https://www.python.org/) - Programming language 
* [weather-util](http://fungi.yuggoth.org/weather/) - fetch weather reports
* [fswebcam](http://www.sanslogic.co.uk/fswebcam/) - take webcam photos
* [imagemagick](https://www.imagemagick.org/) - crop photos for instagram
* [instapy-cli](https://github.com/b3nab/instapy-cli) - post photos to instagram
* [ffmpeg](https://ffmpeg.org/) - stream webcam feed to rtmp

```
$ sudo apt install weather-util fswebcam imagemagick ffmpeg
$ python3 -m pip install instapy-cli
```

Build `audio.mp3` with 24+hrs of music. Use the royalty-free stuff from the [Free Music Archive](http://freemusicarchive.org/). I used a bulk download browser extension to download 500+ tracks and combined them with and [Audacity](https://www.audacityteam.org/). End product was a single 2.4GB mp3 file with 31hrs of classical music.

Move included scripts and `audio.mp3` to `/home/pi`.

```
/home/pi/
    ├── main.sh
    ├── 1-wait-for-network.sh
    ├── 2-take-daily-photo.sh
    ├── 3-generate-caption-weather.py
    ├── 4-post-to-instagram.py
    ├── 5-stream-to-youtube.sh
    └── audio.mp3
```

Edit `4-post-to-instagram.py` with instagram account credentials. 

Edit `5-stream-to-youtube.sh` with youtube stream key.

Edit `crontab -e` to reboot every day at noon and run `main.sh` on reboot.

```
00 12 * * * reboot
@reboot sh /home/pi/main.sh
```

Travel to scenic location. Connect camera. Mount equipment. Frame shot. Connect to power...and let it run :)

