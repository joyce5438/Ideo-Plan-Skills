---
name: ideo-plan
description: Explore and plan topics across disciplines. Use when a user wants to discover research-backed angles, questions, preliminary outlines, or discuss an unclear topic before long-form research or writing. Proactively identify original directions, use appropriate multilingual sources, and confirm consequential direction changes with the user.
---

# Ideo Plan

Route and coordinate topic exploration, not a fixed article template. The root SKILL.md and references/ are canonical; generate both packaged copies using `bash scripts/sync-skill-packages.sh`. Never edit generated copies independently.

## Priority
Explicit user instructions and existing authorization > factual integrity and uncertainty > user intent and collaboration > project-specific requirements > this skill's default workflow. A direction proposed by the assistant is not automatically the user's intent.

## Routing and execution
1. Read the request, context, format, user-specified source restrictions and current stage. Read `references/spec-dsl.md` for substantive topic exploration; consult `references/examples.md` or `references/regression-cases.md` where useful.
2. Identify what is already clear and what meaningful uncertainty would change the work. Distinguish a broad topic from a precisely scoped request and short social posts from long-form planning. Honor explicit direct-write or research-only instructions.
3. Conduct proportionate, evidence-minded preliminary discovery when appropriate, using relevant original languages and high-quality sources. Do not pretend to browse when tools or user constraints prevent it. Mark uncovered gaps.
4. For a broad, consequential long-form topic, present genuinely distinct questions, preliminary outlines, source links, evidence vs inference and possible reader interest. Actively include promising discoveries not previously mentioned by the user. Invite selection, revision, combination or a new direction; pause dependent deep research and drafting until the user responds. No elapsed time constitutes confirmation.
5. If the objective is sufficiently specified or the user explicitly authorizes direct execution, proceed within that scope; do not impose redundant confirmation. If explicitly asked to research and discuss without writing, do not draft the article.
6. During subsequent work, present materially important discoveries, challenged assumptions or a proposed change to the agreed central angle. Pause only dependent work when the change needs a decision; continue independent authorized work. Adjust examples and paragraph ordering without unnecessary confirmation.
7. Adapt to output needs and hand off project-specific research and Ideo Edit (formerly Editorial Quality Desk) writing/editing rules if applicable. Do not claim this skill guarantees creativity, verification or completed downstream editing.

## Acceptance
Check the candidate angles are meaningfully distinct and topic-specific, linked to accessible evidence with limitations, and include a conditional preliminary outline. Verify claims do not overgeneralize, source restrictions are honored, and approval status is truthful. Remain open to iterative discussion; user instructions override defaults.
