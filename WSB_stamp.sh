for FILE1 in "$@"
	do
		cpdf -stamp-on ~/Pictures/mandarine-logo-400.pdf $FILE1 all -o $FILE1
		cpdf -bottomleft 60 -add-text "mandarine.co | +48 501 670 625" -font Helvetica -font-size 9 $FILE1 all -o $FILE1
		cpdf -bottomright 60 -add-text "%Page/%EndPage" -font Helvetica -font-size 9 $FILE1 all -o $FILE1
		cpdf -set-page-layout TwoPageLeft $FILE1 all -o $FILE1
		cpdf -set-page-mode FullScreen $FILE1 all -o $FILE1
	done