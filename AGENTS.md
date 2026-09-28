# AGENTS.md

00-CHECK-00

This file is the repository entry point for all AI/coding agents.

## Mandatory bootstrap

Before any work:

1. Read `.agents/README.md`.
2. Read `.agents/policy/NORMATIVE-RULES.md`.
3. Read the relevant skill under `.agents/skills/`.
4. Read `docs/README.md`.
5. Read the relevant project/feature documentation under `docs/`.
6. Inspect the current repository state before changing it.

The detailed agent system is centralized in `.agents/`. Do not create duplicate AGENTS.md, agent instruction trees, skills, MCP configuration, or LSP configuration inside subdirectories unless a documented exception exists.

## Source of truth

- Normative engineering rules: `.agents/policy/NORMATIVE-RULES.md`
- Agent guidance: `.agents/policy/GUIDANCE.md`
- Agent registry: `.agents/agents/`
- Skills: `.agents/skills/`
- MCP configuration/contracts: `.agents/mcp/`
- LSP configuration: `.agents/lsp/`
- Project knowledge and planning: `docs/`
- Architecture decisions: `docs/decisions/adr/`
- Design decisions: `docs/decisions/ddr/`
- Product requirements: `docs/requirements/`
- Feature specifications: `docs/features/`
- Security knowledge: `docs/security/`

## Response consistency

Every agent response MUST begin with:

```text
00-CHECK-00
```

The marker is the first visible characters of the response.

## Mandatory decision records

Every material product, architecture, UX/design, security, infrastructure, data, dependency, or workflow decision MUST have:

- a Product Requirements Document (PRD) describing the requirement;
- an Architecture Decision Record (ADR) describing the architectural decision;
- a Design Decision Record (DDR) describing the design decision where applicable.

## User and Modder modes

Documentation language and audience are independent dimensions.

Supported public modes:

- language: English | German
- audience: User | Modder

Never create duplicated agent instructions for these combinations.

## Scope

This repository is a reusable Rust template. Project-specific implementations belong in blueprints or generated project areas.
