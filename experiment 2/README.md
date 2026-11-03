# Experiment 2: Execution of Basic Bash/Shell Commands in Ubuntu Linux

### 🎯 Objective
To study and execute fundamental Bash/Shell commands for file-system navigation, file and directory management, text manipulation, and basic system operations in Ubuntu Linux.

### 📑 Key Commands Summary

| Command | Description | Example Usage |
|---------|-------------|---------------|
| `pwd`   | Present Working Directory | `pwd` |
| `ls`    | List directory contents | `ls -l` |
| `mkdir` | Make directory | `mkdir my_folder` |
| `touch` | Create an empty file | `touch notes.txt` |
| `cat`   | Concatenate and display text | `cat notes.txt` |
| `cp`    | Copy files or directories | `cp file1.txt file2.txt` |
| `mv`    | Move or rename files | `mv old.txt new.txt` |
| `rm`    | Remove/Delete files | `rm file.txt` |
| `date`  | Displays current system date | `date` |
| `df`    | Disk space usage | `df -h` |

### 🚀 How to Run the Script
1. Give execution permission:
   ```bash
   chmod +x commands.sh
   ```
2. Run the shell script:
   ```bash
   ./commands.sh
   ```

### 📊 Expected Output Log
When you run `./commands.sh`, the terminal will display:
```text
=== 1. Current Working Directory ===
/home/ubuntu/OS-lab-experiments

=== 2. Creating Directories and Files ===
Directory contents after creation:
-rw-r--r-- 1 ubuntu ubuntu 24 Nov  3 12:00 file1.txt
-rw-r--r-- 1 ubuntu ubuntu  0 Nov  3 12:00 file2.txt

=== 3. Text Manipulation ===
Hello from Experiment 2

=== 4. Copying and Moving Files ===
Directory contents after cp and mv:
-rw-r--r-- 1 ubuntu ubuntu 24 Nov  3 12:00 file1_copy.txt
-rw-r--r-- 1 ubuntu ubuntu 24 Nov  3 12:00 file1.txt
-rw-r--r-- 1 ubuntu ubuntu  0 Nov  3 12:00 file2_renamed.txt

=== 5. Basic System Information ===
Logged in user: ubuntu
Current Date & Time: Tuesday 3 November 2026 ...
```
