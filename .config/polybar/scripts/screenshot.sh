#!/bin/bash

scrot -q 100 -s -f -o "/tmp/image.png" && xclip -selection clipboard -t /tmp/image.png -i /tmp/image.png | convert /tmp/image.png \( +clone -background black -shadow 20x20+0+0 \) \
+swap -background none -layers merge +repage /tmp/image.png; \
# convert /tmp/image.png -bordercolor none -border 1ol0 ~/Pictures/latests.png; \
notify-send 'Screenshot taken'