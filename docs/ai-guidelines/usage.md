# Usage Guide

## 1) Use in a project repository

Add a short project-level AI instruction file that references these modules:

- Always include `general.md`
- Add one project-type module (`ruby-gem.md`, `rails-engine.md`, or `rails-application.md`)
- Add project-specific constraints (domain rules, naming, architecture specifics)

Recommended structure in each project:

- `docs/ai-guidelines/` (copied or synced module files)
- a root instruction file (for example, `AGENTS.md` or repository-level Copilot instruction file) that points to selected modules

## 2) Use from RubyMine

- Open project settings for AI assistant instructions.
- Point instructions to your project’s selected guideline modules.
- Keep the short “active” instruction compact and link to detailed module docs.
- Reuse the same baseline text across projects, then append project-specific deltas.

## 3) Use with GitHub Copilot

- Store selected guideline modules in the repository.
- Reference them from your repository Copilot instruction file.
- Keep global behavior in `general.md`, project-type behavior in one module, and task-specific notes in PR/task prompts.

## 4) Suggested baseline instruction snippet

Use this as intent (adapt to each repository):

- Align workflow, commits, and communication with existing project practices.
- Match implementation and test style to current codebase patterns.
- Cover happy/edge/failure paths and feature interactions in tests.
- Proactively suggest missing tests/docs and safe improvements when encountered.
