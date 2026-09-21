# Rails Application Module

Use this together with `general.md`.

## Application architecture

- Preserve existing domain boundaries (models/services/interactors/presenters/etc.).
- Keep controller actions thin and place business logic in existing service layers.
- Use existing policies/authorization patterns consistently.

## Data and operations

- Treat schema changes as production-impacting: include rollback-safe migrations.
- Consider background jobs, idempotency, and transaction boundaries for write flows.
- Respect observability conventions (logging, instrumentation, error reporting).

## Testing focus

- Cover request/integration behavior for user-facing changes.
- Verify authorization, validation, and persistence side effects.
- Add regression tests for bugs and risky flows.
