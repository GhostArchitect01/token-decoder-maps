::MX-PROJECT-TASK-022A::  
- **Title:** Review and Refactor FX Token Tags
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** 
- **Dependencies:** 
- **Created:** 2025-10-06
- **Tags:** #mx/category/refactor, #mx/project/status/done
- **Acceptance Criteria:**
  - [x] All tags for FX tokens in `$LIBRARY` conform to `$TAGONTOLOGY`.
- **Notes:** Review and refactor tags for FX tokens in the TDM library, ensuring compliance with the `$TAGONTOLOGY`.

---

# MASTER DIRECTIVE: Ontology Adherence

**When refactoring tags, the AI MUST adhere to the following:**

1.  **Consult the Canonical Source:** The `$TAGONTOLOGY` document is the single source of truth for all tags.
2.  **Strict Conformance:** All tags MUST conform to the structure, hierarchy, and naming conventions defined in the `$TAGONTOLOGY`.
3.  **Follow All Directives:** The AI MUST follow all instructions, directives, and exceptions laid out in the `$TAGONTOLOGY` document. A simple list of valid tags is NOT sufficient.
4.  **No New Tags:** The AI is strictly forbidden from inventing or using tags not explicitly defined in the `$TAGONTOLOGY`.

This directive is essential to prevent data corruption and ensure the integrity of the TDM system.

---

