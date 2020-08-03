for file in *.txt ; 
do 
echo $(
	awk '/język łaciński/ {print $0}' "$file" | sed 's/(.*$// ; s/ */ /' 
	awk '/\(1\.1\) / {print ";"$0"\n"}' "$file" | sed 's/(1\.1) // ; s/ */ /'
)
done