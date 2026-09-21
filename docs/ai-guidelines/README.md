# Shared AI Guidelines

This folder contains reusable, modular AI working guidelines for Ruby/Rails projects.

## Modules

- `modules/general.md` — baseline behavior for any project.
- `modules/ruby-gem.md` — extra rules for Ruby gems.
- `modules/rails-engine.md` — extra rules for Rails engines.
- `modules/rails-application.md` — extra rules for Rails applications.
- `guides/usage.md` — how to apply these guidelines from a project, RubyMine, and GitHub Copilot.

## Recommended composition

Use `modules/general.md` as the base, then add one project-type module:

- Gem project: `modules/general.md` + `modules/ruby-gem.md`
- Rails Engine: `modules/general.md` + `modules/rails-engine.md`
- Rails app: `modules/general.md` + `modules/rails-application.md`

## Directory and naming standards

- Use lowercase kebab-case file names for markdown modules and guides.
- Group reusable rule sets under `modules/` and operational documentation under `guides/`.
- Keep one top-level `README.md` as the canonical index for this docs package.

## Standards-first principle

- Start from existing standards and proven best practices before adding custom rules.
- Reuse existing reusable skill modules/workflows where available, instead of duplicating guidance.
- Keep custom project rules only for deviations or project-specific constraints.

Keep project-specific conventions in the target repository (for example in `AGENTS.md` or `.github/copilot-instructions.md`).
