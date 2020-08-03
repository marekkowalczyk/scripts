for image in *.png; do
    filename="${image%.*}"
    convert "$image" -background white -flatten -alpha off "$filename".jpg
done