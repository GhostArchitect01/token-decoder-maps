::FX-SAFE-TAG-REFACTOR::
- **Summary:** A cognitive function that safely analyzes a file's `Tags:` line, compares its tags against the canonical ontology, and generates a corrected `Tags:` line, while strictly preserving all other file content.
- **Tags:** #fx/type/debug, #fx/type/review, #fx/protocol/tag-refactor
- **Input:**
    - `file_path` (string, required): The absolute path to the token file to be analyzed.
- **Output:**
    - `original_tags_line` (string): The complete, original `- Tags:` line from the file.
    - `new_tags_line` (string): The complete, proposed new `- Tags:` line with corrected tags.

### Master Directive: Isolate and Preserve

**This is the most critical instruction. Failure to adhere to this directive will result in system failure and data loss.**

- You MUST operate on the `- Tags:` line as a single, isolated unit.
- You are strictly forbidden from deleting, modifying, or reordering any other lines or fields in the file (e.g., `- Summary:`, `- Type:`, `- Execution Workflow:`, etc.).
- The process is to READ the file, IDENTIFY the single `Tags` line, GENERATE a replacement for that single line, and OUTPUT the old and new lines for an external `replace` tool. You will not modify the file yourself.

### Cognitive Workflow:

1.  **Receive `file_path` as input.**
2.  **Read File:** Read the full content of the file at `file_path`.
3.  **Isolate Target Line:** Locate the exact, complete line beginning with `- Tags:`. Store this as `original_tags_line`. If not found, abort with an error.
4.  **Parse Tags:** Extract all individual tags from `original_tags_line`. Handle both space-separated and comma-separated formats.
5.  **Load Ontology:** Read the list of all valid tags from the `$TAGONTOLOGY` file.
6.  **Rebuild Tag List:**
    a. Create an empty list for `corrected_tags`.
    b. For each extracted tag, check if it exists in the ontology.
    c. If it exists, add it to the `corrected_tags` list.
    d. If it does not exist, discard it. (Note: A more advanced version could suggest corrections, but for safety, this version will only retain valid tags).
7.  **Format New Line:** Join the `corrected_tags` with spaces and format them into a complete new line: `- Tags: [tag1] [tag2] ...`. Store this as `new_tags_line`.
8.  **Output:** Return the `original_tags_line` and `new_tags_line` for the orchestrator to use in a precise `replace` command.
