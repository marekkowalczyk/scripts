exiftool -Title=${1:Title} -Author=${2:Author} -Subject=${3:Subject} ${4:IN.pdf}

# for file in *.pdf;do
# 	exiftool -Keywords="MANDARINE Sp. z o.o." -Subject="Walne Zgromadzenie 2016" "$file"
# done

# -overwrite_original

# exiftool -XMP-dc:Creator="Jane Doe" -XMP-dc:Publisher="Research-publishing.net" test.pdf