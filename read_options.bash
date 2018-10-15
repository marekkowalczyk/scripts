# Read options passed as -a and/or -b; via https://unix.stackexchange.com/questions/129391/passing-named-arguments-to-shell-scripts

while getopts ":a:b:" opt; do
  case $opt in
    a) a="$OPTARG"
    ;;
    p) b="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

printf "Argument a is %s\n" "$a"
printf "Argument b is %s\n" "$b"
