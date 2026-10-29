# Ideo Plan Skills

<p align="center">
  <strong>A modular AI topic exploration and editorial planning system.</strong>
</p>

<p align="center">
  <img alt="Version" src="https://img.shields.io/badge/version-1.0-111111">
  <img alt="Format" src="https://img.shields.io/badge/format-Agent%20Skill-111111">
  <img alt="Languages" src="https://img.shields.io/badge/docs-EN%20%7C%20繁中%20%7C%20简中%20%7C%20한국어-111111">
</p>

<p align="center">
  <strong>English</strong> ·
  <a href="./README.zh-TW.md">繁體中文</a> ·
  <a href="./README.zh-CN.md">简体中文</a> ·
  <a href="./README.ko.md">한국어</a>
</p>

---

## Version

**Ideo Plan Skills v1.0** · Primary module: **Ideo Plan — Execution Spec v1.0**.

## What this project is

Ideo Plan is a cross-disciplinary skill for exploring a subject, discovering worthwhile questions, and planning an editorial direction before substantial research or long-form writing. It works with the user to identify possible angles, including evidence-supported ideas the user has not yet expressed.

The controller and execution rules are separated:

- `SKILL.md`: activation, routing, priorities, workflow and acceptance.
- `references/spec-dsl.md`: DSL-style execution rules.
- `references/spec-human.md`: human-readable guide.
- `references/examples.md`: examples of use.
- `references/regression-cases.md`: failure cases to avoid.

## Design principles

### Controller and progressive loading

The controller routes the task and loads relevant modules; detailed rules remain in references. The root `SKILL.md` and `references/` are canonical. Run `bash scripts/sync-skill-packages.sh` after changes, then `bash scripts/check-skill-packages.sh`.

### Explore before committing to a direction

For a broad long-form topic, conduct proportionate preliminary research, propose distinct evidence-backed questions and provisional outlines, and invite the user to choose, combine or revise them before dependent deep research or drafting. If the user has specified a clear direction or requested direct execution, follow that instruction without unnecessary confirmation.

### Research quality and multilingual discovery

Choose sources suited to the subject and question. Explore relevant local languages and terminology when useful; respect the user's source restrictions. Social discussion can provide first-hand experiences or leads, but popularity alone does not establish facts. Separate source evidence from interpretation, and disclose gaps.

### Revise the plan as evidence develops

An outline is provisional. When later research reveals a consequential new question or challenges an agreed direction, discuss it with the user. Routine adjustments within the confirmed scope can proceed. Do not invent controversies or guarantee social reach.

## Current module: Ideo Plan — Execution Spec v1.0

- Topic scope and intent assessment
- Proportionate preliminary research and source selection
- Multilingual discovery and social-source handling
- Unexpressed possibilities and reader discussion value
- Direction options, provisional outlines and confirmation
- Research checkpoints and adaptive planning
- Handoff to project-specific research and optional Ideo Edit

The DSL is guidance to the model, not executable code or a guarantee of compliance. The skill does not itself replace complete research, fact-checking or writing.

## Installation

Choose the AI tool you use. The project provides plugin manifests for **Codex** and **Claude Code**.

## Codex

```text
codex plugin marketplace add and install joyce5438/Ideo-Plan-Skills
```

### Update

```text
codex plugin marketplace upgrade ideo-plan
```

## Claude Code

```text
/plugin marketplace add joyce5438/Ideo-Plan-Skills
/plugin install ideo-plan@ideo-plan
```

### Update

```text
/plugin marketplace update ideo-plan
```

# Usage

Use for exploring broad topics, developing questions, comparing editorial directions and discussing provisional structures. Explicit requests to research and discuss before writing are respected.

```text
Ideo Plan. Explore this topic and discuss possible directions before writing.
```

## Invocation aliases

`Ideo Plan` · `Plan topic` · `Topic plan` · `題材企劃` · `規劃題材` · `討論題材` · `想題材` · `想題目` · `討論題目`
