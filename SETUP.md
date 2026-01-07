# Git Repository Setup Instructions

This document provides instructions for setting up and configuring the Git repository for the Big Data Analytics Lab.

## Initial Repository Configuration

The repository has been configured with the following setup:

### 1. Remote Configuration

The repository uses two remotes:

- **origin**: Points to this repository (`https://github.com/smsamspublications/ksd-big-data-analytics-lab-2k26`)
- **upstream**: Points to the template repository (`https://github.com/sudhamtech/big-data-analytics-lab.git`)

To verify your remote configuration:
```bash
git remote -v
```

### 2. Branch Structure

The repository uses the following branch structure:

- **main**: The primary branch containing stable course materials
- **Feature branches**: Used for development and assignments

### 3. Setting Up Your Local Repository

If you're setting up a new local clone, follow these steps:

```bash
# Clone the repository
git clone https://github.com/smsamspublications/ksd-big-data-analytics-lab-2k26.git
cd ksd-big-data-analytics-lab-2k26

# Verify remotes are configured
git remote -v

# If you need to manually add the upstream remote:
git remote add upstream https://github.com/sudhamtech/big-data-analytics-lab.git

# Switch to main branch (or create it if it doesn't exist)
git checkout main || git checkout -b main

# Push to origin
git push -u origin main
```

## Syncing with Upstream

To get updates from the upstream template repository:

```bash
# Fetch upstream changes
git fetch upstream

# Merge upstream changes into your main branch
git checkout main
git merge upstream/main

# Push updated main to your origin
git push origin main
```

## Reference Commands

These are the core git commands used in the repository setup:

```bash
# Add origin remote (already configured as the main repository)
git remote add origin https://github.com/smsamspublications/ksd-big-data-analytics-lab-2k26.git

# Add upstream remote for template repository
git remote add upstream https://github.com/sudhamtech/big-data-analytics-lab.git

# Rename/create main branch
git branch -M main

# Push and set upstream tracking
git push -u origin main
```

## Working on Assignments

1. Create a new branch for your work:
   ```bash
   git checkout -b assignment-name
   ```

2. Make your changes and commit:
   ```bash
   git add .
   git commit -m "Description of changes"
   ```

3. Push your branch:
   ```bash
   git push -u origin assignment-name
   ```

4. Create a pull request if required

## Troubleshooting

### Remote already exists
If you get an error that a remote already exists:
```bash
git remote remove origin
git remote add origin <new-url>
```

### Branch naming
To rename your current branch to main:
```bash
git branch -M main
```

## Additional Resources

- Git Documentation: https://git-scm.com/doc
- GitHub Guides: https://guides.github.com/
- Upstream Repository: https://github.com/sudhamtech/big-data-analytics-lab.git
