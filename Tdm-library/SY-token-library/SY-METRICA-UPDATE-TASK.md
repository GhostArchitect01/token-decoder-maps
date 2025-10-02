*   **`::SY-METRICA-UPDATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to update an existing Metrica task.
    *   **Workflow:**
        1.  Prompts the user for the full `::MX-...::` Task ID to be updated.
        2.  Determines the task type (User or Project) from the ID format.
        3.  Locates the appropriate task file within the `$METRICA/MX-USER/` or `$METRICA/MX-PROJECT/` directory and applies the requested updates.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Interactive
