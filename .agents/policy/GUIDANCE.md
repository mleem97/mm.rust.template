# Agent Guidance

These are recommendations, not absolute rules.

## General

Prefer the smallest architecture that satisfies the requirement.

Search existing code and documentation before creating a new abstraction.

Use current official documentation for APIs and providers that may have changed.

## Planning

Prefer:

```text
goal → requirements → decisions → risks → graph → execution → validation
```

Keep planning artifacts readable by humans and machines.

Recursive decomposition should normally produce 2–5 child tasks.

Parallelize independent work only when their concurrency contract is explicit.

## Task graph

Use deterministic validation for dependency existence, cycle detection, duplicate IDs, state transitions, acceptance criteria, and parent/child relationships.

Use LLMs for semantic decomposition and critique, not for invariants that can be checked algorithmically.

For a self-hosted multi-user graph service, PostgreSQL is a good durable source of truth. Add a queue/cache only when measured requirements justify it.

## AI providers

Keep providers behind a common interface.

Support local models where practical, but do not assume local models have identical capabilities to hosted models.

## UX

Design empty, loading, error, partial-success, retry, and permission-denied states before polishing the happy path.

## Security

Treat model output as untrusted data.

Never let a model directly construct an unrestricted shell command.

Prefer typed tool calls with allow-lists and explicit approval gates.
