for file in *.pdf; do 
	FILENAME=$(printf %q "$file")
	detox "$FILENAME"; 
done
