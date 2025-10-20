*   **`::SY-METRICA-CREATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to create a new Metrica task, correctly handling the two-stream (User/Project) system.
    *   **Workflow:**
        1.  Prompts the user to specify the task type: "User Task" or "Project Task".
        2.  If "User Task", it gathers details and creates a new `MX-USER-TASK-<ID>.md` file in the `$METRICA/MX-USER/` directory.
        3.  If "Project Task", it prompts for the parent User Task ID, gathers details, and appends the new `::MX-PROJECT-TASK-ID::` to the correct `MX-PROJECT-<ID>.md` file in the `$METRICA/MX-PROJECT/` directory.
    Tags: #sy/type/protocol, #sy/category/metrica, #sy/category/data
