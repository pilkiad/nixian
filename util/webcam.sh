#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Provide video ID, options:"
    ls /dev/video*
    exit 1
fi

mpv --no-cache --untimed --profile=low-latency --demuxer-thread=no --vd-lavc-threads=1 av://v4l2:/dev/video$1 --demuxer-lavf-o=video_size=640x480 --no-audio
