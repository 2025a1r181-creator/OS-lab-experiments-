# Experiment 4: Process Management and vi/nano Editor Commands

### 🎯 Objective
To study and execute Linux process-management commands and use the vi and nano text editors for creating, editing, and managing text files in Ubuntu Linux.

### 📑 Key Commands Summary

| Command | Description | Example Usage |
|---------|-------------|---------------|
| `ps`    | Snapshot of current active processes | `ps -ef` |
| `top`   | Real-time dynamic view of system processes | `top` |
| `kill`  | Terminate a process using its Process ID (PID) | `kill -9 1234` |
| `bg`    | Sends a foreground process to background | `bg %1` |
| `jobs`  | Lists active background tasks/jobs | `jobs` |
| `nano`  | Launches user-friendly terminal text editor | `nano sample.txt` |
| `vi`    | Launches advanced modal text editor | `vi script.sh` |

### 🚀 How to Run the Script
1. Execution permission dein:
   ```bash
   chmod +x process_demo.sh
   ```
2. Script execute karein:
   ```bash
   ./process_demo.sh
   ```

### 📊 Expected Output Log
```text
=== 1. Displaying Active Processes (ps command) ===
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 09:30 ?        00:00:02 /sbin/init
ubuntu      2145    2130  0 10:15 pts/0    00:00:00 bash

=== 2. Displaying System Resource Usage snapshot ===
top - 12:20:00 up 2:50,  1 user,  load average: 0.05, 0.03, 0.01
Tasks: 115 total,   1 running, 114 sleeping,   0 stopped,   0 zombie

=== 3. Monitoring Processes by User ===
Processes owned by current user (ubuntu):
    PID TTY          TIME CMD
   2145 pts/0    00:00:00 bash

=== 4. Background Process Demonstration ===
Started a background process 'sleep 30' with PID: 4589
Checking job status:
[1]+  Running                 sleep 30 &
Terminating the background process using kill command...
Process 4589 has been terminated successfully.
```
