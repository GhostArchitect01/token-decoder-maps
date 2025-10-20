::MX-PROJECT-TASK-016A::
- **Title:** Foundation & Logging
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:**
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The basic script file `news_parser3.sh` is created.
- [ ] Configuration variables are defined.
- [ ] `_log` and `_error` functions are implemented and tested.

::MX-PROJECT-TASK-016B::
- **Title:** Argument & Mode Parsing
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016A::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `main` function correctly parses flags (`-f`, `-v`, `-d`).
- [ ] The script can differentiate between one-shot and batch modes.

::MX-PROJECT-TASK-016C::
- **Title:** File Discovery Function
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016B::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `find_article_file` function is implemented and tested.
- [ ] It can reliably find source files with case-insensitivity.

::MX-PROJECT-TASK-016D::
- **Title:** Core Workflow (Dry Run)
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016C::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `process_article` function is implemented.
- [ ] The `call_gemini_cli` function is a mock that returns fake data.
- [ ] The main workflow can be tested without making real gemini-cli calls.

::MX-PROJECT-TASK-016E::
- **Title:** CLI Integration with Directory Change
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016D::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `call_gemini_cli` function is implemented.
- [ ] It uses `pushd` and `popd` to manage the working directory.
- [ ] It correctly constructs the prompt using `printf`.
- [ ] It executes the Gemini CLI.

::MX-PROJECT-TASK-016F::
- **Title:** AI Output Parsing
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016E::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `parse_ai_output` function is implemented.
- [ ] It can reliably extract the title from the AI's output.

::MX-PROJECT-TASK-016G::
- **Title:** File Renaming Function
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016F::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `sanitize_and_rename` function is implemented.
- [ ] It correctly renames the source file based on the extracted title.

::MX-PROJECT-TASK-016H::
- **Title:** Batch Mode Implementation
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-016.md#::MX-PROJECT-TASK-016G::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `process_batch_file` function is implemented.
- [ ] It correctly processes the `Parser.md` file.
- [ ] Failed items are correctly retained.

::MX-PROJECT-TASK-016I::
- **Title:** Recreate `links/GEMINI.md` from `authornote.md`
- **Parent:** [[MX-USER-TASK-016.md#::MX-USER-TASK-016::]]
- **Framework:** TDM
- **Dependencies:**
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #Category/TDM-Article-Parser, #DataRecovery, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] A new `GEMINI.md` file is created at `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/GEMINI.md`.
- [ ] The content of the new file is extracted from the relevant sections of `/data/data/com.termux/files/home/tdm-article-parser/authornote.md`.
- [ ] The new file contains the `::SY-NEWS-CALL::` and `::SY-PDF-NEWS-CALL::` token definitions and associated templates.
- **Notes:** The original `GEMINI.md` file for the links directory has vanished. Its contents must be reconstructed from the `authornote.md` file to ensure the TDM Article Parser protocol can function.