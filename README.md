# screencap-toolkit-miyoo
A Screencapturing toolkit for the Miyoo Mini + (Twitch/VNC/RTMP/Outputfile)

All use various methods provided by ffmpeg

## Issues
Overclock generally needed to keep performance up.. the MMP does not handle streaming/encoding very well due to having low resources, some tweaks can be made to the ffmpeg command
eggs' cpuclock file is included in the bins and can be used by uncommenting the line in launch.sh.. i've commented these as overclocking is at your own risk. (https://discord.com/channels/529983248114122762/926552349609164872/1109834464760180777) (max 2000!)

## Usage
- Screenrecorder/StreamtoRTMP/TwitchStream all rely on ScreencapTK being present in the Apps folder
- VNCserver is standalone.
- For StreamtoRTMP, add your IP address/stream location in launch.sh - You can use this to test with: https://github.com/ustoopia/Live-stream-server-portable-Windows-Nginx-RTMP-HLS-Dash (browse to http://localhost/ when running)
- For Twitchstream add your Stream key into launch.sh

## Source
https://github.com/ponty/framebuffer-vncserver
https://github.com/FFmpeg/FFmpeg

## Icons
https://www.svgrepo.com/svg/316210/screen-share?edit=true
https://icons8.com/icons/set/cloud-video
https://www.freepnglogos.com/pics/twitch-logo-png
https://icon-icons.com/icon/simple-screen-recorder/94921


