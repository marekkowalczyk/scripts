for file in *.jpg
do
	mogrify -auto-orient $file
done 

for file in *.jpg
do
	convert $file -resize 640x640^  $file
done

for file in *.jpg
do
	date_created=$(exiftool -exif:all $file | grep 'Date/Time Original' | awk '{print $4}' | sed -e 's/:/-/g' | sed -e 's/ /_/g')
	convert -undercolor white -stroke black -pointsize 60 -gravity south -splice 0x75 -annotate +0+2 -append -annotate 0 $date_created $file $file
done

for file in *.jpg
do
	convert -density 150 -units PixelsPerInch $file $file
done

for file in *.jpg
do
    date_created=$(exiftool -exif:all $file | grep 'Date/Time Original' | awk '{print $4}' | sed -e 's/:/-/g' | sed -e 's/ /_/g')
    filename=$date_created"_"$file
    mv $file $filename
done

for file in *.jpg
do
	convert `ls -1v` $file
done