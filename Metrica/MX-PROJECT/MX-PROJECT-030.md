### ::MX-PROJECT-030::
- **Title:** Design and Implement Metrica Linter and Refactor Templates
- **Parent:** ::MX-USER-TASK-030::
- **Created:** 2025-10-20
- **Updated:** 2025-10-20
- **Tags:** #mx/project/status/pending, #mx/category/tooling

---
#### ::MX-PROJECT-030A::
- **Title:** Design Metrica Template Linter
- **Status:** pending
- **Tags:** #mx/category/design
- **Acceptance Criteria:**
  - [ ] Define the canonical Metrica task template.
  - [ ] Specify the rules for the linter to enforce.

---
#### ::MX-PROJECT-030B::
- **Title:** Implement Metrica Template Linter
- **Status:** pending
- **Dependencies:** ::MX-PROJECT-030A::
- **Tags:** #mx/category/build
- **Acceptance Criteria:**
  - [ ] Create a script that can read a Metrica file and report template violations.
  - [ ] The script should be able to automatically fix some common violations.

---
#### ::MX-PROJECT-030C::
- **Title:** Refactor Metrica Tags & Templates
- **Status:** pending
- **Dependencies:** ::MX-PROJECT-030B::
- **Tags:** #mx/category/refactor
- **Acceptance Criteria:**
  - [ ] Run the linter on the entire Metrica directory.
  - [ ] Fix all reported template and tag violations.
  - [ ] Ensure `validate_tags.py` and the new linter report no errors.