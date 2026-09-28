# CI/CD Hardening

Required:

- explicit workflow permissions;
- least-privilege GITHUB_TOKEN;
- no secrets in pull-request validation;
- no privileged execution of untrusted pull-request code;
- third-party actions pinned to full commit SHA;
- CODEOWNERS review for workflow/security changes;
- dependency scanning;
- secret scanning;
- reproducible release input;
- artifact checksum/provenance where applicable.

## Release separation

`validate → build → attest/checksum → publish → deploy`

Deployment must consume the exact artifact produced by the validated build.

## Self-hosted runners

Never execute untrusted pull requests on persistent self-hosted runners.
Use ephemeral isolated runners when a self-hosted runner is required.
