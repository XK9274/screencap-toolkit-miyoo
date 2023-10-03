# screencap-toolkit-miyoo
A Screencapturing toolkit for the Miyoo Mini + (Twitch/VNC/RTMP/Outputfile)

All use various methods provided by ffmpeg
Warning: This may make your mmp a little toasty, it runs almost maxed out on CPU depending on which app you run.

![MainUI_001](https://github.com/XK9274/screencap-toolkit-miyoo/assets/47260768/c82fb7e8-1ded-4dd1-861c-ab503ad2a044)

## Issues
- Overclock generally needed to keep performance up.. the MMP does not handle streaming/encoding very well due to having low resources, some tweaks can be made to the ffmpeg command
- eggs' cpuclock file is included in the bins and can be used by uncommenting the line in launch.sh.. i've commented these as overclocking is at your own risk. (https://discord.com/channels/529983248114122762/926552349609164872/1109834464760180777) (max 1900!, lowered this as only 1 of my units can sit at 2000)

## Usage
- Screenrecorder/StreamtoRTMP/TwitchStream all rely on ScreencapTK being present in the Apps folder
- VNCserver is standalone.
- For StreamtoRTMP, add your IP address/stream location in launch.sh - You can use this to test with: https://github.com/ustoopia/Live-stream-server-portable-Windows-Nginx-RTMP-HLS-Dash (browse to http://localhost/ when running)
- For Twitchstream add your Stream key into launch.sh

## Source
- https://github.com/ponty/framebuffer-vncserver
- https://github.com/FFmpeg/FFmpeg

## Icons
- https://www.svgrepo.com/svg/316210/screen-share?edit=true
- https://icons8.com/icons/set/cloud-video
- https://www.freepnglogos.com/pics/twitch-logo-png
- https://icon-icons.com/icon/simple-screen-recorder/94921


