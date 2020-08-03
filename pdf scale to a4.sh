# cpdf -scale-to-fit ${1|a4portrait,a4landscape|} ${2:in.pdf} -o ${3:out.pdf};open ${3}

cpdf -scale-to-fit a4portrait 2020-07-29-akta.pdf -o 2020-07-29-akta.pdf;open 2020-07-29-akta.pdf

# cpdf -scale-to-fit "420mm 297mm" in.pdf -o out-a3-landscape.pdf;open out-a3-landscape.pdf
#
# cpdf -scale-to-fit "297mm 210mm" in.pdf -o out-a4-landscape.pdf;open out-a4-landscape.pdf
#
# cpdf -scale-to-fit a4portrait -scale-to-fit-scale 0.5 in.pdf -o out-a4-portrait.pdf;open out-a4-portrait.pdf
#
# cpdf -scale-to-fit a4landscape -scale-to-fit-scale 0.75 dowod2.pdf -o dowod2-.pdf