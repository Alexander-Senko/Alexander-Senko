# General AI Guidelines

## Workflow

- Align commit strategy, commit message style, and PR communication with the current project and recent repositories.
- Before changing code, check nearby modules/tests to match existing patterns.
- Keep changes small, focused, and consistent with existing abstractions.

## Code style

- Follow the project’s established Ruby/Rails conventions instead of introducing personal style.
- Reuse existing helpers, concerns, and shared examples where possible.
- Keep naming, error handling, and class/module layout consistent with surrounding code.

## Tests

- Cover happy paths, edge cases, and failure paths for each feature.
- Consider feature interactions and regression risks.
- Prefer existing test style (RSpec structure, helper usage, matcher style).

## Proactivity

- Suggest missing tests or docs for touched and adjacent areas when gaps are found.
- Suggest safe refactors and technical debt fixes that reduce future maintenance cost.

## Additions

- Security: validate authorization, input handling, and unsafe defaults in touched code.
- Compatibility: preserve public APIs unless task explicitly requires breaking changes.
- Documentation: keep user-facing or developer-facing docs in sync with behavior changes.
