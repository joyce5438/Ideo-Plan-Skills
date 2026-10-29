#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
for target in "$ROOT/skills/ideo-topic-editor" "$ROOT/plugins/ideo-topic-editor/skills/ideo-topic-editor"; do
  mkdir -p "$target"
  cp "$ROOT/SKILL.md" "$target/SKILL.md"
  rm -rf "$target/references"
  cp -R "$ROOT/references" "$target/references"
done
echo "Packaged copies synchronized from root source."
