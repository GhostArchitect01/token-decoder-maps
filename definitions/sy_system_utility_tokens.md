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

These tokens are used to interact with the Metrica task ledger.

::SY-READ-METRICA::
- Summary: Loads the master `metrica.md` file from the central $METRICA directory into the current context.
- $METRICA = @Metrica/
- Tags: #Type/metrica

::SY-METRICA-CREATE-TASK::
- Summary: Activates the protocol for creating a new task. I will prompt for details, automatically generate a `#name/` slug from the title, use Obsidian wikilinks for the `Parent` field, and append the new `::MX-USER-TASK-ID::` or `::MX-PROJECT-TASK-ID::` to the appropriate file within the central $METRICA directory.
- Tags: #Type/metrica

::SY-METRICA-UPDATE-TASK::
- Summary: Activates the protocol for updating an existing task. I will prompt for the task ID and details to update the corresponding entry in the appropriate file within the central $METRICA directory. If the `Title` is changed, the `#name/` slug will be regenerated.
- Tags: #Type/metrica

::SY-METRICA-ACTIVE::
- Summary: Enables semi-autonomous processing of Metrica tasks. I will proactively identify and propose actions based on the global state of all tasks within the central Metrica directory. I will NOT execute these actions without explicit user confirmation.
- Tags: #Type/metrica/mode #type/system/metrica

::SY-METRICA-SYSTEM::
- Summary: When activated, this token will first load all trackers from the central Metrica directory and then enable the `::SY-METRICA-ACTIVE::` mode for global, cross-project analysis.
- Tags: #Type/metrica/mode #type/system/metrica

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
