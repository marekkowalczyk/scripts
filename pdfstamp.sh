cpdf -stamp-on ~/Pictures/mandarine-logo-400.pdf $1 all -o $1 
cpdf -bottomleft 60 -add-text "Tajemnica przedsiebiorstwa" -font Helvetica -font-size 9 $1 -o $1 
# cpdf -bottomright 60 -add-text "%Page/%EndPage" -font Helvetica -font-size 9 $1 -o $1 
cpdf -set-page-layout TwoPageLeft $1 -o $1 
cpdf -set-page-mode FullScreen $1 -o $1 
cpdf -clean $1 -o $1
bash pdfclean.sh $1