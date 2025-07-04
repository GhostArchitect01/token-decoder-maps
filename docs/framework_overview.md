## Token Naming Convention and Glossary

All custom tokens used within this system will adhere to a fixed prefix convention to clearly categorize their purpose. This aids both human readability and the AI's ability to consistently interpret and apply token-specific logic.

-   **`::FX-` (Function/Cognitive Token):** Denotes a token that defines a specific **reasoning style, Chain-of-Thought (CoT) process, problem-solving methodology, or argumentation style.** These instruct the AI on *how* to think or process information.
-   **`::MX-` (Metrica Token):** Denotes a token related to the **Metrica project ledger** (`~/projects/metrica.md`). These primarily define data structures for task management.
-   **`::SY-` (System/Utility Token)::** Denotes a token for **system-level commands, protocol definitions, or mode toggles.** These manage the AI's operational state or interaction style.
-   **`::EN-` (Entity/Knowledge Token):** Denotes a token representing a specific **entity, concept, or piece of knowledge** (e.g., character, location, item, lore node). These define structured data elements within a knowledge base.
-   **(Optional): `::MD-` (Output Modality Token):** If you later decide to have *some* tokens that explicitly dictate output format, this prefix could be used. (e.g., `::MD-JSON-OUTPUT::`, `::MD-MARKDOWN-TABLE::`).