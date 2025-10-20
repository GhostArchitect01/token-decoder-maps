::MX-USER-TASK-022::
- **Title:** Refactor Tag Ontology and Context Modules
- **Dependencies:** [[MX-USER-TASK-005.md#::MX-USER-TASK-005::]]
- **Children:** [[mx-project-022.md#::MX-PROJECT-TASK-022A::]], [[mx-project-022.md#::MX-PROJECT-TASK-022B::]], [[mx-project-022.md#::MX-PROJECT-TASK-022C::]]
- **Created:** 2025-09-23
- **Updated:** 2025-10-08
- **Tags:** #mx/user/status/done, #mx/category/refactor
- **Notes:** Refactor the context modules and create a centralized tag ontology library. The AI should use this library when creating tokens.
	- [x] tag ontology removed from context module 1a
	- [x] context module 1a updated to point to $TAGONTOLOGY 
	- [x] Tag ontology formalized and collected in $TAGONTOLOGY
	- [x] review all existing tags in $library
	- [x] verify them against $TAGONTOLOGY
	- [x] Formulate a plan of action (metrica project tasks) to conduct a comprehensive update of non-conforming tags

**Session Summary (2025-10-08):**
- Created a suite of tools in `utils/tag_validation/` to automate the auditing of TDM tags.
- `parse_ontology.py`: Reliably parses the master tag ontology.
- `delint_tags.py`: Standardizes token files by removing comma separators from tag lines.
- `validate_tags.py`: Generates a detailed report of all non-conforming tags.
- Standardized the `Tag_ontology.md` file to use consistent tab-based indentation.
- Ran the validation suite, and the definitive list of non-conforming tags is now available at `temp/validation_report.txt`.

**Next Steps:**
- The next phase is to use the `temp/validation_report.txt` as a guide to refactor all non-conforming tags across the TDM library.
- **Implementation of this plan is deferred to `::MX-USER-TASK-026::`**