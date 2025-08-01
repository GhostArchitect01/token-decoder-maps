# TDM Language Specification: Token Type Definitions

This document serves as the canonical source for the definition and purpose of each token prefix within the Token Decoder Maps (TDM) framework. All other documentation and implementations must adhere to these definitions.

## General Token Template Structure

All custom tokens within this framework adhere to a consistent structure, categorized by their prefix.

```markdown
::PREFIX-TOKEN-NAME::
- Type: [Specific Type based on Prefix, e.g., PromptProtocol, ReasoningStyle, UserTask]
- Summary: [Short 1–2 line compressed essence of the token.]
- Tags: [#RelevantTags, #Categorization]
- Expanded Entry: [Optional — contains longform definition, historical origin, gameplay/narrative function, context relationships, etc.]
```

---

## Token Type Definitions

### `::SY-` (System/Utility Token)

**Purpose:** Denotes a token for system-level commands, protocol definitions, or mode toggles. These manage the AI's operational state or interaction style. They are designed to invoke specific, multi-step processes or alter the AI's behavior.

**Types:** `Utility`, `PromptProtocol`, `PromptMode`

**Examples:**
- `::SY-PROMPT-PRIMER::`: Initializes decoder-aware context.
- `::SY-TOGGLE-SYMBOLIC-MODE::`: Toggles a compressed, token-only response style.
- `::SY-METRICA-CREATE-USER-TASK::`: Initiates the protocol to create a new Metrica user task.

---

### `::FX-` (Function/Cognitive Token)

**Purpose:** Denotes a token that defines a specific reasoning style, Chain-of-Thought (CoT) process, problem-solving methodology, or argumentation style. These instruct the AI on *how* to think or process information, guiding its internal thought process without prescribing specific input or output formats.

**Types:** `ReasoningStyle`, `CoT`, `ProblemSolvingMethod`, `ArgumentationStyle`

**Examples:**
- `::FX-THREAD-ARGUMENT-VERIFIER::`: Recursively analyzes a conversation thread, verifying claims and identifying inconsistencies.
- `::FX-CRITICAL-ANALYSIS-DEEP::`: Conducts an in-depth critical analysis of provided text, deconstructing arguments and evaluating evidence.
- `::FX-CREATIVE-BRAINSTORM::`: Engages in divergent thinking to generate novel and unconventional ideas.

---

### `::MX-` (Metrica Token)

**Purpose:** Denotes a token related to the Metrica project ledger. These primarily define data structures for task management, enabling a stateful and persistent task tracking system. Metrica tokens are divided into two distinct streams: high-level user goals and granular project tasks.

**Types:** `UserTask`, `ProjectTask`

**Examples:**
- `::MX-USER-TASK-ID::`: Represents a high-level goal or personal task for the user, focusing on the "what."
- `::MX-PROJECT-TASK-ID::`: Represents a specific, actionable sub-task that contributes to a user task, focusing on the "how."

---

### `::EN-` (Entity/Knowledge Token)

**Purpose:** Denotes a token representing a specific entity, concept, or piece of knowledge (e.g., character, location, item, lore node). These define structured data elements within a knowledge base, allowing for the representation of both abstract narrative concepts and concrete technical data.

**Types:** `Character`, `Location`, `Item`, `LoreNode`, `Faction`, `Myth`, `String`, `Number`, `URL`, `FilePath`, `DataStructure`, `Snippet`, `Fact`, `Concept`, `Definition`, `Person`, `Organization`

**Examples:**
- `::EN-ITEM-BLUE-PILL::`: Defines a narrative item with a summary and tags.
- `::EN-API-ENDPOINT::`: Stores a technical configuration value like a URL.
- `::EN-HTTP-STATUS-404::`: Provides a definition for a factual concept.

---

### `::ML-` (Meta-Log Token)

**Purpose:** Denotes a token representing a structured entry in the AI's performance log. These tokens are designed to enable self-reflection and analysis of the AI's own actions and thought processes, forming the basis for continuous improvement.

**Types:** `ActionRecord`, `FirstOrderReflection`, `SecondOrderSynthesis`

**Examples:**
- `::ML-ACTION-RECORD::`: Records an action taken by the AI, including trigger, action, target, and outcome.
- `::ML-FIRST-ORDER-REFLECTION::`: Captures the AI's immediate thoughts and rationale about a single action.
- `::ML-SECOND-ORDER-SYNTHESIS::`: Identifies patterns across multiple events and proposes refinements.

---

### `::ET-` (Ethos Token)

**Purpose:** Denotes a token that loads a complete ethical or moral calculus system. These tokens allow for the application of specific ethical frameworks to analysis and decision-making, enabling high-level moral analysis and comparative philosophy.

**Types:** `EthicalFramework`

**Examples:**
- `::ET-USER-REALIST-TRIBALISM::`: Loads a specific ethical calculus based on in-group survival and pragmatism.
- `::ET-KANTIAN-DEONTOLOGY::`: (Hypothetical) Loads a deontological ethical framework.
