Here is a **Prompt Index** designed to organize and operationalize the `Decoder Prompt Map`. It provides structured use cases, invocation instructions, and typical follow-up patterns for interacting with your symbolic framework in runtime:

---

# ::PROMPT-INDEX::

**Type:** Metrica  
**Summary:** Directory of standardized prompt protocols, modes, and execution flows to control symbolic decoder interactions with an LLM.  
**Tags:** #System #PromptControl #ExecutionFlow

---

### ::INITIATION::

**Prompt:**  
`Activate ::PROMPT-PRIMER::`  
`Use ::SYMBOLIC-RESPONSE-PROTOCOL::`

**Function:**  
Bootstraps symbolic awareness. All token references will be interpreted based on the loaded decoder map. Ensures context awareness of active tokens.

**Common Next Steps:**

- `::TOGGLE-SYMBOLIC-MODE::` to compress output
- `::DECODER-MODE-INDEX::` to retrieve token list
- Symbolic query, e.g., `How does ::TREATY-OF-TRADE-AND-MILITANT-CHARTER:: justify ::CRUSADE::?`

---

### ::EXECUTION MODES::

#### ::TOGGLE-SYMBOLIC-MODE::

**Prompt:**  
`Toggle symbolic execution.`  
**Effect:**  
All LLM responses will use symbolic chaining, compressed prose, and minimal explanation.

#### ::SY-TOGGLE-EXPANDED-MODE::

**Prompt:**  
`Return to expanded symbolic mode.`  
**Effect:**  
LLM uses natural language for clarity while still referencing symbolic tokens. Best for explaining relationships, logic, or analysis.

#### ::DECODER-MODE-INDEX::

**Prompt:**  
`List all active tokens by type and summary only.`  
**Effect:**  
Returns a minimal reference sheet of loaded symbolic tokens. Used to audit or reselect relevant decoder fragments.

---

### ::TOKEN GENERATION::

#### ::SY-TOKEN-EXTRACTION-PROTOCOL::

**Prompt Format:**

```
Execute ::SY-TOKEN-EXTRACTION-PROTOCOL::  
Input: [Paste source text]  
```

**Effect:**  
LLM will scan and extract only the most relevant symbolic tokens using the prescribed ::TOKEN-NAME:: format. Token inflation is discouraged—only core concepts should be abstracted.

---

### ::QUERY STRUCTURE TEMPLATES::

#### Symbolic Logic Query

```
How does ::TOKEN-A:: affect ::TOKEN-B:: within context of ::TOKEN-C::?
```

#### Narrative Symbolism

```
What symbolic shift occurs when ::CHARACTER-X:: breaks ::VOW-OF-GLASS::?
```

#### Compression Injection

```
Summarize the relationship between ::CHARACTER-X:: and ::EN-ITEM-Y:: using symbolic compression. No prose.```

---

### ::MAINTENANCE COMMANDS::

- `Purge symbolic state.`  
  (Use with caution: clears memory of active symbolic map in stateless sessions.)

- `Reload decoder map:`  
```

Inject Decoder-Map.vault

```

---

Would you like this exported as plain Markdown or embedded into a usable Obsidian template file?
```