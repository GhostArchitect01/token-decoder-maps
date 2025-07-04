# Token Decoder Framework

This repository contains the Token Decoder Framework, a system designed to enhance communication with Large Language Models (LLMs) through structured, symbolic tokens.

## Overview

The Token Decoder Framework provides a standardized way to define and utilize various types of tokens for interacting with LLMs. These tokens serve as concise, machine-readable directives and knowledge representations, aiming to improve the clarity, consistency, and efficiency of LLM-based workflows.

For a comprehensive understanding of the framework's structure and purpose, refer to the [Framework Overview](docs/framework_overview.md).

## Key Components

### Token Definitions

All formal token definitions are categorized by their prefix and can be found in the `definitions/` directory:

-   **[Cognitive Function Tokens (`::FX-`)](definitions/fx_cognitive_functions.md):** Define reasoning styles, Chain-of-Thought processes, and problem-solving methodologies.
-   **[Metrica Tokens (`::MX-`)](definitions/mx_metrica_tokens.md):** Relate to task management and project ledger entries.
-   **[System/Utility Tokens (`::SY-`)](definitions/sy_system_utility_tokens.md):** Govern system-level commands, protocols, and operational modes.
-   **[Entity/Knowledge Tokens (`::EN-`)](definitions/en_entity_knowledge_tokens.md):** Represent specific entities, concepts, or pieces of knowledge.

### Documentation

Detailed guides and conceptual explanations are available in the `docs/` directory:

-   **[Framework Overview](docs/framework_overview.md):** Explains the token naming conventions and the overall structure.
-   **[Token Definitions Overview](docs/token_definitions.md):** Provides general templates for different token types and their runtime behavior.
-   **[Metrica Protocol](docs/metrica_protocol.md):** Details the structure and usage of the Metrica project ledger.
-   **[Prompt Interaction Guide](docs/prompt_interaction_guide.md):** Guides on how to use and interact with the token decoder framework.
-   **[Token Type Concepts](docs/token_type_concepts.md):** Explores conceptual categories for tokens.

### Examples

Practical examples demonstrating the usage and application of various tokens can be found in the `examples/` directory:

-   [Art Tokens](examples/Art%20Tokens.md)
-   [Gemma Token Test](examples/Gemma%20token%20test.md)
-   [P2P Forum Tokens](examples/P2P%20forum%20tokens.md)
-   [Pillz Tokens](examples/Pillz.md)

## Getting Started

To begin using the Token Decoder Framework, explore the documentation and examples. The core idea is to leverage these symbolic tokens in your interactions with LLMs to provide precise instructions and structured knowledge.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.