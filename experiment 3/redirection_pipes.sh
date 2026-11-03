#!/bin/bash
# ========================================================================
# Experiment 3: I/O Redirection, Pipes, and Text Processing
# ========================================================================

echo "=== Task 1: Date on Screen & Redirect 'who' to File ==="
# Date standard output (screen) par dikhega aur who ka output file mein append hoga
echo "Current Date and Time:"
date
who >> logged_users.txt
echo "-> Done! Active user details have been redirected to 'logged_users.txt'."
echo ""

echo "=== Task 2: Swap First and Second Word using sed ==="
# Ek temporary file banate hain text ke sath
cat << 'EOF' > words_sample.txt
apple banana cherry
linux ubuntu bash
hello world greeting
EOF

echo "Original File Content:"
cat words_sample.txt
echo "-----------------------------------"

echo "Content after swapping 1st and 2nd word:"
# sed command jo pehle do words ko match karke swap karega (\1 aur \3)
sed -E 's/^([a-zA-Z0-9_]+)([[:space:]]+)([a-zA-Z0-9_]+)/\3\2\1/' words_sample.txt

# Cleanup temporary file
rm -f words_sample.txt
