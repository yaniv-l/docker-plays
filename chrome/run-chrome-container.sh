#!/bin/bash
xhost +
docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v $HOME/Downloads:/home/chrome/Downloads -v $HOME/.config/google-chrome/:/data --security-opt seccomp=/home/yanivl/Projects/Docker/chrome/chrome.json --device /dev/snd -v /dev/shm:/dev/shm --name chrome yanivl/chrome
