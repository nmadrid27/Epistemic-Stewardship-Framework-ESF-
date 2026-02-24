#!/usr/bin/env bash
# ESF Student Toolkit Installer
# Drops the .claude/ configuration into your current directory.
#
# Usage (run from inside your portfolio repo):
#   curl -sSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
#
# Add --sample to install pre-filled AI-201 test data (Alex Rivera):
#   curl -sSL ... | bash -s -- --sample

set -e

SAMPLE=false
for arg in "$@"; do
  if [ "$arg" = "--sample" ]; then
    SAMPLE=true
  fi
done

TOOLKIT_BASE="https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit"
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo -e "${CYAN}ESF Student Toolkit — Installer${NC}"
echo "──────────────────────────────────────"

# Warn if already installed
if [ -d ".claude/agents" ] && [ -f ".claude/agents/esf-student.md" ]; then
  echo -e "${YELLOW}Warning: ESF Student Toolkit appears to already be installed.${NC}"
  read -r -p "Overwrite with the latest version? (y/N): " confirm
  if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 0
  fi
fi

# Check for git repo
if [ ! -d ".git" ]; then
  echo -e "${YELLOW}Warning: This directory is not a git repository.${NC}"
  echo "The toolkit works best inside a git repo (your portfolio repo)."
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
mkdir -p .claude/skills/esf-project
mkdir -p .claude/reference

# Download agents
echo "  Fetching agents..."
curl -sSL "$TOOLKIT_BASE/.claude/agents/esf-student.md" -o .claude/agents/esf-student.md

# Download skills
echo "  Fetching skills..."
curl -sSL "$TOOLKIT_BASE/.claude/skills/esf-onboarding/SKILL.md" -o .claude/skills/esf-onboarding/SKILL.md
curl -sSL "$TOOLKIT_BASE/.claude/skills/esf-project/SKILL.md"    -o .claude/skills/esf-project/SKILL.md

# Download reference files
echo "  Fetching reference files..."
curl -sSL "$TOOLKIT_BASE/.claude/reference/esf-student-guide.md"   -o .claude/reference/esf-student-guide.md
curl -sSL "$TOOLKIT_BASE/.claude/reference/disclosure-protocol.md" -o .claude/reference/disclosure-protocol.md

# Download workflow diagram (skip if file already exists — student may have customized it)
if [ ! -f "WORKFLOW.md" ]; then
  curl -sSL "$TOOLKIT_BASE/WORKFLOW.md" -o WORKFLOW.md
fi

# Install sample data if --sample flag was passed
if [ "$SAMPLE" = true ]; then
  echo "  Installing AI-201 sample data (Alex Rivera)..."
  mkdir -p projects/ai-201/briefs
  mkdir -p projects/ai-201/position-statements
  mkdir -p projects/ai-201/records-of-resistance
  mkdir -p projects/ai-201/work
  curl -sSL "$TOOLKIT_BASE/sample/agents/esf-student.md" \
    -o .claude/agents/esf-student.md
  curl -sSL "$TOOLKIT_BASE/sample/projects/ai-201/briefs/p2-responsive-system.md" \
    -o projects/ai-201/briefs/p2-responsive-system.md
  curl -sSL "$TOOLKIT_BASE/sample/projects/ai-201/position-statements/responsive-system.md" \
    -o projects/ai-201/position-statements/responsive-system.md
  curl -sSL "$TOOLKIT_BASE/sample/projects/ai-201/records-of-resistance/ror-01.md" \
    -o projects/ai-201/records-of-resistance/ror-01.md
fi

echo ""
echo -e "${GREEN}ESF Student Toolkit installed.${NC}"
echo ""
echo "──────────────────────────────────────"
echo -e "${CYAN}Next steps:${NC}"
echo ""

if [ "$SAMPLE" = true ]; then
  echo "  Sample data installed. Open Claude Code and try:"
  echo "     claude"
  echo "  Then: \"I want to keep working on my responsive system.\""
  echo ""
  echo "  When you're ready to set up your own profile, run:"
  echo "     /esf-onboarding"
else
  echo "  1. Open Claude Code in this directory:"
  echo "     claude"
  echo ""
  echo "  2. Run onboarding to personalize your toolkit:"
  echo "     /esf-onboarding"
  echo ""
  echo "  Onboarding takes about 5 minutes and sets up your name, courses,"
  echo "  and project folder structure."
  echo ""
  echo "  Adding a new course later? Re-run /esf-onboarding and say 'update'."
fi

echo "──────────────────────────────────────"
echo ""
