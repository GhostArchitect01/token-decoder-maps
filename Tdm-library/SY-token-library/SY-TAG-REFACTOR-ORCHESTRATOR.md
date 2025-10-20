::SY-TAG-REFACTOR-ORCHESTRATOR::
- **Summary:** Orchestrates the tag refactoring process by validating a token library and invoking cognitive functions to correct non-conforming tags.
- **Tags:** #sy/type/protocol, #sy/category/data, #sy/protocol/tag-refactor
- **Parameters:**
    - `target_glob` (string, required): The glob pattern for the token library to be refactored (e.g., 'FX-token-library/**/*.md').
- **Execution Workflow:**
    1.  Accepts a `target_glob` for a token library.
    2.  Invokes `::FX-RUN-TAG-VALIDATION::` with the `target_glob` as input.
    3.  Pipes the output (a list of files with non-conforming tags) to the `::FX-SAFE-TAG-REFACTOR::` token.
    4.  The `::FX-SAFE-TAG-REFACTOR::` token is executed for each file in the list.
    5.  Outputs a final summary report of all changes made.
