#!/bin/sh
flameshot full --raw | ffmpeg -loglevel quiet -i pipe: -filter_complex "[0:v]split=3[h1][h2][h3];[h1]crop=1920:1080:0:0,boxblur=10[blur1];[h2]crop=1920:1080:1920:0,boxblur=10[blur2];[h3]crop=1920:1080:3840:0,boxblur=10[blur3];[blur1][blur2]hstack[blur12];[blur12][blur3]hstack" -y /tmp/screensaver.png
i3lock --color=300a24 -i /tmp/screensaver.png
