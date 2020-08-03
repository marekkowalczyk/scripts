"$@" | iconv -f utf-8 -t ascii//TRANSLIT

# sed -e 'y/āáǎàçēéěèīíǐìōóǒòūúǔùǖǘǚǜüĀÁǍÀĒÉĚÈĪÍǏÌŌÓǑÒŪÚǓÙǕǗǙǛÜ/aaaaceeeeiiiioooouuuuuuuuuAAAAEEEEIIIIOOOOUUUUUUUUU/'

# echo "Ala" | tr '[:upper:]' '[:lower:]'

# echo "$a" | awk '{print tolower($0)}'