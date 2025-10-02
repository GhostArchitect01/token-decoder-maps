::SY-CROSSREF-LINKER::
- **Type:** System/Utility
- **Summary:** Backfill cross-entity links and indexes.
- **Tags:** #sy/type/utility #CrossReferencing #Linking
- **Parameters:**
    - `tokens` (list, required)
- **Behavior:**
    - Populate prerequisites, related_companions, associated_quests, unlocks, consequences where inferable.
    - Build per-type indexes for quick retrieval (e.g., map Questline -> Companions touched).
- **Output:** linked_tokens
