::MX-PROJECT-TASK-006A::
- **Title:** PDF URL Support
- **Parent:** [[metrica.md#::MX-USER-TASK-006::]]
- **Framework:** Shell/Python
- **Dependencies:**
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #mx/project/status/pending, #mx/category/build, #TDM-Article-Parser
- **Acceptance Criteria:**
- [ ] The article parser's batch mode can accept and process URLs pointing to PDF files.
- **Notes:** This will likely involve using a tool to extract text from PDFs.

::MX-PROJECT-TASK-006B::
- **Title:** Refactor Article Parser Script
- **Parent:** [[metrica.md#::MX-USER-TASK-006::]]
- **Framework:** Shell/Python
- **Dependencies:**
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #mx/project/status/pending, #mx/category/refactor, #TDM-Article-Parser
- **Acceptance Criteria:**
- [ ] The article parser script reliably processes articles in batch mode without errors.
- **Notes:** The user mentioned having several broken/half-functioning versions of this script. The goal is to create a stable, working version.

::MX-PROJECT-TASK-006C::
- **Title:** Alternative Source Finder
- **Parent:** [[metrica.md#::MX-USER-TASK-006::]]
- **Framework:** Shell/Python
- **Dependencies:** [[MX-PROJECT-006.md#::MX-PROJECT-TASK-006B::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #mx/project/status/pending, #mx/category/build, #TDM-Article-Parser
- **Acceptance Criteria:**
- [ ] After an article is processed, a web search is triggered to find alternative URLs for the source.
- [ ] Any found alternative URLs are appended to the article's index entry.
- **Notes:** This will involve creating a script that calls the Gemini CLI with a web search prompt.