#!/bin/bash

#curl -O https://pandoc.org/demo/MANUAL.txt

find ~/Downloads -name 'pandoc-manual_*' | sort
find ~/Documents -name 'pandoc-manual_*' | sort

DATE1=$(grep -m 1 "date:" MANUAL.txt | cut -c 7-)
DATE2=$(date -j -f "%B %d, %Y" "$DATE1" +"%Y-%m-%d")

printf "\n"
printf "\t\t\t\t\t\t"
echo $DATE2
printf "\n"

read -p "Generate new manual? [y/n]: " choice

case $choice in
	y)
		FILENAME=pandoc-manual_$DATE2
		echo Creating $FILENAME
		mv MANUAL.txt $FILENAME.txt
		śpandoc -N --variable mainfont="Palatino" --variable sansfont="Helvetica" --variable monofont="Menlo" --variable fontsize=12pt --variable papersize=a4 --variable version=$DATE2 $FILENAME.txt --pdf-engine=xelatex --toc -o $FILENAME.pdf
		pdfclean $FILENAME.pdf
		open $FILENAME.pdf
		pandoc $FILENAME.txt -o $FILENAME.epub
		open $FILENAME.epub
		rm $FILENAME.epub
		;;
	*)
		echo "OK, quitting."
		rm -i MANUAL.txt
		;;
esac
