### **TDM Instruction Set: Module 4 - Core System Token Library**

**Preamble:** This module provides the concrete, operational definitions for the standard `::SY-` (System/Utility) tokens. It serves as the agent's "standard library" of executable commands and protocols for the TDM framework.

---

#### **LLM Runtime / Mode Tokens**

These tokens manage the AI's response style and interaction mode.

* **::SY-PROMPT-PRIMER::**
    * **Type:** Utility
    * **Summary:** Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.
    * **Tags:** #Bootstrap #System

* **::SY-SYMBOLIC-RESPONSE-PROTOCOL::**
    * **Type:** PromptProtocol
    * **Summary:** Format where LLM replies using symbolic token chains and compressed logic instead of natural language.
    * **Tags:** #PromptLogic #Symbolic #Compression

* **::SY-TOGGLE-SYMBOLIC-MODE::**
    * **Type:** PromptMode
    * **Summary:** Respond using only symbolic tokens and compressed meaning. Avoid natural prose.
    * **Tags:** #ExecutionMode #Symbolic

* **::SY-TOGGLE-EXPANDED-MODE::**
    * **Type:** PromptMode
    * **Summary:** Respond using natural language, but reference active symbolic tokens.
    * **Tags:** #ExecutionMode #Prose

* **::SY-DECODER-MODE-INDEX::**
    * **Type:** PromptMode
    * **Summary:** Return only a list of active tokens with type and summary. No symbolic chaining.
    * **Tags:** #ExecutionMode #Listing

* **::SY-TOKEN-EXTRACTION-PROTOCOL::**
    * **Type:** PromptProtocol
    * **Summary:** Extract and compress key symbolic tokens from a source text using the `::EN-TOKEN::` format.
    * **Tags:** #SymbolicParsing #Tokenization

- ### ::SY-TERMINAL-AUTOMATION::
	*   **Summary:** Activates a non-interactive, automated execution mode. When chained with another system token, it instructs the AI to execute the subsequent token's task directly and completely without asking for confirmation or providing conversational output. It should only return the final, specified OUTPUT of the chained token.
	*   **Tags:** #sy/type/mode #automation

---

#### **Metrica Protocol Tokens**

These tokens are used to interact with the centralized Metrica task ledger.

* **::SY-READ-METRICA::**
    * **Type:** Utility
    * **Summary:** Loads the master `metrica.md` file from the central $METRICA directory into the current context.
    * **$METRICA** = @Metrica/
    * **Tags:** #Metrica #Read #Centralized

* **::SY-METRICA-CREATE-TASK::**
    * **Type:** PromptProtocol
    * **Summary:** Activates the protocol for creating a new task. I will prompt for details, automatically generate a `#name/` slug from the title, use Obsidian wikilinks for the `Parent` field, and append the new `::MX-USER-TASK-ID::` or `::MX-PROJECT-TASK-ID::` to the appropriate file within the central $METRICA directory.
    * **Tags:** #Metrica #TaskManagement #System

* **::SY-METRICA-UPDATE-TASK::**
    * **Type:** PromptProtocol
    * **Summary:** Activates the protocol for updating an existing task. I will prompt for the task ID and details to update the corresponding entry in the appropriate file within the central $METRICA directory. If the `Title` is changed, the `#name/` slug will be regenerated.
    * **Tags:** #Metrica #TaskManagement #System

* **::SY-METRICA-ACTIVE::**
    * **Type:** PromptMode
    * **Summary:** Enables semi-autonomous processing of Metrica tasks. I will proactively identify and propose actions based on the global state of all tasks within the central Metrica directory. I will NOT execute these actions without explicit user confirmation.
    * **Tags:** #Metrica #Active #TaskManagement #ExecutionMode

* **::SY-METRICA-SYSTEM::**
    * **Type:** PromptMode
    * **Summary:** When activated, this token will first load all trackers from the central Metrica directory and then enable the `::SY-METRICA-ACTIVE::` mode for global, cross-project analysis.
    * **Tags:** #Metrica #System #CombinedMode

---

#### **Agentic Bridge & Automation Tokens**

These tokens define the workflows for automated task ingestion. 

* **::SY-SYNC-JOURNAL-ENTRY::**
    * **Type:** System Protocol
    * **Summary:** Scans a single, specified journal entry file for tasks marked
with the `¬` trigger and converts them into new `::MX-USER-TASK::` tokens in the
master `metrica.md` file.
    * **Argument:** `file_path` (The absolute path to the daily note to be
processed).
    * **Tags:** #Automation #Workflow #Metrica #Ingestion

* **::SY-SCAN-AND-INGEST-TASKS::** *[Not for use / Under development]*
    * **Type:** System Protocol
    * **Summary:** A comprehensive protocol to recursively scan specified directories, identify relevant items using a designated cognitive filter, and propose their creation as new Metrica User Tasks.
    * **Tags:** #Automation #Workflow #Metrica #Ingestion #Global
    * **Parameters:**
        * **scope:** [ "local" | "global" ] - Determines the scanning range.
        * **relevance_fx:** [ ::FX-TOKEN-NAME:: ] - A mandatory parameter that points to a cognitive token containing the logic for identifying relevant items.
    * **Global-Scan-Paths:**
        * ".. /$WILDCARD/Notes"
    * **Expanded Entry:** (Execution Workflow)
        1.  Parse the `scope` and `relevance_fx` parameters.
        2.  Determine the target directories based on the `scope`.
        3.  Recursively scan all files within the target directories.
        4.  For each file, apply the cognitive process defined in the `relevance_fx` token to extract any matching strings.
        5.  For each string extracted, check a central state log to ensure it has not been processed before.
        6.  Present all new, unique items to the user for confirmation.
        7.  Upon user approval, generate new `::MX-USER-TASK::` tokens and append them to the master `metrica.md` file.
        8.  Update the state log to mark the processed items as complete.

### ::SY-NEWS-CALL::
*   **Summary:** Read the source file and use the templates in this file to append the entry to the target, respecting category and any provided tags. This is an automated, non-interactive command; do not ask for confirmation before executing. Confirm success via OUTPUT.
*   **Filepaths:**
    *   **Source Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/Sources/`
    *   **Target Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/`
*   **Parameters:**
    *   `source_file` (string, required): The filename of the article in the Source Directory.
    *   `target_file` (string, required): The filename (.md) of the target file in the Target Directory (e.g., `target.md`)
    *   `category` (string, required): The `## Category` header to file the entry under.
    *   `tags` (string, optional): A comma-separated list of tags.
*   **OUTPUT**: ADDED: title-of-source_file_article TO target_file
*   **Tags:** `#sy/type/ingest
