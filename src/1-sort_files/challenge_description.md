# Directory Sorting Challenge

This challenge involves creating a Bash script to organize files within a directory based on their type. The objective is to practice Bash scripting skills, including handling file operations, using regular expressions, and working with loops and conditionals.

## Challenge Description

Write a Bash script that:

1. **Organizes Files by Type:**
   - Files with extensions (e.g., `file.txt`, `image.jpg`) should be moved into directories named after their extensions (e.g., `txt/`, `jpg/`).
   - Hidden files (dotfiles, e.g., `.bashrc`, `.gitignore`) should be moved into a directory called `dotfiles/`.
   - Files without extensions should be moved into a directory called `no_extension/`.

2. **Handles Edge Cases:**
   - Ensure the script gracefully handles invalid input, such as a non-existent or inaccessible directory.
   - Process files with special characters or spaces in their names correctly.

3. **Provides Informative Feedback:**
   - Display messages to inform the user about the actions taken by the script, such as creating directories or moving files.

## Requirements
- The script should accept a directory as an argument.
- If no argument is provided, the script should default to the current directory.
- The script should validate the input to ensure it is a valid directory.

## Example

Given the following files in a directory:
```
file1.txt
file2.jpg
.hiddenfile
no_extension
```

The script should organize them into:
```
txt/
    file1.txt
jpg/
    file2.jpg
dotfiles/
    .hiddenfile
no_extension/
    no_extension
```

## Goals
- Practice Bash scripting and improve proficiency.
- Use functions to modularize code.
- Work with regular expressions for pattern matching.
- Handle errors and edge cases effectively.

## Instructions
1. Implement your solution based on the challenge description.
2. Test your script with various input scenarios.
3. Ensure your script adheres to best practices for Bash scripting.

Good luck, and have fun scripting!
