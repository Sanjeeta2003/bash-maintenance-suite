#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
REPORT_FILE="$LOG_DIR/system-report.txt"
DATE=$(date)

echo "===== SYSTEM HEALTH REPORT ($DATE) =====" > "$REPORT_FILE"
echo "Hostname: $(hostname)" >> "$REPORT_FILE"
echo "Username: $USERNAME" >> "$REPORT_FILE"
echo "OS Version: $(cmd /c ver)" >> "$REPORT_FILE"
echo "Disk Usage (C:): $(df -h | grep 'C:' | awk '{print $3 "/" $2 " (" $5 ")"}')" >> "$REPORT_FILE"

echo "===== END OF REPORT =====" >> "$REPORT_FILE"
echo "Report generated at $REPORT_FILE"

