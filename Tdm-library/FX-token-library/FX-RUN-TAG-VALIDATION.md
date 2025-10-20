::FX-RUN-TAG-VALIDATION::
- **Summary:** Encapsulates the execution of the `validate_tags.py` script to produce a report of files with non-conforming tags.
- **Tags:** #fx/type/review, #fx/type/debug, #fx/protocol/tag-refactor
- **Input:**
    - `target_glob` (string, required): The glob pattern for the token library to be validated (e.g., '/path/to/library/**/*.md').
- **Output:**
    - `report_content` (string): The text content of the generated validation report.
- **Cognitive Workflow:**
    1.  Receive `target_glob` as input.
    2.  Define script path: `/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/utils/tag_validation/validate_tags.py`.
    3.  Define ontology path: `/storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/Tag_ontology.md`.
    4.  Construct the full shell command: `python <script_path> '<target_glob>' '<ontology_path>'`.
    5.  Execute the shell command and capture its standard output.
    6.  Return the captured output as `report_content`.
