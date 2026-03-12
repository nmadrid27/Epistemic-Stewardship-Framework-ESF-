#!/usr/bin/env bash
# ESF Faculty Toolkit - Repository Setup
# Creates a git repository for faculty who are new to GitHub.
#
# Usage:
#   curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/setup-repo.sh | bash
#
# What it does:
#   1. Creates a working directory
#   2. Initializes a git repository
#   3. Sets up .gitignore and initial README
#   4. Makes the first commit
#   5. Optionally creates a private GitHub repo (requires gh CLI)
#   6. Runs the ESF Faculty Toolkit installer

set -e

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${CYAN}ESF Faculty Toolkit - Repository Setup${NC}"
echo "──────────────────────────────────────────"
echo ""
echo "This script creates a git repository for your ESF faculty workspace."
echo "No prior git or GitHub experience required."
echo ""

# Check for git
if ! command -v git &> /dev/null; then
  echo -e "${RED}Error: git is not installed.${NC}"
  echo ""
  echo "Install git first:"
  echo "  macOS:   brew install git"
  echo "  Windows: https://git-scm.com/download/win"
  echo "  Linux:   sudo apt install git (Ubuntu/Debian)"
  echo ""
  exit 1
fi

# Ask for repo name
DEFAULT_NAME="faculty-workspace"
read -r -p "Repository name (default: $DEFAULT_NAME): " REPO_NAME
REPO_NAME="${REPO_NAME:-$DEFAULT_NAME}"

# Sanitize: replace spaces with hyphens, lowercase
REPO_NAME=$(echo "$REPO_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-_')

if [ -d "$REPO_NAME" ]; then
  echo -e "${RED}Error: Directory '$REPO_NAME' already exists.${NC}"
  echo "Choose a different name or delete the existing directory."
  exit 1
fi

# Ask for faculty name (used in README)
read -r -p "Your name (for the README): " FACULTY_NAME

echo ""
echo -e "${CYAN}Creating repository...${NC}"

# Create directory and initialize git
mkdir -p "$REPO_NAME"
cd "$REPO_NAME"
git init -q

# Create .gitignore
cat > .gitignore << 'GITIGNORE'
# OS files
.DS_Store
Thumbs.db

# Editor files
*.swp
*.swo
*~
.vscode/
.idea/

# Node (if using microsites)
node_modules/
dist/

# Environment
.env
.env.local
GITIGNORE

# Create initial README
cat > README.md << README
# ${FACULTY_NAME:-Faculty} Teaching Workspace

This repository holds course materials, project briefs, and documents developed with AI assistance under the Epistemic Stewardship Framework.

Managed with the [ESF Faculty Toolkit](https://github.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-).

## Structure

After running the ESF Faculty Toolkit installer, the repository will contain:

- \`courses/\` — Course materials, organized by course
- \`documents/\` — Institutional documents and session logs
- \`templates/\` — ESF templates (directive memos, integrity reports, AI policies)
- \`.claude/\` — Toolkit configuration (if using Claude Code)

## Setup

If the toolkit is not yet installed, run:

\`\`\`bash
curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash
\`\`\`
README

# First commit
git add .
git commit -q -m "Initial repository setup"

echo -e "${GREEN}  Repository created: $(pwd)${NC}"

# Offer to create GitHub remote
echo ""
if command -v gh &> /dev/null; then
  echo -e "${BOLD}Push to GitHub?${NC}"
  echo "This creates a private repository on your GitHub account."
  read -r -p "Create GitHub repo? (Y/n): " CREATE_REMOTE
  CREATE_REMOTE="${CREATE_REMOTE:-Y}"

  if [[ "$CREATE_REMOTE" =~ ^[Yy]$ ]]; then
    if gh auth status &> /dev/null; then
      gh repo create "$REPO_NAME" --private --source=. --push -q 2>/dev/null && \
        echo -e "${GREEN}  GitHub repo created and pushed.${NC}" || \
        echo -e "${YELLOW}  Could not create GitHub repo. You can do this later with: gh repo create${NC}"
    else
      echo -e "${YELLOW}  Not logged in to GitHub CLI. Run 'gh auth login' first.${NC}"
      echo "  You can push to GitHub later."
    fi
  fi
else
  echo -e "${YELLOW}Optional: Install the GitHub CLI (gh) to create a remote repo from the terminal.${NC}"
  echo "  macOS: brew install gh"
  echo "  Other: https://cli.github.com/"
  echo ""
  echo "  Or create a repo manually at https://github.com/new"
  echo "  then run:"
  echo "    git remote add origin https://github.com/YOUR-USERNAME/$REPO_NAME.git"
  echo "    git push -u origin main"
fi

# Run the ESF installer
echo ""
echo "──────────────────────────────────────────"
echo -e "${CYAN}Installing ESF Faculty Toolkit...${NC}"
echo ""

INSTALLER_URL="https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh"
curl -sSL "$INSTALLER_URL" | bash

echo ""
echo -e "${GREEN}All done.${NC} Your faculty workspace is ready at: $(pwd)"
echo ""
