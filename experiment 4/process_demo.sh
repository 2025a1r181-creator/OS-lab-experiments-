#!/bin/bash
# ========================================================================
# Experiment 4: Process Management in Ubuntu Linux
# ========================================================================

echo "=== 1. Displaying Active Processes (ps command) ==="
# Hamein top 5 actively running processes dikhayega
ps -ef | head -n 6
echo ""

echo "=== 2. Displaying System Resource Usage snapshot ==="
# top command ko 1 baar run karke snapshot lega snapshot ke roop mein
top -b -n 1 | head -n 12
echo ""

echo "=== 3. Monitoring Processes by User ==="
echo "Processes owned by current user ($(whoami)):"
ps -u $(whoami) | head -n 6
echo ""

echo "=== 4. Background Process Demonstration ==="
# Ek temporary sleeping process background mein start karenge
sleep 30 &
PID=$!
echo "Started a background process 'sleep 30' with PID: $PID"
echo "Checking job status:"
jobs

echo "Terminating the background process using kill command..."
kill -9 $PID
echo "Process $PID has been terminated successfully."
