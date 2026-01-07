#!/bin/bash

# Git Repository Setup Script
# This script configures the git repository for the Big Data Analytics Lab

set -e  # Exit on error

echo "========================================="
echo "Git Repository Setup for Big Data Analytics Lab"
echo "========================================="
echo ""

# Check if we're in a git repository
if [ ! -d .git ]; then
    echo "Error: Not a git repository. Please run this script from the repository root."
    exit 1
fi

# Display current remote configuration
echo "Current remote configuration:"
git remote -v
echo ""

# Check if upstream remote exists
if git remote | grep -q "^upstream$"; then
    echo "✓ Upstream remote already configured"
else
    echo "Adding upstream remote..."
    git remote add upstream https://github.com/sudhamtech/big-data-analytics-lab.git
    echo "✓ Upstream remote added"
fi

echo ""
echo "Updated remote configuration:"
git remote -v
echo ""

# Check current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "Current branch: $CURRENT_BRANCH"

# Check if main branch exists
if git show-ref --verify --quiet refs/heads/main; then
    echo "✓ Main branch exists"
    if [ "$CURRENT_BRANCH" != "main" ]; then
        read -p "Switch to main branch? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            git checkout main
            echo "✓ Switched to main branch"
        fi
    fi
else
    echo "Main branch does not exist."
    read -p "Create and switch to main branch? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git checkout -b main
        echo "✓ Main branch created"
    fi
fi

echo ""
echo "========================================="
echo "Setup complete!"
echo "========================================="
echo ""
echo "Next steps:"
echo "1. Make your changes"
echo "2. Commit: git add . && git commit -m 'Your message'"
echo "3. Push: git push -u origin main"
echo ""
echo "To sync with upstream:"
echo "  git fetch upstream"
echo "  git merge upstream/main"
echo ""
