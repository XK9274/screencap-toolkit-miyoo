#!/bin/sh
cd /mnt/SDCARD/App/TwitchStream/
bindir=/mnt/SDCARD/App/ScreencapTK/bin
libdir=/mnt/SDCARD/App/ScreencapTK/lib
export sysdir=/mnt/SDCARD/.tmp_update
export miyoodir=/mnt/SDCARD/miyoo
export LD_LIBRARY_PATH="$libdir:/lib:/config/lib:$miyoodir/lib:$sysdir/lib:$sysdir/lib/parasyte"
export PATH="$sysdir/bin:$PATH"

if pgrep "ffmpeg" > /dev/null; then
    killall -2 ffmpeg
	LD_PRELOAD=/mnt/SDCARD/miyoo/lib/libpadsp.so /mnt/SDCARD/.tmp_update/bin/infoPanel -t "Twitch Stream Stopped" -m "No longer streaming" --auto &
else
    $bindir/ffmpeg -f fbdev -framerate 15 -i /dev/fb0 -vf "transpose=1,transpose=1,format=yuv420p" -c:v libx264 -preset ultrafast -maxrate 2000k -bufsize 4000k -g 50 -threads 1 -f flv rtmp://live.twitch.tv/app/YOURSTREAMKEY > /dev/null 2>&1 &
	# bin/cpuclock 1800
	LD_PRELOAD=/mnt/SDCARD/miyoo/lib/libpadsp.so /mnt/SDCARD/.tmp_update/bin/infoPanel -t "Twitch Stream Started" -m "Now streaming to your twitch page" --auto &
fi

