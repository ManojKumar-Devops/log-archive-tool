#!/bin/bash

# ==============================
# Log Archive Tool
# ==============================

# Validate argument
if [ -z "$1" ]; then
    echo "Usage: log-archive <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Archive directory
ARCHIVE_DIR="./archive_logs"
mkdir -p "$ARCHIVE_DIR"

# Timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Archive file name
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

# Create archive
tar -czf "$ARCHIVE_DIR/$ARCHIVE_FILE" "$LOG_DIR"

# Check status
if [ $? -eq 0 ]; then
    echo "Archive created: $ARCHIVE_FILE"

    # Log history
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Archived $LOG_DIR -> $ARCHIVE_FILE" >> archive.log
else
    echo "Error: Failed to archive logs"
    exit 1
fi
