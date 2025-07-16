# Token Decoder Framework

## General Token Template Structure

All custom tokens within this framework adhere to a consistent structure, categorized by their prefix.

```markdown
::PREFIX-TOKEN-NAME::
- Type: [Specific Type based on Prefix]
- Summary: [Short 1–2 line compressed essence of the token.]
- Tags: [#RelevantTags, #Categorization]
- Expanded Entry: [Optional — contains longform definition, historical origin, gameplay/narrative function, context relationships, etc.]
```

## Token Type Overviews

For detailed definitions and examples of each token type, refer to their respective documentation files:

### Cognitive Function Tokens (`::FX-`)
These tokens define specific reasoning styles, Chain-of-Thought (CoT) processes, problem-solving methodologies, or argumentation styles.
- **Type:** `ReasoningStyle`, `CoT`, `ProblemSolvingMethod`, `ArgumentationStyle`
- **Detailed Definitions:** [definitions/fx_cognitive_functions.md](definitions/fx_cognitive_functions.md)

### Metrica Tokens (`::MX-`)
These tokens are related to the Metrica project ledger and primarily define data structures for task management.
- **Type:** `Task` (or specific Metrica-related types)
- **Detailed Definitions:** [definitions/mx_metrica_tokens.md](definitions/mx_metrica_tokens.md)

### System/Utility Tokens (`::SY-`)
These tokens are for system-level commands, protocol definitions, or mode toggles, managing the AI's operational state or interaction style.
- **Type:** `Utility`, `PromptProtocol`, `PromptMode`
- **Detailed Definitions:** [definitions/sy_system_utility_tokens.md](definitions/sy_system_utility_tokens.md)

### Entity/Knowledge Tokens (`::EN-`)
These tokens represent specific entities, concepts, or pieces of knowledge (e.g., character, location, item, lore node).
- **Type:** `Character`, `Location`, `Item`, `LoreNode`, `Fact`, `Concept`, `Definition`, `String`, `Number`, `URL`, `FilePath`, `DataStructure`, `Snippet`, etc.
- **Detailed Definitions:** [definitions/en_entity_knowledge_tokens.md](definitions/en_entity_knowledge_tokens.md)
