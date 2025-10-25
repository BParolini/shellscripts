#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Converts flac files to mp3

for a in ./*.flac; do
    ffmpeg -i "$a" -ab 320k -qscale:a 0 -map_metadata 0 -id3v2_version 3 "${a%.flac}.mp3"
done
