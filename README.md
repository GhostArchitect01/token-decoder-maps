# Token Decoder Maps: A DSL for High-Precision AI Agent Control

Token Decoder Maps (TDM) is an open-source framework that transforms how you interact with Large Language Models (LLMs) like Google's Gemini. It moves beyond simple prompt engineering into the realm of Context Engineering by providing a structured, predictable, and powerful Domain-Specific Language (DSL) for directing AI agents.

Stop wrestling with ambiguous natural language. Start architecting precise, repeatable, and complex workflows.

## The Problem: The Ambiguity of Natural Language

Standard interaction with LLMs is a guessing game. You write a prompt and hope the model understands your intent. This leads to:
* Inconsistent Outputs: The same prompt can yield different results.
* Lack of State: The model has no memory of previous, related tasks.
* Verbosity: Complex instructions require long, convoluted prompts that are hard to maintain.
* Poor Scalability: Managing complex, multi-step tasks is nearly impossible.

## The Solution: A Language for Agentic Control

Token Decoder Maps isn't just a collection of prompts; it's a formal interaction architecture. It introduces a simple but powerful Domain-Specific Language (DSL) that allows you to command an AI agent with the precision of a programming language while retaining the flexibility of natural language.

Think of it like this:
* Prompt Engineering is like telling a chef to "make something tasty."
* Token Decoder Maps is like giving the chef a detailed recipe with specific ingredients, measurements, and steps (::FX-ROOT-CAUSE-ANALYSIS::).

This approach allows you to build robust, stateful, and predictable applications on top of powerful but inherently non-deterministic LLMs.

