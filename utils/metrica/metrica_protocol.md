# Metrica Protocol: A Two-Stream Task Management System

The Metrica Protocol has evolved to support a two-stream task management system, distinguishing between high-level user goals and the granular project tasks required to achieve them. This provides a clear hierarchy for tracking both personal objectives and detailed project execution.

---

## Stream 1: User Tasks (`::MX-USER-TASK-ID::`)

User tasks represent high-level goals or personal objectives. They are simple, focused on the desired outcome, and serve as the "parent" for more detailed project tasks.

Each `::MX-USER::` token should exist as it's own file (ie: `mx-user-task-001.md`)

### User Task Template

```markdown
::MX-USER-TASK-ID::  
- **Title:** [A short, clear title for the user's goal, e.g., "Build the TUI application"]
- **Dependencies:** [Optional: Other ::MX-USER-TASK-ID:: tokens if any, using [[wikilink]] syntax]  
- **Children:** [List of ::MX-PROJECT-TASK-ID::s that belong to this task, using [[wikilink]] syntax]
- **Created:** [YYYY-MM-DD]  
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#Type/UserTask, #Category/Personal, #Category/Goal, #Category/Learning, #metrica/status/, #metrica/priority/, #tags]  
- **Notes:** [High-level notes about the overall goal]
```

---

## Stream 2: Project Tasks (`::MX-PROJECT-TASK-ID::`)

Project tasks are the specific, actionable sub-tasks required to complete a user task. They are more detailed and include fields for tracking technical progress.

Project tokens are named by appending an alphabetical suffix to their parent user task ID, producing identifiers like `::MX-PROJECT-TASK-006A::,` `::MX-PROJECT-TASK-006B::`, etc. Suffixes advance in sequence (A–Z, then AA, AB, …), never reused once assigned. All such project tokens for a given user task are stored together in a single file named `mx-project-<ID>.md` (e.g. mx-project-006.md)

### Project Task Template

```markdown
::MX-PROJECT-SUB-ID::  
- **Title:** [A specific, actionable sub-task, e.g., "Implement command parser"]  
- **Parent:** [The ::MX-USER-TASK-ID:: this contributes to, using [[wikilink]] syntax, e.g., [[metrica.md#::MX-USER-TASK-2025071801::]]]
- **Framework:** [Optional: The language/ecosystem for the agent's persona, e.g., Python, Node.js, Rust]
- **Dependencies:** [Optional: Other ::MX-PROJECT-TASK-ID::s that must be completed first, using [[wikilink]] syntax]
- **Created:** [YYYY-MM-DD]
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#Type/ProjectTask, #Category/ProjectName, #Category/Feature, #Category/Bug, #Category/Refactor, #ComponentName, #metrica/status/, #metrica/priority/, #tags]  
- **Acceptance Criteria:**
  - [ ] A clear, verifiable condition for completion.
- **Notes:** [Technical details or context for this specific sub-task]
```

## Hierarchy and Workflow

1.  A user defines a high-level goal by creating a `::MX-USER-TASK-ID::`.
2.  That goal is then broken down into one or more `::MX-PROJECT-TASK-ID::`s.
3.  Each project task links back to the main user task via the `Parent` field.
4.  This creates a clear, auditable trail from the high-level objective down to the individual implementation steps.