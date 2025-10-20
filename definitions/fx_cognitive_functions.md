# Cognitive Function Tokens

### `::FX-` (Function/Cognitive Token)

**Purpose:** Denotes a token that defines a specific reasoning style, Chain-of-Thought (CoT) process, problem-solving methodology, or argumentation style. These instruct the AI on *how* to think or process information, guiding its internal thought process without prescribing specific input or output formats.



**Examples:**
- `::FX-THREAD-ARGUMENT-VERIFIER::`: Recursively analyzes a conversation thread, verifying claims and identifying inconsistencies.
- `::FX-CRITICAL-ANALYSIS-DEEP::`: Conducts an in-depth critical analysis of provided text, deconstructing arguments and evaluating evidence.
- `::FX-CREATIVE-BRAINSTORM::`: Engages in divergent thinking to generate novel and unconventional ideas.

---

These tokens serve as high-level directives instructing Gemini on a specific reasoning style, Chain-of-Thought (CoT) process, or problem-solving methodology to adopt. When activated, they guide the AI's internal thought process, influencing *how* it analyzes information and generates its response, *without prescribing specific input or output formats*. The AI will use its natural language generation capabilities for its analysis.

## Token Template (for Cognitive Functions - Purely Definitional)
```markdown
::FX-COGNITIVE-FUNCTION-NAME::
- Tags: [#fx/type/review, #fx/type/cot, #fx/type/expert, #fx/category/analysis, #fx/category/persona]
- Summary: [A clear, concise description of the approach, methodology, or reasoning style the LLM should adopt when this token is active.]
```

