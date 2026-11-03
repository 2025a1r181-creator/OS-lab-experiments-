#!/bin/bash
# Experiment 1: Ubuntu OS Configuration and Verification Script

echo "=========================================="
echo "   UBUNTU SYSTEM VERIFICATION SUCCESSFUL   "
echo "=========================================="

# 1. Hostname aur OS details print karega
echo "Operating System Details:"
uname -a
echo ""

# 2. Ubuntu version check karega
echo "Ubuntu Version:"
lsb_release -a 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME
echo ""

# 3. Available Memory (RAM) check karega
echo "System Memory Status:"
free -h

echo "=========================================="
