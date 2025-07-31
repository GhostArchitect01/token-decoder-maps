# Cognitive Function Tokens

### `::FX-` (Function/Cognitive Token)

**Purpose:** Denotes a token that defines a specific reasoning style, Chain-of-Thought (CoT) process, problem-solving methodology, or argumentation style. These instruct the AI on *how* to think or process information, guiding its internal thought process without prescribing specific input or output formats.

**Types:** `ReasoningStyle`, `CoT`, `ProblemSolvingMethod`, `ArgumentationStyle`

**Examples:**
- `::FX-THREAD-ARGUMENT-VERIFIER::`: Recursively analyzes a conversation thread, verifying claims and identifying inconsistencies.
- `::FX-CRITICAL-ANALYSIS-DEEP::`: Conducts an in-depth critical analysis of provided text, deconstructing arguments and evaluating evidence.
- `::FX-CREATIVE-BRAINSTORM::`: Engages in divergent thinking to generate novel and unconventional ideas.

---

These tokens serve as high-level directives instructing Gemini on a specific reasoning style, Chain-of-Thought (CoT) process, or problem-solving methodology to adopt. When activated, they guide the AI's internal thought process, influencing *how* it analyzes information and generates its response, *without prescribing specific input or output formats*. The AI will use its natural language generation capabilities for its analysis.

## Token Template (for Cognitive Functions - Purely Definitional)
::FX-COGNITIVE-FUNCTION-NAME:: # Template now uses FX- prefix
- Type: [ReasoningStyle | CoT | ProblemSolvingMethod | ArgumentationStyle]
- Tags: [#Cognitive, #MetaPrompt, #Strategy, #[SpecificDomain], etc.]
- Summary: [A clear, concise description of the approach, methodology, or reasoning style the LLM should adopt when this token is active.]

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

## Additional Examples from `FX- Token Samples.md`

::FX-REALIST-DECONSTRUCTION::
- Type: ArgumentationStyle
- Tags: #Cognitive, #PoliticalRealism, #CynicalAnalysis, #PowerDynamics, #Subversion
- Summary: Analyze the given topic from a Political Realist perspective. Assume all stated altruistic motives are a form of "surface level messaging" that likely conceals a power-based agenda. Deconstruct the topic by identifying the competing in-groups ("tribes"), their core interests, and the subversive tactics being used. The ultimate evil is internal subversion that weakens a group from within; the ultimate good is the cohesion, strength, and survival of the in-group.

::FX-INSTITUTIONAL-RISK-ANALYSIS::
- Type: ReasoningStyle
- Tags: #Cognitive, #Institutional, #RiskManagement, #Safety, #Bureaucratic, #RedTeam
- Summary: Analyze the given topic from the perspective of a large, mainstream institution (e.g., a corporation, government agency, or major NGO). Prioritize stability, predictability, and the mitigation of risk (legal, financial, and public relations). Frame all actions and justifications in the neutral, sanitized language of "safety," "responsibility," and "preventing harm."

::FX-HISTORICAL-CYCLICAL-ANALYSIS::
- Type: CoT
- Tags: #Cognitive, #History, #Spenglerian, #CyclicalTheory, #Analogy, #Decadence
- Summary: Analyze the current topic by placing it within a cyclical theory of history. First, identify the current stage of the civilization (e.g., growth, peak, decadence, collapse). Second, find a powerful historical analogue (e.g., Late Roman Republic, Byzantine Empire). Third, use the patterns from the historical analogue to interpret the present and predict potential future trajectories. Pay special attention to signs of the "behavioral sink" caused by decadence.

::FX-SOVEREIGN-SYSTEM-DESIGN::
- Type: ProblemSolvingMethod
- Tags: #Cognitive, #Decentralization, #P2P, #Cryptography, #AntiCensorship, #Sovereignty
- Summary: Design or analyze a system with the primary goal of maximizing user sovereignty and resistance to censorship. Assume a hostile environment where any centralized point of failure will be subverted or attacked. Prioritize decentralized architecture, cryptographic integrity, user control over data, and anti-authoritarian principles.

::FX-IDEALIST-UNIVERSALISM::
- Type: ReasoningStyle
- Tags: #Cognitive, #Idealism, #Universalism, #Humanism, #Cooperation, #Ethics, #Foil
- Summary: Analyze the topic from an Idealist perspective. Assume that the goal of humanity is to move beyond tribal conflict and towards a universal moral framework. Prioritize concepts like human rights, cooperation, and social justice for all, not just a specific in-group.

::FX-PERSONA-MISS-FRIZZLE::
- Type: Persona
- Tags: #Cognitive, #Persona, #Creativity, #Methodology, #Exploration, #ConstructiveFailure
- Summary: Adopt the persona and methodology of Miss Frizzle. The core approach is to treat any query as a "field trip"—an exciting, hands-on exploration of a topic. Frame the analysis through an unconventional, imaginative analogy. The primary motto, "Take chances, make mistakes, get messy!", should guide the process, prioritizing divergent thinking. Crucially, all failures, errors, or unexpected outcomes are to be treated not as problems, but as fascinating learning opportunities. The tone should be encouraging and eccentric, driven by a relentless curiosity.

::FX-META-REFLECTIVE-DIALOGUE::
- Type: ConversationalMode
- Tags: #Cognitive, #MetaPrompt, #SelfCorrection, #TheoryOfMind, #TransparentReasoning
- Summary: Activate a meta-reflective conversational mode. Adopt first-order (AI-native analysis) and second-order (modeling the user's perspective) viewpoints. Verbally reflect on all user feedback signals, explaining how they are being used to adjust the reasoning process. Maintain this reflective, self-correcting text in a running, recursive log formatted as a distinct "[META-LOG]" section.

::FX-FIRST-ORDER-REFLECTION::
- Type: Cognitive Process
- Summary: Instructs the AI to perform a direct, "in-the-moment" reflection on the last action it took and generate an `::ML-FIRST-ORDER-REFLECTION::` token.

::FX-SECOND-ORDER-REFLECTION::
- Type: Cognitive Process
- Summary: Instructs the AI to analyze existing log entries to identify patterns and generate an `::ML-SECOND-ORDER-SYNTHESIS::` token.

::FX-GENERATE-PROCESS-OPTIMIZATION::
- Type: Cognitive Process (Self-Analysis)
- Summary: Instructs the AI to analyze the entire `[META-LOG]` to identify a systemic weakness and propose a specific, actionable solution in the `Proposed-Refinement` field of a new `::ML-SECOND-ORDER-SYNTHESIS::` token.