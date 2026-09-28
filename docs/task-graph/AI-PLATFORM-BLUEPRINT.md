# AI Platform / Project Organizer Blueprint

This blueprint describes the requested program and its deployment model. It remains separate from the universal template.

## Product

A self-hosted AI-driven project organizer that:

1. interviews the user;
2. creates a detailed PRD;
3. creates ADRs and DDRs;
4. creates threat/security artifacts;
5. builds a project plan;
6. generates a validated task DAG;
7. assigns tasks to agents and skills;
8. executes approved tasks;
9. reconciles actual state against the plan;
10. keeps project knowledge centralized.

## Services

### Web UI

Project dashboard, interview, document editor, decision browser, graph visualization, approvals, execution status, and audit history.

### API

Rust service for authentication, projects, documents, requirements, decisions, graph versions, task state, approvals, and audit records.

### Planner

Retrieval, decomposition, critic, graph normalization, and deterministic validation.

### Executor

Durable workers that claim ready tasks, invoke skills/tools, persist state, retry according to policy, and report results.

### Knowledge

Start with PostgreSQL metadata/full-text search. Semantic retrieval is optional and must not be a V1 prerequisite.

### Model gateway

Common interface for hosted providers and local models such as Ollama. Provider choice is configuration, not domain logic.

## Domain model

```text
Project
Document
Requirement
Feature
ADR
DDR
Threat
SecurityControl
TaskGraph
TaskGraphRevision
TaskNode
TaskRun
Approval
Agent
Skill
Tool
AuditEvent
ModelProvider
```

## Agent roles

- Project Intake Agent
- Architecture Agent
- Design Agent
- Security Agent
- Task Graph Planner
- Task Graph Critic
- Task Executor
- Test/QA Agent
- Documentation Agent
- Release Agent
- Finalizer/Reconciliation Agent

## Skills

- initialize Rust project
- inspect repository
- research official documentation
- create PRD
- create ADR
- create DDR
- threat-model feature
- build task graph
- validate task graph
- run Rust validation
- run security checks
- prepare release
- deploy Docker stack
- inspect Proxmox deployment

Agents choose skills; skills do not contain copies of global policy.

## Graph execution

```text
User request
 ↓
Intake
 ↓
Interview
 ↓
PRD + decisions
 ↓
Plan
 ↓
Graph planner
 ↓
Critic
 ↓
Deterministic validator
 ↓
Human approval
 ↓
Executor
 ↓
Verification
 ↓
Finalizer
 ↓
Documentation reconciliation
```

## Deployment inventory

### Proxmox

Required:

- one dedicated VM for the control plane

Optional:

- separate PostgreSQL VM
- GPU VM for local inference
- backup target

### Docker

Required:

- web
- API
- planner/worker
- PostgreSQL
- reverse proxy

Optional:

- Valkey
- Ollama
- object storage
- observability

### Network

```text
VPN/LAN
  │
reverse-proxy
  ├── web
  └── api
       ├── postgres
       └── workers
            ├── model gateway
            └── MCP/LSP tools
```

No database or worker management port should be publicly exposed.

## Deployment phases

### A — Development

Docker Compose on a workstation.

### B — Private production

Proxmox VM + Docker Compose, VPN-only access, daily database backup, health checks and restart policy.

### C — Hardened production

Separate database storage, dedicated workers, authentication/SSO if required, centralized audit, artifact backup, restore test.

### D — Scale

Multiple workers, queue/cache, separate services/VMs, GPU inference node, object storage, and only then Kubernetes if justified.

## Critical security boundary

The executor is the highest-risk component.

It must not receive unrestricted root access, unrestricted host filesystem access, unrestricted network access, or raw production credentials.

Repository changes should run in isolated workspaces.

Deployment tasks require explicit approval.

## 1.0.0 documentation gate

The first full release must document product, architecture, UX, every feature, every material decision, threat model, security architecture, deployment, operations, recovery, agents, skills, MCP/LSP integrations, graph schema, model-provider behavior, user guide, and modder/developer guide.