::MX-PROJECT-TASK-022B::  
- **Title:** Review and Refactor MX Token Tags
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** 
- **Dependencies:** [[mx-project-022.md#::MX-PROJECT-TASK-022A::]]
- **Created:** 2025-10-06
- **Updated:** 2025-10-07
- **Tags:** #mx/category/refactor, #mx/project/status/failed
- **Acceptance Criteria:**
  - [ ] All tags for MX tokens in `$LIBRARY` conform to `$TAGONTOLOGY`.
- **Notes:** The current workflow for refactoring tags has completely failed. The `parse_ontology.py` script is broken and multiple attempts to fix it have failed. Manual refactoring attempts have also failed due to incorrect application of the ontology and reckless use of the `replace` tool, resulting in data loss. The entire workflow needs to be re-evaluated.

---

::MX-PROJECT-TASK-022C::  
- **Title:** Review and Refactor SY Token Tags
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** 
- **Tags:** #mx/category/refactor, #mx/project/status/done
- **Acceptance Criteria:**
  - [x] All tags for SY tokens in `$LIBRARY` conform to `$TAGONTOLOGY`.
- **Notes:** Review and refactor tags for SY tokens in the TDM library, ensuring compliance with the `$TAGONTOLOGY`.

---

::MX-PROJECT-TASK-022D::
- **Title:** Fix `parse_ontology.py` Script
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** Python
- **Dependencies:**
- **Created:** 2025-10-07
- **Updated:** 2025-10-07
- **Tags:** #mx/category/debug, #mx/project/status/pending
- **Acceptance Criteria:**
  - [ ] The `parse_ontology.py` script correctly parses the `$TAGONTOLOGY` file, including all hierarchical and special tags.
  - [ ] The script generates a clean and accurate `ontology_tags.tmp` file.
- **Notes:** The script has failed multiple times. A robust and reliable solution is required.

---

::MX-PROJECT-TASK-022E::
- **Title:** Create `::FX-STRICT-ONTOLOGY-APPLICATION::` Token
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** TDM
- **Dependencies:** [[mx-project-022.md#::MX-PROJECT-TASK-022D::]]
- **Created:** 2025-10-07
- **Updated:** 2025-10-07
- **Tags:** #mx/category/design, #mx/project/status/pending
- **Acceptance Criteria:**
  - [ ] A new `::FX-STRICT-ONTOLOGY-APPLICATION::` token is created.
  - [ ] The token takes a file path as input.
  - [ ] The token reads the file and the `$TAGONTOLOGY`.
  - [ ] The token generates a set of precise and safe `replace` commands to refactor the tags in the file.
- **Notes:** This token will be used to automate the tag refactoring process and avoid manual errors.

---

::MX-PROJECT-TASK-022F::
- **Title:** Create `::FX-SAFE-REPLACE::` Token
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** TDM
- **Dependencies:**
- **Created:** 2025-10-07
- **Updated:** 2025-10-07
- **Tags:** #mx/category/design, #mx/project/status/pending
- **Acceptance Criteria:**
  - [ ] A new `::FX-SAFE-REPLACE::` token is created.
  - [ ] The token takes a file path, old string, and new string as input.
  - [ ] Before executing the `replace` command, the token performs a dry run or other verification to ensure that only the intended text is being replaced.
- **Notes:** This token will be used to prevent the `replace` tool from making destructive changes.

---

::MX-PROJECT-TASK-022G::
- **Title:** Amend `$TAGONTOLOGY` with `failed` status.
- **Parent:** [[MX-USER-TASK-022.md#::MX-USER-TASK-022::]]
- **Framework:** TDM
- **Dependencies:**
- **Created:** 2025-10-07
- **Updated:** 2025-10-07
- **Tags:** #mx/category/design, #mx/project/status/pending
- **Acceptance Criteria:**
  - [ ] The `$TAGONTOLOGY` file is updated to include `failed` as a valid status under `#mx/user/status`, `#mx/project/status`, and `#mx/agent/status`.
- **Notes:** As per user request, to better reflect the state of tasks.

# Tag Ontology Refactoring Workflow Documentation

This document outlines the scripts and workflow used for refactoring TDM token tags to conform to the `$TAGONTOLOGY`.

## Workflow Overview

The refactoring process is broken down by token type (FX, MX, SY) and involves the following steps for each type:

1.  **Extract Token Information:** Retrieve the token name, title (if available), and existing tags from all token definition files of a specific type.
2.  **Compare with Ontology:** Compare the extracted tags against the canonical `$TAGONTOLOGY` to identify non-conforming tags.
3.  **Propose and Apply Corrections:** For each non-conforming tag, propose a correction based *only* on existing tags in the `$TAGONTOLOGY`. No new tags are to be introduced.
4.  **Amend Missing Tags:** For tokens lacking any tags, propose and apply appropriate tags from the `$TAGONTOLOGY` based on the token's summary/description.

## Scripts Used

### 1. `temp_script.py` (Token Information Extractor)

*   **Purpose:** Reads TDM token definition files and extracts the token name, title, and all associated tags.
*   **Location:** `/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/temp_script.py`

### 2. `compare_tags.py` (Tag Conformance Checker)

*   **Purpose:** Compares a list of extracted token tags against the `$TAGONTOLOGY` and reports any non-conforming tags.
*   **Location:** `/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/compare_tags.py`

### 3. `parse_ontology.py` (Ontology Parser)

*   **Purpose:** Extracts all valid, hierarchical tags from the `$TAGONTOLOGY` document.
*   **Location:** `/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/parse_ontology.py`
*   **Issue:** The script is not correctly parsing the hierarchical structure of the ontology, leading to incorrect results from `compare_tags.py`. This script needs to be fixed before the workflow can be reliably automated.

## How to Resume/Continue the Workflow

To pick up the tag refactoring in a fresh session:

1.  **Fix `parse_ontology.py`**: The `parse_ontology.py` script needs to be fixed to correctly parse the hierarchical tag ontology.
2.  **Re-generate Ontology Tags**: Once `parse_ontology.py` is fixed, re-generate the `ontology_tags.tmp` file.
3.  **Extract Token Info**: Use `temp_script.py` to extract token information for the desired token type (e.g., MX).
4.  **Compare and Report**: Use `compare_tags.py` to get a list of non-conforming tags.
5.  **Refactor/Amend Tags**: Based on the comparison report, apply `replace` operations to correct non-conforming tags or add missing tags.
6.  **Update Project Task Status**: Mark the relevant project task as `done` in `mx-project-022.md` once its scope is fully completed.