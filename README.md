# KSD Big Data Analytics Lab 2026

This repository contains lab materials and exercises for the Big Data Analytics course.

## Repository Setup

This repository is set up with the following configuration:

- **Origin**: `https://github.com/smsamspublications/ksd-big-data-analytics-lab-2k26` (this repository)
- **Upstream**: `https://github.com/sudhamtech/big-data-analytics-lab.git` (reference/template repository)

## Git Configuration

The repository is configured with:
- Main working branch: `main`
- Current remotes:
  - `origin` - Your fork/copy of the lab repository
  - `upstream` - The original template repository

## Getting Started

To work with this repository:

1. Clone the repository:
   ```bash
   git clone https://github.com/smsamspublications/ksd-big-data-analytics-lab-2k26.git
   cd ksd-big-data-analytics-lab-2k26
   ```

2. The upstream remote is already configured to reference the template repository:
   ```bash
   git remote -v
   ```

3. To sync with the upstream repository:
   ```bash
   git fetch upstream
   git merge upstream/main
   ```

## Working with the Repository

- The `main` branch contains the primary course materials
- Create feature branches for your work:
  ```bash
  git checkout -b your-branch-name
  ```

- Push your changes:
  ```bash
  git push -u origin your-branch-name
  ```

## References

- Template Repository: https://github.com/sudhamtech/big-data-analytics-lab.git