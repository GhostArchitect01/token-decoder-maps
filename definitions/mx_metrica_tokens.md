# Metrica Tokens

### `::MX-` (Metrica Token)

**Purpose:** Denotes a token related to the Metrica project ledger. These primarily define data structures for task management, enabling a stateful and persistent task tracking system. Metrica tokens are divided into two distinct streams: high-level user goals and granular project tasks.

**Types:** `UserTask`, `ProjectTask`

**Examples:**
- `::MX-USER-TASK-ID::`: Represents a high-level goal or personal task for the user, focusing on the "what."
- `::MX-PROJECT-TASK-ID::`: Represents a specific, actionable sub-task that contributes to a user task, focusing on the "how."

---

This file contains the canonical list of all `::MX-` tokens.

---

Metrica tokens are divided into two distinct streams to manage both high-level user goals and granular project tasks.

- **`::MX-USER-TASK-ID::`**: Represents a high-level goal or personal task for the user. It's simple and focused on the "what."
- **`::MX-PROJECT-TASK-ID::`**: Represents a specific, actionable sub-task that contributes to a user task. It's more detailed and focused on the "how."

For detailed explanations and the hierarchy, please refer to the [Metrica Protocol documentation](../metrica/metrica_protocol.md).