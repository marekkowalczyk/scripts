#!/usr/bin/env bash

for file in *.pdf; do
	cpdf -add-text "%filename %Page/%EndPage" -bottomright 10 -font "Helvetica" -color "red" $file -o $file
done

for file in "$@"; do
	cpdf -add-text "%filename" -bottom 10 -font "Helvetica" -color "red"  AND -remove-duplicate-fonts AND -clean AND -squeeze AND -compress -o $file -o $file
done

pdfstamp

cpdf -add-text "%Page/%EndPage" -bottom 10 -font "Helvetica" -color "black" in.pdf -o out.pdf