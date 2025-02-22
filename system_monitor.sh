#!/bin/bash
# System Monitoring Script

echo "System Monitoring Report - $(date)"

echo "-----------------------------------"
echo "1. Uptime:"
uptime

echo "-----------------------------------"
echo "2. Disk Usage:"
df -h

echo "-----------------------------------"
echo "3. Memory Usage:"
free -m

echo "-----------------------------------"
echo "4. Running Processes:"
ps aux --sort=-%mem | head -5

echo "-----------------------------------"
echo "Monitoring completed successfully!"
