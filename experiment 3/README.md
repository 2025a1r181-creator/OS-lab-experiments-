# Experiment 3: I/O Redirection, Pipes, and Text Processing

### 🎯 Objective
To study I/O redirection, pipes, and Linux utilities such as `grep`, `sed`, and `find` for file and text processing.

### 📝 Tasks Implemented

#### 🔹 Task 1: Combined Command Execution
* **Requirement:** Use `date` and `who` in a single command, displaying date output on the screen and redirecting who output to a file.
* **Logic Used:** `date && who >> logged_users.txt` (The `&&` ensures both run sequentially, while `>>` redirects the stream).

#### 🔹 Task 2: Word Swapping using `sed`
* **Requirement:** Use `sed` to swap the first and second words of each line in a file.
* **Logic Used:** `sed -E 's/^([a-zA-Z0-9_]+)([[:space:]]+)([a-zA-Z0-9_]+)/\3\2\1/'`
  * Here, group `\1` catches the first word, group `\2` captures spaces, and group `\3` catches the second word. They are replaced in reverse order.

### 🚀 How to Run the Script
1. Execution permission dein:
   ```bash
   chmod +x redirection_pipes.sh
   ```
2. Script execute karein:
   ```bash
   ./redirection_pipes.sh
   ```

### 📊 Expected Output Log
```text
=== Task 1: Date on Screen & Redirect 'who' to File ===
Current Date and Time:
Tue Nov  3 12:11:00 IST 2026
-> Done! Active user details have been redirected to 'logged_users.txt'.

=== Task 2: Swap First and Second Word using sed ===
Original File Content:
apple banana cherry
linux ubuntu bash
hello world greeting
-----------------------------------
Content after swapping 1st and 2nd word:
banana apple cherry
ubuntu linux bash
world hello greeting
```
