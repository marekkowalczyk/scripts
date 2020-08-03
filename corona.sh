# sort ~/.cache/population | cut -f2 > ~/.cache/population-sorted

case $1 in
-u|--update)
	curl --silent https://corona-stats.online?source=2 > ~/.cache/corona
#	grep -i "updated" ~/.cache/corona 
	;;
	
-h|--help)
	echo "-u, --update; -g, --generate" ;;
	
-g|--generate)
	
	LINE=$(printf "%0.s=" {1..47} ; printf "\n")
	
	gsed -E 's/\x1b\[[0-9;]*m//g ; s/ //g ; s/│/|/g ; s/║//g ; s/╟//g ; s/─//g ; s/╢//g ; s/┼//g ; s/,// ; s/▲//g' ~/.cache/corona | awk '(/Poland/ || /Ukraine/ || /Germany/ || /Lithuania/ || /Russia/ || /Czechia/ || /Slovakia/ || /Belarus/){print $2,"\t",$5,"\t",$6}' FS='|' | sort -k 1 > ~/.cache/deaths

	printf "\n" 
	echo $LINE
	printf "     #\tCountry\t         Dpm\tnDpm\t nD\n"
	echo $LINE

	(paste ~/.cache/deaths ~/.cache/population-sorted) | awk '{printf $1 ; printf "\t" ; printf "%4.1f", $2/$4 ; printf "\t" ; printf "%4.1f", $3/$4 ; printf "\t" ; printf $3 ; printf "\n"}' FS="\t" | sort -k 3nr | nl

	echo $LINE
	printf "\
	 Dpm.....Deaths Per Million\n\
	nDpm.....New Deaths Per Million\n\
	nD.......New Deaths\n\n" 
	grep -i "updated" ~/.cache/corona
	printf "Source: https://corona-stats.online?source=2"
	printf "\n\n" 

	
	;;
esac
