#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Applies gain to all mp3 files recursively

walk_dir() {
    for pathname in "$1"/*
    do
        count=`ls -1 "$pathname"/*.mp3 2>/dev/null | wc -l`
        if [ -d "$pathname" ] && [ $count == 0 ]
        then
            walk_dir "$pathname"
        else
            cd "$pathname"
            mp3gain -r -c -k -a *.mp3
            cd -
        fi
    done
}

walk_dir "$1"
