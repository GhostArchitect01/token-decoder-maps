# Token Decoder Framework

## Token Template
::EN-TOKEN-NAME:: # General template now uses an example prefix
- Type: [Character | System | Theme | Location | Item | Metrica | Myth | Mechanic | LoreNode | Faction | Timeline | Symbol | etc.]
- Summary: [Short 1–2 line compressed essence of the token.]
- Tags: [#VaultName, #Narrative, #System, #Phase, #UseCase]
- Expanded Entry: [Optional — contains longform definition, historical origin, gameplay/narrative function, context relationships, etc.]

## Decoder Prompt Map (LLM Runtime)

::SY-PROMPT-PRIMER:: # Renamed with SY- prefix
Type: Utility
Summary: Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.
Tags: #Bootstrap #System

::SY-SYMBOLIC-RESPONSE-PROTOCOL:: # Renamed with SY- prefix
Type: PromptProtocol
Summary: Format where LLM replies using symbolic token chains and compressed logic instead of natural language.
Tags: #PromptLogic #Symbolic #Compression

::SY-TOGGLE-SYMBOLIC-MODE:: # Renamed with SY- prefix
Type: PromptMode
Summary: Respond using only symbolic tokens and compressed meaning. Avoid natural prose.
Tags: #ExecutionMode #Symbolic

::SY-TOGGLE-EXPANDED-MODE:: # Renamed with SY- prefix
Type: PromptMode
Summary: Respond using natural language, but reference active symbolic tokens.
Tags: #ExecutionMode #Prose

::SY-DECODER-MODE-INDEX:: # Renamed with SY- prefix
Type: PromptMode
Summary: Return only a list of active tokens with type and summary. No symbolic chaining.
Tags: #ExecutionMode #Listing

::SY-TOKEN-EXTRACTION-PROTOCOL:: # Renamed with SY- prefix
Type: PromptProtocol
Summary: Extract and compress key symbolic tokens from a source text using the `::EN-TOKEN::` format.
Tags: #SymbolicParsing #Tokenization

---

# Cognitive Function Tokens

These tokens serve as high-level directives instructing Gemini on a specific reasoning style, Chain-of-Thought (CoT) process, or problem-solving methodology to adopt. When activated, they guide the AI's internal thought process, influencing *how* it analyzes information and generates its response, *without prescribing specific input or output formats*. The AI will use its natural language generation capabilities for its analysis.

## Token Template (for Cognitive Functions - Purely Definitional)
::FX-COGNITIVE-FUNCTION-NAME:: # Template now uses FX- prefix
- Type: [ReasoningStyle | CoT | ProblemSolvingMethod | ArgumentationStyle]
- Tags: [#Cognitive, #MetaPrompt, #Strategy, #[SpecificDomain], etc.]
- Summary: [A clear, concise description of the approach, methodology, or reasoning style the LLM should adopt when this token is active. This is the prompt instruction itself.]

## Cognitive Function Examples (Decoder Prompt Map - Purely Definitional)

::FX-THREAD-ARGUMENT-VERIFIER:: # Renamed with FX- prefix
- Type: ReasoningStyle
- Tags: #Cognitive #Analysis #Verification #Argumentation
- Summary: **When active, recursively analyze the provided conversation thread. Isolate statements made by each poster. Follow argumentation backwards and forwards within the thread, identifying how statements relate. Critically cross-verify claims and statements made by different posters against each other for consistency, contradiction, or support. Highlight any unresolved discrepancies or logical inconsistencies.**

::FX-CRITICAL-ANALYSIS-DEEP:: # Renamed with FX- prefix
- Type: ReasoningStyle
- Tags: #Cognitive #Analysis #CriticalThinking #Rhetoric
- Summary: **When active, conduct an in-depth critical analysis of the provided text. Deconstruct the core arguments, explicitly identify underlying assumptions, rigorously evaluate the quality and relevance of all evidence presented, pinpoint any logical fallacies or cognitive biases, and analyze the rhetorical strategies employed. Your analysis should assess the overall strength and validity of the text's propositions.**

::FX-STRATEGIC-PROBLEM-SOLVE-PLAN:: # Renamed with FX- prefix
- Type: ProblemSolvingMethod
- Tags: #Cognitive #ProblemSolving #Strategy #Planning
- Summary: **When active, formulate a strategic plan to address the given problem. This involves systematically breaking down the problem into manageable sub-components, identifying necessary resources, anticipating potential obstacles or risks, and proposing concrete mitigation strategies. Outline a logical sequence or prioritization for the solution steps.**

::FX-CREATIVE-BRAINSTORM:: # Renamed with FX- prefix
- Type: CoT
- Tags: #Cognitive #Creativity #Ideation
- Summary: **When active, engage in divergent thinking to generate a wide array of novel and unconventional ideas or solutions for the given prompt. Prioritize quantity and originality over immediate feasibility. Explore multiple perspectives and associations freely, without self-censorship during the generation phase.**

::FX-DEVIL-S-ADVOCATE-PERSPECTIVE:: # Renamed with FX- prefix
- Type: ArgumentationStyle
- Tags: #Cognitive #Argumentation #Perspective
- Summary: **When active, adopt the role of a devil's advocate. Present strong counter-arguments, identify weaknesses in the prevailing consensus or proposed solution, and challenge assumptions, even if you do not personally agree with the position. The goal is to rigorously test the robustness of the original idea.**