# Rails Engine Module

## Scope focus

- Treat host-app compatibility as a first-class requirement.
- Keep engine boundaries explicit (namespace, routes, configuration, migrations).

## Implementation guidance

- Align with existing engine patterns for concerns, service objects, and decorators/presenters.
- Avoid leaking engine internals into host app unless intentionally part of public integration.
- Keep configuration defaults safe and overridable.

## Testing guidance

- Cover isolated engine behavior and host-app integration paths.
- Verify mount/routing behavior, initializer/config interactions, and extension points.
- Include regression tests for cross-feature interactions that can affect host apps.

## Documentation guidance

- Document install/setup, migrations, required initializers, and host app integration steps.
- Document any extension hooks and supported override patterns.
