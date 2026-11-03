#!/bin/bash
# Task 2: Display lines between start and end line numbers passed as arguments

if [ $# -ne 3 ]; then
    echo "Usage: $0 <start_line> <end_line> <filename>"
    exit 1
fi

start=$1
end=$2
filename=$3

if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Calculate total lines to print using sed or awk
# We use sed with range: sed -n 'start,endp' filename
echo "--- Displaying lines $start to $end from $filename ---"
sed -n "${start},${end}p" "$filename"
