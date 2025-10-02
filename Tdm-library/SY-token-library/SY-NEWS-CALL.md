### ::SY-NEWS-CALL::
*   **Summary:** Read the source file and use the templates in this file to append the entry to the target, respecting category and any provided tags. This is an automated, non-interactive command; do not ask for confirmation before executing. Confirm success via OUTPUT.
*   **Filepaths:**
    *   **Source Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/Sources/`
    *   **Target Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/`
*   **Parameters:**
    *   `source_file` (string, required): The filename of the article in the Source Directory.
    *   `target_file` (string, required): The filename (.md) of the target file in the Target Directory (e.g., `target.md`)
    *   `category` (string, required): The `## Category` header to file the entry under.
    *   `tags` (string, optional): A comma-separated list of tags.
*   **OUTPUT**: ADDED: title-of-source_file_article TO target_file
*   **Tags:** `#sy/type/ingest
