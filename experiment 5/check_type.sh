#!/bin/bash
# Task 1: Check if command-line argument is a file or a directory

# Check agar user ne argument diya hai ya nahi
if [ $# -eq 0 ]; then
    echo "Error: Please provide a file or directory path as an argument."
    echo "Usage: $0 <path>"
    exit 1
fi

# Check if it is a regular file
if [ -f "$1" ]; then
    echo "Result: '$1' is a regular file."
# Check if it is a directory
elif [ -d "$1" ]; then
    echo "Result: '$1' is a directory."
# Agar dono nahi hai ya exist nahi karta
else
    echo "Result: '$1' does not exist or is a different type of file."
fi
