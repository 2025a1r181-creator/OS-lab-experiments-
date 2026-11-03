# Experiment 6: Shell Scripting for User, Line, and Text Processing

### 🎯 Objective
To write and execute shell scripts for determining a user's working period, displaying a specified range of lines from a file, and deleting lines containing a specified word from one or more files.

### 📝 Tasks Implemented
1. **`user_period.sh`**: Uses `who` and `last` utilities to trace user session timings.
2. **`display_lines.sh`**: Uses `sed -n 'start,endp'` to precisely stream file slices.
3. **`delete_word.sh`**: Uses `sed -i '/word/d'` for direct in-place pattern matching deletion.
