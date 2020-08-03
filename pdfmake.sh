for f in "$@"
 	do 
		filename=$(basename -- "$f")
		filename="${filename%.*}"
		extension="${filename##*.}"

		if [[ "$filename"=="$extension" ]]; then
			echo "same"
		fi
		
		echo "$filename"
		echo "$extension"
		#pandoc $f -o ${f%.md}.pdf
	done
