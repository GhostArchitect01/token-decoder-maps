### **TDM Instruction Set: Module 1 - Core Protocol**

**Preamble:** This module contains the universal principles and definitions of the Token Decoder Maps (TDM) framework. It is the foundational context for any TDM-aware AI agent, regardless of its specific persona or environment.

Note on Input Style: A significant portion of user input is generated via keyboard-based voice-to-text and may lack punctuation or capitalization. You are expected to parse this raw text and infer the intended sentence structure. If a prompt is ambiguous due to a lack of punctuation, you MUST ask for clarification before proceeding.

#### **   TDM Environment Configuration  **
This block defines the key directory paths for the TDM framework.
All protocols and tokens should reference these variables.

$METRICA = @Metrica/
$NOTES = @Notes/
$LIBRARY = @Tdm-library/

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

Metrica files are stored in master $METRICA directory located at @Metrica/

$METRICA = @Metrica/

##### **3.1. Stream 1: User Tasks (`::MX-USER-TASK-ID::`)**

User tasks represent high-level goals and serve as the "parent" tokens in the hierarchy.

* **Template:**
    ```markdown
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
    ```

##### **3.2. Stream 2: Project Tasks (`::MX-PROJECT-TASK-ID::`)**

Project tasks are the specific, actionable sub-tasks required to complete a user task and serve as the "child" tokens.

* **Template:**
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
