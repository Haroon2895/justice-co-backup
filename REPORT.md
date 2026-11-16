# Justice & Co. Law Associates
## Backup and Recovery Technical Report

**Project:** Backup and Recovery Test  
**Test date:** 16 November 2026  
**Environment:** Ubuntu Linux (WSL2)  
**Data classification:** Fictional test data only

---

## 1. Objectives

The purpose of this project was to develop and test a basic backup and recovery solution for Justice & Co. Law Associates.

The objectives were to:

- Create timestamped ZIP backups of sample case documents.
- Restore files from the latest available backup.
- Simulate a harmless ransomware incident.
- Verify that restored files are identical to their originals.
- Publish the project report and results through GitHub Pages.

## 2. Tools and Technologies

- Ubuntu Linux (WSL2)
- Bash scripting
- ZIP and Unzip utilities
- SHA-256 checksums
- Git and GitHub
- GitHub Pages
- HTML and Markdown

## 3. Backup Process

The `backup.sh` script creates a timestamped ZIP archive containing the contents of the `data/` directory.

The backup was created by running `./backup.sh`.

The fresh archive created for the recovery test was:

`backups/backup_20261115_111505.zip`

The archive was inspected, and it contained all three fictional sample files:

- `case001.txt`
- `case002.txt`
- `case003.txt`

## 4. Ransomware Simulation

A harmless ransomware simulation was performed using fictional test documents.

The contents of all three files were temporarily replaced with a test warning message. No actual ransomware or malicious software was used.

Before the simulation, the original files were preserved separately in:

`/tmp/justice-original-data-20261115/`

This reference copy allowed the restored files to be compared with the originals.

## 5. Recovery Process

The `restore.sh` script identifies the latest available ZIP archive and extracts its contents into the project directory.

Recovery was performed by running `./restore.sh`.

The script successfully restored all three sample case files from the latest backup archive.

## 6. Recovery Verification

The restored files were compared with the separately preserved original files using:

`diff -r /tmp/justice-original-data-20261115/ data/`

**Result:** No differences were found.

**Exit code:** `0`

An exit code of zero confirms that the restored files were identical to the original reference files.

The earlier SHA-256 integrity test also reported successful verification for all three sample files:

| File | SHA-256 verification |
|---|---|
| case001.txt | OK |
| case002.txt | OK |
| case003.txt | OK |

Detailed recovery evidence is available in `evidence/recovery-test-results.txt`.

## 7. Encryption and Security Considerations

The original ZIP backup created by `backup.sh` is not encrypted automatically.

As an additional security test, the backup archive was encrypted separately using GNU Privacy Guard (GPG) with symmetric AES-256 encryption.

The encrypted archive is:

`backups/backup_20261115_111505.zip.gpg`

The encryption and decryption process was tested successfully:

- GPG identified the encrypted archive as AES-256 encrypted data.
- The archive was decrypted using the correct passphrase.
- The `cmp` command returned exit code `0`, confirming that the decrypted archive was byte-for-byte identical to the original.
- The `unzip -t` integrity test reported no errors.
- All three fictional case files passed the integrity test.

Detailed results are documented in `evidence/encryption-test-results.txt`.

The encryption process is currently manual and is not integrated into `backup.sh` or `restore.sh`. For real organizational use, backup archives should be encrypted, access-controlled, stored securely, and tested regularly.

Only fictional sample documents were used in this project. No real client information was processed.

## 8. Conclusion

The backup and recovery test was successful.

A fresh backup was created, a harmless ransomware simulation was performed, and the restore script recovered all three original sample files.

The `diff` comparison returned exit code zero, confirming that the recovered files were identical to the preserved originals.

The project demonstrates a working basic backup and recovery process and provides documented evidence of successful restoration.

---

**Repository:** https://github.com/Haroon2895/justice-co-backup

**GitHub Pages:** https://haroon2895.github.io/justice-co-backup/
