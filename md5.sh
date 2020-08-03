for F in $DIR/*.*; do mv "$F" "$(md5 "$F" | cut -d' ' -f4).${F##*.}"; done 

md5 * | sed -e 's/MD5 (\([^.]*\)\(.[^)]*\)) = \(.*\)$/mv -v "\1\2" \3\2/' | sh