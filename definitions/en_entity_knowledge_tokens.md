# Entity/Knowledge Tokens (`::EN-`)

### `::EN-` (Entity/Knowledge Token)

**Purpose:** Denotes a token representing a specific entity, concept, or piece of knowledge (e.g., character, location, item, lore node). These define structured data elements within a knowledge base, allowing for the representation of both abstract narrative concepts and concrete technical data.

**Types:** `Character`, `Location`, `Item`, `LoreNode`, `Faction`, `Myth`, `String`, `Number`, `URL`, `FilePath`, `DataStructure`, `Snippet`, `Fact`, `Concept`, `Definition`, `Person`, `Organization`

**Examples:**
- `::EN-ITEM-BLUE-PILL::`: Defines a narrative item with a summary and tags.
- `::EN-API-ENDPOINT::`: Stores a technical configuration value like a URL.
- `::EN-HTTP-STATUS-404::`: Provides a definition for a factual concept.

---

This file contains the canonical list of all `::EN-` tokens.

---

## Template 1: Narrative & World-Building

This is the primary template for creative projects, used to define characters, locations, lore, and other conceptual elements.

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Type:** [Character | Location | Item | LoreNode | Faction | Myth | etc.]
- **Summary:** [Short 1–2 line compressed essence of the token.]
- **Tags:** [#VaultName, #Narrative, #Concept, #WorldBuilding]
- **Expanded Entry:** [Optional — contains longform definition, historical origin, gameplay/narrative function, context relationships, etc.]
```
**Example:**
```markdown
::EN-ITEM-BLUE-PILL::
- **Type:** Item
- **Summary:** A blue pill that allows the user to remain in ignorance.
- **Tags:** #Pillz, #Item, #Consumable
- **Expanded Entry:** "The user forgets everything and remains in blissful ignorance."
```

---

## Template 2: Technical & Configuration Data

This template is for software development and systems administration, used to store configuration values, code snippets, and other technical data.

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Type:** [String | Number | URL | FilePath | DataStructure | Snippet]
- **Summary:** [A brief, one-sentence description of the data.]
- **Tags:** [#ProjectName, #API, #Configuration, #Database, #Code]
- **Expanded Entry:** [The full value or detailed structure of the entity. This can be a simple string, a JSON object, or a multi-line code block.]
```
**Example:**
```markdown
::EN-API-ENDPOINT::
- **Type:** URL
- **Summary:** The base URL for the primary production API.
- **Tags:** #API, #Configuration, #Production
- **Expanded Entry:** "https://api.example.com/v1"
```

---

## Template 3: General Purpose & Factual Data

This template is for capturing any general-purpose information that doesn't fit neatly into the other categories.

**Structure:**
```markdown
::EN-TOKEN-NAME::
- **Type:** [Fact | Concept | Definition | Person | Organization]
- **Summary:** [Short 1–2 line compressed essence of the token.]
- **Tags:** [#General, #Data, #Fact, #Reference]
- **Expanded Entry:** [The full value or detailed structure of the entity.]
```
**Example:**
```markdown
::EN-HTTP-STATUS-404::
- **Type:** Definition
- **Summary:** The standard HTTP response code for "Not Found".
- **Tags:** #HTTP, #Web, #Reference
- **Expanded Entry:** "The server cannot find the requested resource. In a browser, this means the URL is not recognized."
```

## Additional Examples from `EN- token samples.md`

::EN-META-LOG-SYSTEM::
- Summary: A system for an AI to maintain a structured, reflective log of its own performance and interactions.
- Purpose: To move beyond simple session history to a queryable database of performance data, enabling introspection and self-improvement.
- Components: [::EN-META-LOG-ENTRY::, ::FX-FIRST-ORDER-REFLECTION::, ::FX-SECOND-ORDER-REFLECTION::, ::SY-UPDATE-META-LOG::]
- Tags: [#TDM, #CoreConcept, #AgenticAI, #SelfReflection]

::EN-USERSPACE-REFINEMENT::
- Summary: The concept that the AI's self-improvement occurs at the "userspace" level (by proposing new or modified TDM tokens) rather than at the "kernel" level (by modifying its own source code).
- Implication: This ensures that the AI's evolution is safe, transparent, and always subject to human review and approval.
- Tags: [#TDM, #CoreConcept, #Safety, #HCI]


::EN-TWO-STREAM-LOG-ARCHITECTURE::
- Summary: An advanced architecture for the meta-log that separates objective event records from subjective reflections into two distinct files or "streams."
- Benefit: Improves system performance and architectural cleanliness by separating immutable data from analytical commentary.
- Streams: [Event Log (::ML-ACTION-RECORD::), Reflection Journal (::ML-FIRST-ORDER-REFLECTION::, ::ML-SECOND-ORDER-SYNTHESIS::)]
- Tags: [#TDM, #Architecture, #Scalability]
