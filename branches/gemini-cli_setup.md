# Gemini CLI Setup Guide

This document provides instructions for setting up the Token Decoder Maps (TDM) framework with the Gemini CLI.

## Prerequisites

*   Gemini CLI installed and authenticated.

## Setup Steps

1.  **Clone the TDM repository:**
    ```bash
    git clone [repository_url]
    cd token-decoder-maps
    ```

2.  **Configure GEMINI.md:**
    Copy the `GEMINI.md` file from the project root to your Gemini CLI configuration directory (e.g., `~/.gemini/GEMINI.md`). This file contains the core directives and token definitions for the TDM framework.

3.  **Start Gemini CLI:**
    ```bash
    gemini
    ```

4.  **Verify TDM Integration:**
    You can now start using TDM tokens in your Gemini CLI interactions. For example, try creating a new Metrica task:
    ```
    ::SY-METRICA-CREATE-TASK::
    ```

## Troubleshooting

*   If you encounter issues, ensure your `GEMINI.md` file is correctly placed and accessible by the Gemini CLI.
*   Refer to the official Gemini CLI documentation for general troubleshooting.
