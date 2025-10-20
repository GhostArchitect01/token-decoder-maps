::MX-PROJECT-TASK-017A::
- **Title:** Define Protocol Tokens
- **Parent:** [[MX-USER-TASK-017.md#::MX-USER-TASK-017::]]
- **Framework:** TDM
- **Dependencies:**
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/ResearchAgent, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] The `::SY-FIND-URLS::` token is defined.
- [ ] The `::FX-EXTRACT-SEARCH-TERMS::` token is defined.
- [ ] The `::FX-FIND-ALTERNATIVE-URLS::` token is defined.
- **Notes:** These token definitions will be created in the `Tdm-library` directory.

::MX-PROJECT-TASK-017B::
- **Title:** Create Execution Script
- **Parent:** [[MX-USER-TASK-017.md#::MX-USER-TASK-017::]]
- **Framework:** Zsh
- **Dependencies:** [[MX-PROJECT-017.md#::MX-PROJECT-TASK-017A::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/ResearchAgent, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
- [ ] A script is created that takes a URL or title as input.
- [ ] The script successfully executes the `::SY-FIND-URLS::` protocol.
- [ ] The script outputs the list of found URLs.