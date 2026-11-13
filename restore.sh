
#!/bin/bash

# Justice & Co. Law Associates
# Automated Restore Script

# Get the project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define backup and destination directories
BACKUP_DIR="$PROJECT_DIR/backups"
RESTORE_DIR="$PROJECT_DIR/data"

# Find the latest backup archive
LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/backup_*.zip 2>/dev/null | head -n 1)

# Check if a backup exists
if [ -z "$LATEST_BACKUP" ]; then
    echo "Error: No backup archive found!"
    exit 1
fi

# Restore files from the backup
if unzip -o "$LATEST_BACKUP" -d "$PROJECT_DIR"; then
    echo "Recovery completed successfully!"
    echo "Restored files to: $RESTORE_DIR"
else
    echo "Error: Recovery failed!"
    exit 1
fi
