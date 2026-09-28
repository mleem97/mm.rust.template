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

Every material feature has all of the following:

1. a detailed PRD;
2. an ADR;
3. a DDR;
4. security impact assessment;
5. test/acceptance criteria;
6. a wiki link when user-facing.

Every material decision has a PRD, ADR, and DDR. If the decision has no graphical UI, the DDR explicitly records that the visual dimension is not applicable.

## Language and audience

Configure these independently in `project/PROJECT.yml`.

Supported languages: `en`, `de`.

Supported public audiences: `user`, `modder`.

Do not duplicate the entire documentation tree for every combination.

## 1.0.0 gate

The first full release MUST document product scope, architecture, design, every feature, every decision, security, deployment, operations, troubleshooting, migration, release, user guidance, and modder/developer guidance where applicable.
