#!/usr/bin/env bash
# ESF Faculty Toolkit Installer
# Drops the .claude/ configuration and templates into your current directory.
#
# Usage (run from inside your faculty repo):
#   curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit/install.sh | bash

set -e

TOOLKIT_BASE="https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/faculty-toolkit"
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo -e "${CYAN}ESF Faculty Toolkit — Installer${NC}"
echo "──────────────────────────────────────"

# Warn if already installed
if [ -d ".claude/agents" ] && [ -f ".claude/agents/esf-faculty.md" ]; then
  echo -e "${YELLOW}Warning: ESF Faculty Toolkit appears to already be installed.${NC}"
  read -r -p "Overwrite with the latest version? (y/N): " confirm
  if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 0
  fi
fi

# Check for git repo
if [ ! -d ".git" ]; then
  echo -e "${YELLOW}Warning: This directory is not a git repository.${NC}"
  echo "The toolkit works best inside a git repo."
  read -r -p "Install anyway? (y/N): " confirm
  if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Installation cancelled. Initialize a git repo first, then re-run."
    exit 0
  fi
fi

echo "Installing..."

# Create directory structure
mkdir -p .claude/agents
mkdir -p .claude/skills/esf-onboarding
mkdir -p .claude/skills/curriculum-dev
mkdir -p .claude/skills/document-production
mkdir -p .claude/reference
mkdir -p templates

# Download agents
echo "  Fetching agents..."
curl -sSL "$TOOLKIT_BASE/.claude/agents/esf-faculty.md"     -o .claude/agents/esf-faculty.md

# Download skills
echo "  Fetching onboarding skill..."
curl -sSL "$TOOLKIT_BASE/.claude/skills/esf-onboarding/SKILL.md"     -o .claude/skills/esf-onboarding/SKILL.md
echo "  Fetching curriculum-dev skill..."
curl -sSL "$TOOLKIT_BASE/.claude/skills/curriculum-dev/SKILL.md"     -o .claude/skills/curriculum-dev/SKILL.md
echo "  Fetching document-production skill..."
curl -sSL "$TOOLKIT_BASE/.claude/skills/document-production/SKILL.md" -o .claude/skills/document-production/SKILL.md

# Download reference files
echo "  Fetching reference files..."
curl -sSL "$TOOLKIT_BASE/.claude/reference/esf-faculty-guide.md"      -o .claude/reference/esf-faculty-guide.md
curl -sSL "$TOOLKIT_BASE/.claude/reference/esf-student-guide.md"      -o .claude/reference/esf-student-guide.md
curl -sSL "$TOOLKIT_BASE/.claude/reference/disclosure-protocol.md"    -o .claude/reference/disclosure-protocol.md
curl -sSL "$TOOLKIT_BASE/.claude/reference/epistemic-stewardship.md"  -o .claude/reference/epistemic-stewardship.md

# Download templates
echo "  Fetching templates..."
curl -sSL "$TOOLKIT_BASE/templates/directive-memo-template.md"        -o templates/directive-memo-template.md
curl -sSL "$TOOLKIT_BASE/templates/integrity-report-template.md"      -o templates/integrity-report-template.md
curl -sSL "$TOOLKIT_BASE/templates/course-ai-policy-template.md"      -o templates/course-ai-policy-template.md

# Download workflow diagram (skip if already exists)
if [ ! -f "WORKFLOW.md" ]; then
  curl -sSL "$TOOLKIT_BASE/WORKFLOW.md" -o WORKFLOW.md
fi

echo ""
echo -e "${GREEN}ESF Faculty Toolkit installed.${NC}"
echo ""
echo "──────────────────────────────────────"
echo -e "${CYAN}Next steps:${NC}"
echo ""
echo "  1. Open Claude Code in this directory:"
echo "     claude"
echo ""
echo "  2. Run onboarding to personalize your toolkit:"
echo "     /esf-onboarding"
echo ""
echo "  Onboarding takes 10–15 minutes. It collects your identity, courses,"
echo "  and project briefs — and reviews your briefs for ESF alignment."
echo ""
echo "  Adding a new course or updating briefs? Re-run /esf-onboarding"
echo "  and say 'update'."
echo "──────────────────────────────────────"
echo ""
