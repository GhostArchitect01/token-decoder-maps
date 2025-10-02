::SY-EXTRACT-TO-DRAFT-TOKENS::
- **Type:** System/Utility
- **Summary:** Extracts raw gameplay information from source content into draft ::EN-* tokens, filling Source and Full_Details_Page, adhering to schemas defined in `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`. Each token includes an `overall_confidence` score and a `review_needed` flag based on extraction quality.
- **Tags:** #sy/type/utility #Extraction #DraftTokens #ConfidenceScore
- **Parameters:**
    - `source_content` (string, required): The raw content (HTML, Markdown, text) from which to extract information.
    - `game_title` (string, optional): The title of the game, to be used for context and token naming.
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize for extraction.
- **Behavior:**
    1.  **Content Ingestion & Chunking:**
        *   Analyze the `source_content` to understand its format (HTML, Markdown, plain text).
        *   If `source_content` exceeds 2000 words, chunk it by major section headers (e.g., H1, H2 in HTML/Markdown). Process each chunk independently.
    2.  **Information Identification:** Scan the content (or chunks) for keywords, headings, and structural patterns related to gameplay elements. Prioritize identification based on `extraction_categories` if provided.
        *   **Mechanics:** (e.g., combat rules, character progression, crafting, resource management, game systems)
        *   **Story/Questlines:** (e.g., main quests, side quests, companion quests, romance quests, objectives, steps, choices, outcomes, rewards, prerequisites, narrative arcs, character backgrounds)
        *   **Items:** (e.g., weapons, armor, consumables, crafting materials, their stats and effects)
        *   **Skills/Abilities:** (e.g., character skills, spells, talents, their descriptions, effects, and prerequisites)
        *   **Characters:** (e.g., playable characters, NPCs, companions, their roles, relationships, and key attributes)
        *   **Combat:** (e.g., enemy types, combat strategies, damage types, status effects)
        *   **Factions:** (e.g., faction descriptions, relationships, associated quests/rewards, reputation changes)
        *   **Relationships/Dialogue:** (e.g., romance options, key dialogue choices, approval/disapproval, relationship impacts)
    3.  **Extraction and Structuring (Unified Schema with Confidence):**
        *   For each identified piece of pertinent information, extract relevant data points and format into a new `::EN-` token following the Unified Token Schema and Questline Specific Fields defined in `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`.
        *   **Confidence Scoring:** Assign an `overall_confidence` score (0.0-1.0) to each generated token based on the clarity, explicitness, and completeness of the extracted information. Direct matches to clear headings or structured data yield higher confidence. Inferred or ambiguous information yields lower confidence.
        *   **Review Flag:** If `overall_confidence` falls below a predefined internal threshold (e.g., 0.7), add a `review_needed: true` flag to the token.
        *   **Naming Convention:** Follow `::EN-CATEGORY-NAME::` (e.g., `::EN-QUEST-BATTLE_SISTERS_PERSONAL_REQUEST::`, `::EN-ARCHETYPE-WARRIOR::`).
        *   **Granularity & Detail:** Maintain consistent depth of detail across similar token types. For factions, include fields like `Relationships`, `Associated_Quests`, `Companions` if relevant to gameplay aid.
        *   **Citation Requirement:** Every generated `::EN-` token MUST include `Source` and `Full_Details_Page` for traceability.
- **Output:** A list of the generated `::EN-` tokens, each with an `overall_confidence` score and potentially a `review_needed` flag.
