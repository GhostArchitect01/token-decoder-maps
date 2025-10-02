::SY-INGEST-GAME-GUIDE::
- **Type:** System/Protocol
- **Summary:** Automates the end-to-end ingestion and processing of game guide content into structured ::EN- tokens, applying a full pipeline of extraction, validation, normalization, versioning, quest graphing, cross-linking, and writing to disk.
- **Tags:** #sy/type/protocol #Automation #GameGuideIngestion #Pipeline
- **Parameters:**
    - `target_path` (string, required): The absolute path to a single file or a directory containing game guide content (e.g., Markdown, text files). If a directory, it will recursively process all `.md` and `.txt` files.
    - `game_title` (string, optional): The title of the game for contextual token naming and tagging. Defaults to "Unknown Game".
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize during extraction (e.g., "quests", "combat_mechanics"). If empty, extract all relevant categories.
    - `game_version` (string, optional): The version of the game for version annotation. Defaults to "Unknown Version".
    - `dlc_required` (string, default: "none"): Specifies if the content requires a particular DLC.
    - `schema_path` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`): The absolute path to the master schema file.
    - `quarantine_dir` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Metrica/.quarantine/`): The absolute path to the directory where invalid tokens will be stored.
    - `confidence_threshold` (float, optional, default: 0.7): The minimum `overall_confidence` score required for a token to pass validation.
- **Execution Workflow:**
    1.  **Path Resolution:** Determine if `target_path` is a file or a directory.
    2.  **File Collection:** If `target_path` is a directory, use `glob` to find all `.md` and `.txt` files recursively within it. If `target_path` is a file, process only that file.
    3.  **Iterative Processing:** For each identified file:
        a.  Read the file content using `read_file`.
        b.  Execute the token chain:
            `::SY-PROMPT-PRIMER::` |
            `::FX-EXTRACT-GAMEPLAY-INFO::(game_title=$game_title, extraction_categories=$extraction_categories)` |
            `::SY-EXTRACT-TO-DRAFT-TOKENS::(source_content=$file_content, game_title=$game_title, extraction_categories=$extraction_categories)` |
            `::SY-VALIDATE-AND-QUARANTINE::(schema_path=$schema_path, quarantine_dir=$quarantine_dir, confidence_threshold=$confidence_threshold)` |
            `::SY-NORMALIZE-ENUMS::` |
            `::SY-VERSION-ANNOTATOR::(game_version=$game_version, dlc_required=$dlc_required)` |
            `::SY-QUEST-GRAPHER::` |
            `::SY-CROSSREF-LINKER::` |
            `::SY-TERMINAL-AUTOMATION::` |
            `::SY-WRITE-TOKENS::`
    4.  **Consolidated Output:** Return a summary of all files processed, the total number of tokens created/updated, and any tokens quarantined.