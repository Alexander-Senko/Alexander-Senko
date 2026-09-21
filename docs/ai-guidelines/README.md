# Shared AI Guidelines

This folder contains reusable, modular AI working guidelines for Ruby/Rails projects.

## Modules

- `general.md` — baseline behavior for any project.
- `ruby-gem.md` — extra rules for Ruby gems.
- `rails-engine.md` — extra rules for Rails engines.
- `rails-application.md` — extra rules for Rails applications.
- `usage.md` — how to apply these guidelines from a project, RubyMine, and GitHub Copilot.

## Recommended composition

Use `general.md` as the base, then add one project-type module:

- Gem project: `general.md` + `ruby-gem.md`
- Rails Engine: `general.md` + `rails-engine.md`
- Rails app: `general.md` + `rails-application.md`

## Standards-first principle

- Start from existing standards and proven best practices before adding custom rules.
- Reuse existing reusable skill modules/workflows where available, instead of duplicating guidance.
- Keep custom project rules only for deviations or project-specific constraints.

Keep project-specific conventions in the target repository (for example in `AGENTS.md` or `.github/copilot-instructions.md`).
