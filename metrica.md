# Example of a Metrica Decoder Map

::MX-TASK-ID::  
- **Title:** [Short, clear title of the task]  
- **Category:** [Optional grouping label, e.g., #ProjectName, #Admin, #Research]  
- **Status:** [Planned | In Progress | Completed | Blocked | Cancelled]  
- **Priority:** [Low | Medium | High | Critical]  
- **Children:** [Related ::MX-PROJECT-TASK-ID::]
- **Dependencies:** [Other ::MX-TASK-ID:: tokens if any]
- **Deadline:** [Optional: YYYY-MM-DD format]  
- **Created:** [Auto-assigned or manual date YYYY-MM-DD]  
- **Tags:** [#Flexible #Tag #List]  
- **Notes:** [Freeform details or sub-steps]
- **Related Files:

::MX-USER-001::
- **Title:** White Paper: Symbolic Token Decoder Map System
- **Category:** #SystemDesign 
- **Status:** Completed
- **Priority:** High
- **Dependencies:** None
- **Children:** 
- **Deadline:** 
- **Created:** 2025-07-02
- **Updated:** 2025-07-19
- **Tags:** #LLM, #ContextWindow, #PersistentMemory, #MCP 
- **Notes:** The foundational white paper describing the system to enhance LLM interaction by externalizing knowledge into decoder maps referenced by symbolic tokens. The document itself is complete. 

::MX-USER-002::
- **Title:** Implement Minimalist Model Context Protocol (MCP) Server
- **Category:** #Implementation
- **Status:** Planned
- **Priority:** Critical
- **Dependencies:** ::MX-USER-001::
- **Children:**
- **Deadline:** 
- **Created:** 2025-07-02
- **Updated:** 2025-07-19
- **Tags:** #MCP, #Server, #LLM, #ProofOfConcept
- **Notes:** Develop a lightweight intermediary server to test the Symbolic Token Decoder Map system. Core functions include prompt interception, token identification, decoder map lookup, and context injection for the LLM.

::MX-USER-003::
- **Title:** Research Synergy of Symbolic Tokens and OCTAVE Protocol
- **Category:** #Research
- **Status:** Planned
- **Priority:** Medium
- **Dependencies:** ::MX-USER-001::, ::MX-USER-002::
- **Children:** 
- **Deadline:** 
- **Created:** 2025-07-02
- **Updated:** 2025-07-19
- **Tags:** #OCTAVE, #SemanticCompression, #SystemDesign
- **Notes:** Explore the benefits of combining the Symbolic Token system with the OCTAVE protocol. The idea is to use OCTAVE-formatted content within the Decoder Maps to make the injected context more structured and semantically precise.

::MX-USER-004::
- **Title:** Implement Interactive Logging in zsh-ai
- **Category:** #Feature
- **Status:** Planned
- **Priority:** High
- **Dependencies:** None
- **Children:** 
- **Deadline:** 
- **Created:** 2025-07-02
- **Updated:** 2025-07-19
- **Tags:** #zsh-ai, #Logging, #UpstreamContribution
- **Notes:** Develop and integrate a configurable logging feature into the `zsh-ai` project. The plan includes adding config flags, creating a core logging function, integrating it at all interaction points, and adding documentation and tests for a potential upstream pull request.

::MX-USER-005::
- **Title:** Align `gemini-cli` Gemma 3 Plan with Multi-Provider Implementation
- **Category:** #ProjectManagement
- **Status:** Planned
- **Priority:** Medium
- **Dependencies:** None
- **Children:** 
- **Deadline:** 
- **Created:** 2025-07-02
- **Updated:** 2025-07-19
- **Tags:** #gemini-cli, #Gemma3, #Refactor
- **Notes:** Revise the development plan in `gemini-cli/GEMINI.md` to acknowledge and leverage the existing `TextToolCallParser` from the `multi-provider` branch. Future work should focus on verification and refinement rather than building from scratch.

::MX-USER-006::
- **Title:** Token Decoder GitHub
- **Category:** #Implementation #Documentation
- **Status:** In Progress
- **Priority:** High
- **Dependencies:** ::MX-USER-001::, ::MX-USER-TDM-001::
- **Children:** 
- **Deadline:**
- **Created:** 2025-07-04
- **Updated:** 2025-07-19
- **Tags:** #TokenDecoder, #GitHub, #Review, #Testing
- **Notes:** Repository pushed to GitHub. Testing and examples are still pending. Working directory: [[/data/data/com.termux/files/home/projects/token-decoder-framework-github]]. Tool calls via tokens is a success. Testing is good but uncertain.

::MX-USER-007::
- **Title:** Art Tokens
- **Category:** #Research #Implementation
- **Status:** Planned
- **Priority:** Medium
- **Dependencies:** ::MX-USER-001::, ::MX-USER-006::
- **Children:** 
- **Deadline:**
- **Created:** 2025-07-04
- **Updated:** 2025-07-19
- **Tags:** #Art, #Tokens, #DecoderMap
- **Notes:** Investigate and prototype the concept of "art tokens" within the Symbolic Token Decoder Map system. This includes defining their structure, potential use cases, and integration with existing token types.

::MX-USER-008::
- **Title:** Tui_app
- **Category:** #Implementation
- **Status:** In Progress
- **Priority:** High
- **Dependencies:** ::MX-USER-009::
- **Children:** 
- **Deadline:**
- **Created:** 2025-07-04
- **Updated:** 2025-07-19
- **Tags:** #TUI, #SQLAI, #Timestamps
- **Notes:** Missing Tui wrapper. Need to verrify that timestamps are backwards compatible with the Forum update. Integrate with the SQL AI. Database schema has been unified, with `db_inserter.py` as the source of truth.

::MX-USER-009::
- **Title:** SQL-AI (Replicate zsh-ai for SQLite)
- **Category:** #Implementation
- **Status:** In Progress
- **Priority:** High
- **Dependencies:** None
- **Children:** 
- **Created:** 2025-07-04
- **Updated:** 2025-07-19
- **Tags:** #SQL, #AI, #SQLite, #zsh-ai
- **Notes:** Replicate the functionality of zsh-ai for SQLite databases, allowing AI-powered interaction and query generation for SQL operations. Plan outlined in sql-ai/GEMINI.md

::MX-USER-010::
- **Title:** Implement Gemma compatibility in zsh-ai
- **Category:** #zsh-ai
- **Status:** Completed
- **Priority:** High
- **Dependencies:** 
- **Children:** 
- **Created:** 2025-07-05
- **Updated:** 2025-07-19
- **Tags:** #Development #Gemma #zsh-ai
- **Notes:** Need to refer to zsh-ai-gemlite for solutions

::MX-USER-011::
- **Title:** Fork Logseq for Obsidian Features
- **Category:** #Obsidian #logseq
- **Status:** Planned
- **Priority:** Low
- **Dependencies:** None
- **Children:** 
- **Created:** 2025-07-19
- **Updated:** 2025-07-19
- **Tags:** #Development
- **Notes:** Examine the source code of Logseq and compile a feature list from Obsidian.

::MX-USER-TDM-001::
- **Title:** Token Decoder Framework Project
- **Category:** #Project
- **Status:** In Progress
- **Priority:** High
- **Dependencies:** None
- **Children:** ::MX-PROJECT-001::, ::MX-PROJECT-008::, ::MX-PROJECT-016::, ::MX-PROJECT-017::, ::MX-PROJECT-018::, ::MX-PROJECT-019::, ::MX-PROJECT-020::, ::MX-PROJECT-021::, ::MX-PROJECT-022::, ::MX-PROJECT-023::, ::MX-PROJECT-024::, ::MX-PROJECT-025::, ::MX-PROJECT-026::, ::MX-PROJECT-027::, ::MX-PROJECT-028::, ::MX-PROJECT-029::, ::MX-PROJECT-030::, ::MX-PROJECT-033::, ::MX-PROJECT-037::, ::MX-PROJECT-038::, ::MX-PROJECT-039::, ::MX-PROJECT-040::, ::MX-PROJECT-041::, ::MX-PROJECT-042::, ::MX-PROJECT-045::, ::MX-PROJECT-046::, ::MX-PROJECT-047::
- **Created:** 2025-07-31
- **Updated:** 2025-07-31
- **Tags:** #TDM, #Framework
- **Notes:** Overarching task for all development and documentation related to the Token Decoder Framework.
    **Roadmap:**
    1.  Refine Metrica integration and test ML tokens with Meta-Log system.
    2.  Test loading FX token ledgers/glossaries into context for in-session use.
    3.  Document Metrica workflows and provide examples.
    4.  Document ML protocol and provide examples.
    5.  Document FX token usage for Chain-of-Thought/agentic behavior in regular sessions and project work, with examples.
    6.  Re-examine `README.md` for a comprehensive overview and create a new streamlined `README.md`.
    7.  Upload examples.
    8.  Orchestrate Canvas-like illustrations of workflows using tokens.
    9.  Document ChatGPT/general free subscription AI usage with TDM.
    10. Document ChatGPT projects and Gemini Gems usage with TDM.
    11. Refine global `GEMINI.md` to be more TDM-centric.
