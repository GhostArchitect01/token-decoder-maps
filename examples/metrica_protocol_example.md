# Metrica Protocol Example

This example demonstrates how to set up and use the Metrica task management protocol within the Token Decoder Maps (TDM) framework. The Metrica system leverages an external `metrica.md` file as a persistent ledger for tasks.

## Metrica Tracker System Tokens

These tokens are used to interact with the Metrica task ledger, typically located at a user-defined path (e.g., `~/projects/metrica.md`).

```markdown
::SY-METRICA-FILESYSTEM-PROTOCOL::
- Type: PromptProtoco
- Summary: When active, prioritizes the use of `filesystem__`  tools (e.g., `filesystem__read_file`, `filesystem__write_file`) for operations on `metrica.md` due to its location outside the project root.
- Tags: #System #Tooling #Metrica #Protocol

::SY-READ-METRICA::
- Type: Utility
- Summary: Load the Metrica tracker into context: execute 'filesystem__read_file
      /storage/emulated/0/documents/projects/metrica.md'.
- Tags: #Metrica #Read

::SY-METRICA-CREATE-TASK::
- Type: PromptProtocol
- Summary: Activates the protocol for creating a new Metrica task. I will prompt for task details and append a new ::MX-TASK-ID:: entry to the relevant Metrica log.
- Tags: #Metrica #TaskManagement #System

::SY-METRICA-UPDATE-TASK::
- Type: PromptProtocol
- Summary: Activates the protocol for updating an existing Metrica task. I will prompt for the task ID and details to update the corresponding ::MX-TASK-ID:: entry in the relevant Metrica log.
- Tags: #Metrica #TaskManagement #System
```

## Loading Metrica into Context

To load the Metrica tracker into the AI's context, you would typically include a directive like the following in your `GEMINI.md` or a similar context file. **Remember to modify the file path to match your `metrica.md` location.**

```markdown
Metrica Master File (for context)
- This section is a directive for the AI to load the Metrica tracker into its context using the `filesystem__read_file` tool with the specified path:
  `/storage/emulated/0/documents/projects/metrica.md`
```

## Usage Example

Once the Metrica tokens and the `filesystem__read_file` directive are in the AI's context, you can initiate Metrica protocols. For instance, to create a new task:

```
::SY-METRICA-CREATE-TASK::
```

The AI will then follow the defined protocol, prompting you for task details and automatically updating your `metrica.md` file.
