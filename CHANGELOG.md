# Changelog

All notable changes to the Epistemic Stewardship Framework are documented here.

## [3.2] - 2026-03-04

### Removed (open-source cleanup)
- All AI Collaboration Disclosure footers from framework documents (internal accountability artifacts, not adopter-facing content)
- Personal name references replaced with "the author" throughout
- Internal process documents: Integrity Report, Simplification Plan, Submission Prep, Research Review, internal reviews
- Social media and positioning strategy content
- Removed fabricated citation note from research papers
- Moved Directive Memo to `examples/sample-directive-memo.md` as a worked example

### Added
- `examples/` folder with `sample-directive-memo.md` as a worked example for adopters

---

## [3.1] - 2026-03-04

### Added
- CITATION.cff for academic citation
- CONTRIBUTING.md and CODE_OF_CONDUCT.md for open-source community
- CHANGELOG.md (this file)
- End-to-end walkthroughs for both faculty and student toolkits
- Verification tables in AI Use Log and document editing rules
- Position Statement readability pass at Phase 3 opening
- Tool-agnostic `prompts/` folder for non-Claude Code users

### Changed
- Removed all institution-specific references for full institution-agnosticism
- Rewrote Framework Document for accessibility (Flesch-Kincaid target: 12)
- Language simplification pass across all deliverables
- Standardized terminology across all documents
- Tightened Phase 1/2 gates against AI-assisted Position Statements
- Updated Integrity Report to v1.2
- Converted faculty onboarding from agent to skill

### Removed
- Internal review documents from tracked files
- Institution-specific branding from footers and attribution
- Social media content from repository (moved to .gitignore)

## [3.0] - 2026-02-24

### Added
- Student toolkit with install script and onboarding skill
- Faculty toolkit with install script and onboarding skill
- Sample data for toolkit testing (AI-201 course)
- Literature Review with verified sources (zero fabricated citations)

### Changed
- Two-level architecture: Level 1 (Content Production) for faculty, Level 2 (Epistemic Development) for students
- Seven core constructs formalized: Directive Memo, Five Questions, Content Epistemic Weight, Human Validation Gates, Phased Workflow, Disclosure Protocol, Framework Evolution Protocol

## [1.0] - 2026-02-20

### Added
- Initial release of the Epistemic Stewardship Framework
- Core framework document
- Implementation guide
- Summary overview
