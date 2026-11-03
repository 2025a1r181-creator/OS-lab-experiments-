#!/bin/bash
# Task 1: Determine the period for which a specified user is working on the system

if [ $# -eq 0 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username=$1

# Check if user is currently logged in
if who | grep -q "^$username "; then
    login_time=$(who | grep "^$username " | awk '{print $3" "$4}')
    echo "User '$username' is currently logged in."
    echo "Logged in since: $login_time"
else
    echo "User '$username' is not currently logged in."
    echo "Checking past login records..."
    last "$username" | head -n 5
fi
