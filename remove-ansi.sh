ANSI escape sequence remove

perl -pe 's/\x1b\[[0-9;]*[mG]//g'