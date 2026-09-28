# Threat Model

## Scope

This threat model covers the template and the self-hosted AI planning/execution architecture described by the AI platform blueprint.

## Assets

- source code
- repository credentials
- signing keys
- project requirements
- proprietary project knowledge
- user data
- model credentials
- agent execution state
- generated artifacts
- deployment credentials

## Trust boundaries

```text
User
 ↓
Web/UI
 ↓
API
 ↓
Planner / Executor
 ↓
Tools / MCP / LSP
 ↓
Repository / Infrastructure
```

Model providers and external services are separate trust domains.

## Threats

- prompt injection
- malicious model output
- tool abuse
- credential leakage
- compromised dependency
- compromised CI action
- malicious repository content
- unauthorized task execution
- graph poisoning
- data exfiltration
- unsafe shell execution
- unauthorized deployment

## Required controls

- typed tool contracts
- least privilege
- approval gates
- audit log
- schema validation
- graph validation
- secret isolation
- sandboxed execution
- dependency/security scanning
- immutable release artifacts
- backup and recovery
- network segmentation
