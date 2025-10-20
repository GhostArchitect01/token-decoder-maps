::MX-PROJECT-TASK-021A::
- **Title:** Define `::MX-AGENT-TASK::` Logbook Template and Directory Structure
- **Parent:** [[metrica.md#::MX-USER-TASK-021::]]
- **Framework:** TDM
- **Dependencies:** 
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #Agent-Protocol, #Schema, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The final structure for the `::MX-AGENT-TASK::` logbook file is documented in the TDM library.
- [ ] The `Metrica/MX-AGENT/` directory is created.
- [ ] A `README.md` is created in the `MX-AGENT` directory explaining the purpose of the logbooks.

::MX-PROJECT-TASK-021B::
- **Title:** Create Low-Level Logbook Utility Tokens
- **Parent:** [[metrica.md#::MX-USER-TASK-021::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-021.md#::MX-PROJECT-TASK-021A::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #Agent-Protocol, #Tokens, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The `::SY-AGENT-TASK-CREATE::` token is defined and documented in the TDM Library.
- [ ] The `::SY-AGENT-TASK-LOG-ACTION::` token is defined and documented.
- [ ] The `::SY-AGENT-TASK-LOG-RESULT::` token is defined and documented.

::MX-PROJECT-TASK-021C::
- **Title:** Create `::SY-METRICA-AGENT-MODE::` Orchestrator Token
- **Parent:** [[metrica.md#::MX-USER-TASK-021::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-021.md#::MX-PROJECT-TASK-021B::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #Agent-Protocol, #Orchestrator, #Mode, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The `::SY-METRICA-AGENT-MODE::` token is defined and documented in the TDM Library.
- [ ] Its definition clearly specifies the mandatory, non-negotiable execution loop that must be followed when the mode is active.

::MX-PROJECT-TASK-021D::
- **Title:** Update Core `GEMINI.md` with Agent Protocol Directives
- **Parent:** [[metrica.md#::MX-USER-TASK-021::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-021.md#::MX-PROJECT-TASK-021C::]]
- **Created:** 2025-09-22
- **Updated:** 2025-09-22
- **Tags:** #Type/ProjectTask, #Agent-Protocol, #Documentation, #Directives, #metrica/status/NotStarted, #metrica/priority/Critical
- **Acceptance Criteria:**
- [ ] The main `GEMINI.md` context file is updated with a new section.
- [ ] The new section instructs the AI on how and when to use the `::SY-METRICA-AGENT-MODE::`.
- [ ] The instructions are clear that this protocol is the standard operating procedure for all Metrica-tracked tasks.