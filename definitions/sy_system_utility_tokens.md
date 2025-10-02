# System/Utility Tokens (`::SY-`)

### `::SY-` (System/Utility Token)

**Purpose:** Denotes a token that represents a multi-step protocol, a command that invokes a tool, or a specific system mode. These tokens are the "verbs" of the TDM framework, defining actions, workflows, and the agent's operational state.

**Examples:**
- `::SY-READ-METRICA::`: Loads the master `metrica.md` file into the current context.
- `::SY-METRICA-CREATE-TASK::`: Activates an interactive protocol to create a new Metrica task.
- `::SY-TOGGLE-SYMBOLIC-MODE::`: Switches the agent's response style to use only symbolic tokens.

---

This file contains the canonical definition and template for all `::SY-` tokens.

---

## Template: System Token

This template is used to define new system protocols, commands, or modes.

**Structure:**
```markdown
::SY-TOKEN-NAME::
- **Type:** [System/Protocol, System/Utility, System/Mode]
- **Summary:** [A brief, one-sentence description of the token's function.]
- **Tags:** [#sy/type/protocol, #sy/type/utility, #sy/type/mode, #automation, #interactive, etc.]
- **Parameters:** [Optional: A list of arguments the token accepts.]
- **Execution Workflow:** [Optional: A step-by-step description of the process the token executes.]
```
