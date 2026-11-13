# Justice & Co. Law Associates - Backup and Recovery Project

## Project Overview

This project demonstrates a simple backup and recovery solution for Justice & Co. Law Associates.

The objective is to create a repeatable backup process that protects important case documents and allows data to be recovered if files are lost or damaged.

## Project Objectives

- Create automated, timestamped ZIP backups.
- Store backup archives in a dedicated directory.
- Verify backup archive contents.
- Test data recovery using dummy case documents.

## Project Structure

    justice-co-backup/
    ├── backups/
    ├── data/
    │   ├── case001.txt
    │   ├── case002.txt
    │   └── case003.txt
    ├── backup.sh
    └── README.md

## Technologies Used

- Ubuntu Linux (WSL2)
- Bash scripting
- ZIP utility
- Git
- GitHub

## How to Run the Backup

1. Open the project directory in the terminal.
2. Ensure the backup script is executable:

       chmod +x backup.sh

3. Run the backup script:

       ./backup.sh

4. The script creates a timestamped ZIP archive inside the backups/ directory.

## Sample Data

The data/ directory contains three fictional case documents created exclusively for testing purposes.

No real client or confidential information is used.

## Project Status

Task 1: Initial backup script and archive creation — Completed.

Further recovery testing and documentation will be added as the project progresses.
