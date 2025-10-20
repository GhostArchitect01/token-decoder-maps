::MX-PROJECT-TASK-027A::
- **Title:** Consolidate Token Templates into `/definitions`
- **Parent:** [[MX-USER-TASK-027.md#::MX-USER-TASK-027::]]
- **Framework:** TDM
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/refactor
- **Acceptance Criteria:**
  - [ ] The `definitions/mx_metrica_tokens.md` file is updated to include the full templates for User, Project, and the new Agent task types.
  - [ ] The definition files for `EN`, `FX`, and `SY` tokens are updated with their full, canonical templates.
- **Notes:** This task establishes the `/definitions` directory as the single source of truth for all token structures.

---

::MX-PROJECT-TASK-027B::
- **Title:** Design `::SY-CREATE-TOKEN::` Protocol
- **Parent:** [[MX-USER-TASK-027.md#::MX-USER-TASK-027::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-027.md#::MX-PROJECT-TASK-027A::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/design
- **Acceptance Criteria:**
  - [ ] A new token definition file for `::SY-CREATE-TOKEN::` is created in the `SY-token-library`.
  - [ ] The token's definition clearly outlines the workflow: receive type/name/values, read the appropriate template from `/definitions`, populate it, and write the new file to the correct library directory.
- **Notes:** This protocol will be the sole method for generating new tokens, ensuring consistency.

---

::MX-PROJECT-TASK-027C::
- **Title:** Update Core `GEMINI.md` Directives
- **Parent:** [[MX-USER-TASK-027.md#::MX-USER-TASK-027::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-027.md#::MX-PROJECT-TASK-027B::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/system
- **Acceptance Criteria:**
  - [ ] The `GEMINI.md` file is updated with a new, permanent directive that mandates the use of the `::SY-CREATE-TOKEN::` protocol for all future token creation.
- **Notes:** This locks in the new standardized process.
