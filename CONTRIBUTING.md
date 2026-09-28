# Contributing

## Before you start

Read:

1. `AGENTS.md`
2. `.agents/policy/NORMATIVE-RULES.md`
3. `docs/README.md`

## Workflow

1. Create a focused branch.
2. Update the relevant PRD/ADR/DDR before material implementation changes.
3. Implement the smallest coherent change.
4. Run formatting, Clippy, tests, documentation and security checks.
5. Update the task graph and documentation status.
6. Open a pull request.

## Do not

- commit secrets;
- disable security checks to make CI pass;
- remove tests to hide failures;
- duplicate agent instructions;
- create a new documentation source for information that already has a canonical location.

## Template placeholders

Generated repositories should replace placeholders such as `<USER_NAME>` through the initialization workflow rather than hard-coding a real future user into this template.
