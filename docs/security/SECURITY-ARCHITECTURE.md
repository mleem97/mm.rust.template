# Security Architecture

## Principles

1. Default deny.
2. Least privilege.
3. Explicit trust boundaries.
4. Durable auditability.
5. Human approval for high-impact actions.
6. Model output is untrusted.
7. Secrets never enter prompts unless explicitly required and policy-approved.
8. External data is validated before entering trusted application state.

## Agent execution

Agents receive explicit tool grants rather than unrestricted access.

Example capabilities:

```text
read_repository
write_repository
run_tests
run_safe_command
network_read
deployment_read
deployment_write
secret_use
```

High-impact capabilities require approval.

## Network

Self-hosted control-plane services should remain on a private network/VPN unless public access is required.

Only the reverse proxy/API gateway should be externally exposed.

## Data

Classify data as public, internal, confidential, or secret.

Provider-specific policy determines whether confidential data may be sent to external LLMs.

## Audit

Record actor, agent, task ID, tool, argument metadata, timestamp, result class, approval, and resulting state.

Never store raw secrets in audit logs.
