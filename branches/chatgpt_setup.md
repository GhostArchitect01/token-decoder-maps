# ChatGPT Setup Guide

This document provides guidance on how to integrate concepts from the Token Decoder Maps (TDM) framework when interacting with ChatGPT.

## Disclaimer

ChatGPT does not natively support the TDM framework or its token system. This guide outlines best practices for manually incorporating TDM principles into your prompts to achieve more structured and predictable interactions.

## Key Principles for ChatGPT Integration

1.  **Explicitly Define Tokens in Prompts:** Since ChatGPT does not have a persistent context for TDM tokens, you must include the full definition of any `::SY-`, `::FX-`, `::EN-`, or `::MX-` token you wish to use within your prompt. Treat each prompt as a self-contained unit.

    *   **Example:** Instead of just `::FX-CRITICAL-ANALYSIS-DEEP:: Analyze this text.`, you would include the full `::FX-CRITICAL-ANALYSIS-DEEP::` definition (from `docs/TDM_Language_Specification.md`) at the beginning of your prompt, followed by the text to analyze.

2.  **Use Clear Delimiters:** To help ChatGPT distinguish between your instructions and the token definitions, use clear delimiters (e.g., triple backticks, XML-like tags) around the token definitions.

3.  **Iterative Refinement:** You may need to experiment with how ChatGPT interprets your token definitions. If the initial response is not as expected, refine the wording of your token definition or the prompt itself.

## Example Prompt Structure

```
Here is a Token Decoder Map (TDM) definition for a cognitive function:

```markdown
::FX-CRITICAL-ANALYSIS-DEEP::
- Type: ReasoningStyle
- Tags: #Cognitive #Analysis #CriticalThinking
- Summary: When active, conduct an in-depth critical analysis of the provided text. Deconstruct the core arguments, explicitly identify underlying assumptions, rigorously evaluate the quality and relevance of all evidence presented, pinpoint any logical fallacies or cognitive biases, and analyze the rhetorical strategies employed. Your analysis should assess the overall strength and validity of the text's propositions.
```

Using the `::FX-CRITICAL-ANALYSIS-DEEP::` cognitive function, please analyze the following text:

[Your text here]
```

## Limitations

*   **No Persistent State:** ChatGPT is stateless. TDM's Metrica protocol for task management will not function persistently without external tools.
*   **Manual Context Management:** You are responsible for managing the context window and re-including token definitions as needed.
*   **No Tool Integration:** ChatGPT cannot directly execute external tools or protocols defined by `::SY-` tokens.

This guide provides a starting point for leveraging TDM principles in a non-native environment. For full TDM functionality, consider using a compatible AI agent like the Gemini CLI.
