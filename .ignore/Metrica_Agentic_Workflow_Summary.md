# Summary: Metrica Agentic Workflow

This document summarizes the workflow designed to automatically convert free-form daily notes into structured tasks within the Metrica Protocol.

### The Goal

To eliminate the manual effort of turning daily to-do items into formal project tasks, bridging the gap between unstructured notes and the structured Metrica system.

### The Workflow

1.  **The Convention:** In your daily notes file (e.g., `31-07-2025.md`), prefix any task you want to formally track with an exclamation mark.
    *   **Example:** `- [ ] ! #tdm update github`

2.  **The System Token:** A dedicated token, `::SY-SYNC-JOURNAL-ENTRY::`, is used to process a specific note file.

3.  **The Process:** When invoked, the AI agent will:
    *   Scan the specified file for all tasks marked with `!`.
    *   Propose the creation of formal `::MX-USER-TASK::` tokens from these items.
    *   Upon confirmation, add these new tasks to the master Metrica file.
    *   Mark the original items in the note file as complete (`- [x] !`) to prevent duplicates.

### Full Automation

This entire process can be made fully autonomous by using a `cron` job to run a daily shell script. The script automatically constructs the correct prompt and commands the AI agent to sync the day's notes, requiring zero daily intervention from the user. This turns the AI into a proactive, agentic assistant for task management.