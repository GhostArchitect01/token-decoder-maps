::MX-PROJECT-TASK-005A::
- **Title:** Split ::SY- tokens from sy_system_utility_tokens.md into individual files.
- **Parent:** [[metrica.md#::MX-USER-TASK-005::]]
- **Framework:** Bash
- **Dependencies:** 
- **Created:** 2025-09-23
- **Updated:** 2025-09-23
- **Tags:** #mx/project/status/done, #mx/category/refactor
- **Acceptance Criteria:**
    - [x] Each `::SY-` token from `definitions/sy_system_utility_tokens.md` is moved to its own file named `definitions/SY-<TOKEN_NAME>.md`.
    - [x] The original `definitions/sy_system_utility_tokens.md` is removed.
- **Notes:** This is the first step in refactoring the token structure.

::MX-PROJECT-TASK-005B::
- **Title:** Refactor ::SY- tokens from context-module-4a.md.
- **Parent:** [[metrica.md#::MX-USER-TASK-005::]]
- **Framework:** Bash
- **Dependencies:** [[MX-PROJECT-005.md#::MX-PROJECT-TASK-005A::]]
- **Created:** 2025-09-23
- **Updated:** 2025-09-23
- **Tags:** #mx/project/status/done, #mx/category/refactor
- **Acceptance Criteria:**
    - [x] Identify unique `::SY-` tokens in `context-module-4a.md`.
    - [x] Extract unique `::SY-` token definitions from `context-module-4a.md`.
    - [x] Create individual files for each new `::SY-` token in the `definitions/` directory.
    - [x] Refactor `context-module-4a.md` to remove the token definitions, leaving only the preamble and section headers.
- **Notes:** This task will address the remaining `::SY-` tokens in `context-module-4a.md`.
