# Changelog [YYYY-MM-DD]

## [2025-10-20] - Author

- Re-added `context-module-4a` to the script after I had removed it because zero short term memory 

## [2025-10-06] - Gemini

- **Refactor(merge_modules.sh):** Moved target file definitions to the top of the script for easier configuration.

	- **Author Note:** Thats how the script started out. Gemini hardcoded the target file paths into the functions when it implemented the 2-stream outputs.

- **Refactor(merge_modules.sh):** Modified the script to output to separate files for each stream.
  - Stream 'A' now outputs to `combined_a.md`.
  - Stream 'B' now outputs to `combined_b.md`.
