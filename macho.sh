#!/bin/sh
manual=$(apropos . | \
    grep -v -E '^.+ \(0\)' |\
    awk '{print $2 "    " $1}' | \
    sort | \
    fzf | \
    sed -E 's/^\((.+)\)/\1/')

[ -z "$manual" ] && exit 0
man $manual