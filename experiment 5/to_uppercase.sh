#!/bin/bash
# Task 2: Convert filenames provided as command-line arguments to uppercase

if [ $# -eq 0 ]; then
    echo "Error: Provide at least one filename as a command-line argument."
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

# Loop through all arguments passed
for file in "$@"; do
    if [ -f "$file" ]; then
        # Convert the string to uppercase
        new_name=$(echo "$file" | tr '[:lower:]' '[:upper:]')
        
        # Check if target name already exists to avoid overwriting blindly
        if [ "$file" != "$new_name" ]; then
            mv "$file" "$new_name"
            echo "Successfully renamed: $file -> $new_name"
        else
            echo "Info: '$file' is already in uppercase."
        fi
    else
        echo "Warning: '$file' is not a valid file. Skipping."
    fi
done
