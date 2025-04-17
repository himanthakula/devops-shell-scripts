#!/bin/bash

LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/archive"
MAX_LOG_DAYS=7

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Compress logs older than today
find "$LOG_DIR" -name "*.log" -type f -mtime +0 -exec gzip {} \;

# Move compressed logs to archive
find "$LOG_DIR" -name "*.gz" -exec mv {} "$ARCHIVE_DIR" \;

# Delete archived logs older than X days
find "$ARCHIVE_DIR" -name "*.gz" -mtime +$MAX_LOG_DAYS -exec rm -f {} \;

echo "Log rotation completed."
