#!/usr/bin/env bash

for oldname in "$@"
	do
		oldfilename="${oldname%.*}"
		oldextension="${oldname##*.}"
		
		newfilename=` \
			printf "$oldfilename" | \
			iconv -f UTF8-MAC -t ASCII//TRANSLIT | \
			tr '[:upper:]' '[:lower:]' | \
			sed -E " \
				s/'//g ; \
				s/[()]//g ; \
				s/[\W,\.]+/-/g ; \
				s/ +/-/g ; \
				s/\\+/-/g ; \
				s/\.+/-/g ; \
				s/_+/-/g ; \
				s/^-+// ; \
				s/-+$//g \
			" | \
			tr -s '[:punct:]' \
			`
		newextension=` \
			printf "$oldextension" | \
			tr '[:upper:]' '[:lower:]' \
			`

		newname="$newfilename.$newextension"

		mv -vn "$oldname" "$newname"
		
	done
	
# for f in *.txt; do
#     newf=$(echo $f | iconv -f utf-8-mac -t utf-8 | sed 'y/āáǎàēéěèīíǐìōóǒòūúǔùǖǘǚǜĀÁǍÀĒÉĚÈĪÍǏÌŌÓǑÒŪÚǓÙǕǗǙǛ/aaaaeeeeiiiioooouuuuüüüüAAAAEEEEIIIIOOOOUUUUÜÜÜÜ/')
#     mv $f $newf
# 	done
# 
# 
# ąćęłńóśźż
# 
# ĄĆĘŁŃÓŚŹŻ
	
