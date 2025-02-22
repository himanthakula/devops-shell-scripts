#!/bin/bash
# A simple backup script

BACKUP_DIR="$HOME/backup"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup_$(date +%F).tar.gz" /path/to/your/files

echo "Backup completed successfully at $(date)"
