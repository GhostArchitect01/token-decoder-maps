Of course. You've correctly identified the next logical step: moving from theory to a concrete implementation plan. The idea of adapting the Basic Memory MCP server is an excellent, pragmatic approach that leverages a proven architecture to achieve a more advanced goal.

Here is a project proposal and outline, framed as a directive for the Gemini CLI agent. This document details the scope, rationale, and implementation steps for forking the Basic Memory MCP server to create a persistent memory system that is native to the Token Decoder Maps (TDM) framework.

# Project Proposal: TDM-Native Agent Memory

**To**: Gemini CLI Agent
**From**: Project Architect
**Date**: July 19, 2025
**Subject**: Proposal to Adapt the Basic Memory MCP Server for TDM-Native Persistent Memory

## 1. Objective

This project outlines a plan to create a TDM-native persistent memory system by forking and modifying the open-source Basic Memory MCP server. The goal is to replace Basic Memory's Entity/Observation data model with the more expressive and structured Token Decoder Maps (TDM) format.

This will evolve the agent's capabilities from simple fact recall to true capability recall, creating the foundation for more advanced, autonomous agentic workflows.

## 2. Background and Rationale

The Gemini CLI agent's effectiveness is directly tied to the quality of its context. The current TDM implementation via `GEMINI.md` provides excellent in-session consistency through In-Context Learning (ICL). However, it lacks a mechanism for true long-term, persistent memory across sessions.

The Basic Memory MCP server provides a proven, local-first architecture for this purpose, using human-readable Markdown files as the source of truth and a performance-optimized SQLite database for fast indexing.

While its architecture is sound, its data model is limited to storing facts. The TDM format, by contrast, is a true Domain-Specific Language (DSL) capable of representing not just knowledge (`::EN-`) but also tasks (`::MX-`), multi-step protocols (`::SY-`), and entire reasoning frameworks (`::FX-`).

By adapting Basic Memory to use TDM, we create a system where the agent can persist and query its own capabilities, moving from a passive "second brain" to an active "agentic core."

## 3. Proposed Architecture & Implementation Plan

This project will be executed in three distinct phases, modifying the core components of the Basic Memory server to be TDM-native.

### Phase 1: Data Model and Parser Refactoring

The initial phase focuses on teaching the server to understand the TDM language.

*   **Task 1.1: Modify the File Parser**. The core sync service in Basic Memory will be updated. Its current parser, designed for the Entity/Observation format, will be replaced with a new parser that can correctly interpret the `::PREFIX-TOKEN::` syntax and the key-value structure of all TDM token templates.
*   **Task 1.2: Update the Database Schema**. The SQLite database schema will be refactored. Tables for Entities and Observations will be replaced with a `tokens` table containing columns that directly map to TDM fields, such as `token_id`, `token_type`, `status`, `priority`, `dependencies`, and `tags`. This enables structured, database-like querying.

### Phase 2: Redefine the MCP Tools

This phase upgrades the server's agent-facing tools from generic commands to TDM-specific operations. The new tools will be exposed via the Model Context Protocol (MCP) for any compatible client to use.

*   **Task 2.1: Implement `tdm.create_token`**. The existing `write_note` tool will be replaced by an intelligent `create_token` function. This tool will act as a "template authority." When an agent requests to create a new token, the server will provide the correct, standardized template for the requested type (`::MX-`, `::FX-`, etc.), ensuring all new tokens are valid and consistently formatted.
*   **Task 2.2: Implement `tdm.query_tokens`**. The `search_notes` tool will be replaced by a powerful `query_tokens` function. This tool will allow an agent to perform structured queries against the token database using the metadata defined in Phase 1.
    *   **Example Query**: `tdm.query_tokens(type="::MX-", status="In-Progress")`
*   **Task 2.3: Implement Granular Operational Tools**. New, highly specific tools will be created to enable fine-grained agentic control over the memory store.
    *   **Example Tools**: `tdm.update_task_status(id, new_status)`, `tdm.add_dependency(id, dependency_id)`.

### Phase 3: Integration, Testing, and Comparison

The final phase involves integrating the new server and validating its benefits.

*   **Task 3.1: Configure `gemini-cli`**. The local `gemini-cli` environment will be configured to connect to the new TDM-Memory MCP server.
*   **Task 3.2: Conduct End-to-End Testing**. A series of tests will be executed to validate the full workflow. These tests will involve prompting the agent to create, read, update, and query tokens using the new MCP tools.
*   **Task 3.3: Comparative Analysis**. The performance, accuracy, and agentic capabilities of the new TDM-powered server will be compared against the original Basic Memory server to quantify the benefits of the more expressive data model.

## 4. Expected Benefits

Successfully completing this project will yield significant advantages:

*   **Richer Semantic Structure**: The agent's memory will be capable of storing not just facts, but executable protocols and reasoning patterns.
*   **A Foundation for True Agency**: The agent will be able to query its own capabilities, allowing it to autonomously select the best "cognitive tool" (`::FX-` token) for a given task.
*   **Enhanced Precision and Control**: Structured metadata queries will allow for far more precise information retrieval than general semantic search alone.
*   **A Practical Path to RAG**: This project creates the ideal source material—a library of structured, machine-readable tokens—to be indexed into a vector database for the "final form" hybrid RAG architecture we've previously designed.

This limited-scope project represents a concrete and achievable step toward building a more powerful and truly agentic AI assistant.
