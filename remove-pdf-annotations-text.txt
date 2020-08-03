for i in *.pdf ; do
	cpdf -remove-text "$i" -o "$i"
done