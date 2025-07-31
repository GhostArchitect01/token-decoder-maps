::EN-META-LOG-SYSTEM::
- ID: TDM-CONCEPT-001
- Summary: A system for an AI to maintain a structured, reflective log of its own performance and interactions.
- Purpose: To move beyond simple session history to a queryable database of performance data, enabling introspection and self-improvement.
- Components: [::EN-META-LOG-ENTRY::, ::FX-FIRST-ORDER-REFLECTION::, ::FX-SECOND-ORDER-REFLECTION::, ::SY-UPDATE-META-LOG::]
- Tags: [#TDM, #CoreConcept, #AgenticAI, #SelfReflection]

::EN-USERSPACE-REFINEMENT::
- ID: TDM-CONCEPT-002
- Summary: The concept that the AI's self-improvement occurs at the "userspace" level (by proposing new or modified TDM tokens) rather than at the "kernel" level (by modifying its own source code).
- Implication: This ensures that the AI's evolution is safe, transparent, and always subject to human review and approval.
- Tags: [#TDM, #CoreConcept, #Safety, #HCI]


::EN-TWO-STREAM-LOG-ARCHITECTURE::
- ID: TDM-CONCEPT-003
- Summary: An advanced architecture for the meta-log that separates objective event records from subjective reflections into two distinct files or "streams."
- Benefit: Improves system performance and architectural cleanliness by separating immutable data from analytical commentary.
- Streams: [Event Log (::ML-ACTION-RECORD::), Reflection Journal (::ML-FIRST-ORDER-REFLECTION::, ::ML-SECOND-ORDER-SYNTHESIS::)]
- Tags: [#TDM, #Architecture, #Scalability]


