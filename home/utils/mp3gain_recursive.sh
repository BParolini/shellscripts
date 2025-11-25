#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Applies gain to all mp3 files recursively

walk_dir() {
    for pathname in "$1"/*
    do
        count=$(fd -d 1 ".mp3" "$pathname" 2>/dev/null | wc -l)
        if [ -d "$pathname" ] && [ "$count" -eq 0 ]
        then
            walk_dir "$pathname"
        else
            (
                cd "$pathname" || return
                echo "$pathname"
                mp3gain -c -k -a -q ./*.mp3
                echo
            )
        fi
    done
}

walk_dir "$1"
