#!/bin/bash

if [[ $# -lt 1 ]]; then
     echo "At least one arg expected"
     exit 1
fi

OUTPUT = $[date -I]

if [[ $# -eq 2 ]]; then
     OUTPUT = $2;
fi

for FILE in $(find $1 -maxdepth 1 -mindepth 1 -type f -mmin 45); do
     cp $FILE $Output
done