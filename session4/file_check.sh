#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <directory>"
    exit 1
fi

filename="$1"
directory="$2"
filepath="$directory/$filename"

# Check if the file exists
if [ -f "$filepath" ]; then
    echo "File exists"
    echo "Contents of $filename:"
    cat "$filepath"
else
    echo "File does not exist"
fi

