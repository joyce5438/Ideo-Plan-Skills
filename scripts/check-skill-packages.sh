#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
for target in "$ROOT/skills/ideo-topic-editor" "$ROOT/plugins/ideo-topic-editor/skills/ideo-topic-editor"; do
  cmp "$ROOT/SKILL.md" "$target/SKILL.md"
  diff -qr "$ROOT/references" "$target/references"
done
echo "All packaged skill copies match the root source."
