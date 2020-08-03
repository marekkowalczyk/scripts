#!/usr/bin/env bash

for file in "$@"; do 
	cpdf -upright  "$file" -o "$file"
	# cpdf -scale-to-fit a4portrait "$file" -o "$file"
done

# resize pdf to a4

cpdf -scale-to-fit a4portrait in.pdf -o out.pdf

cpdf -scale-to-fit a4landscape in.pdf -o out.pdf