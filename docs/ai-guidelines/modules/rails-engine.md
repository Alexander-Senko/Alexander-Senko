# Rails Engine Module

Use this together with `modules/general.md`.

## Engine boundaries

- Keep host app coupling minimal and explicit.
- Avoid leaking engine internals into host application API.
- Prefer configurable extension points over monkey patches.

## Conventions

- Match Rails engine layout, naming, and autoloading conventions already in use.
- Keep migrations, initializers, and generators deterministic and reversible.
- Preserve compatibility with host app conventions where integration points exist.

## Testing focus

- Cover engine behavior in isolation and in host-app integration scenarios.
- Test install/setup paths (initializers, configuration, optional features).
- Validate upgrades/migrations for existing host applications.
