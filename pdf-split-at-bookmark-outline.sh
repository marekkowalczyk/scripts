# cpdf -split-bookmarks ${1:level} ${2:in.pdf} -o ${3|@B,out-%%%,%%-@B|}.pdf

cpdf -split-bookmarks 0 2020-07-29-akta.pdf -o %%-@B.pdf

# cpdf -split-bookmarks 0 2020-07-29-akta.pdf -o @B.pdf

# cpdf -split-bookmarks 0 a.pdf -o out-%%%.pdf

# cpdf -split-bookmarks 0 in.pdf -o %%-@B.pdf