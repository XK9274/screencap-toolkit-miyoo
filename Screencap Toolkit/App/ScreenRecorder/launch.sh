#!/bin/sh
cd /mnt/SDCARD/App/ScreenRecorder/
bindir=/mnt/SDCARD/App/ScreencapTK/bin
libdir=/mnt/SDCARD/App/ScreencapTK/lib
export sysdir=/mnt/SDCARD/.tmp_update
export miyoodir=/mnt/SDCARD/miyoo
export LD_LIBRARY_PATH="$libdir:/lib:/config/lib:$miyoodir/lib:$sysdir/lib:$sysdir/lib/parasyte"
export PATH="$sysdir/bin:$PATH"
mkdir output

if pgrep "ffmpeg" > /dev/null; then
    killall -2 ffmpeg
else
    $bindir/ffmpeg -f fbdev -framerate 15 -i /dev/fb0 -vf "transpose=1,transpose=1,format=yuv420p" -c:v libx264 -preset ultrafast -maxrate 2000k -bufsize 4000k -g 50 -threads 1 "output/$(date +%Y%m%d%H%M%S).mp4" & > /dev/null 2>&1 &
	# $bindir/cpuclock 1800 
fi
