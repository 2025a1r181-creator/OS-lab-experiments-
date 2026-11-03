#!/bin/bash
# Task 3: Delete all lines containing a specified word in one or more files

if [ $# -lt 2 ]; then
    echo "Usage: $0 <word> <file1> [file2 ...]"
    exit 1
fi

word=$1
shift # Removes the word from arguments list, leaving only filenames

for file in "$@"; do
    if [ -f "$file" ]; then
        # sed -i deletes lines matching the word in-place
        sed -i "/$word/d" "$file"
        echo "Deleted lines containing '$word' from $file"
    else
        echo "Warning: '$file' is not a valid file. Skipping."
    fi
done
