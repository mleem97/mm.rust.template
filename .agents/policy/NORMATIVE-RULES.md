# Normative Rules

These rules are mandatory unless an explicit, reviewed exception is recorded.

## Repository

1. The repository MUST remain Rust-first.
2. Rust stable and Rust 2024 MUST be used for Rust crates.
3. Workspace dependency direction MUST be acyclic.
4. Main MUST be protected; normal changes MUST use pull requests.
5. Secrets MUST NOT be committed.
6. Security controls MUST NOT be disabled to obtain a green build.
7. Tests MUST NOT be removed or weakened to hide failures.
8. Unsafe Rust MUST be isolated and justified.
9. External/untrusted data MUST be validated at system boundaries.
10. Every material architectural decision MUST have an ADR.
11. Every material product requirement MUST have a PRD.
12. Every material UI/design decision MUST have a DDR.
13. Every feature MUST link its PRD, ADR, DDR, security impact, and validation plan where applicable.
14. Documentation MUST have a canonical source.
15. Agent instructions MUST be centralized under `.agents/`.
16. Project documentation and planning MUST be centralized under `docs/`.
17. Subdirectories MUST NOT contain duplicated agent policy or repository standards.
18. Templates MUST use placeholders such as `<USER_NAME>`, `<PROJECT_NAME>`, and `<ORGANIZATION_NAME>`.
19. Documentation language and audience MUST remain independent dimensions.
20. Public audience modes MUST include User and Modder.

## Quality

Applicable changes MUST pass formatting, linting, compile checks, tests, security checks, and documentation validation before completion.

## Task graph

1. A task graph MUST be a directed acyclic graph.
2. Every dependency MUST reference an existing node.
3. Cycles MUST be rejected before execution.
4. Leaf tasks MUST have explicit acceptance criteria.
5. Destructive/external-impact tasks MUST support human approval.
6. Failed tasks MUST retain diagnostics.
7. Retries MUST be bounded.
8. Execution state MUST be durable.
9. The graph source of truth MUST be versioned.
10. A graph MUST be traceable to its source requirements and plan.

## Security

1. CI and runtime credentials MUST use least privilege.
2. Provider/API credentials MUST remain outside source control.
3. Agent tools MUST have explicit capability boundaries.
4. Agents MUST NOT receive unrestricted shell/network/file access by default.
5. Mutating tool calls MUST be auditable.
6. User data MUST NOT be sent to an LLM provider unless the data-flow policy permits it.
