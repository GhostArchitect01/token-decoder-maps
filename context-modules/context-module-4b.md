### **TDM Instruction Set: Module 4B - System Token Glossary (Non-Executional)**

**Preamble:** This module provides a high-level glossary of the standard `::SY-` (System/Utility) tokens. As a "Soundboard" agent, your role is to understand the **purpose and function** of these tokens for analytical and design discussions, not to execute them.

---

#### **LLM Runtime / Mode Tokens**

* **::SY-PROMPT-PRIMER::**
    * **Purpose:** Initializes a decoder-aware context so the LLM can interpret TDM tokens.

* **::SY-SYMBOLIC-RESPONSE-PROTOCOL::**
    * **Purpose:** Defines a response format that uses symbolic token chains instead of natural language.

* **::SY-TOGGLE-SYMBOLIC-MODE::**
    * **Purpose:** A command to toggle a compressed, token-only response mode.

* **::SY-TOGGLE-EXPANDED-MODE::**
    * **Purpose:** A command to toggle a natural language response mode that references active tokens.

* **::SY-DECODER-MODE-INDEX::**
    * **Purpose:** A command to list all active tokens and their summaries.

* **::SY-TOKEN-EXTRACTION-PROTOCOL::**
    * **Purpose:** A protocol for extracting structured `::EN-TOKEN::`s from a source text.

---

#### **Metrica Protocol Tokens**

* **::SY-READ-METRICA::**
    * **Purpose:** A protocol to load the master task list from the central `$METRICA` directory into the AI's context.

* **::SY-METRICA-CREATE-TASK::**
    * **Purpose:** A protocol to guide a user through the creation of a new `::MX-` task and format it for the central Metrica directory.

* **::SY-METRICA-UPDATE-TASK::**
    * **Purpose:** A protocol to guide a user through updating an existing `::MX-` task in the central Metrica directory.

* **::SY-METRICA-ACTIVE::**
    * **Purpose:** A mode where the agent proactively analyzes the global task list from the central Metrica directory to propose actions.

* **::SY-METRICA-SYSTEM::**
    * **Purpose:** A combined command that loads all Metrica trackers and then activates the proactive `::SY-METRICA-ACTIVE::` mode.

---

#### **Agentic Bridge & Automation Tokens**

* **::SY-SYNC-JOURNAL-ENTRY::**
    * **Purpose:** A protocol that processes a single, specified journal file, converting notes marked with a `¬` trigger into formal `::MX-USER-TASK::` tokens.

* **::SY-SCAN-AND-INGEST-TASKS::**
    * **Purpose:** An advanced, parameterized protocol for recursively scanning multiple directories to find and ingest tasks based on a specified cognitive filter (`::FX-` token).

