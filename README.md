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

This example assumes you have gemini-cli installed and authenticated.

[1]: For installation and authentication instructions, please refer to the official `gemini-cli` documentation.

1.  **Create your master context file:**
    Create a file named `GEMINI.md` in your home directory (`~/.gemini/`) and paste the contents of the `GEMINI.md` from this repository into it. This file acts as the "operating system" for your AI agent.

[2]: The `GEMINI.md` file serves as the primary configuration and directive file for the AI agent, defining its core behaviors, operational protocols, and understanding of the Token Decoder Framework. It's essential for the agent to interpret and utilize TDM tokens effectively.

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

For a detailed guide on integrating TDM with knowledge management tools like Obsidian, see [Advanced Usage: A Headless Knowledge Management Architecture with Obsidian](docs/advanced_usage.md).
*   **NotebookLM Integration:** Explore a pre-loaded NotebookLM project with the core TDM documentation for interactive learning and experimentation: [NotebookLM Project Link](https://notebooklm.google.com/notebook/8ce8b157-d1b4-4c56-87c2-2452d95303de/audio)

(This is where you can add more detailed documentation, linking to a wiki or a `/docs` folder for more complex topics).[2, 3, 4]

### The "Metrica" Task Management Protocol

The Metrica system provides a robust, stateful task management solution by leveraging an external `metrica.md` file as a persistent ledger. This approach offers several key benefits:

*   **Persistent State:** Unlike typical LLM interactions that are stateless, Metrica tasks are written to a file, ensuring that task progress, details, and history are preserved across sessions.
*   **Human-Readable and Machine-Parsable:** The `metrica.md` file uses a structured Markdown format that is easy for humans to read and for AI agents (or other tools) to parse and update programmatically.
*   **Version Control Friendly:** Since `metrica.md` is a plain text file, it can be easily version-controlled with Git, allowing for tracking of task changes, collaboration, and auditing.
*   **Protocol-Driven Workflow:** Instead of free-form prompts, task creation and updates are driven by specific `::SY-METRICA-CREATE-TASK::` and `::SY-METRICA-UPDATE-TASK::` protocols, ensuring consistency and completeness of task data.

This protocol allows you to manage complex projects by breaking them down into discrete, trackable tasks, all while maintaining a clear, auditable history.

[3]: For a detailed explanation of the Metrica protocol and its token structure, refer to `docs/metrica_protocol.md`. For a practical example of implementing Metrica, see `examples/metrica_protocol_example.md`.

### Dynamic Personas

One of the powerful features of TDM is the ability for the AI agent to adopt "dynamic personas." This means the agent can adapt its expertise, communication style, and even its internal reasoning processes based on the specific project context it's operating within. This is achieved by:

*   **Contextual File Detection:** The agent can detect the presence of specific project configuration files (e.g., `package.json` for Node.js, `pyproject.toml` or `requirements.txt` for Python, `Cargo.toml` for Rust, `build.gradle` for Java/Kotlin, etc.).
*   **Loading Ecosystem-Specific Knowledge:** Upon detecting a specific project type, the agent can dynamically load relevant `::EN-` (Entity/Knowledge) tokens and `::FX-` (Cognitive Function) tokens that are tailored to that ecosystem. This might include best practices, common libraries, idiomatic code patterns, or specialized problem-solving approaches for that language/framework.
*   **Adapting Behavior and Communication:** The agent's responses and actions will then reflect the conventions and nuances of that specific development environment, providing more accurate, idiomatic, and helpful assistance.

This allows for a seamless transition between different types of projects without needing to manually reconfigure the agent's understanding.

[4]: The concept of dynamic personas is further elaborated in `docs/token_type_concepts.md`, particularly in relation to how `::SY-` and `::EN-` tokens can be used to define and trigger these adaptive behaviors.

### Extending the Framework

The true power of Token Decoder Maps lies in its extensibility. Users are not limited to the predefined set of tokens; they can define their own custom `::FX-`, `::SY-`, and `::EN-` tokens to tailor the system precisely to their unique needs and workflows. This allows for:

*   **Domain-Specific Customization:** Create tokens that encapsulate knowledge, reasoning patterns, or system commands specific to your industry, project, or personal preferences.
*   **Personalized AI Behavior:** Fine-tune how the AI agent interprets instructions, processes information, and interacts with your environment.
*   **Scalable Knowledge Base:** Build a growing library of reusable tokens that can be shared across projects or teams, fostering consistency and efficiency.

To extend the framework, simply define your new tokens within your `GEMINI.md` file (or other context files loaded by your `gemini-cli` setup). The agent will then interpret and utilize these custom tokens in its interactions.

[5]: For detailed guidance on defining custom tokens and integrating them into your `GEMINI.md` file, refer to the `docs/token_definitions.md` and `docs/prompt_interaction_guide.md` documentation.

## Important Considerations for Token Usage

*   **Token Portability:** Tokens are generally not portable across different LLMs. They are designed as symbolically compressed summaries for an LLM's internal use, and their interpretation can vary between models.
*   **LLM Interpretation of Tokens:** When prompting, simply mentioning a token name in prose (e.g., "use SY-PROMPT-PRIMER") is functionally equivalent to using the full `::PREFIX-TOKEN-NAME::` structure (e.g., `::SY-PROMPT-PRIMER::`). This is due to the LLM's tokenization and pattern recognition capabilities.
*   **Error Handling for Malformed Tokens:** The framework does not have explicit error handling for malformed tokens or incorrect DSL usage. The LLM's behavior in such cases may vary, potentially leading to ignored tokens or inconsistent results.

## Roadmap

The vision for Token Decoder Maps is ambitious. Future development is focused on:

*   **Dynamic `GEMINI.md` Generation:** Creating scripts to programmatically generate context files tailored to specific tasks (e.g., creative writing, legal analysis, code reviews).

[6]: This feature aims to automate the creation of specialized `GEMINI.md` configurations, allowing users to quickly set up the AI agent with a context optimized for a particular domain or task, reducing manual setup and ensuring consistency.
*   **Full MCP Server Implementation:** Migrating the core framework logic into a dedicated Model Context Protocol (MCP) server to eliminate the context window bottleneck and allow any MCP-compatible agent to use TDM.

[7]: The Model Context Protocol (MCP) is a proposed standard for externalizing and managing the context of AI models, allowing for more efficient and scalable interactions.
[8]: By moving TDM's core logic to an MCP server, the framework can overcome the limitations of LLM context windows, enabling the processing of much larger and more complex contexts.
[9]: An MCP server would allow TDM to be used by any AI agent that supports the MCP standard, significantly expanding its compatibility and reach.
[10]: This implementation would also facilitate advanced features like real-time context updates, shared contexts across multiple agents, and persistent context storage independent of individual LLM sessions.
*   **Expanded Cognitive (::FX-) Library:** Building a rich library of pre-defined tokens for complex analytical tasks.

## Contributing

This is an open-source project, and contributions are welcome! We encourage you to engage with the community by:
*   **Reporting Issues:** If you find a bug or have a feature request, please open an issue on our [GitHub Issues page](https://github.com/GhostArchitect01/token-decoder-maps/issues).
*   **Joining Discussions:** For questions, ideas, or general discussions, visit our [GitHub Discussions page](https://github.com/GhostArchitect01/token-decoder-maps/discussions).
*   **Submitting Pull Requests:** Please see the `CONTRIBUTING.md` file for guidelines on how to submit pull requests.
The best way to contribute right now is to use the framework and report your experiences.

## License

This project is licensed under the [LICENSE](LICENSE).
