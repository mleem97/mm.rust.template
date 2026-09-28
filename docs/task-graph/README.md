# AI Task Graph

The task graph connects project planning to implementation.

It is a DAG, not a free-form mind map.

## Pipeline

```text
PRD
 ↓
ADR / DDR / Security
 ↓
Implementation plan
 ↓
LLM decomposition
 ↓
Critic
 ↓
Deterministic validator
 ↓
DAG
 ↓
Human approval
 ↓
Executor
 ↓
Finalizer / reconciliation
```

LLMs are useful for semantic decomposition but deterministic code must enforce graph invariants.

See `TASK-GRAPH-SPEC.md`, `SELF-HOSTING.md`, and `AI-PLATFORM-BLUEPRINT.md`.
