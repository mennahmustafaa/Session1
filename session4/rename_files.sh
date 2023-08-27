#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <extension> <newname>"
    exit 1
fi

extension="$1"
newname="$2"
counter=1

# Loop through files with the specified extension
for file in *.$extension; do
    new_filename="$newname$counter.$extension"
    mv "$file" "$new_filename"
    echo "Renamed $file to $new_filename"
    ((counter++))
done

