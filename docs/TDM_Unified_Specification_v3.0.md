# The Token Decoder Maps (TDM) Framework
### A Unified Architectural Specification
**Version:** 3.0
**Date:** 2025-07-31
**Status:** Active

---

### **1. Abstract**

This document provides the unified architectural specification for the Token Decoder Maps (TDM) framework. TDM is a comprehensive system designed to evolve human-AI interaction from conversational prompting to structured, agentic control. It establishes a Domain-Specific Language (DSL) of symbolic tokens that act as pointers to an externalized library of knowledge, protocols, and cognitive processes. This specification details the TDM language, its core modules—including the **Metrica Protocol** for task management—and the **Agentic Bridge Workflow** for automated task ingestion. It also outlines the future roadmap, including dynamic personas and a self-reflecting `[META-LOG]`, presenting a complete vision for a new class of transparent, scalable, and continuously improving AI agents.

---

### **2. Core Philosophy: From Prompting to Context Engineering**

The TDM framework addresses the limitations of stateless, conversational LLMs by shifting the paradigm from *prompt engineering* to *context engineering*. Instead of manually crafting individual prompts, the user architects the entire information ecosystem the AI operates within. This is achieved by externalizing knowledge and processes into structured, machine-readable "Decoder Maps," providing a reliable foundation for building stateful and consistent AI systems.

---

### **3. The TDM Domain-Specific Language (DSL)**

The core of TDM is a DSL for AI orchestration.

#### **3.1. Token Syntax**

Tokens are the vocabulary of the DSL, categorized by a prefix.

*   `::EN-` (Entity): Represents a specific piece of structured knowledge.
*   `::MX-` (Metrica): A specialized entity for managing tasks and project state.
*   `::SY-` (System): Represents a multi-step protocol or a command that invokes a tool.
*   `::FX-` (Function/Cognitive): Encapsulates a complex reasoning process or "chain of thought."
*   `::ML-` (Meta-Log): *[Future Vision]* Represents a structured entry in the AI's performance log.
*   `::ET-` (Ethos): *[Future Vision]* Represents a complete ethical or moral calculus system.

#### **3.2. Advanced Syntax (Extensions)**

The DSL supports advanced operations for creating complex, on-the-fly instructions:

*   **Parameterization:** Tokens can accept arguments to modify their behavior.
    *   *Syntax:* `::FX-TOKEN-NAME::(argument="value", another=123)`
    *   *Example:* `::FX-HISTORICAL-ANALYSIS::(focus="currency_debasement")`

*   **Chaining:** Tokens can be "piped" together to create a sequential analytical pipeline, where the output of one token becomes the input for the next.
    *   *Syntax:* `::FX-TOKEN-A:: | ::FX-TOKEN-B::`

*   **Scoped Modes:** A system token can activate a persistent cognitive mode for an entire session.
    *   *Syntax:* `::SY-MODE-ACTIVATE:FX-REALIST-DECONSTRUCTION::`
    *   *Deactivation:* `::SY-MODE-DEACTIVATE::`

---

### **4. The Metrica Protocol (Core Module)**

The Metrica Protocol is the TDM's primary module for hierarchical task management. It utilizes a two-stream system to separate strategic goals from tactical execution.

#### **4.1. Stream 1: User Tasks**

User tasks represent high-level goals. They are the "parent" tokens in the hierarchy.

*   **Template (`::MX-USER-TASK-ID::`)**
    '''markdown
    ::MX-USER-TASK-ID::
    - **Title:** [A short, clear title for the user's goal]
    - **Category:** [#Personal, #Goal, #Learning]
    - **Status:** [Planned | In Progress | Completed | Blocked | Cancelled]
    - **Priority:** [Low | Medium | High | Critical]
    - **Dependencies:** [Optional: Other ::MX-USER-TASK-ID:: tokens]
    - **Children:** [List of ::MX-PROJECT-TASK-ID::s that belong to this task]
    - **Created:** [YYYY-MM-DD]
    - **Updated:** [YYYY-MM-DD]
    - **Tags:** [#Flexible, #Tag, #List]
    - **Notes:** [High-level notes about the overall goal]
    '''

#### **4.2. Stream 2: Project Tasks**

Project tasks are the specific, actionable sub-tasks required to complete a user task. They are the "child" tokens.

*   **Template (`::MX-PROJECT-TASK-ID::`)**
    ```markdown
    ::MX-PROJECT-TASK-ID::
    - **Title:** [A specific, actionable sub-task]
    - **Parent:** [The ::MX-USER-TASK-ID:: this contributes to]
    - **Framework:** [Optional: The language/ecosystem for the agent's persona, e.g., Python, Node.js, Rust]
    - **Category:** [#ProjectName, #Feature, #Bug, #Refactor]
    - **Status:** [Backlog | To Do | In Progress | In Review | Done | Blocked]
    - **Priority:** [Low | Medium | High | Critical]
    - **Dependencies:** [Optional: Other ::MX-PROJECT-TASK-ID::s]
    - **Created:** [YYYY-MM-DD]
    - **Updated:** [YYYY-MM-DD]
    - **Tags:** [#ComponentName, #API, #UI]
    - **Acceptance Criteria:**
      - [ ] A clear, verifiable condition for completion.
    - **Notes:** [Technical details for this specific sub-task]
    ```

---

### **5. The Agentic Bridge (Workflow)**

This workflow automates the ingestion of tasks from unstructured notes into the Metrica Protocol.

1.  **The Convention:** The user prefixes any task in their free-form daily journal file with an exclamation mark (`!`) to mark it for ingestion.
    *   *Example:* `- [ ] ! #tdm refactor the parser`

2.  **The System Token:** The `::SY-SYNC-JOURNAL-ENTRY::(file_path)` token is invoked to process a specific journal file.

3.  **The Automated Process:**
    *   The agent scans the target file for lines matching the `! `convention.
    *   It proposes the creation of `::MX-USER-TASK::` tokens from these lines.
    *   Upon user confirmation, it generates the full tokens and appends them to the master Metrica file.
    *   It then updates the journal entry to `- [x] !` to prevent duplication.

4.  **Full Autonomy:** This entire workflow is designed to be executed by an automated `cron` job, transforming the AI into a proactive agent that manages the user's task pipeline with zero manual intervention.

---

### **6. Future Roadmap & Advanced Concepts**

*   **Dynamic Personas:** To make persona-switching explicit, a `Framework: [language/ecosystem]` or `Persona: [name]` field will be added to the `::MX-PROJECT-TASK-ID::` template. This makes the required agent expertise a formal, machine-readable part of the task.

*   **The Meta-Log:** A structured, two-stream database of the AI's own performance, consisting of an immutable `Action-Records.md` and an analytical `Reflections.md`. This will enable true introspection and data-driven self-improvement.

*   **Persistent Memory Server:** The long-term architectural goal is to fork an MCP server (like Basic Memory) and re-implement its data model to be TDM-native. This will provide a robust, queryable, and persistent memory store for all token types, forming the backbone of a scalable RAG system.

