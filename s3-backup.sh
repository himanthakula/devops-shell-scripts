#!/bin/bash

SOURCE_DIR="/home/ubuntu/data"
BUCKET_NAME="my-s3-backup-bucket"
BACKUP_NAME="backup-$(date +%F-%H-%M-%S).tar.gz"

# Create tar.gz backup
tar -czf "/tmp/$BACKUP_NAME" "$SOURCE_DIR"

# Upload to S3
aws s3 cp "/tmp/$BACKUP_NAME" "s3://$BUCKET_NAME/"

# Remove local backup
rm "/tmp/$BACKUP_NAME"

echo "Backup completed and uploaded to S3."
