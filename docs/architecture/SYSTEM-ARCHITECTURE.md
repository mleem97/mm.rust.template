# System Architecture

The universal template defines a reusable architecture. A generated project chooses a blueprint and records concrete decisions in ADRs.

## Logical layers

```text
Presentation
    ↓
Application
    ↓
Domain
    ↓
Ports
    ↓
Infrastructure
```

Infrastructure implementations are injected through explicit ports.

## Cross-cutting concerns

- configuration
- logging
- security
- observability
- error handling
- telemetry
- persistence
- external integrations

Feature boundaries should remain independently understandable and documented.

Each feature links its PRD, ADR, DDR, UX architecture, UI design, security, and tests.
