pdfjam --nup ${1:nxm} --suffix $1 --no-landscape --a4paper ${2:in.pdf}

pdfjam --nup 2x2 --suffix 2x2 --no-landscape --a4paper pictures.pdf



pdfjam --nup 2x3 --frame true --noautoscale false --delta "0.2cm 0.3cm" --scale 0.95 myslides.pdf --outfile myhandout.pdf

pdfjam --nup 2x2 --frame false --noautoscale false --delta "0.2cm 0.3cm" --scale 0.95 pictures.pdf --outfile pictures-2x2.pdf


https://github.com/DavidFirth/pdfjam