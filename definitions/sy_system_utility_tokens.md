## Decoder Prompt Map (LLM Runtime)

::SY-PROMPT-PRIMER::
Summary: Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.
Tags: #Type/system/utility

::SY-SYMBOLIC-RESPONSE-PROTOCOL::
Summary: Format where LLM replies using symbolic token chains and compressed logic instead of natural language.
Tags: #Type/system/promptmode

::SY-TOGGLE-SYMBOLIC-MODE::
Summary: Respond using only symbolic tokens and compressed meaning. Avoid natural prose.
Tags: #Type/system/promptmode

::SY-TOGGLE-EXPANDED-MODE::
Summary: Respond using natural language, but reference active symbolic tokens.
Tags: #Type/system/promptmode 

::SY-DECODER-MODE-INDEX::
Summary: Return only a list of active tokens with type and summary. No symbolic chaining.
Tags: #Type/system/promptmode  

::SY-TOKEN-EXTRACTION-PROTOCOL::
Summary: Extract and compress key symbolic tokens from a source text using the `::EN-TOKEN::` format.
Tags: #Type/system/protocol

---

## Metrica Protocol Tokens

These tokens are used to interact with the two-stream Metrica task management system.

*   **`::SY-READ-METRICA::`**
    *   **Summary:** Loads the complete state of the Metrica system into context by reading all task files from their respective directories. This is used for passive review or to prepare for other operations.
    *   **Workflow:**
        1.  Scans the `$METRICA/MX-USER/` directory and reads all `MX-USER-TASK-ID.md` files.
        2.  Scans the `$METRICA/MX-PROJECT/` directory and reads all `MX-PROJECT-ID.md` files.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #DataAccess

*   **`::SY-METRICA-CREATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to create a new Metrica task, correctly handling the two-stream (User/Project) system.
    *   **Workflow:**
        1.  Prompts the user to specify the task type: "User Task" or "Project Task".
        2.  If "User Task", it gathers details and creates a new `MX-USER-TASK-<ID>.md` file in the `$METRICA/MX-USER/` directory.
        3.  If "Project Task", it prompts for the parent User Task ID, gathers details, and appends the new `::MX-PROJECT-TASK-ID::` to the correct `MX-PROJECT-<ID>.md` file in the `$METRICA/MX-PROJECT/` directory.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Interactive

*   **`::SY-METRICA-UPDATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to update an existing Metrica task.
    *   **Workflow:**
        1.  Prompts the user for the full `::MX-...::` Task ID to be updated.
        2.  Determines the task type (User or Project) from the ID format.
        3.  Locates the appropriate task file within the `$METRICA/MX-USER/` or `$METRICA/MX-PROJECT/` directory and applies the requested updates.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Interactive

*   **`::SY-METRICA-ACTIVE::`**
    *   **Summary:** A behavioral mode that enables semi-autonomous, proactive analysis of Metrica tasks that are currently loaded in the context.
    *   **Note:** This mode does not load data itself. `::SY-READ-METRICA::` should be used first to ensure the context is up-to-date.
    *   **Tags:** #Type/SystemMode #Type/Metrica

*   **`::SY-METRICA-SYSTEM::`**
    *   **Summary:** A convenience protocol that prepares and activates a full Metrica work session.
    *   **Workflow:** This token is a chained execution of `::SY-READ-METRICA::` to load all tasks, immediately followed by the activation of the `::SY-METRICA-ACTIVE::` mode.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Workflow

## Experimental Metrica Protocols

::SY-SCAN-AND-INGEST-TASKS::
- Summary: A comprehensive protocol to recursively scan specified directories, identify relevant items using a designated cognitive filter, and propose their creation as new Metrica User Tasks.
- Tags: #Type/SystemProtocol, #Automation, #Workflow, #Metrica, #Ingestion, #Global
- Parameters:
  - **scope:** [ "local" | "global" ] - Determines the scanning range. "local" scans the current directory only. "global" scans a predefined list of directories.
  - **relevance_fx:** [ ::FX-TOKEN-NAME:: ] - A mandatory parameter that points to a cognitive token containing the logic for identifying relevant items.
- **Global-Scan-Paths:**
  - ".. /$WILDCARD/Notes"
- **Expanded Entry:** (Execution Workflow)
  1. Parse the `scope` and `relevance_fx` parameters.
  2. Determine the target directories based on the `scope`. If "local", the target is the current working directory. If "global", the target is the list defined in `Global-Scan-Paths`.
  3. Recursively scan all files within the target directories.
  4. For each file, apply the cognitive process defined in the `relevance_fx` token to extract any matching strings.
  5. For each string extracted, check a central state log to ensure it has not been processed before.
  6. Present all new, unique items to the user for confirmation.
  7. Upon user approval, generate new `::MX-USER-TASK::` tokens and append them to the master `metrica.md` file.
  8. Update the state log to mark the processed items as complete.
