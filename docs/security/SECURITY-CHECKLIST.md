# Security Checklist

## Repository

- [ ] No secrets committed
- [ ] Secret scanning enabled
- [ ] Dependency audit enabled
- [ ] License policy defined
- [ ] SBOM generated where applicable
- [ ] CI permissions minimized
- [ ] Third-party actions pinned
- [ ] Protected main/ruleset configured

## Application

- [ ] Input validation
- [ ] Authentication/authorization
- [ ] Rate limiting where applicable
- [ ] Secure defaults
- [ ] Error/log redaction
- [ ] Dependency boundaries
- [ ] Unsafe code reviewed

## AI agents

- [ ] Tool allow-list
- [ ] Human approval gates
- [ ] Prompt-injection defenses
- [ ] Model output validation
- [ ] Network restrictions
- [ ] Shell sandbox
- [ ] Secret isolation
- [ ] Audit trail
- [ ] Durable task state

## Deployment

- [ ] Private network by default
- [ ] Non-root containers
- [ ] Read-only filesystem where practical
- [ ] Resource limits
- [ ] Health checks
- [ ] Backup
- [ ] Restore test
- [ ] Rollback procedure
