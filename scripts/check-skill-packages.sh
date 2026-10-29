#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
for target in "$ROOT/skills/ideo-plan" "$ROOT/plugins/ideo-plan/skills/ideo-plan"; do
  cmp "$ROOT/SKILL.md" "$target/SKILL.md"
  diff -qr "$ROOT/references" "$target/references"
done
echo "All packaged skill copies match the root source."
