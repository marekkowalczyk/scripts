#!/usr/bin/env bash

ffmpeg -i ${1:video.mp4} -i ${2:audio.wav} -c:v copy -c:a copy ${3:output.mp4}

