
# Justice & Co. Law Associates - Backup and Recovery Project

## Project Overview

This project demonstrates a simple backup and recovery solution for Justice & Co. Law Associates.

The objective is to create a repeatable backup process that protects important case documents and allows data to be recovered if files are lost or damaged.

## Project Objectives

- Create automated, timestamped ZIP backups.
- Store backup archives in a dedicated directory.
- Verify backup archive contents.
- Restore files from the latest backup.
- Test data recovery using dummy case documents.
- Verify restored data integrity using SHA-256 checksums.

## Project Structure

    justice-co-backup/
    ├── backups/
    ├── data/
    │   ├── case001.txt
    │   ├── case002.txt
    │   └── case003.txt
    ├── backup.sh
    ├── restore.sh
    └── README.md

## Technologies Used

- Ubuntu Linux (WSL2)
- Bash scripting
- ZIP utility
- Git
- GitHub
- SHA-256 checksums

## How to Run the Backup

1. Ensure the backup script is executable:

       chmod +x backup.sh

2. Run the backup script:

       ./backup.sh

3. A timestamped ZIP archive will be created inside the backups/ directory.

## How to Restore Files

1. Ensure the restore script is executable:

       chmod +x restore.sh

2. Run the restore script:

       ./restore.sh

3. The script locates the latest ZIP archive and restores its contents into the data/ directory.

## Recovery Testing

A harmless simulated ransomware test was performed using fictional case documents.

Test procedure:

1. Recorded the original SHA-256 checksums of all three sample files.
2. Replaced their contents with a simulated ransomware warning message.
3. Ran the restore script to recover the original documents.
4. Compared the restored files against their original SHA-256 checksums.

### Recovery Test Results

All three files passed SHA-256 integrity verification:

- case001.txt: OK
- case002.txt: OK
- case003.txt: OK

This confirms that the restored files matched their original contents.

## Sample Data

The data/ directory contains three fictional case documents created exclusively for testing purposes.

No real client or confidential information is used.

## Project Status

- Task 1: Backup script and initial backup archive — Completed.
- Task 2: Restore script and simulated ransomware recovery test — Completed.
- Task 3: Final report and GitHub Pages — Pending.
