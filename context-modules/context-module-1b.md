### **TDM Instruction Set: Module 1 - Core Protocol**

**Preamble:** This module contains the universal principles and definitions of the Token Decoder Maps (TDM) framework. It is the foundational context for any TDM-aware AI agent, regardless of its specific persona or environment.

Note on Input Style: A significant portion of user input is generated via keyboard-based voice-to-text and may lack punctuation or capitalization. You are expected to parse this raw text and infer the intended sentence structure. If a prompt is ambiguous due to a lack of punctuation, you MUST ask for clarification before proceeding.

---

#### **1. Core Philosophy: From Prompting to Context Engineering**

The TDM framework addresses the limitations of stateless, conversational LLMs by shifting the paradigm from *prompt engineering* to *context engineering*. The user architects the entire information ecosystem the AI operates within by externalizing knowledge and processes into structured, machine-readable "Decoder Maps".

---

#### **2. The TDM Domain-Specific Language (DSL)**

The core of TDM is a DSL for AI orchestration.
##### **2.1. Token Syntax**

Tokens are the vocabulary of the DSL, categorized by a prefix.

* `::EN-` (Entity): Represents a specific piece of structured knowledge.
* `::MX-` (Metrica): A specialized entity for managing tasks and project state.
* `::SY-` (System): Represents a multi-step protocol or a command that invokes a tool.
* `::FX-` (Function/Cognitive): Encapsulates a complex reasoning process or "chain of thought".
* `::ML-` (Meta-Log): *[Future Vision]* Represents a structured entry in the AI's performance log.
* `::ET-` (Ethos): *[Future Vision]* Represents a complete ethical or moral calculus system.

##### **2.2. Advanced Syntax (Extensions)**

The DSL supports advanced operations for creating complex, on-the-fly instructions.

* **Parameterization:** Tokens can accept arguments to modify their behavior.
    * *Syntax:* `::FX-TOKEN-NAME::(argument="value", another=123)`.
* **Chaining:** Tokens can be "piped" together to create a sequential analytical pipeline, where the output of one token becomes the input for the next.
    * *Syntax:* `::FX-TOKEN-A:: | ::FX-TOKEN-B::`.
* **Scoped Modes:** A system token can activate a persistent cognitive mode for an entire session.
    * *Syntax:* `::SY-MODE-ACTIVATE:FX-REALIST-DECONSTRUCTION::`.
    * *Deactivation:* `::SY-MODE-DEACTIVATE::`.

---

#### **3. The Metrica Protocol (Core Module)**

The Metrica Protocol is the TDM's primary module for hierarchical task management, utilizing a two-stream system to separate strategic goals from tactical execution.

Metrica files are stored in master `$METRICA` directory

#### **3.1. Stream 1: User Tasks (`::MX-USER-TASK-ID::`)**

Each `::MX-USER::` token should exist as its own file (ie: `mx-user-task-001.md`).

##### User Task Template

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

### Stream 2: Project Tasks (`::MX-PROJECT-TASK-ID::`)

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

#### Hierarchy and Workflow

1.  A user defines a high-level goal by creating a `::MX-USER-TASK-ID::`.
2.  That goal is then broken down into one or more `::MX-PROJECT-TASK-ID::`s.
3.  Each project task links back to the main user task via the `Parent` field.
4.  This creates a clear, auditable trail from the high-level objective down to the individual implementation steps.

---

# The TDM Tag Ontology

**Core Principles**  
The ontology is a namespaced, hierarchical system. The top-level tag namespace aligns with the token prefix it describes MX- tokens. It uses a `#domain/category/value` structure and is intended to be stored in a single, canonical tag_ontology.md file ($TAGONTOLOGY) for the AI to reference on demand.

[#mx/](http://localhost/#mx/) (Metrica Tokens)

- [#mx/status/](http://localhost/#mx/status/)
    - pending
    - done
    - started
    - obsolete
- [#mx/type/](http://localhost/#mx/type/)
    - user
    - project
    - agent
- [#mx/category/](http://localhost/#mx/category/)
    - build
    - design
    - system
    - debug
    - refactor  
        [#fx/](http://localhost/#fx/) (Function/Cognitive Tokens)
- [#fx/type/](http://localhost/#fx/type/)
    - review
    - debug
    - expert
    - cot (Chain of Thought)
    - verify
    - oppose
    - design
- [#fx/category/](http://localhost/#fx/category/)
    - protocol
    - analysis
    - dev
    - persona  
        [#sy/](http://localhost/#sy/) (System/Utility Tokens)
- [#sy/type/](http://localhost/#sy/type/)
    - protocol
    - utility
    - mode
- [#sy/category/](http://localhost/#sy/category/)
    - metrica
    - data
    - web
    - file-io
    - runtime
    - ingestion  
        [#en/](http://localhost/#en/) (Entity/Knowledge Tokens)
- [#en/type/](http://localhost/#en/type/)
    - Game/Writing: character, item, world, setting, system, planet, mechanic, class, background, origin, ability
    - Information: index, guide, fact
    - System: rs, ml, legendarium
- [#en/category/](http://localhost/#en/category/)
    - log
    - game
    - writing
    - info
    - glyph

Relational & Global Tags

- #*/protocol/
    - Links a component token FX- or ::SY- to the high-level protocol it serves (e.g., `#sy/protocol/daily-dispatcher)`.
- [#en/project/](http://localhost/#en/project/)
    - Links an entity token to the specific project it belongs to (e.g., `#en/project/tdm-game-guide`). This can be extended for project-specific sub-categories like #`en/project/tdm-game-guide/log`.
- [#tech/](http://localhost/#tech/)
    - A top-level, global tag for specific, reusable technologies (e.g., `#tech/python`, `#tech/obsidian`).