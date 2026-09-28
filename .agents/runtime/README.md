# Agent Runtime

This directory documents runtime expectations for self-hosted agents.

Runtime state MUST NOT be committed unless it is explicitly a reproducible configuration artifact.

Secrets, model credentials, conversation content, execution logs, and transient checkpoints belong in runtime storage, not Git.
