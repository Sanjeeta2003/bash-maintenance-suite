#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/maintenance.log"

SOURCE="$HOME/Documents"
DEST="$HOME/backups"
DATE=$(date +%Y-%m-%d)

mkdir -p "$DEST"
tar -czf "$DEST/system-backup-$DATE.tar.gz" "$SOURCE" 2>/dev/null

echo "$(date): Backup created at $DEST/system-backup-$DATE.tar.gz" >> "$LOG_FILE"
echo "Backup completed successfully!"
