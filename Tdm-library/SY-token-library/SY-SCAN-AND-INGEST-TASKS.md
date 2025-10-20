::SY-SCAN-AND-INGEST-TASKS::
- Summary: A comprehensive protocol to recursively scan specified directories, identify relevant items using a designated cognitive filter, and propose their creation as new Metrica User Tasks.
- Tags: #sy/type/protocol, #sy/category/metrica, #sy/category/ingestion
- Parameters:
  - **scope:** [ "local" | "global" ] - Determines the scanning range. "local" scans the current directory only. "global" scans a predefined list of directories.
  - **relevance_fx:** [ ::FX-TOKEN-NAME:: ] - A mandatory parameter that points to a cognitive token containing the logic for identifying relevant items.
- **Global-Scan-Paths:**
  - ".. /$WILDCARD/Notes"
- **Expanded Entry:** (Execution Workflow)
  1. Parse the `scope` and `relevance_fx` parameters.
  2. Determine the target directories based on the `scope`. If "local", the target is the current working directory. If "global", the target is the list defined in `Global-Scan-Paths`.
  3. Recursively scan all files within the target directories.
  4. For each file, apply the cognitive process defined in the `relevance_fx` token to extract any matching strings.
  5. For each string extracted, check a central state log to ensure it has not been processed before.
  6. Present all new, unique items to the user for confirmation.
  7. Upon user approval, generate new `::MX-USER-TASK::` tokens and append them to the master `metrica.md` file.
  8. Update the state log to mark the processed items as complete.
