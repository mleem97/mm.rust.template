#!/usr/bin/env bash
set -euo pipefail

required_files=(
  AGENTS.md
  Cargo.toml
  Cargo.lock
  rust-toolchain.toml
  rustfmt.toml
  deny.toml
  .cargo/config.toml
  .agents/policy/NORMATIVE-RULES.md
  .agents/policy/GUIDANCE.md
  .agents/skills/project-init/SKILL.md
  .agents/skills/task-graph/SKILL.md
  .agents/schemas/task-graph.schema.json
  docs/README.md
  docs/project/PROJECT.yml
  docs/requirements/PRD-TEMPLATE.md
  docs/decisions/adr/TEMPLATE.md
  docs/decisions/ddr/TEMPLATE.md
  docs/features/_template/PRD.md
  docs/features/_template/ADR.md
  docs/features/_template/DDR.md
  docs/features/_template/design.md
  docs/features/_template/architecture.md
  docs/features/_template/SECURITY.md
  docs/features/_template/TESTING.md
  docs/security/THREAT-MODEL.md
  docs/security/SECURITY-ARCHITECTURE.md
  docs/security/SECURITY-CHECKLIST.md
  docs/task-graph/TASK-GRAPH-SPEC.md
)

for file in "${required_files[@]}"; do
  test -f "$file" || { echo "Missing required template file: $file" >&2; exit 1; }
done

for forbidden in Directory.Build.props Directory.Packages.props NuGet.Config gregMod.TemplateMod.sln; do
  test ! -e "$forbidden" || { echo "Forbidden legacy file present: $forbidden" >&2; exit 1; }
done

test ! -d "src/gregMod.TemplateMod" || { echo "Forbidden legacy C# source tree present" >&2; exit 1; }
test ! -d "scripts" || { echo "Legacy scripts directory must not be present in the Rust baseline" >&2; exit 1; }

for feature in docs/features/F-*; do
  [ -d "$feature" ] || continue
  for file in PRD.md ADR.md DDR.md design.md architecture.md SECURITY.md TESTING.md; do
    test -f "$feature/$file" || {
      echo "Feature package $feature is incomplete: missing $file" >&2
      exit 1
    }
  done
done

echo "Template governance gate passed."
