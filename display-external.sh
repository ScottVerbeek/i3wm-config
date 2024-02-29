#!/bin/sh
xrandr --output eDP --off \
       --output HDMI-A-0 --off \
       --output DisplayPort-0 --off \
       --output DisplayPort-1 --off \
       --output DisplayPort-2 --off \
       --output DisplayPort-3 --off \
       --output DisplayPort-4 --off \
       --output DisplayPort-5 --off \
       --output DisplayPort-6 --mode 1920x1080 --pos 0x0 --rotate normal \
       --output DisplayPort-7 --mode 1920x1080 --pos 1920x0 --rotate normal \
       --output DisplayPort-8 --mode 1920x1080 --pos 3840x0 --rotate normal --primary

