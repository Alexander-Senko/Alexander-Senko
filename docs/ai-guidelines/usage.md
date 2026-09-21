# How to Use These Guidelines

## 1) In a project repository

1. Copy `general.md` and one project-type module into your repository docs.
2. Start with existing standards/best-practice sources your team already trusts (framework conventions, existing skill modules/workflows, internal playbooks).
3. Add project-specific rules only for missing context or intentional exceptions (branch policy, CI commands, architecture notes).
4. Keep one canonical instruction entry point in the repo (for example `AGENTS.md` or `.github/copilot-instructions.md`).

## 2) In RubyMine

Use these files as your reusable instruction source:

- Keep them in a local snippets folder, then paste the relevant module pair (`general + project-type`) into task prompts.
- If your RubyMine AI plugin supports custom/global instructions, store the same module pair there and keep project-specific details in-repo.

## 3) In GitHub Copilot

Recommended setup:

1. Add a `.github/copilot-instructions.md` file in each target project.
2. Put `general` rules there, then append the relevant project-type module.
3. Reference existing standards and skill-based workflows first; keep local instructions focused on project-specific behavior.
4. Add project-specific conventions (test commands, architecture, naming patterns).
5. Review periodically and update when conventions evolve.

Optional modular setup for larger repos:

- Keep module files under `.github/instructions/` and reference or consolidate them into `copilot-instructions.md` as your team workflow prefers.

## 4) Maintenance workflow

- Revisit after major refactors or process changes.
- When the AI misses expectations, update the guideline text immediately with concrete rules.
- Keep rules short, explicit, and example-driven from your real codebase conventions.
