#!/usr/bin/env bash
# ESF Student Toolkit Installer
# Drops the .claude/ configuration into your current directory.
#
# Usage (run from inside your portfolio repo):
#   curl -fsSL https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/install.sh | bash
#
# Add --sample to install pre-filled BUILD-level test data (Alex Rivera):
#   curl -fsSL ... | bash -s -- --sample

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
echo -e "${CYAN}ESF Student Toolkit - Installer${NC}"
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
  echo ""
  echo "Options:"
  echo "  1) Run the setup script (creates a repo for you)"
  echo "  2) Install here anyway (no git)"
  echo "  3) Cancel"
  read -r -p "Choose [1/2/3]: " GIT_CHOICE
  case "$GIT_CHOICE" in
    1)
      SETUP_URL="https://raw.githubusercontent.com/nmadrid27/Epistemic-Stewardship-Framework-ESF-/main/student-toolkit/setup-repo.sh"
      echo "Launching setup script..."
      curl -fsSL "$SETUP_URL" | bash
      exit $?
      ;;
    2)
      echo "Continuing without git..."
      ;;
    *)
      echo "Installation cancelled."
      exit 0
      ;;
  esac
fi

echo "Installing..."

# Create directory structure
mkdir -p .claude/agents
mkdir -p .claude/skills/esf-onboarding
mkdir -p .claude/skills/esf-project
mkdir -p .claude/reference
mkdir -p prompts
mkdir -p templates

# Download agents (preserve personalized agent on re-install)
echo "  Fetching agents..."
if [ -f ".claude/agents/esf-student.md" ] && grep -q "STUDENT_NAME\|^- \*\*Name:\*\*" .claude/agents/esf-student.md 2>/dev/null && ! grep -q "\[STUDENT_NAME\]" .claude/agents/esf-student.md 2>/dev/null; then
  echo -e "  ${YELLOW}Personalized agent file found; skipping to preserve your profile.${NC}"
  echo "  To force update: delete .claude/agents/esf-student.md and re-run."
else
  curl -fsSL "$TOOLKIT_BASE/.claude/agents/esf-student.md" -o .claude/agents/esf-student.md
fi

# Download skills
echo "  Fetching skills..."
curl -fsSL "$TOOLKIT_BASE/.claude/skills/esf-onboarding/SKILL.md" -o .claude/skills/esf-onboarding/SKILL.md
curl -fsSL "$TOOLKIT_BASE/.claude/skills/esf-project/SKILL.md"    -o .claude/skills/esf-project/SKILL.md

# Download prompts (for non-Claude Code users)
echo "  Fetching prompts..."
curl -fsSL "$TOOLKIT_BASE/prompts/student-companion.md"  -o prompts/student-companion.md
curl -fsSL "$TOOLKIT_BASE/prompts/project-workflow.md"   -o prompts/project-workflow.md
curl -fsSL "$TOOLKIT_BASE/prompts/README.md"             -o prompts/README.md

# Download templates
echo "  Fetching templates..."
curl -fsSL "$TOOLKIT_BASE/templates/position-statement-template.md"    -o templates/position-statement-template.md
curl -fsSL "$TOOLKIT_BASE/templates/ai-use-log-template.md"           -o templates/ai-use-log-template.md
curl -fsSL "$TOOLKIT_BASE/templates/record-of-resistance-template.md" -o templates/record-of-resistance-template.md
curl -fsSL "$TOOLKIT_BASE/templates/session-log-template.md"          -o templates/session-log-template.md
curl -fsSL "$TOOLKIT_BASE/templates/student-reflection-template.md"   -o templates/student-reflection-template.md
curl -fsSL "$TOOLKIT_BASE/templates/evolution-log-template.md"        -o templates/evolution-log-template.md

# Download reference files
echo "  Fetching reference files..."
curl -fsSL "$TOOLKIT_BASE/.claude/reference/esf-student-guide.md"   -o .claude/reference/esf-student-guide.md
curl -fsSL "$TOOLKIT_BASE/.claude/reference/disclosure-protocol.md" -o .claude/reference/disclosure-protocol.md

# Download workflow diagram (skip if file already exists; student may have customized it)
if [ ! -f "WORKFLOW.md" ]; then
  curl -fsSL "$TOOLKIT_BASE/WORKFLOW.md" -o WORKFLOW.md
fi

# Install sample data if --sample flag was passed
if [ "$SAMPLE" = true ]; then
  echo "  Installing BUILD-level sample data (Alex Rivera)..."
  mkdir -p projects/build-course/briefs
  mkdir -p projects/build-course/position-statements
  mkdir -p projects/build-course/records-of-resistance
  mkdir -p projects/build-course/ai-use-logs
  mkdir -p projects/build-course/gate-records
  mkdir -p projects/build-course/reflections
  mkdir -p projects/build-course/logs
  mkdir -p projects/build-course/work
  curl -fsSL "$TOOLKIT_BASE/sample/agents/esf-student.md" \
    -o .claude/agents/esf-student.md
  curl -fsSL "$TOOLKIT_BASE/sample/projects/build-course/briefs/p2-responsive-system.md" \
    -o projects/build-course/briefs/p2-responsive-system.md
  curl -fsSL "$TOOLKIT_BASE/sample/projects/build-course/position-statements/responsive-system.md" \
    -o projects/build-course/position-statements/responsive-system.md
  curl -fsSL "$TOOLKIT_BASE/sample/projects/build-course/records-of-resistance/ror-01.md" \
    -o projects/build-course/records-of-resistance/ror-01.md
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
