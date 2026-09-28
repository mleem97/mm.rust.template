# Releasing

## Release lifecycle

`PR → CI → release candidate → version → changelog → clean build → checksum/SBOM/provenance → release → post-release verification`

## Requirements

Before a release:

- all required CI checks pass;
- documentation status is acceptable;
- security checklist is complete;
- changelog is updated;
- version is correct;
- release artifacts are reproducible enough for the project;
- migration notes exist for breaking changes.

The first complete release is `1.0.0`.

A version bump does not substitute for documentation completeness.
