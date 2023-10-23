#!/bin/sh

currDT="$(date +'%Y-%m-%d_at_%H.%M.%S')"

currD="$(date +'%Y-%m-%d')"

mkdir -p ../../media/usb/FLY_VIDEOS/experiment_$currD

raspivid -o "../../media/usb/FLY_VIDEOS/experiment_$currD/video_$currDT.h264" -t $1 -fps 25
