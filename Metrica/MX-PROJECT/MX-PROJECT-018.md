::MX-PROJECT-TASK-018A::
- **Title:** Remove old downloaded content
- **Parent:** [[MX-USER-TASK-018.md#::MX-USER-TASK-018::]]
- **Framework:** Shell
- **Dependencies:**
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/DataPrep, #RogueTrader, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
    - [ ] /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/gemini-cli-docs/ directory is empty or removed.
    - [ ] /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/Rogue-trader/ directory is empty or removed.
- **Notes:** Delete all previously downloaded summary files to ensure a clean slate for raw content, *except for Rogue-trader-links.md*.

::MX-PROJECT-TASK-018B::
- **Title:** Fetch raw content from Fextralife Wiki
- **Parent:** [[MX-USER-TASK-018.md#::MX-USER-TASK-018::]]
- **Framework:** Curl/Shell
- **Dependencies:** [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018A::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/DataCollection, #RogueTrader, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
    - [ ] Raw HTML content for Fextralife main categories (Character Information, Factions, Combat) is downloaded.
    - [ ] Raw HTML content for sub-topics (Homeworlds, Origins, Archetypes, Skills) is downloaded.
    - [ ] All content is saved in /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/Rogue-trader/Fextralife_Wiki/ with appropriate subdirectories.
- **Notes:** Use `curl` to get full HTML.

::MX-PROJECT-TASK-018C::
- **Title:** Fetch raw content from Gamepressure.com Guide
- **Parent:** [[MX-USER-TASK-018.md#::MX-USER-TASK-018::]]
- **Framework:** Curl/Shell
- **Dependencies:** [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018A::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/DataCollection, #RogueTrader, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
    - [ ] Raw HTML content for Gamepressure main guide page is downloaded.
    - [ ] Raw HTML content for key sub-sections (Basics, FAQ, How-To, etc.) is downloaded.
    - [ ] All content is saved in /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/Rogue-trader/Gamepressure_Guide/ with appropriate subdirectories.
- **Notes:** Use `curl` to get full HTML.

::MX-PROJECT-TASK-018D::
- **Title:** Fetch raw content from Neoseeker.com Walkthrough
- **Parent:** [[MX-USER-TASK-018.md#::MX-USER-TASK-018::]]
- **Framework:** Curl/Shell
- **Dependencies:** [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018A::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/DataCollection, #RogueTrader, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
    - [ ] Raw HTML content for Neoseeker main walkthrough page is downloaded.
    - [ ] Raw HTML content for key sections (chapters, companion quests, DLCs) is downloaded.
    - [ ] All content is saved in /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/Rogue-trader/Neoseeker_Walkthrough/ with appropriate subdirectories.
- **Notes:** Use `curl` to get full HTML.

::MX-PROJECT-TASK-018E::
- **Title:** Convert raw HTML to Markdown/Extract Text
- **Parent:** [[MX-USER-TASK-018.md#::MX-USER-TASK-018::]]
- **Framework:** Python/Shell (requires further tool development)
- **Dependencies:** [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018B::]], [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018C::]], [[MX-PROJECT-018.md#::MX-PROJECT-TASK-018D::]]
- **Created:** 2025-09-20
- **Updated:** 2025-09-20
- **Tags:** #Type/ProjectTask, #Category/DataProcessing, #RogueTrader, #metrica/status/NotStarted, #metrica/priority/High
- **Acceptance Criteria:**
    - [ ] All downloaded HTML files are processed.
    - [ ] Relevant text content is extracted.
    - [ ] Content is converted to Markdown or plain text format.
    - [ ] Processed content is saved to new .md or .txt files in a structured manner.
- **Notes:** This task will require developing a method to parse HTML and extract content, potentially using shell tools or if a Python environment is available, a Python script.