# mm.rust.template

A reusable, security-first, general-purpose Rust repository template.

The template is designed to become the foundation for future Rust projects rather than a template for one application.

## What is centralized?

### Project knowledge

All project planning and documentation lives under:

```text
docs/
```

This includes:

- PRDs
- ADRs
- DDRs
- feature specifications
- architecture
- design system
- threat model
- security architecture
- security checklist
- roadmap
- task-graph specification
- wiki source
- deployment plans
- blueprints
- references

### AI system

All AI-agent infrastructure lives under:

```text
.agents/
```

This includes:

- agents
- skills
- policies
- MCP contracts/configuration
- LSP configuration
- schemas
- prompts
- runtime contracts

The root `AGENTS.md` is only the entry point and explicitly directs agents to these canonical locations.

## Documentation modes

Language and audience are independent.

Supported languages:

- English
- German

Supported public audiences:

- User
- Modder

See `docs/project/PROJECT.yml`.

## Rust baseline

- stable Rust
- Rust 2024
- Cargo resolver 3
- rustfmt
- Clippy
- tests
- cargo-audit
- cargo-deny
- CI/CD
- supply-chain controls

Rust 2024 implies resolver 3, but the workspace declares it explicitly for clarity.

## Project initialization

Use the centralized project-init skill:

```text
.agents/skills/project-init/SKILL.md
```

The expected workflow is:

```text
Interview
→ PRD
→ ADR/DDR
→ Threat Model
→ Plan
→ Task Graph
→ Approval
→ Implementation
→ Validation
```

## AI task graph

The template includes a self-hosting blueprint for a durable AI task graph under:

```text
docs/task-graph/
```

The recommended first production deployment is a Docker Compose stack inside a dedicated Proxmox VM. PostgreSQL is the durable source of truth; additional queues, caches, vector stores, or Kubernetes are optional scaling decisions.

## 1.0.0 principle

Version 1.0.0 is the first full release, not merely the first build that works.

Before 1.0.0, every material feature and decision must be documented and linked. A first-time contributor should be able to understand the project without reconstructing its architecture from commit history.

## License

Apache License 2.0.