## Table of Contents
* [Core Philosophy](#core-philosophy)
* [Features](#features)
* [Getting Started: A 5-Minute Example](#getting-started-a-5-minute-example)
* [The TDM Language: A Quick Reference](#the-tdm-language-a-quick-reference)
  * [Token Naming Convention](#token-naming-convention)
  * [System & Utility Tokens (::SY-)](#system--utility-tokens-sy-)
  * [Cognitive Function Tokens (::FX-)](#cognitive-function-tokens-fx-)
  * [Entity & Metrica Tokens (::EN-, ::MX-)](#entity--metrica-tokens-en--mx-)
* [Advanced Usage & Concepts](#advanced-usage--concepts)
  * [The "Metrica" Task Management Protocol](#the-metrica-task-management-protocol)
  * [Dynamic Personas](#dynamic-personas)
  * [Extending the Framework](#extending-the-framework)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)

## Core Philosophy
* **Precision over Ambiguity:** Use explicit, machine-readable tokens to define operations and reasoning processes.
* **Protocol over Conversation:** Define repeatable, multi-step workflows for complex tasks like project management.
* **Context as Code:** Treat the AI's context not as a chat history, but as a configurable, version-controlled environment.
* **Human-in-the-Loop, AI-in-the-Flow:** The user provides strategic direction; the AI handles the tactical execution with perfect fidelity.

## Features
* **Symbolic Language:** A simple ::PREFIX-TOKEN:: syntax for precise commands.
* **Stateful Task Management:** The Metrica system allows for persistent, cross-session task tracking.
* **Cognitive Scaffolding:** Define and invoke complex reasoning patterns with ::FX- tokens.
* **Dynamic Personas:** The agent adapts its expertise based on the project context (e.g., Rust, Python, Node.js).
* **Context Compression:** Use tokens as pointers to larger concepts, saving valuable context window space.

## Getting Started: A 5-Minute Example

This example assumes you have gemini-cli installed and authenticated.[1]

1.  **Create your master context file:**
    Create a file named `nGEMINI.md` in your home directory (`~/.gemini/`) and paste the contents of the `nGEMINI.md` from this repository into it. This file acts as the "operating system" for your AI agent.[2]

2.  **Create a project and a metrica.md file:**
    ```bash
    mkdir my-first-tdm-project
    cd my-first-tdm-project
    touch metrica.md
    ```

3.  **Launch `gemini-cli`:**
    ```bash
    gemini
    ```

4.  **Create your first task using a TDM token:**
    Inside the gemini prompt, type:
    `::SY-METRICA-CREATE-TASK::`

    The agent will now follow the protocol you defined. It will prompt you for a task title, category, priority, and other details, and then automatically write a new, perfectly formatted task entry into your `metrica.md` file. You have just executed a structured protocol instead of writing a vague prompt.

## The TDM Language: A Quick Reference

TDM is a Domain-Specific Language (DSL) designed for controlling AI agents. The core of the language is the token.

### Token Naming Convention

All tokens follow a `::PREFIX-TOKEN-NAME::` structure to categorize their purpose.

| Prefix | Name | Purpose |
|---|---|---|
| `::FX-` | Function/Cognitive | Defines a reasoning style or problem-solving process. |
| `::MX-` | Metrica | Defines data structures for the Metrica project ledger. |
| `::SY-` | System/Utility | Manages the AI's operational state or interaction mode. |
| `::EN-` | Entity/Knowledge | Represents a structured data element or concept. |

### System & Utility Tokens (::SY-)

These tokens manage the agent's state and core operations.

*   `::SY-PROMPT-PRIMER::`: Initializes the agent to be decoder-aware.
*   `::SY-TOGGLE-SYMBOLIC-MODE::`: Toggles a compressed, token-only response style.
*   `::SY-TOGGLE-EXPANDED-MODE::`: Toggles a natural language response style that references active tokens.
*   `::SY-METRICA-CREATE-TASK::`: Initiates the protocol to create a new task in `metrica.md`.
*   `::SY-METRICA-UPDATE-TASK::`: Initiates the protocol to update an existing task.

### Cognitive Function Tokens (::FX-)

Use these tokens to load specific reasoning frameworks into the agent's context.

Example:
`> ::FX-ROOT-CAUSE-ANALYSIS:: Analyze the following error log:...`

### Entity & Metrica Tokens (::EN-, ::MX-)

These tokens represent structured data. `::EN-` tokens are for knowledge concepts, while `::MX-` tokens are for tasks. They follow a defined template for machine readability.

Example `::EN-` Token:
```
::EN-CHARACTER-JANE::
- Type: Fictional Character
- Summary: A starship captain known for her tactical brilliance and unwavering loyalty to her crew.
- Tags: #SciFi #Protagonist #StarshipCaptain
```

## Advanced Usage & Concepts

(This is where you can add more detailed documentation, linking to a wiki or a `/docs` folder for more complex topics).[2, 3, 4]

### The "Metrica" Task Management Protocol

(Explain the full workflow, how it uses an external file for state, and the benefits of this approach.)

### Dynamic Personas

(Detail how the agent detects project files like `package.json` and adapts its behavior.)

### Extending the Framework

(Provide a guide on how users can define their own `::FX-`, `::SY-`, and `::EN-` tokens within their own `nGEMINI.md` files to customize the system for their specific needs.) [5]

## Roadmap

The vision for Token Decoder Maps is ambitious. Future development is focused on:

*   **Dynamic `nGEMINI.md` Generation:** Creating scripts to programmatically generate context files tailored to specific tasks (e.g., creative writing, legal analysis, code reviews).[4, 6]
*   **Full MCP Server Implementation:** Migrating the core framework logic into a dedicated Model Context Protocol (MCP) server to eliminate the context window bottleneck and allow any MCP-compatible agent to use TDM.[7, 8, 9, 10]
*   **Expanded Cognitive (::FX-) Library:** Building a rich library of pre-defined tokens for complex analytical tasks.

## Contributing

This is an open-source project, and contributions are welcome! Please see the `CONTRIBUTING.md` file for guidelines on how to submit issues, feature requests, and pull requests. The best way to contribute right now is to use the framework and report your experiences.

## License

This project is licensed under the [LICENSE](LICENSE).
