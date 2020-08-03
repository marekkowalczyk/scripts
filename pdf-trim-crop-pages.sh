pdfjam ${1:in.pdf} --trim '${2:left} ${3:bottom} ${4:right} ${5:top}' --clip true --outfile ${6:out.pdf}

# pdfjam 1.pdf --trim '1cm 2cm 1cm 1cm' --clip true --outfile out.pdf

#  left, bottom, right and top

# pdfjam myfile.pdf --trim '1cm 2cm 1cm 2cm' --clip true --outfile /dev/stdout | pdfjam --nup 2x1 --frame true --outfile myoutput.pdf