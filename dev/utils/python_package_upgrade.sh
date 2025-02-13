#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Upgrade all Python's global packages

if [ $# -ne 1 ]
then
    echo "Python desired executable must be provided"
    exit 1
fi

"$1" -m pip list --outdated | awk '{print $1}' | grep -v Package | grep -Ev -- "^-+" | xargs -n1 "$1" -Im pip install -U
