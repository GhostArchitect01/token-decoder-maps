::SY-VALIDATE-AND-QUARANTINE::
- **Type:** System/Utility
- **Summary:** Performs integrity checks on a list of ::EN- tokens against a centralized schema. Valid tokens are passed to the next step; invalid tokens are moved to a quarantine directory for manual review.
- **Tags:** #sy/type/utility, #sy/category/data, #sy/category/file-io
- **Parameters:**
    - `tokens` (list, required): A list of ::EN- tokens to validate.
    - `schema_path` (string, required): The absolute path to the master schema file (e.g., `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`).
    - `quarantine_dir` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Metrica/.quarantine/`): The absolute path to the directory where invalid tokens will be stored.
    - `confidence_threshold` (float, optional, default: 0.7): The minimum `overall_confidence` score required for a token to pass validation if `review_needed` is present.
- **Behavior:**
    1.  **Load Schema:** Read and parse the schema definitions from `schema_path` to identify mandatory fields, expected types, and enum values.
    2.  **Create Quarantine Directory:** Ensure `quarantine_dir` exists. If not, create it.
    3.  **Iterate and Validate:** For each token in the input `tokens` list:
        a.  **Mandatory Field Check:** Verify that all fields marked as mandatory in the schema are present and not empty.
        b.  **Type/Enum Check:** Validate that the `Type` field (and other enum-constrained fields) matches one of the allowed values in the schema.
        c.  **Confidence Check:** If the token has an `overall_confidence` field and a `review_needed: true` flag, and its `overall_confidence` is below `confidence_threshold`, mark it for quarantine.
        d.  **Format Check:** Perform basic format checks (e.g., `Source` and `Full_Details_Page` are present).
        e.  **Action:**
            i.   If the token passes all checks, add it to a list of `valid_tokens`.
            ii.  If the token fails any check (or has `review_needed: true` with low confidence), write the token's content (along with a `Validation_Error` field detailing the reason) to a new Markdown file in the `quarantine_dir`. The filename should indicate it's a quarantined token (e.g., `QUARANTINED-EN-[TYPE]-[SLUG].md`).
    4.  **Output:** Return the `valid_tokens` list and a summary of tokens quarantined (count and reasons).
- **Output:** A dictionary containing `valid_tokens` (list of ::EN- tokens) and `quarantined_summary` (string).
