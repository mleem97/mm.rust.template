# Task Graph Specification

## Node

Each node contains:

- id
- title
- type
- description
- parent
- dependencies
- acceptance criteria
- inputs
- expected outputs
- required capabilities
- risk
- priority
- retry policy
- timeout
- status

## Lifecycle

```text
planned → ready → running → verifying → succeeded
planned → blocked
running → failed
failed → retrying
failed → blocked
running → cancelled
```

## Invariants

- unique node IDs
- all dependencies exist
- no cycles
- every leaf has acceptance criteria
- dependency edges are immutable during execution unless a new graph revision is created
- execution state is durable

## Scheduling

A scheduler selects ready nodes.

Independent nodes may run concurrently within configured limits.

Use resource locks for shared resources such as repository writes, deployment targets, exclusive build environments, and credentials.

## Human gates

A node may set `requires_approval: true`.

The executor must stop at that boundary until approval is recorded.

## Provenance

Every graph revision references source planning documents and their content hashes.
