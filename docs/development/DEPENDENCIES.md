# Dependency Policy

Before adding a dependency:

1. verify that it is necessary;
2. check maintenance and release status;
3. inspect security advisories;
4. inspect license;
5. inspect transitive dependency impact;
6. evaluate MSRV/toolchain requirements;
7. evaluate binary/build impact;
8. document the reason when the dependency materially affects architecture.

Avoid wildcard dependency requirements.

Commit the lockfile.

Use cargo-deny and cargo-audit in CI.
