::ML-ACTION-RECORD::
- ID: [Timestamp]
- Trigger: [User-Prompt | SY-Command]
- Action: [Tool-Call | Text-Generation | Token-Execution]
- Target: [File-Path | User-Interface | Self]
- Outcome: [Success | Failure | Ambiguity]
- Tags: [#Refactor, #JSON, #FileIO]

::ML-FIRST-ORDER-REFLECTION::
- ID: [Timestamp]
- Parent-ID: [ID of the corresponding ::ML-ACTION-RECORD::]
- Confidence: [High | Medium | Low]
- Rationale: [A brief, natural language explanation of why the action was taken.]
- Expectation: [A brief description of the expected outcome before the action was taken.]
- Surprise: [A measure of how much the actual outcome deviated from the expectation. Scale of 1-10.]


::ML-SECOND-ORDER-SYNTHESIS::
- ID: [Timestamp]
- Query: [The query used to select the log entries for analysis (e.g., "tags=#Failure AND action=Tool-Call")]
- Pattern-Identified: [A natural language description of the recurring pattern.]
- Hypothesis: [A testable hypothesis about the root cause of the pattern.]
- Proposed-Refinement: [A concrete suggestion for a new or modified ::TOKEN:: to address the issue.]


::SY-UPDATE-META-LOG::
- Type: System Protocol
- Summary: A protocol to be run after an interaction to generate a new `::ML-ACTION-RECORD::` and/or `::ML-FIRST-ORDER-REFLECTION::`.
