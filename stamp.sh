cpdf -stamp-on ~/Pictures/mandarine-logo-400.pdf $(date).pdf all -o $(date).pdf 
cpdf -bottomleft 60 -add-text "Tajemnica przedsiebiorstwa" -font Helvetica -font-size 9 $(date).pdf -o $(date).pdf 
cpdf -bottomright 60 -add-text "%Page/%EndPage" -font Helvetica -font-size 9 $(date).pdf -o $(date).pdf 
cpdf -set-page-layout TwoPageLeft $(date).pdf -o $(date).pdf 
cpdf -set-page-mode FullScreen $(date).pdf -o $(date).pdf 