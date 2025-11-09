#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/system-monitor.log"

DATE=$(date)

# Use Windows equivalents via Git Bash
CPU=$(wmic cpu get loadpercentage | grep -Eo '[0-9]+')
MEM=$(wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value | grep "=" | awk -F= '{print $2}' | tr '\n' ' ')
DISK=$(df -h | grep 'C:' | awk '{print $3 "/" $2 " (" $5 ")"}')

echo "[$DATE] CPU: ${CPU:-N/A}% | MEM: ${MEM:-N/A} | DISK: ${DISK:-N/A}" >> "$LOG_FILE"
echo "System resources logged successfully!"

