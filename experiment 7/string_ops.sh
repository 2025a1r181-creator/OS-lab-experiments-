#!/bin/bash
# Task 1: Shell script to extract substring and length

input_str="WelcomeToLinuxOperatingSystemLab"

# Extracting length
length=${#input_str}

# Extracting substring (Offset 9, Length 5 -> Linux)
substring=${input_str:9:5}

echo "Shell Script Results:"
echo "Original String: $input_str"
echo "Length: $length"
echo "Substring (9,5): $substring"
