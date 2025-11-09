#!/bin/bash
# cleanup.sh - Cleans up old temporary and log files (Windows/Git Bash version)

LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/maintenance.log"

echo "===== CLEANUP STARTED at $(date) =====" >> "$LOG_FILE"

# Clean /tmp files older than 7 days (ignore permission errors)
find /tmp -type f -mtime +7 -exec rm -f {} \; 2>/dev/null
echo "$(date): Cleaned /tmp files" >> "$LOG_FILE"

echo "===== CLEANUP COMPLETED =====" >> "$LOG_FILE"
echo "Cleanup finished successfully!"
