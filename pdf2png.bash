for i in images/*.pdf; do sips -s format png "${i}" --out "${i%pdf}png"; done
