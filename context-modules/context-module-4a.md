# Context Module 4a: TDM Token Templates

This module provides the canonical token templates for the primary TDM token types. It is intended to be used as a reference when creating new tokens.

---

## `::SY-` (System/Utility) Token Template

**Structure:**
```markdown
::SY-TOKEN-NAME::
- **Type:** [System/Protocol, System/Utility, System/Mode]
- **Summary:** [A brief, one-sentence description of the token's function.]
- **Tags:** [#sy/type/protocol, #sy/type/utility, #sy/category/metrica, #sy/category/file-io, #sy/category/web]
- **Parameters:** [Optional: A list of arguments the token accepts.]
- **Execution Workflow:** [Optional: A step-by-step description of the process the token executes.]
```

---

## `::EN-` (Entity/Knowledge) Token Templates

### Template 1: Narrative & World-Building

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Summary:** [Short 1–2 line compressed essence of the token.]
- **Tags:** [#en/type/character, #en/type/item, #en/type/world, #en/category/game, #en/category/writing]
- **Expanded Entry:** [Optional — contains longform definition, historical origin, gameplay/narrative function, context relationships, etc.]
```

### Template 2: Technical & Configuration Data

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Summary:** [A brief, one-sentence description of the data.]
- **Tags:** [#en/type/fact, #en/type/guide, #en/category/info, #tech/api, #tech/db]
- **Expanded Entry:** [The full value or detailed structure of the entity. This can be a simple string, a JSON object, or a multi-line code block.]
```

### Template 3: General Purpose & Factual Data

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Summary:** [Short 1–2 line compressed essence of the token.]
- **Tags:** [#en/type/index, #en/type/fact, #en/category/log, #en/project/myproject]
- **Expanded Entry:** [The full value or detailed structure of the entity.]
```

---

## `::FX-` (Cognitive Function) Token Template

**Structure:**
```markdown
::FX-COGNITIVE-FUNCTION-NAME::
- Tags: [#fx/type/review, #fx/type/cot, #fx/type/expert, #fx/category/analysis, #fx/category/persona]
- Summary: [A clear, concise description of the approach, methodology, or reasoning style the LLM should adopt when this token is active.]
```

---

## `::MX-` (Metrica) Token Templates

### User Task Template

```markdown
::MX-USER-TASK-ID::  
- **Title:** [A short, clear title for the user's goal, e.g., "Build the TUI application"]
- **Dependencies:** [Optional: Other ::MX-USER-TASK-ID:: tokens if any, using [[wikilink]] syntax]  
- **Children:** [List of ::MX-PROJECT-TASK-ID::s that belong to this task, using [[wikilink]] syntax]
- **Created:** [YYYY-MM-DD]  
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#mx/user/status/pending, #mx/user/status/done, #mx/category/design, #mx/category/system]  
- **Notes:** [High-level notes about the overall goal]
```

### Project Task Template

```markdown
::MX-PROJECT-SUB-ID::  
- **Title:** [A specific, actionable sub-task, e.g., "Implement command parser"]  
- **Parent:** [The ::MX-USER-TASK-ID:: this contributes to, using [[wikilink]] syntax, e.g., [[metrica.md#::MX-USER-TASK-2025071801::]]]
- **Framework:** [Optional: The language/ecosystem for the agent's persona, e.g., Python, Node.js, Rust]
- **Dependencies:** [Optional: Other ::MX-PROJECT-TASK-ID::s that must be completed first, using [[wikilink]] syntax]
- **Created:** [YYYY-MM-DD]
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#mx/project/status/started, #mx/project/status/done, #mx/category/build, #mx/category/refactor]  
- **Acceptance Criteria:**
  - [ ] A clear, verifiable condition for completion.
- **Notes:** [Technical details or context for this specific sub-task]
```
