#!/bin/bash

# Script to display server performance statistics

echo "Server Performance Report - $(date)"
echo "----------------------------------------"

# Total CPU usage
echo "CPU Usage:"
CPU=($(head -n 1 /proc/stat))
IDLE_OLD=${CPU[4]}
TOTAL_OLD=$((${CPU[@]:1}))
sleep 1
CPU=($(head -n 1 /proc/stat))
IDLE_NEW=${CPU[4]}
TOTAL_NEW=$((${CPU[@]:1}))
IDLE=$((IDLE_NEW - IDLE_OLD))
TOTAL=$((TOTAL_NEW - TOTAL_OLD))
CPU_USAGE=$((100 * (TOTAL - IDLE) / TOTAL))
echo "  Total CPU Usage: $CPU_USAGE%"

# Total memory usage
echo "Memory Usage:"
MEMORY_TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
MEMORY_USED=$(free -m | awk '/^Mem:/ {print $3}')
MEMORY_FREE=$(free -m | awk '/^Mem:/ {print $4}')
MEMORY_PERCENT=$((100 * MEMORY_USED / MEMORY_TOTAL))
echo "  Total Memory: ${MEMORY_TOTAL}MB"
echo "  Used Memory: ${MEMORY_USED}MB (${MEMORY_PERCENT}%)"
echo "  Free Memory: ${MEMORY_FREE}MB"

# Total disk usage
echo "Disk Usage:"
DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
DISK_AVAILABLE=$(df -h / | awk 'NR==2 {print $4}')
DISK_PERCENT=$(df -h / | awk 'NR==2 {print $5}')
echo "  Total Disk: ${DISK_TOTAL}"
echo "  Used Disk: ${DISK_USED} (${DISK_PERCENT})"
echo "  Available Disk: ${DISK_AVAILABLE}"

# Top 5 processes by CPU usage
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | awk '{printf "  PID: %s, Command: %s, CPU: %s%%\n", $1, $2, $3}'

# Top 5 processes by memory usage
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6 | awk '{printf "  PID: %s, Command: %s, Memory: %s%%\n", $1, $2, $3}'

echo "----------------------------------------"
