#!/bin/bash
# master.sh - Executes all maintenance tasks sequentially

echo "Starting Bash Maintenance Suite..."
echo "==================================="

bash cleanup.sh
bash backup.sh
bash monitor.sh
bash update.sh
bash report.sh

echo "==================================="
echo "All maintenance tasks completed successfully!"
