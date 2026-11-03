# Experiment 5: Shell Scripting with Command-Line Arguments

### 🎯 Objective
To write and execute shell scripts that use command-line arguments to identify files and directories and to perform file-name manipulation.

### 📝 Tasks Breakdown

#### 🔹 Task 1: File/Directory Identifier
* **Script:** `check_type.sh`
* **Logic:** Uses conditional statements `-f` (checks for regular file) and `-d` (checks for directory) over the first position parameter `$1`.

#### 🔹 Task 2: Filename Uppercase Converter
* **Script:** `to_uppercase.sh`
* **Logic:** Loops over multiple arguments using `"$@"`, converts text case utilizing the `tr '[:lower:]' '[:upper:]'` utility, and renames files safely via `mv`.

### 🚀 How to Run and Test
1. Make files executable:
   ```bash
   chmod +x check_type.sh to_uppercase.sh
   ```
2. Test Task 1:
   ```bash
   ./check_type.sh check_type.sh
   ```
3. Test Task 2:
   ```bash
   ./to_uppercase.sh sample.txt
   ```
