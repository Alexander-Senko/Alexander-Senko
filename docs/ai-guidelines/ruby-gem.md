# Ruby Gem Module

## Scope focus

- Protect public API stability and semantic versioning expectations.
- Keep dependencies minimal and justified.

## Implementation guidance

- Prefer framework-agnostic design unless the gem is explicitly Rails-only.
- Preserve backward compatibility or document migration notes when changing behavior.
- Keep load paths, autoloading, and extension points predictable.

## Testing guidance

- Test public API behavior first, internals second.
- Add matrix-aware thinking for supported Ruby versions where relevant.
- Include failure-mode tests for invalid inputs and integration boundaries.

## Release/doc guidance

- Update changelog/release notes for meaningful behavior changes.
- Document configuration, usage examples, and upgrade impact.
