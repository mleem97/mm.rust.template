# Project Documentation Hub

This directory is the canonical project knowledge base.

It is intentionally centralized so a project does not accumulate disconnected documentation folders containing copies of the same information.

## Structure

```text
docs/
├── project/          identity, scope, roadmap, wiki map
├── requirements/     PRDs and traceability
├── features/         one canonical package per feature
├── decisions/
│   ├── adr/          Architecture Decision Records
│   └── ddr/          Design Decision Records
├── security/         threat model, security architecture, checklist
├── architecture/     system architecture and technical contracts
├── design/           global UI design system
├── planning/         implementation plans and milestones
├── task-graph/       graph specification and execution model
├── wiki/             publishable wiki source/navigation
├── blueprints/       reusable project-type blueprints
└── references/       specialized/historical knowledge
```

## Documentation contract

Every material feature has:

1. a PRD;
2. an ADR for architecture decisions;
3. a DDR for design decisions where applicable;
4. security impact assessment;
5. test/acceptance criteria;
6. a wiki link when user-facing.

## Language and audience

Configure these independently in `project/PROJECT.yml`.

Supported languages: `en`, `de`.

Supported public audiences: `user`, `modder`.

Do not duplicate the entire documentation tree for every combination.

## 1.0.0 gate

The first full release MUST document product scope, architecture, design, every feature, decisions, security, deployment, operations, troubleshooting, migration, release, user guidance, and modder/developer guidance where applicable.
