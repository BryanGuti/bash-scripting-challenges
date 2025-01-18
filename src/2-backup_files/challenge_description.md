# File Backup Challenge

This challenge involves creating a Bash script to back up files from a specified directory to a backup location. The goal is to practice working with file operations, timestamps, and ensuring efficient and safe backups.

## Challenge Description

Write a Bash script that:

1. **Backs Up Files:**
   - Copies all files from a specified source directory to a target backup directory.
   - Ensures the backup directory has a timestamped subdirectory for each run (e.g., `backup_YYYY-MM-DD_HH-MM-SS/`).

2. **Handles Edge Cases:**
   - Verifies the existence and accessibility of the source and backup directories.
   - Skips copying files that already exist in the target directory with the same content to save time and space.

3. **Provides Informative Feedback:**
   - Displays messages about the progress of the backup, such as which files are being copied or skipped.

## Requirements
- The script should accept two arguments: the source directory and the backup directory.
- If either argument is missing or invalid, the script should display an error and exit.
- Use timestamps to organize backups within the target directory.
- Ensure the script works with filenames that include spaces or special characters.

## Example

Given the following structure in the source directory:
```
src/
    file1.txt
    file2.txt
    subdir/
        file3.txt
```

After running the script with `./backup.sh src/ backups/`, the target directory should contain:
```
backups/
    backup_YYYY-MM-DD_HH-MM-SS/
        file1.txt
        file2.txt
        subdir/
            file3.txt
```

## Goals
- Practice working with file and directory operations in Bash.
- Use timestamps to manage backup organization.
- Optimize the backup process to avoid redundant copies.
- Handle errors and edge cases effectively.

## Instructions
1. Implement your solution based on the challenge description.
2. Test your script with various input scenarios, including large directories.
3. Ensure your script adheres to best practices for Bash scripting.

Good luck, and enjoy building your backup script!
