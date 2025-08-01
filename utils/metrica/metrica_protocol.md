# Metrica Protocol: A Two-Stream Task Management System

The Metrica Protocol has evolved to support a two-stream task management system, distinguishing between high-level user goals and the granular project tasks required to achieve them. This provides a clear hierarchy for tracking both personal objectives and detailed project execution.

---

## Stream 1: User Tasks (`::MX-USER-TASK-ID::`)

User tasks represent high-level goals or personal objectives. They are simple, focused on the desired outcome, and serve as the "parent" for more detailed project tasks.

### User Task Template

```markdown
::MX-USER-TASK-ID::  
- **Title:** [A short, clear title for the user's goal, e.g., "Build the TUI application"]  
- **Category:** [#Personal, #Goal, #Learning]  
- **Status:** [Planned | In Progress | Completed | Blocked | Cancelled]  
- **Priority:** [Low | Medium | High | Critical]  
- **Dependencies:** [Optional: Other ::MX-USER-TASK-ID:: tokens if any]  
- **Children:** [List of ::MX-PROJECT-TASK-ID::s that belong to this task]
- **Created:** [YYYY-MM-DD]  
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#Flexible, #Tag, #List]  
- **Notes:** [High-level notes about the overall goal]
```

---

## Stream 2: Project Tasks (`::MX-PROJECT-TASK-ID::`)

Project tasks are the specific, actionable sub-tasks required to complete a user task. They are more detailed and include fields for tracking technical progress.

### Project Task Template

```markdown
::MX-PROJECT-TASK-ID::  
- **Title:** [A specific, actionable sub-task, e.g., "Implement command parser"]  
- **Parent:** [The ::MX-USER-TASK-ID:: this contributes to, e.g., "::MX-USER-TASK-2025071801:: Finish TUI App"]
- **Framework:** [Optional: The language/ecosystem for the agent's persona, e.g., Python, Node.js, Rust]
- **Category:** [#ProjectName, #Feature, #Bug, #Refactor]  
- **Status:** [Backlog | To Do | In Progress | In Review | Done | Blocked]  
- **Priority:** [Low | Medium | High | Critical]  
- **Dependencies:** [Optional: Other ::MX-PROJECT-TASK-ID::s that must be completed first]  
- **Created:** [YYYY-MM-DD]
- **Updated:** [YYYY-MM-DD]
- **Tags:** [#ComponentName, #API, #UI, #Backend]  
- **Acceptance Criteria:**
  - [ ] A clear, verifiable condition for completion.
- **Notes:** [Technical details or context for this specific sub-task]
```

## Hierarchy and Workflow

1.  A user defines a high-level goal by creating a `::MX-USER-TASK-ID::`.
2.  That goal is then broken down into one or more `::MX-PROJECT-TASK-ID::`s.
3.  Each project task links back to the main user task via the `Parent` field.
4.  This creates a clear, auditable trail from the high-level objective down to the individual implementation steps.