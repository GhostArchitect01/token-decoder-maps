::MX-PROJECT-TASK-026A::
- **Title:** Design `::SY-TAG-REFACTOR-ORCHESTRATOR::` Token
- **Parent:** [[MX-USER-TASK-026.md#::MX-USER-TASK-026::]]
- **Framework:** TDM
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/design
- **Acceptance Criteria:**
  - [ ] A token definition for `::SY-TAG-REFACTOR-ORCHESTRATOR::` is created.
  - [ ] The token's workflow correctly describes the steps to orchestrate the tag refactoring process (e.g., select token type, run validation, invoke FX token).
- **Notes:** This will be the master token that runs the entire refactoring protocol.

---

::MX-PROJECT-TASK-026B::
- **Title:** Design `::FX-SAFE-TAG-REFACTOR::` Cognitive Token
- **Parent:** [[MX-USER-TASK-026.md#::MX-USER-TASK-026::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-026.md#::MX-PROJECT-TASK-026A::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/design
- **Acceptance Criteria:**
  - [ ] A token definition for `::FX-SAFE-TAG-REFACTOR::` is created.
  - [ ] The token's logic clearly specifies how to safely modify a `Tags:` line without altering other parts of the file.
  - [ ] The logic includes identifying invalid tags, proposing valid replacements, and retaining existing valid tags.
- **Notes:** This is the core cognitive-function token to prevent destructive edits that have occurred in the past.

---

::MX-PROJECT-TASK-026C::
- **Title:** Execute Protocol to Refactor all `FX` Tokens
- **Parent:** [[MX-USER-TASK-026.md#::MX-USER-TASK-026::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-026.md#::MX-PROJECT-TASK-026B::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/refactor
- **Acceptance Criteria:**
  - [ ] The `::SY-TAG-REFACTOR-ORCHESTRATOR::` is invoked on the `FX-token-library`.
  - [ ] All non-conforming tags in `FX` tokens are corrected.
  - [ ] The `validate_tags.py` script reports zero non-conforming tags for the `FX` library.

---

::MX-PROJECT-TASK-026D::
- **Title:** Execute Protocol to Refactor all `SY` Tokens
- **Parent:** [[MX-USER-TASK-026.md#::MX-USER-TASK-026::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-026.md#::MX-PROJECT-TASK-026B::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/refactor
- **Acceptance Criteria:**
  - [ ] The `::SY-TAG-REFACTOR-ORCHESTRATOR::` is invoked on the `SY-token-library`.
  - [ ] All non-conforming tags in `SY` tokens are corrected.
  - [ ] The `validate_tags.py` script reports zero non-conforming tags for the `SY` library.

---

::MX-PROJECT-TASK-026E::
- **Title:** Execute Protocol to Refactor all `MX` Tokens
- **Parent:** [[MX-USER-TASK-026.md#::MX-USER-TASK-026::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-026.md#::MX-PROJECT-TASK-026B::]]
- **Created:** 2025-10-08
- **Tags:** #mx/project/status/pending, #mx/category/refactor
- **Acceptance Criteria:**
  - [ ] The `::SY-TAG-REFACTOR-ORCHESTRATOR::` is invoked on the `MX-PROJECT` and `MX-USER` directories.
  - [ ] All non-conforming tags in `MX` tokens are corrected.
  - [ ] The `validate_tags.py` script reports zero non-conforming tags for the `MX` directories.
