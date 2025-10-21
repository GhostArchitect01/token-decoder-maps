# Daily Log Dispatcher Protocol Tokens

This document contains the canonical definitions for the ::SY- tokens used in the Daily Log Dispatcher Protocol.

---

### ::SY-PROCESS-DAILY-LOG::
- **Type:** System Protocol
- **Summary:** Scans a specified daily note file. Parses each line based on its prefix and calls the appropriate specialized `::SY-` protocol to process the content.
- **Argument:** `file_path` (The absolute path to the daily note to be processed).
- **Tags:** #Automation, #Workflow, #Logging, #Dispatcher
- **Workflow:**
    1. Read the file specified by `file_path`.
    2. For each line in the file:
        - If the line starts with `¬`, call `::SY-SYNC-JOURNAL-ENTRY::`.
        - If the line contains `work::`, call `::SY-LOG-WORK-SESSION::`.
        - If the line contains `food::`, call `::SY-LOG-MEAL::`.

---

### ::SY-LOG-WORK-SESSION::
- **Type:** System Protocol
- **Summary:** Parses a work session from a daily note and appends it to `Life/Work/Hours.md`.
- **Trigger:** `work::` prefix in a daily note.
- **Target File:** `/storage/emulated/0/Documents/Laurel-catacomb/Life/Work/Hours.md`
- **Workflow:**
    1. Extract the date from the daily note's filename.
    2. Find the `work::` section in the daily note.
    3. Parse the `Start:` and `Finish:` times.
    4. Determine the correct week number from the date.
    5. Append the work session to the corresponding week in `Hours.md`.
    6. Confirm entry success (ADDED: Work Hours [YYYY-MM-DD-dd])

---

### ::SY-LOG-MEAL::
- **Type:** System Protocol
- **Summary:** Parses meal and hydration entries from a daily note and appends them to `Life/Food Intake/Food Intake.md`.
- **Trigger:** `food::` and `Hydrate::` prefixes in a daily note.
- **Target File:** `/storage/emulated/0/Documents/Laurel-catacomb/Life/Food Intake/Food Intake.md`
- **Workflow:**
    1. Extract the date from the daily note's filename.
    2. Read `Food Intake.Md`
    3. Find the `food::` and `Hydrate::` sections in the daily note.
    4. Parse the meal and hydration items.
    5. Format the date as `Day-DD-MM-YYYY`.
    6. Append the items to `Food Intake.md` under the correct date.
