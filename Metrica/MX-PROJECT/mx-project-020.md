::MX-PROJECT-TASK-020A::
- **Title:** Create `ingest.sh` Script Scaffolding
- **Parent:** [[metrica.md#::MX-USER-TASK-020::]]
- **Framework:** Zsh
- **Dependencies:** 
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #IngestionProtocol, #Phase1, #Scripting, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] An `ingest.sh` script exists.
- [ ] The script accepts a `crawl` command and a source file path.
- [ ] The script includes a basic logging function (e.g., `log_message "INFO" "Starting crawl..."`).
- [ ] The script includes placeholder functions for `fetch_and_convert`, `call_ai_for_links`, etc.
- [ ] The script includes a configuration section or sources a `ingest.conf` file for variables.
- **Notes:** This task is to create the basic structure of the script, including argument parsing, logging, and configuration handling. The core logic will be implemented in subsequent tasks.

::MX-PROJECT-TASK-020B::
- **Title:** Implement URL Fetching and HTML-to-Markdown Conversion
- **Parent:** [[metrica.md#::MX-USER-TASK-020::]]
- **Framework:** Zsh
- **Dependencies:** [[mx-project-020.md#::MX-PROJECT-TASK-020A::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #IngestionProtocol, #Phase1, #Curl, #Pandoc, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The `fetch_and_convert` function correctly downloads a URL using `curl`.
- [ ] The downloaded HTML is correctly converted to Markdown using `pandoc`.
- [ ] The source URL is prepended to the top of the final Markdown file.
- [ ] The processed file is saved to a configurable `staging` directory.
- **Notes:** This task focuses on the core content retrieval and conversion logic.

::MX-PROJECT-TASK-020C::
- **Title:** Implement AI-Driven Link Extraction Loop
- **Parent:** [[metrica.md#::MX-USER-TASK-020::]]
- **Framework:** Zsh
- **Dependencies:** [[mx-project-020.md#::MX-PROJECT-TASK-020B::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #IngestionProtocol, #Phase1, #AI, #TDM, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The script correctly calls the `gemini-cli` with the `::FX-EXTRACT-LINKS::` token.
- [ ] The script can parse the list of links returned by the AI.
- [ ] The script implements the recursive loop, processing new links up to a specified `--depth`.
- [ ] The script maintains a list of visited URLs to prevent duplicate processing.
- **Notes:** This is the core of the intelligent crawling logic.

::MX-PROJECT-TASK-020D::
- **Title:** Implement Manifest Generation
- **Parent:** [[metrica.md#::MX-USER-TASK-020::]]
- **Framework:** Zsh
- **Dependencies:** [[mx-project-020.md#::MX-PROJECT-TASK-020C::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #IngestionProtocol, #Phase1, #Scripting, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] At the end of a successful crawl, the script generates a `manifest.txt` file.
- [ ] The manifest contains the file path for every Markdown file created in the `staging` directory.
- [ ] Each line in the manifest is formatted correctly with placeholders for the annotation phase (e.g., `path/to/file.md | | | |`).
- **Notes:** This task completes the Crawl Phase by producing the handover document for Phase 2.