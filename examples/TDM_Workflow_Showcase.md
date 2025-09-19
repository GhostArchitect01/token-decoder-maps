# Showcase: A TDM-Powered Workflow for Content Ingestion

This document outlines the successful design and implementation of a TDM-based workflow to automate the process of saving and cataloging web articles within an Obsidian vault, using the Gemini CLI.

---

## 1. The Problem: A High-Friction Workflow

The initial problem was a manual, multi-step process for saving an interesting article:

1.  Identify an article.
2.  Copy/paste the title, author, date, and other metadata into a links file (e.g., `News.md`).
3.  Copy the full article text.
4.  Create a new source file in Obsidian.
5.  Paste the article text into the source file.
6.  Copy the Obsidian URL of the new source file.
7.  Paste the Obsidian URL back into the original links file.

This process was tedious and involved significant "context switching" and manual effort, creating a barrier to consistently saving new information.

---

## 2. The Collaborative Design Process

The solution was developed iteratively, refining an initial proposal based on direct feedback about workflow efficiency and aesthetics.

1.  **Initial Proposal & Refinement:** An initial suggestion to use YAML frontmatter was rejected because, while technically structured, it added more manual steps and visual clutter to the user's process.
2.  **Defining the Templates:** We collaboratively designed a clean, Markdown-native template for new entries and clarified the overall file structure. These templates were codified in a `GEMINI.md` file to act as a single source of truth for formatting.
3.  **Defining the System Token:** We designed the `::SY-NEWS-CALL::` token. The final token was concise and modular, pointing to the `GEMINI.md` file for its procedural instructions rather than having the steps hard-coded within it.
4.  **Defining the CLI Function:** To create a seamless user experience, we built a Zsh function called `news`. This function abstracts away the complexity of the full Gemini CLI command, handles directory navigation, and allows the user to trigger the entire workflow with a single, simple command with parameters.

---

## 3. The Final TDM-Powered Solution

The final solution consists of three core components that work in concert:

**Component 1: The Template File (`GEMINI.md`)**
This file acts as the blueprint, defining what a new entry should look like.
```markdown
#### [Title of the Article](obsidian://link-to-local-source-file)
*By [Author(s)] @ [Publication] on [YYYY-MM-DD]*

> [Synopsis or first paragraph]

**Source:** [URL to original article]
**Tags:** #[tag1] #[tag2]
```

**Component 2: The System Token (`::SY-NEWS-CALL::`)**
This is the command that tells the AI *what* to do, pointing it to the right files and templates.
```
### ::SY-NEWS-CALL::
*   Summary: Read the source file and follow the instructions in GEMINI.md...
*   Parameters: source_file, target_file, category, tags
*   Tags: #sy/type/ingest
```

**Component 3: The Zsh Function (`news`)**
This is the user-facing interface that makes the entire process feel like a native command-line tool.
```zsh
# Function to automate adding a new entry with Gemini
news() {
  # Define the target directory where the work happens
  local target_dir="/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links"

  # ... (parameter checks) ...

  # Construct the prompt for the Gemini CLI
  local prompt="::SY-NEWS-CALL::(source_file=\"$1\", target_file=\"$2\", category=\"$3\", tags=\"$4\")"

  # Use a subshell to change directory and run the command
  (
    cd "$target_dir" || return
    gemini "$prompt"
  )
}
```

This creates a final, efficient workflow:
1.  **User:** Saves an article's text to a source file.
2.  **User:** Runs `news "source.md" "target.md" "Category" "#tags"`.
3.  **Gemini:** Executes the entire multi-step formatting and filing process automatically.

---

## 4. Alternative Solutions & Analysis

This problem could have been solved in other ways, but our final solution has distinct advantages.

*   **Alternative 1: Pure Shell Script (`grep`, `sed`):** This would be extremely brittle. A small change in a website's HTML layout would break a parser built on simple regex, and it would fail to handle the variety of formats from different sources.

*   **Alternative 2: Python/Node.js Script:** A dedicated script with a proper parsing library would be more robust than a shell script but adds external dependencies. It would be a separate tool, not an integrated extension of the AI assistant, running counter to the TDM philosophy.

*   **Alternative 3: Custom Obsidian Plugin:** This would offer the most seamless experience *inside Obsidian* but requires significant, specialized development effort and is not accessible from the command line.

### Conclusion: The Universal Parser Advantage

The TDM-based solution we created is the optimal one for this context. It leverages the strengths of each component: the user's intelligence, the shell's power, and the AI's core competency.

Crucially, as you pointed out, this makes the entire workflow **source-agnostic**. Because the process starts from a simple text file you've already saved, it doesn't matter if the source was a news site, a scientific paper, or a blog. The "parser" is the LLM itself, which reads and understands the text linguistically, not structurally. It doesn't rely on brittle, site-specific web scraping and will not break when a website redesigns its layout.

This makes the system incredibly robust, flexible, and future-proof.
