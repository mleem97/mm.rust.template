# Skill: Build and Validate an AI Task Graph

## Purpose

Generate a durable, self-hostable DAG from approved planning artifacts.

## Pipeline

### 1. Retrieve
Load PRDs, ADRs, DDRs, security artifacts, roadmap, and repository state.

### 2. Decompose
Use an LLM to recursively split goals into concrete tasks. Normally produce 2–5 children.

### 3. Critique
Check ambiguity, missing prerequisites, broad tasks, duplicated work, missing acceptance criteria, and hidden dependencies.

### 4. Normalize
Convert dependencies to stable task IDs.

### 5. Validate deterministically
Reject cycles, dangling dependencies, duplicate IDs, invalid state transitions, and invalid graph references.

### 6. Rank
Calculate topological order and annotate priority, risk, effort, capability, and parallelism group.

### 7. Approve
Apply human approval gates.

### 8. Execute
Schedule ready nodes within concurrency and resource limits.

### 9. Reconcile
Compare expected outputs with actual state and create follow-up tasks.

Never silently mark a failed node successful.
