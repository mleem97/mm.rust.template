# Feature Documentation

Each feature gets exactly one canonical documentation package.

```text
docs/features/F-<NUMBER>-<slug>/
├── PRD.md
├── ADR.md
├── DDR.md
├── design.md
├── architecture.md
├── SECURITY.md
├── TESTING.md
└── README.md
```

`design.md` is authoritative for visual/UI design.

`architecture.md` is authoritative for UX architecture: information architecture, interaction flows, navigation, state model, and user journeys.

Do not create per-feature copies of `.agents/` or repository policy.
