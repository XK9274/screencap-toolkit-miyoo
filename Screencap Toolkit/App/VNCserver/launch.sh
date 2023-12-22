#!/bin/sh
cd /mnt/SDCARD/App/VNCserver/
export sysdir=/mnt/SDCARD/.tmp_update
export miyoodir=/mnt/SDCARD/miyoo
export LD_LIBRARY_PATH="/mnt/SDCARD/App/VNCserver/lib:/lib:/config/lib:$miyoodir/lib:$sysdir/lib:$sysdir/lib/parasyte"
export PATH="$sysdir/bin:$PATH"

IP=$(ip route get 1 | awk '{print $NF;exit}')

if pgrep vncserver > /dev/null; then
    killall -9 vncserver
	/mnt/SDCARD/.tmp_update/bin/infoPanel -t "VNC Server Shutdown" -m "VNC Server Shutdown" --auto &
else
    /mnt/SDCARD/App/VNCserver/bin/vncserver -k /dev/input/event0 -F 20 -r 180 &
	/mnt/SDCARD/.tmp_update/bin/infoPanel -t "Launching VNC Server" -m "VNC Server has been launched: \n $IP:5900" --auto &
fi

# ./vncserver [-f device] [-p port] [-t touchscreen] [-k keyboard] [-r rotation] [-R touchscreen rotation] [-F FPS] [-v] [-h]
# -p port: VNC port, default is 5900
# -f device: framebuffer device node, default is /dev/fb0
# -k device: keyboard device node (example: /dev/input/event0)
# -t device: touchscreen device node (example:/dev/input/event2)
# -r degrees: framebuffer rotation, default is 0
# -R degrees: touchscreen rotation, default is same as framebuffer rotation
# -F FPS: Maximum target FPS, default is 10
# -v: verbose
# -h: print this help

# Keyboard support works but only for SDLK inputs programmed into whatever you're using (so arrow keys work, space is enter) 
# I suspect if SDL keys were programmed for the keyboard inputs for each key (such as in simple terminal) you'd be able to use these inputs too. 
