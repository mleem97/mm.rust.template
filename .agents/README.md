# Central AI Agent System

This directory is the single source of truth for repository AI-agent behavior.

Do not create copies of the same instructions in individual feature folders.

## Structure

```text
.agents/
├── agents/       agent definitions
├── skills/       reusable workflows
├── policy/       normative rules and guidance
├── mcp/          MCP contracts/configuration
├── lsp/          LSP configuration
├── schemas/      machine-readable schemas
├── prompts/      reusable prompt fragments
└── runtime/      runtime/state contracts
```

## Separation

Normative rules answer **what must be true**.

Guidance answers **how the agent should normally approach it**.

Skills describe repeatable workflows.

Agents describe roles and responsibilities.

## Required workflow

```text
User request
  ↓
Context retrieval
  ↓
Requirements interview
  ↓
PRD
  ↓
ADR + DDR
  ↓
Threat model / security impact
  ↓
Implementation plan
  ↓
Task graph
  ↓
Validation
  ↓
Execution
  ↓
Documentation reconciliation
```

## No duplicate knowledge

A feature may link to central policy, skills, schemas, and templates. It must not copy them.
