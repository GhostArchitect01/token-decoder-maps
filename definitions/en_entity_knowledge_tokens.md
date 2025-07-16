# Entity/Knowledge Tokens (`::EN-`)

Entity/Knowledge tokens are the framework's primary tool for representing specific, well-defined pieces of information. They are designed to be flexible and can be adapted for a wide range of use cases, from abstract narrative concepts to concrete technical data.

The token's purpose is defined by its `Type` and `Tags`. By varying these, you can steer the token's application. Below are several templates demonstrating this flexibility.

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
- **Summary:** [A brief, one-sentence description of the entity.]
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