#!/bin/bash

# Justice & Co. Law Associates
# Automated Backup Script

# Get the project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define source and backup directories
SOURCE_DIR="$PROJECT_DIR/data"
BACKUP_DIR="$PROJECT_DIR/backups"

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Define backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.zip"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Data directory not found!"
    exit 1
fi

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create ZIP backup using a relative path
if (cd "$PROJECT_DIR" && zip -r "$BACKUP_FILE" data); then
    echo "Backup completed successfully!"
    echo "Backup saved at: $BACKUP_FILE"
else
    echo "Error: Backup failed!"
    exit 1
fi
