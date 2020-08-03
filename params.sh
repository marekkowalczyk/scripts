#!/bin/bash
PARAMS=""
while (( "$#" )); do
  case "$1" in
    -a|--my-boolean-flag)
      MY_FLAG=1
	# echo "$MY_FLAG"
      shift
      ;;
    -b|--my-flag-with-argument)
      if [ -n "$2" ] && [ ${2:0:1} != "-" ]; then
        MY_FLAG_ARG=$2
	  echo "$MY_FLAG_ARG"
        shift 2
      else
        echo "Error: Argument for $1 is missing" >&2
        exit 1
      fi
      ;;
    -*|--*=) # unsupported flags
      echo "Error: Unsupported flag $1" >&2
      exit 1
      ;;
    *) # preserve positional arguments
      PARAMS="$PARAMS $1"
      shift
      ;;
  esac
done
# set positional arguments in their proper place
eval set -- "$PARAMS"
echo "$PARAMS"

# https://medium.com/@Drew_Stokes/bash-argument-parsing-54f3b81a6a8f