# Meta-Log Protocol

This document outlines the Meta-Log Protocol, which leverages `::ML-` tokens to enable self-reflection and analysis of the AI's own actions and thought processes. This system forms the basis for continuous improvement and provides a structured, queryable database of the AI's performance.

## Core Concepts

### Two-Stream Architecture
The meta-log is designed with a "two-stream" architecture to separate objective fact from subjective analysis:

*   **Stream 1: The Event Log (Action-Records.md):** An immutable, chronological record of all actions taken by the AI, stored as `::ML-ACTION-RECORD::` tokens. This log answers the question, "What happened?".

*   **Stream 2: The Reflection Journal (Reflections.md):** The AI's internal monologue, capturing its analysis of its own actions. This stream contains `::ML-FIRST-ORDER-REFLECTION::` (thoughts on a single event) and `::ML-SECOND-ORDER-SYNTHESIS::` (identification of patterns across multiple events) tokens. This log answers the question, "Why did it happen, and what does it mean?".

### Enabling Introspection
This structured log allows the AI to perform true introspection. Using specific `::FX-` tokens, it can be prompted to query its own performance data, analyze the root causes of its failures, and identify the strategies that led to its successes.

## Self-Improvement Loop: AI-Generated Userspace Refinement
The culmination of the TDM framework is the creation of a closed feedback loop for self-improvement. The AI does not modify its own fundamental source code (the "kernel"). Instead, its self-improvement occurs at a higher, safer level: the "userspace." It learns to become a better user of its own configurable TDM framework.

### Mechanism of Improvement
The self-improvement loop is a three-step process:

*   **Record:** The AI continuously records its actions and reflections in the structured Meta-Log.

*   **Analyze:** Using a high-level cognitive token (e.g., `::FX-GENERATE-PROCESS-OPTIMIZATION::`), the AI analyzes its log to find systemic weaknesses (e.g., "I consistently fail at generating valid JSON from unstructured text").

*   **Propose:** The AI generates an `::ML-SECOND-ORDER-SYNTHESIS::` token. The `Proposed-Refinement` field of this token contains a concrete, human-readable suggestion for a new or modified `::TOKEN::` designed to address the identified weakness.

This proposed change is then reviewed and approved by the human user. This creates a powerful, collaborative cycle where the AI actively participates in its own evolution in a transparent and controllable manner.
