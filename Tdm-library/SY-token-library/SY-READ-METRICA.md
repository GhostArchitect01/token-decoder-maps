*   **`::SY-READ-METRICA::`**
    *   **Summary:** Loads the complete state of the Metrica system into context by reading all task files from their respective directories. This is used for passive review or to prepare for other operations.
    *   **Workflow:**
        1.  Scans the `$METRICA/MX-USER/` directory and reads all `MX-USER-TASK-ID.md` files.
        2.  Scans the `$METRICA/MX-PROJECT/` directory and reads all `MX-PROJECT-ID.md` files.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #DataAccess
