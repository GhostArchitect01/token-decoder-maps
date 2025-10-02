* **::SY-SYNC-JOURNAL-ENTRY::**
    * **Type:** System Protocol
    * **Summary:** Scans a single, specified journal entry file for tasks marked
with the `¬` trigger and converts them into new `::MX-USER-TASK::` tokens in the
master `metrica.md` file.
    * **Argument:** `file_path` (The absolute path to the daily note to be
processed).
    * **Tags:** #Automation #Workflow #Metrica #Ingestion
