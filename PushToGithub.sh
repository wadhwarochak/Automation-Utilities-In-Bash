#!/bin/bash
rm -rf MyLinuxMachi*
rm -rf SCRIP*
git clone https://github.com/wadhwarochak/MyLinuxMachine.git

cp -r /d/CODE/zGithub-Repository/Automation-Utilities-In-Bash/MyLinuxMachine/SCR* /d/CODE/zGithub-Repository/Automation-Utilities-In-Bash/

rm -rf MyLinuxMachi*


# Script: push_to_github.sh
# Purpose: Commit and push recent changes to GitHub

# Exit on any error
set -e

# Get commit message from argument or use default
COMMIT_MSG=${1:-"Updated recent changes"}

# Add all modified and new files
git add .

# Commit changes
git commit -m "$COMMIT_MSG"

# Push to the current branch
git push

echo "✅ Changes pushed successfully with message: '$COMMIT_MSG'"