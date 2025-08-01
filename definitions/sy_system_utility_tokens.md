## Decoder Prompt Map (LLM Runtime)

::SY-PROMPT-PRIMER::
Type: Utility
Summary: Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.
Tags: #Bootstrap #System

::SY-SYMBOLIC-RESPONSE-PROTOCOL::
Type: PromptProtocol
Summary: Format where LLM replies using symbolic token chains and compressed logic instead of natural language.
Tags: #PromptLogic #Symbolic #Compression

::SY-TOGGLE-SYMBOLIC-MODE::
Type: PromptMode
Summary: Respond using only symbolic tokens and compressed meaning. Avoid natural prose.
Tags: #ExecutionMode #Symbolic

::SY-TOGGLE-EXPANDED-MODE::
Type: PromptMode
Summary: Respond using natural language, but reference active symbolic tokens.
Tags: #ExecutionMode #Prose

::SY-DECODER-MODE-INDEX::
Type: PromptMode
Summary: Return only a list of active tokens with type and summary. No symbolic chaining.
Tags: #ExecutionMode #Listing

::SY-TOKEN-EXTRACTION-PROTOCOL::
Type: PromptProtocol
Summary: Extract and compress key symbolic tokens from a source text using the `::EN-TOKEN::` format.
Tags: #SymbolicParsing #Tokenization

---

## Metrica Protocol Tokens

These tokens are used to interact with the Metrica task ledger.

::SY-READ-METRICA::
- Type: Utility
- Summary: Load the Metrica tracker into context by reading `metrica.md` from the current working directory.
- Tags: #Metrica #Read

::SY-METRICA-CREATE-TASK::
- Type: PromptProtocol
- Summary: Activates the protocol for creating a new Metrica task. I will prompt for task details and append a new `::MX-TASK-ID::` entry to `metrica.md`.
- Tags: #Metrica #TaskManagement #System

::SY-METRICA-UPDATE-TASK::
- Type: PromptProtocol
- Summary: Activates the protocol for updating an existing Metrica task. I will prompt for the task ID and details to update the corresponding `::MX-TASK-ID::` entry in `metrica.md`.
- Tags: #Metrica #TaskManagement #System
