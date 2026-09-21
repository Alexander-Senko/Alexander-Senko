# Rails Application Module

## Scope focus

- Prioritize business-flow correctness across models, services, jobs, and controllers.
- Keep data integrity and authorization consistent across entry points.

## Implementation guidance

- Follow established app architecture (service objects, concerns, presenters/decorators, query objects).
- Keep cross-layer contracts clear (controller/service/model boundaries).
- Prefer reusable abstractions over one-off logic when patterns already exist.

## Testing guidance

- Cover request, model, service, and job behavior as needed for the change scope.
- Test critical user flows end-to-end where regressions are costly.
- Add interaction tests for callbacks, background jobs, and external integrations.

## Documentation guidance

- Update operational notes for config/env/deployment-sensitive changes.
- Document migrations and data backfill requirements when applicable.
