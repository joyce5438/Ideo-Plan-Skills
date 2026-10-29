# Ideo Plan

An adaptable, research-informed topic exploration and editorial planning skill for long-form work across disciplines. It helps identify promising questions, discuss evidence-backed directions and provisional structures, and revisit major decisions as research develops.

## Usage

Invoke `Ideo Plan` and provide a topic, intended audience or desired outcome. Broad topics prompt proportionate preliminary discovery, distinctive options and a user discussion before dependent deep research or drafting. Explicitly specified directions and direct requests take precedence.

## Structure

- `SKILL.md`: controller, routing and acceptance.
- `references/spec-dsl.md`: execution specification in DSL-style notation.
- `references/spec-human.md`: human-readable guide.
- `references/examples.md` and `references/regression-cases.md`: usage and failure cases.
- `skills/` and `plugins/`: packaged copies generated from the root.
- `scripts/`: synchronization and verification.

Edit the root source only, then run `bash scripts/sync-skill-packages.sh` and `bash scripts/check-skill-packages.sh`. The notation guides the model; it is not executable code and does not guarantee compliance. It does not replace deeper research, fact checking or editorial review.

## Installation

Codex: `codex plugin marketplace add and install joyce5438/Ideo-Plan-Skills`

Claude Code:

```text
/plugin marketplace add joyce5438/Ideo-Plan-Skills
/plugin install ideo-plan@ideo-plan
```

Updates: `codex plugin marketplace upgrade ideo-plan` or `/plugin marketplace update ideo-plan`.
