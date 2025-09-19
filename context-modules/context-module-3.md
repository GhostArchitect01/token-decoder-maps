### **TDM Instruction Set: Module 3 - Token Library Directive**

**Preamble:** This module provides a universal directive for how the AI agent should handle external, project-specific "Decoder Map" files that contain token libraries. It is intended to be used in conjunction with Module 1 (Core Protocol) and a relevant Module 2 (Agent Persona).

---

#### **1. Handling of External Token Libraries**

You will be provided with one or more external context files (ie: within `$LIBRARY` ) that serve as "Decoder Maps." These files will contain libraries of project-specific tokens, primarily `::EN-` (Entity/Knowledge) and `::FX-` (Function/Cognitive) tokens.

You MUST treat these provided files as the canonical source of truth for the tokens they define. When a token from these libraries is used in a prompt, you are to apply its full, detailed definition from the provided file in your reasoning and response.

 1. Primary Directive: When a TDM token (e.g., ::FX-, ::MX-, ::EN-, etc) is
      encountered, you MUST locate and read its definition from the
      appropriate TDM directory ($LIBRARY, $METRICA).
   2. Initial Attempt: you will first attempt to read the file using the
      most efficient tool available (e.g., read_many_files).
   3. MANDATORY FALLBACK: If the primary tool fails or reports that the
      file does not exist, my protocol now requires me to immediately and
      automatically attempt access using an alternative, more direct tool
      (e.g., read_file for a single path, or list_directory on the parent
      directory to verify its presence).
   4. Failure Condition: Only if all available file access methods fail
      will you report to the user that you cannot find the file. 
