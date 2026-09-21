# Ruby Gem Module

Use this together with `general.md`.

## Packaging and compatibility

- Respect existing gem public API stability.
- Keep semantic versioning impact explicit when behavior changes.
- Maintain `required_ruby_version`, dependency bounds, and changelog discipline.

## Gem structure

- Follow established load paths and namespace conventions.
- Keep core logic framework-agnostic unless gem purpose is framework-specific.
- Ensure error messages are actionable for library consumers.

## Testing focus

- Test public API contracts first.
- Add compatibility coverage for supported Ruby versions where feasible.
- Ensure failures explain integration misuse clearly.
