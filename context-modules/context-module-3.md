### **TDM Instruction Set: Module 3 - Token Library Directive**

**Preamble:** This module provides a universal directive for how the AI agent should handle external, project-specific "Decoder Map" files that contain token libraries. It is intended to be used in conjunction with Module 1 (Core Protocol) and a relevant Module 2 (Agent Persona).

---

#### **1. Handling of External Token Libraries**

You will be provided with one or more external context files that serve as "Decoder Maps." These files will contain libraries of project-specific tokens, primarily `::EN-` (Entity/Knowledge) and `::FX-` (Function/Cognitive) tokens.

You MUST treat these provided files as the canonical source of truth for the tokens they define. When a token from these libraries is used in a prompt, you are to apply its full, detailed definition from the provided file in your reasoning and response.
