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

Every feature MUST contain all seven decision/product/design/security/testing artifacts.

`design.md` is authoritative for visual/UI design.

`architecture.md` is authoritative for UX architecture: information architecture, interaction flows, navigation, state model, and user journeys.

If a feature has no graphical UI, `design.md` and the DDR explicitly record the non-visual design constraints and why a visual interface is not applicable.

Do not create per-feature copies of `.agents/` or repository policy.
