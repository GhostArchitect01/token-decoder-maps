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

---

# `parse_ontology.py` - A Fresh Start

## 1. Goals

The primary goal of the `parse_ontology.py` script is to read the `$TAGONTOLOGY` file and produce a flat list of all valid, fully-qualified tags.

## 2. Requirements

*   The script must correctly parse the hierarchical structure of the ontology, which is defined by indentation.
*   The script must be able to handle nested tags to any depth.
*   The script must correctly construct the full tag path for each tag, including all parent tags.
*   The script must be robust and able to handle minor variations in the input format, such as extra whitespace.
*   The script must be simple, readable, and well-documented.

## 3. Obvious Bugs to Avoid

*   **Incorrect Indentation Handling:** Previous versions of the script failed to correctly interpret the indentation, leading to an incomplete or incorrect hierarchy.
*   **Overly Complex Logic:** Attempts to use complex regular expressions and recursive functions made the script difficult to debug and maintain.
*   **Incorrect Tag Path Construction:** The logic for joining parent and child tags was flawed, resulting in incorrect tag paths.
*   **Ignoring the First Line:** The script should ignore the title line of the ontology file.

## 4. A New, Clear Plan

I will write a new script from scratch that follows a simple, iterative approach using a stack. This is a standard and reliable way to parse indented text.

### The Logic:

1.  **Initialize an empty list `valid_tags` and an empty list `stack`.**
2.  **Read the input file line by line.**
3.  **For each line, calculate the indentation level.** I will assume that each level of indentation is 2 spaces.
4.  **Pop from the `stack` until the length of the stack is equal to the current indentation level.** This will ensure that the stack always represents the current path in the hierarchy.
5.  **Extract the tag from the current line.** The tag is the stripped content of the line.
6.  **Append the tag to the `stack`.**
7.  **Join the elements of the `stack` to form the full tag path.** The separator will be `/`.
8.  **Add the full tag path to the `valid_tags` list.**
9.  **The script will take the file path as a command-line argument.**

This approach is simple, robust, and easy to understand. I am confident that it will finally solve the parsing issue.
