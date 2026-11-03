#!/bin/bash
# ========================================================================
# Experiment 2: Execution of Basic Bash/Shell Commands in Ubuntu Linux
# ========================================================================

echo "=== 1. Current Working Directory ==="
pwd
echo ""

echo "=== 2. Creating Directories and Files ==="
# Creating a practice folder and creating files inside it
mkdir -p bash_practice_dir
touch bash_practice_dir/file1.txt bash_practice_dir/file2.txt
echo "Hello from Experiment 2" > bash_practice_dir/file1.txt
echo "Directory contents after creation:"
ls -l bash_practice_dir
echo ""

echo "=== 3. Text Manipulation (Displaying File Content) ==="
cat bash_practice_dir/file1.txt
echo ""

echo "=== 4. Copying and Moving Files ==="
cp bash_practice_dir/file1.txt bash_practice_dir/file1_copy.txt
mv bash_practice_dir/file2.txt bash_practice_dir/file2_renamed.txt
echo "Directory contents after cp and mv:"
ls -l bash_practice_dir
echo ""

echo "=== 5. Basic System Information ==="
echo "Logged in user: $(whoami)"
echo "Current Date & Time: $(date)"
echo "System Disk Space Info:"
df -h | head -n 3
echo ""

# Cleaning up practice files to keep the directory neat
rm -rf bash_practice_dir
echo "Cleanup completed successfully!"
