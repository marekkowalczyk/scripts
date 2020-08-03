#!/usr/bin/env bash

# License: CC0 1.0 Universal (public domain)

files=( "$@" )

# no arguments given
if [ -z ${1+x} ]; then
    files=(*.webm *.mp4 *.avi *.mkv)
fi


declare -A codec_name_to_extension
codec_name_to_extension["vorbis"]="ogg"


for i in "${files[@]}"; do
    extensions=($(ffprobe "$i" 2>&1 | sed -nr 's/^.*Audio:\s*(\w+)\s*.*$/\1/p'))
    
    add_args=()
    n=0
    for ext in "${extensions[@]}"; do
        base_out="${i%.*}"
        if [[ "${#extensions[@]}" != "1" ]]; then
            base_out="${base_out}.$n"
        fi
        
        if [ ${codec_name_to_extension[$ext]+x} ]; then
            ext="${codec_name_to_extension[$ext]}"
        fi
        
        add_args+=(-map a:$n -c copy "${base_out}.${ext}")
        
        n=$((n+1))
    done
    ffmpeg -i "$i" -y -vn "${add_args[@]}"
done