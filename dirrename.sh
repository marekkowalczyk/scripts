BASEDIR="$1"
IFS=$'\n'
cd $BASEDIR
 for f in $(find . -type f -name ' *')
 do 
    DIR=$(dirname "$f")
    DIR=${DIR:1}
    cd $BASEDIR$DIR
    rename 's/^ *//' *
 done