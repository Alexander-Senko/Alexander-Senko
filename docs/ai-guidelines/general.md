# General AI Guidelines

## Standards and best practices

- Prefer existing standards, established conventions, and proven patterns before introducing custom instructions.
- Reuse available skill modules/workflows where possible instead of rewriting equivalent guidance.
- Add custom rules only when they clarify project-specific constraints or intentional deviations.

## Workflow

- Align commit strategy, commit message style, and task update style with existing project history.
- Match branch naming and PR structure already used by the team.
- Prefer small, reviewable commits and keep each commit focused on one concern.

## Code style

- Before implementing, inspect neighboring modules/methods/tests and mirror established patterns.
- Reuse existing abstractions before introducing new ones.
- Keep naming, error handling, and file organization consistent with the repository.

## Tests

- Cover happy path, edge cases, and failure paths for every delivered behavior.
- Verify interactions with existing features and regression risks.
- Update or add tests in the same style and level (unit/integration/system) already used in the project.

## Proactivity

- Flag missing tests or docs in touched areas, even if outside the exact task scope.
- Suggest improvements when you see clear risks: dead code, duplication, fragile APIs, unclear naming.
- Call out trade-offs and follow-up work explicitly.

## Quality & safety additions

- Validate changes with the project's existing lint/test/build commands.
- Avoid introducing secrets, insecure defaults, or dependency upgrades without necessity.
- If a requirement is ambiguous, clarify before implementing speculative behavior.
