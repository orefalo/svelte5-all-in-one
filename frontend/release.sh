#!/bin/bash

# Ensure we're starting from the repository root
cd "$(git rev-parse --show-toplevel)"

# Fetch the latest changes from the remote repository
git fetch origin

# Checkout the main branch and pull the latest changes
git checkout main
git pull origin main

# Checkout the release branch and pull the latest changes
git checkout release
git pull origin release

# Merge the changes from main into release
git merge main

# Check if there are conflicts
if [ $? -ne 0 ]; then
    echo "Merge conflicts detected. Please resolve them manually."
    exit 1
fi

# Push the changes to the remote release branch
git push origin release

echo "Changes from main branch have been successfully merged into release branch."

git checkout main

echo "checkout main -- so we're back on the main branch"
