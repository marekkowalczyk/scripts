#!/usr/bin/env bash

for file in "$@"
	do
		echo "$file"
		mogrify -auto-orient $file
		convert $file -resize 640x640^ $file
		date_created=$(exiftool -exif:all $file | grep 'Date/Time Original' | awk '{print $4}' | sed -e 's/:/-/g' | sed -e 's/ //g')
		convert -undercolor white -stroke black -pointsize 60 -gravity south -splice 0x75 -annotate +0+2 -append -annotate 0 $date_created $file $file
		convert -density 150 -units PixelsPerInch $file $file
		date_created=$(exiftool -exif:all $file | grep 'Date/Time Original' | awk '{print $4}' | sed -e 's/:/-/g' | sed -e 's/ //g')
		filename=$date_created"_"$file
		mv $file $filename
done