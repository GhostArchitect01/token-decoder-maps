# Metrica Project Tasks: Token Decoder Framework

This file contains the granular project tasks (`::MX-PROJECT-TASK-ID::`) for the "Token Decoder Framework" project, linked to their parent user tasks.

---

## Project Task Template

```markdown
::MX-PROJECT-TASK-ID::  
- **Title:** [A specific, actionable sub-task, e.g., "Implement command parser"]  
- **Parent:** [The ::MX-USER-TASK-ID:: or ::MX-PROJECT-TASK-ID:: this contributes to]
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

---

## Project Tasks

::MX-PROJECT-001::
- **Title:** Update TDM GitHub
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CONSISTENCY-ENFORCEMENT::
- **Category:** #TDM, #GitHub
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-002::, ::MX-PROJECT-003::, ::MX-PROJECT-004::, ::MX-PROJECT-006::, ::MX-PROJECT-007::
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #GitHub
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-002::
- **Title:** Update README
- **Parent:** ::MX-PROJECT-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Documentation
- **Acceptance Criteria:**
  - [ ]
- **Notes:** update 1 complete 2025-07-31. 

::MX-PROJECT-003::
- **Title:** Add SY- examples
- **Parent:** ::MX-PROJECT-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation, #SY-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #SY-Tokens
- **Acceptance Criteria:**
  - [Populate examples/ with usecase examples]
- **Notes:** Formatting of `sy_system_utility_tokens.md` completed.

::MX-PROJECT-004::
- **Title:** Add FX- examples
- **Parent:** ::MX-PROJECT-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation, #FX-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-005::
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #FX-Tokens
- **Acceptance Criteria:**
  - [Populate examples/ with usecase examples]
- **Notes:** Formatting of `fx_cognitive_functions.md` completed. 

::MX-PROJECT-005::
- **Title:** Copy FX- examples from Gemini
- **Parent:** ::MX-PROJECT-004::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Internal
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Internal
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-006::
- **Title:** Add EN- examples
- **Parent:** ::MX-PROJECT-001::
- **Framework:**
- **Category:** #Documentation, #EN-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #EN-Tokens
- **Acceptance Criteria:**
  - [Populate examples/ with usecase examples] 
- **Notes:** Formatting of `en_entity_knowledge_tokens.md` completed.

::MX-PROJECT-007::
- **Title:** Add MX- examples
- **Parent:** ::MX-PROJECT-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation, #MX-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #MX-Tokens
- **Acceptance Criteria:**
  - [Populate examples/ with usecase examples] 
- **Notes:** must actively use metrica system with #gemini-cli and #gemini

::MX-PROJECT-008::
- **Title:** Update / Unify Metrica Templates
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CONSISTENCY-ENFORCEMENT::
- **Category:** #Metrica
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-009::, ::MX-PROJECT-010::, ::MX-PROJECT-011::, ::MX-PROJECT-012::, ::MX-PROJECT-013::, ::MX-PROJECT-014::, ::MX-PROJECT-015::
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Metrica, #Templates
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-009::
- **Title:** Update metrica.md to new template
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-CONSISTENCY-ENFORCEMENT::
- **Category:** #Metrica
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Metrica
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-010::
- **Title:** Copy from TDM-memory to token-decoder-framework-github
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Migration
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Migration
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-011::
- **Title:** Update tasks
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-CONSISTENCY-ENFORCEMENT::
- **Category:** #Metrica
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Metrica
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-012::
- **Title:** Re-prioritize tasks
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-STRATEGIC-PROBLEM-SOLVE-PLAN::
- **Category:** #Metrica
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Metrica
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-013::
- **Title:** Syslink script
- **Parent:** ::MX-PROJECT-008::
- **Framework:** Scripting
- **Category:** #Scripting
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Scripting
- **Acceptance Criteria:**
  - [make script]
- **Notes:** Termux/Android doesn't support symlinks in `storage/shared/` so a copy / rysnc script was made instead

::MX-PROJECT-014::
- **Title:** Update GEMINI.md (gemini-cli)
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #gemini-cli, #Documentation
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #gemini-cli, #Documentation
- **Acceptance Criteria:**
  - [ ]
- **Notes:** new version implementated 2025-07-31

::MX-PROJECT-015::
- **Title:** Add language field to project token template
- **Parent:** ::MX-PROJECT-008::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Templates
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Templates
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-016::
- **Title:** Agentic FX- tokens
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #FX-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #FX-Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:** Added conceptual FX tokens: `::FX-SYSTEM-DESIGN::`, `::FX-CONSISTENCY-ENFORCEMENT::`, and `::FX-DOCUMENTATION-FOCUS::`. 

::MX-PROJECT-017::
- **Title:** Symlink script for FX tokens
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** Scripting
- **Category:** #TDM, #Scripting
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Scripting
- **Acceptance Criteria:**
  - [make script]
- **Notes:** so a master file can be used across projects like with metrica.md - refer to ::MX-PROJECT-013:: for solution

::MX-PROJECT-018::
- **Title:** Examine basicmemory MCP
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Development, #MCP
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Development, #MCP
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-019::
- **Title:** Refine workflow-to-canvas process (Obsidian)
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Obsidian
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Obsidian
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-020::
- **Title:** GitHub Localization to Arabic
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #TDM, #GitHub, #Localization
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #GitHub, #Localization, #Arabic
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-021::
- **Title:** Test TDM methodology in research
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CRITICAL-ANALYSIS-DEEP::
- **Category:** #TDM, #Research
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Research
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-022::
- **Title:** Gemini-CLI branch
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Branching
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #gemini-cli
- **Acceptance Criteria:**
  - [ ]
- **Notes:** version 1.0 2025-07-31

::MX-PROJECT-023::
- **Title:** Gemini branch
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Branching
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Gemini
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-024::
- **Title:** ChatGPT branch
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Branching
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #ChatGPT
- **Acceptance Criteria:**
  - [ ]
- **Notes:** version 1.0 2025-07-31

::MX-PROJECT-025::
- **Title:** LeChat branch
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Branching
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #LeChat
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-026::
- **Title:** Investigate bash-style piping of tokens
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CRITICAL-ANALYSIS-DEEP::
- **Category:** #TDM, #Research
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Piping
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-027::
- **Title:** Research folder added
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #Organization
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Research
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-028::
- **Title:** Micro + gemini-cli workflow
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Workflow
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #Workflow, #Micro, #gemini-cli
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-029::
- **Title:** Investigate meta log idea
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CRITICAL-ANALYSIS-DEEP::
- **Category:** #TDM, #Research
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-22
- **Updated:** 2025-07-31
- **Tags:** #TDM, #MetaLog
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-030::
- **Title:** Save / tokenize sessions about TDM
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #ML, #Gemini
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-031::, ::MX-PROJECT-032::
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #TDM, #ML, #Gemini
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-031::
- **Title:** Save context
- **Parent:** ::MX-PROJECT-030::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Context
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Context
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-032::
- **Title:** Save tokens
- **Parent:** ::MX-PROJECT-030::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-033::
- **Title:** Document ML tokens on GitHub
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #TDM, #GitHub, #ML-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-034::, ::MX-PROJECT-035::, ::MX-PROJECT-036::
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #TDM, #GitHub, #ML-Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-034::
- **Title:** ML- examples
- **Parent:** ::MX-PROJECT-033::
- **Framework:**
- **Category:** #Documentation, #ML-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #ML-Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:** Formatting of `ml_metalog_tokens.md` completed.

::MX-PROJECT-035::
- **Title:** ML- templates
- **Parent:** ::MX-PROJECT-033::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation, #ML-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #ML-Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-036::
- **Title:** ML- related SY- and FX- tokens
- **Parent:** ::MX-PROJECT-033::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation, #ML-Tokens, #SY-Tokens, #FX-Tokens
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Documentation, #ML-Tokens, #SY-Tokens, #FX-Tokens
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-037::
- **Title:** Create gem for TDM work
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Gemini, #TDM
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #Gemini, #TDM
- **Acceptance Criteria:**
  - [ ]
- **Notes:** version 1.0 tested 2025-07-31

::MX-PROJECT-038::
- **Title:** Explore new profile prompt (gemini-cli)
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CRITICAL-ANALYSIS-DEEP::
- **Category:** #gemini-cli
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-30
- **Updated:** 2025-07-31
- **Tags:** #gemini-cli, #Prompt
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-039::
- **Title:** Submit bug report (gemini-cli not reading ignored files)
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CRITICAL-ANALYSIS-DEEP::
- **Category:** #BugReport, #gemini-cli
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #BugReport, #gemini-cli
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-040::
- **Title:** Use personal metrica example for TDM GitHub example
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Metrica, #TDM, #GitHub
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #Metrica, #TDM, #GitHub
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-041::
- **Title:** Standard formatting for TDM GitHub
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-CONSISTENCY-ENFORCEMENT::
- **Category:** #TDM, #GitHub, #Formatting
- **Status:** Done
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #TDM, #GitHub, #Formatting
- **Acceptance Criteria:**
  - [ ]
- **Notes:** done for now 2025-07-31

::MX-PROJECT-042::
- **Title:** Reorganize TDM GitHub
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #TDM, #GitHub, #Organization
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:** ::MX-PROJECT-043::, ::MX-PROJECT-044::
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #TDM, #GitHub, #Organization
- **Acceptance Criteria:**
  - [ ]
- **Notes:** readme and FAQ and examples remaining

::MX-PROJECT-043::
- **Title:** README -> overview
- **Parent:** ::MX-PROJECT-042::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #Documentation
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-044::
- **Title:** New simplified README
- **Parent:** ::MX-PROJECT-042::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Documentation
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #Documentation
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-045::
- **Title:** Re-do ChatGPT branch
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-SYSTEM-DESIGN::
- **Category:** #Branching, #ChatGPT
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #Branching, #ChatGPT
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-046::
- **Title:** Expand on metrica usage
- **Parent:** ::MX-USER-TDM-001::
- **Framework:** ::FX-DOCUMENTATION-FOCUS::
- **Category:** #Metrica, #Documentation
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #Metrica, #Documentation
- **Acceptance Criteria:**
  - [ ]
- **Notes:**

::MX-PROJECT-047::
- **Title:** Explore new gemini.md ideas
- **Parent:** ::MX-USER-TDM-001::
- **Framework:**
- **Category:** #GEMINI.md, #Research
- **Status:** To Do
- **Priority:** Medium
- **Dependencies:** None
- **Children:**
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #GEMINI.md, #Research
- **Acceptance Criteria:**
  - [ ]
- **Notes:**
