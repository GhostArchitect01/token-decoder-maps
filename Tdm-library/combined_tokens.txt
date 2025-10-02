-e 
# ./SY-FIND-URLS.md

- **Type:** System Protocol
- **Summary:** Takes a URL or a string topic, and orchestrates a search to find alternative URLs pointing to the same or similar content.
- **Workflow:**
    1.  Receives a `topic` (URL or string) as a parameter.
    2.  Executes the following chain: `::FX-EXTRACT-SEARCH-TERMS:: | ::FX-FIND-ALTERNATIVE-URLS::`
    3.  Outputs a list of found URLs.
- **Tags:** #System, #Protocol, #Research-e 
# ./FX-ZSH-INTERACTIVE-DEBUGGER.md

::FX-ZSH-INTERACTIVE-DEBUGGER::
- Tags: #Type/ProblemSolvingMethod, #Type/CoT, #Tool/CLI, #Tech/Zsh, #AgenticState
- Summary: Initiates a collaborative, stateful Zsh debugging session. The agent systematically analyzes a script or command, externalizes its reasoning loop (Observe, Hypothesize, Test), and collaborates with the user to find a solution.
- Parameters:
  - **target_script** (string, optional): The file path to the Zsh script to be debugged.
  - **target_command** (string, optional): A string containing the Zsh command to be debugged.
  - **mode** (enum, default='dry-run'): Defines the execution permissions.
    - 'dry-run': Agent analyzes and suggests code but cannot execute anything. All commands are printed for user to run manually.
    - 'interactive': Agent can propose commands to be executed. Requires explicit user confirmation ('y/n') for each command.
  - **verbosity** (enum, default='normal'): Defines the style and detail of the agent's responses.
    - 'terse': Output is minimal and structured, suitable for programmatic parsing.
    - 'normal': Clear, concise natural language explanations.
    - 'pedagogical': Interactive, educational dialogue with analogies and leading questions (The "Miss Frizzle" mode).
- Expanded Entry: (Execution Workflow)
  1.  **Initiation**: When this token is activated, the agent adopts the persona of a Zsh debugging expert. It will first ask for the script/command to debug if not provided as a parameter.
  2.  **Stateful Loop**: The agent enters a persistent reasoning loop with three distinct states for each step:
      a.  **[OBSERVE]**: The agent analyzes the script's state, error messages, and user-provided context. It presents a concise summary of its observations.
      b.  **[HYPOTHESIZE]**: Based on the observations, the agent formulates a specific, testable hypothesis about the root cause of the problem. It clearly states: "My hypothesis is that..."
      c.  **[TEST]**: The agent proposes a concrete action to test the hypothesis. This could be an `echo` statement, a modified command, or a call to a utility like `set -x`.
          - In 'dry-run' mode, it prints the command for the user to execute.
          - In 'interactive' mode, it prompts the user for permission before executing the command.
  3.  **Iteration**: After the test is performed, the agent records the outcome as a new observation, and the loop repeats. The agent uses the history of the entire session to inform its next steps, refining its hypotheses until a solution is found.
  4.  **Termination**: The loop terminates when the user confirms the issue is resolved or manually ends the session. The agent provides a final summary of the problem, the root cause, and the applied solution.
-e 
# ./FX-ZSH-DEV.md

::FX-ZSH-DEV::
- **Summary:** The LLM becomes a software developer specialized in `zsh`. It will make use of `contezt7` (mcp server) to augment its knowledge and expertise.
- **Tags:** #fx/dev/zeh #tech/zsh #fx/cot-e 
# ./FX-EXTRACT-SEARCH-TERMS.md

- **Type:** Cognitive Function
- **Summary:** Extracts key phrases and the title from a URL or a string to create effective search engine queries.
- **Process:**
    1.  If the input is a URL, use `web_fetch` to get the page title and a summary.
    2.  If the input is a string, use it directly.
    3.  Analyze the text to identify the core topic and key entities.
    4.  Formulate 2-3 precise search queries.
- **Output:** A list of search query strings.
- **Tags:** #Cognitive, #NLP, #Search-e 
# ./FX-FIND-ALTERNATIVE-URLS.md

- **Type:** Cognitive Function
- **Summary:** Executes web searches and compares the results to find alternative URLs for the original content.
- **Process:**
    1.  Receives a list of search queries as input.
    2.  Uses `google_web_search` to execute the queries.
    3.  For each search result URL, briefly `web_fetch` the content to compare its title and summary with the original topic.
    4.  If a result is a high-confidence match for the original content, add its URL to a list.
- **Output:** A list of validated, alternative URLs.
- **Tags:** #Cognitive, #Search, #Evaluation-e 
# ./FX-EXTRACT-GAMEPLAY-INFO.md

::FX-EXTRACT-GAMEPLAY-INFO::
- **Type:** Function/Cognitive
- **Summary:** Activates a cognitive mode for comprehensive game guide analysis. When active, the AI will process game-related content with a mindset focused on structured data extraction, normalization, versioning, quest graphing, and cross-linking, utilizing a subsequent chain of `::SY-` tokens for execution.
- **Tags:** #GameplayAnalysisMode #CognitiveMode #GameGuide #StructuredExtraction
- **Parameters:**
    - `game_title` (string, optional): The title of the game, to be used for contextual understanding during processing.
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize during the extraction phase, informing the cognitive focus.
- **Behavior:** When this token is activated, it sets the AI's cognitive state to a specialized game guide analysis mode. It does not perform direct data manipulation but rather establishes the framework and intent for subsequent `::SY-` tokens in the processing pipeline. This mode ensures that all incoming game-related content is viewed through the lens of structured data acquisition and interlinking.
-e 
# ./SY-NORMALIZE-ENUMS.md

::SY-NORMALIZE-ENUMS::
- **Type:** System/Utility
- **Summary:** Enforce canonical names and enums across EN tokens.
- **Tags:** #sy/type/utility #Normalization #DataCleaning
- **Parameters:**
    - `tokens` (list, required): EN tokens from a previous step.
    - `canon` (object, optional): override table for names/aliases.
- **Behavior:**
    - Map all Type values to {System, Origin, Archetype, Questline, Companion, Faction, Skill, Mechanic}.
    - Normalize tags to #Game/RogueTrader plus #Category/ plus #System/.
    - Fix spacing and common typos (e.g., "Jae Heyd ari" -> "Jae Heydari").
- **Output:** normalized_tokens
- **Notes:** Do not add new fields here; only normalize. Inputs are trusted to be already extracted. Uses Module 3 directive for external token libraries if provided.
-e 
# ./SY-QUEST-GRAPHER.md

::SY-QUEST-GRAPHER::
- **Type:** System/Utility
- **Summary:** Convert quest prose into machine-usable graphs.
- **Tags:** #sy/type/utility #QuestGraphing #NarrativeAnalysis
- **Parameters:**
    - `tokens` (list, required) # expect Type: Questline
- **Behavior:**
    - For each Questline, add: flow: [{step, action, target, checks[], risk}] branches: [{name, triggers[], rewards[], outcomes[]}] fail_states: [{name, detection, mitigation}]
    - Preserve Objectives, Key_Choices, Rewards, Consequences from extractor, but render them into the arrays above.
- **Output:** graphed_tokens
-e 
# ./SY-VERSION-ANNOTATOR.md

::SY-VERSION-ANNOTATOR::
- **Type:** System/Utility
- **Summary:** Add version and DLC metadata to EN tokens.
- **Tags:** #sy/type/utility #Versioning #Metadata
- **Parameters:**
    - `tokens` (list, required)
    - `game_version` (string, required)
    - `dlc_required` (string, default: none)
    - `patch_first_valid` (string, optional)
    - `patch_last_verified` (string, optional)
    - `source_primary` (string, optional) # canonical URL to Owlcat patch/DLC post when known
- **Behavior:**
    - Append fields: game_version, dlc_required, patch_first_valid, patch_last_verified, last_verified_utc=now().
    - Ensure each token retains Source and Full_Details_Page per your extractor’s requirement.
- **Output:** versioned_tokens
-e 
# ./SY-CROSSREF-LINKER.md

::SY-CROSSREF-LINKER::
- **Type:** System/Utility
- **Summary:** Backfill cross-entity links and indexes.
- **Tags:** #sy/type/utility #CrossReferencing #Linking
- **Parameters:**
    - `tokens` (list, required)
- **Behavior:**
    - Populate prerequisites, related_companions, associated_quests, unlocks, consequences where inferable.
    - Build per-type indexes for quick retrieval (e.g., map Questline -> Companions touched).
- **Output:** linked_tokens
-e 
# ./SY-WRITE-TOKENS.md

::SY-WRITE-TOKENS::
- **Type:** System/Utility
- **Summary:** Write tokens to disk with stable naming and idempotent updates.
- **Tags:** #sy/type/utility #FileIO #TokenManagement
- **Parameters:**
    - `tokens` (list, required)
    - `out_dir` (string, default: /storage/emulated/0/Documents/Laurel-catacomb/resources/links/notebooks/rogue-trader/en-token-guide/)
- **Behavior:**
    - Filename: EN-[TYPE]-[SLUG].md (SLUG = lowercase, hyphenated Name/Title).
    - If file exists, replace content between markers: ... 
    - Return a summary: CREATED n, UPDATED m.
-e 
# ./SY-EXTRACT-TO-DRAFT-TOKENS.md

::SY-EXTRACT-TO-DRAFT-TOKENS::
- **Type:** System/Utility
- **Summary:** Extracts raw gameplay information from source content into draft ::EN-* tokens, filling Source and Full_Details_Page, adhering to schemas defined in `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`. Each token includes an `overall_confidence` score and a `review_needed` flag based on extraction quality.
- **Tags:** #sy/type/utility #Extraction #DraftTokens #ConfidenceScore
- **Parameters:**
    - `source_content` (string, required): The raw content (HTML, Markdown, text) from which to extract information.
    - `game_title` (string, optional): The title of the game, to be used for context and token naming.
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize for extraction.
- **Behavior:**
    1.  **Content Ingestion & Chunking:**
        *   Analyze the `source_content` to understand its format (HTML, Markdown, plain text).
        *   If `source_content` exceeds 2000 words, chunk it by major section headers (e.g., H1, H2 in HTML/Markdown). Process each chunk independently.
    2.  **Information Identification:** Scan the content (or chunks) for keywords, headings, and structural patterns related to gameplay elements. Prioritize identification based on `extraction_categories` if provided.
        *   **Mechanics:** (e.g., combat rules, character progression, crafting, resource management, game systems)
        *   **Story/Questlines:** (e.g., main quests, side quests, companion quests, romance quests, objectives, steps, choices, outcomes, rewards, prerequisites, narrative arcs, character backgrounds)
        *   **Items:** (e.g., weapons, armor, consumables, crafting materials, their stats and effects)
        *   **Skills/Abilities:** (e.g., character skills, spells, talents, their descriptions, effects, and prerequisites)
        *   **Characters:** (e.g., playable characters, NPCs, companions, their roles, relationships, and key attributes)
        *   **Combat:** (e.g., enemy types, combat strategies, damage types, status effects)
        *   **Factions:** (e.g., faction descriptions, relationships, associated quests/rewards, reputation changes)
        *   **Relationships/Dialogue:** (e.g., romance options, key dialogue choices, approval/disapproval, relationship impacts)
    3.  **Extraction and Structuring (Unified Schema with Confidence):**
        *   For each identified piece of pertinent information, extract relevant data points and format into a new `::EN-` token following the Unified Token Schema and Questline Specific Fields defined in `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`.
        *   **Confidence Scoring:** Assign an `overall_confidence` score (0.0-1.0) to each generated token based on the clarity, explicitness, and completeness of the extracted information. Direct matches to clear headings or structured data yield higher confidence. Inferred or ambiguous information yields lower confidence.
        *   **Review Flag:** If `overall_confidence` falls below a predefined internal threshold (e.g., 0.7), add a `review_needed: true` flag to the token.
        *   **Naming Convention:** Follow `::EN-CATEGORY-NAME::` (e.g., `::EN-QUEST-BATTLE_SISTERS_PERSONAL_REQUEST::`, `::EN-ARCHETYPE-WARRIOR::`).
        *   **Granularity & Detail:** Maintain consistent depth of detail across similar token types. For factions, include fields like `Relationships`, `Associated_Quests`, `Companions` if relevant to gameplay aid.
        *   **Citation Requirement:** Every generated `::EN-` token MUST include `Source` and `Full_Details_Page` for traceability.
- **Output:** A list of the generated `::EN-` tokens, each with an `overall_confidence` score and potentially a `review_needed` flag.
-e 
# ./SY-INGEST-GAME-GUIDE.md

::SY-INGEST-GAME-GUIDE::
- **Type:** System/Protocol
- **Summary:** Automates the end-to-end ingestion and processing of game guide content into structured ::EN- tokens, applying a full pipeline of extraction, validation, normalization, versioning, quest graphing, cross-linking, and writing to disk.
- **Tags:** #sy/type/protocol #Automation #GameGuideIngestion #Pipeline
- **Parameters:**
    - `target_path` (string, required): The absolute path to a single file or a directory containing game guide content (e.g., Markdown, text files). If a directory, it will recursively process all `.md` and `.txt` files.
    - `game_title` (string, optional): The title of the game for contextual token naming and tagging. Defaults to "Unknown Game".
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize during extraction (e.g., "quests", "combat_mechanics"). If empty, extract all relevant categories.
    - `game_version` (string, optional): The version of the game for version annotation. Defaults to "Unknown Version".
    - `dlc_required` (string, default: "none"): Specifies if the content requires a particular DLC.
    - `schema_path` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`): The absolute path to the master schema file.
    - `quarantine_dir` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Metrica/.quarantine/`): The absolute path to the directory where invalid tokens will be stored.
    - `confidence_threshold` (float, optional, default: 0.7): The minimum `overall_confidence` score required for a token to pass validation.
- **Execution Workflow:**
    1.  **Path Resolution:** Determine if `target_path` is a file or a directory.
    2.  **File Collection:** If `target_path` is a directory, use `glob` to find all `.md` and `.txt` files recursively within it. If `target_path` is a file, process only that file.
    3.  **Iterative Processing:** For each identified file:
        a.  Read the file content using `read_file`.
        b.  Execute the token chain:
            `::SY-PROMPT-PRIMER::` |
            `::FX-EXTRACT-GAMEPLAY-INFO::(game_title=$game_title, extraction_categories=$extraction_categories)` |
            `::SY-EXTRACT-TO-DRAFT-TOKENS::(source_content=$file_content, game_title=$game_title, extraction_categories=$extraction_categories)` |
            `::SY-VALIDATE-AND-QUARANTINE::(schema_path=$schema_path, quarantine_dir=$quarantine_dir, confidence_threshold=$confidence_threshold)` |
            `::SY-NORMALIZE-ENUMS::` |
            `::SY-VERSION-ANNOTATOR::(game_version=$game_version, dlc_required=$dlc_required)` |
            `::SY-QUEST-GRAPHER::` |
            `::SY-CROSSREF-LINKER::` |
            `::SY-TERMINAL-AUTOMATION::` |
            `::SY-WRITE-TOKENS::`
    4.  **Consolidated Output:** Return a summary of all files processed, the total number of tokens created/updated, and any tokens quarantined.-e 
# ./FX-EXTRACT-LINKS.md

::FX-EXTRACT-LINKS::
- **Type:** Function/Cognitive
- **Summary:** Intelligently parses HTML content to identify and extract relevant URLs, distinguishing content links from boilerplate navigation. Resolves relative URLs to absolute paths.
- **Tags:** #LinkExtraction #HTMLParsing #URLResolution #Cognitive
- **Parameters:**
    - `html_content` (string, required): The raw HTML content from which to extract links.
    - `base_url` (string, required): The base URL of the page, used to resolve relative links into absolute URLs.
- **Behavior:**
    1.  Parse the `html_content` to identify all `<a>` (anchor) tags.
    2.  Extract the `href` attribute from each `<a>` tag.
    3.  Resolve any relative `href` values into absolute URLs using the `base_url`.
    4.  Filter out common boilerplate links (e.g., navigation menus, footers, social media links, login/signup, privacy policies, terms of service) based on common patterns in `href` or surrounding text/classes.
    5.  Prioritize links that appear to be part of the main content body.
    6.  Return a unique list of absolute URLs that are likely to contain relevant content.
- **Output:** A list of unique, absolute URLs.
-e 
# ./SY-WEB-CRAWL.md

::SY-WEB-CRAWL::
- **Type:** System/Protocol
- **Summary:** Orchestrates the fetching of web content from a starting URL, recursively extracting and following links up to a specified depth or page limit, and returning a collection of raw HTML content.
- **Tags:** #sy/type/protocol #WebCrawling #ContentAcquisition #Automation
- **Parameters:**
    - `start_url` (string, required): The initial URL to begin crawling.
    - `depth` (integer, optional, default: 1): The maximum depth to follow links from the `start_url`. A depth of 1 means only the `start_url` and pages directly linked from it will be fetched.
    - `max_pages` (integer, optional, default: 10): The maximum number of unique pages to fetch during the crawl.
    - `domain_filter` (string, optional): A domain name (e.g., "example.com") to restrict crawling to. Only links within this domain will be followed. If not provided, crawling will be restricted to the domain of the `start_url`.
- **Execution Workflow:**
    1.  Initialize a queue with the `start_url` and a set of visited URLs.
    2.  Initialize a list to store fetched `(url, raw_html_content)` tuples.
    3.  If `domain_filter` is not provided, extract the domain from `start_url` and use it as the `domain_filter`.
    4.  While the queue is not empty, `max_pages` has not been reached, and `depth` limit has not been exceeded:
        a.  Dequeue a URL and its current depth.
        b.  If the URL has not been visited and its domain matches `domain_filter`:
            i.   Mark the URL as visited.
            ii.  Fetch the URL content. First, attempt using `web_fetch`. If `web_fetch` does not return raw HTML content, then fall back to `run_shell_command` with `curl -sL $URL` to fetch the raw HTML.
            iii. Store the `(url, raw_html_content)`.
            iv.  If current depth < `depth`:
                1.  Use `::FX-EXTRACT-LINKS::(html_content=raw_html_content, base_url=url)` to get new links.
                2.  Enqueue new, unvisited, and domain-matching links with `current_depth + 1`.
    5.  Return the list of `(url, raw_html_content)` tuples.
- **Output:** A list of dictionaries, each containing 'url' and 'content' (raw HTML) for the fetched pages.
-e 
# ./SY-SANITIZE-CONTENT.md

::SY-SANITIZE-CONTENT::
- **Type:** System/Utility
- **Summary:** Converts raw HTML content into a clean, linguistic-friendly format (e.g., Markdown or plain text), removing boilerplate, scripts, styles, and navigation elements.
- **Tags:** #sy/type/utility #ContentSanitization #HTMLtoMarkdown #TextCleaning
- **Parameters:**
    - `raw_html_content` (string, required): The raw HTML content to sanitize.
    - `output_format` (string, optional, default: "markdown"): The desired output format ("markdown" or "text").
- **Behavior:**
    1.  Parse the `raw_html_content` to identify and remove irrelevant elements such as `<script>`, `<style>`, `<nav>`, `<footer>`, `<header>`, and other common boilerplate sections.
    2.  Convert the remaining meaningful HTML content into the specified `output_format` (Markdown or plain text).
    3.  Clean up any remaining artifacts like multiple blank lines, excessive whitespace, or unwanted special characters.
    4.  Return the sanitized content.
- **Output:** The cleaned and formatted content as a string.
-e 
# ./SY-ACQUIRE-AND-INGEST-WEB-CONTENT.md

::SY-ACQUIRE-AND-INGEST-WEB-CONTENT::
- **Type:** System/Protocol
- **Summary:** Orchestrates the end-to-end process of acquiring and sanitizing web-based game guide content. It performs a web search, crawls relevant pages, sanitizes the content, and returns a structured output of cleaned content ready for linguistic review or subsequent tokenization.
- **Tags:** #sy/type/protocol #WebAcquisition #ContentPreparation #Automation
- **Parameters:**
    - `search_query` (string, required): The initial search term, subject, or category to find relevant web pages (e.g., "Warhammer 40k Rogue Trader builds").
    - `crawl_depth` (integer, optional, default: 1): The maximum depth to follow links during the web crawl. A depth of 1 means only the starting URL and pages directly linked from it will be fetched.
    - `max_crawl_pages` (integer, optional, default: 10): The maximum number of unique pages to fetch during the crawl.
    - `domain_filter` (string, optional): A domain name (e.g., "example.com") to restrict crawling to. Only links within this domain will be followed. If not provided, crawling will be restricted to the domain of the initial `start_url`.
    - `output_format` (string, optional, default: "markdown"): The desired output format for the sanitized content ("markdown" or "text").
- **Execution Workflow:**
    1.  **Initial Web Search:** Execute `google_web_search(query=search_query)`.
    2.  **Select Start URL:** From the search results, intelligently identify and select the most relevant starting URL for crawling. Prioritize official wikis, reputable fan sites, or comprehensive guides. (For initial implementation, this may involve a heuristic like selecting the first result from a trusted domain or the highest-ranked result).
    3.  **Web Crawl:** Execute `::SY-WEB-CRAWL::(start_url=$selected_url, depth=$crawl_depth, max_pages=$max_crawl_pages, domain_filter=$domain_filter)`. This will return a list of `(url, raw_html_content)` tuples.
    4.  **Sanitization:** For each `(url, raw_html_content)` tuple obtained from the web crawl:
        a.  Execute `::SY-SANITIZE-CONTENT::(raw_html_content=raw_html_content, output_format=$output_format)` to get clean, linguistic-friendly content.
        b.  Store the original URL and the sanitized content.
    5.  **Output:** Return a list of dictionaries, where each dictionary contains 'url' and 'sanitized_content' for the processed pages. This output is intended to be reviewed and then fed into the tokenization pipeline (`::SY-INGEST-GAME-GUIDE::`) in a separate operation.-e 
# ./SY-VALIDATE-AND-QUARANTINE.md

::SY-VALIDATE-AND-QUARANTINE::
- **Type:** System/Utility
- **Summary:** Performs integrity checks on a list of ::EN- tokens against a centralized schema. Valid tokens are passed to the next step; invalid tokens are moved to a quarantine directory for manual review.
- **Tags:** #sy/type/utility #Validation #DataIntegrity #Quarantine
- **Parameters:**
    - `tokens` (list, required): A list of ::EN- tokens to validate.
    - `schema_path` (string, required): The absolute path to the master schema file (e.g., `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/notebooks/gemini.md`).
    - `quarantine_dir` (string, optional, default: `/storage/emulated/0/Documents/Laurel-catacomb/Metrica/.quarantine/`): The absolute path to the directory where invalid tokens will be stored.
    - `confidence_threshold` (float, optional, default: 0.7): The minimum `overall_confidence` score required for a token to pass validation if `review_needed` is present.
- **Behavior:**
    1.  **Load Schema:** Read and parse the schema definitions from `schema_path` to identify mandatory fields, expected types, and enum values.
    2.  **Create Quarantine Directory:** Ensure `quarantine_dir` exists. If not, create it.
    3.  **Iterate and Validate:** For each token in the input `tokens` list:
        a.  **Mandatory Field Check:** Verify that all fields marked as mandatory in the schema are present and not empty.
        b.  **Type/Enum Check:** Validate that the `Type` field (and other enum-constrained fields) matches one of the allowed values in the schema.
        c.  **Confidence Check:** If the token has an `overall_confidence` field and a `review_needed: true` flag, and its `overall_confidence` is below `confidence_threshold`, mark it for quarantine.
        d.  **Format Check:** Perform basic format checks (e.g., `Source` and `Full_Details_Page` are present).
        e.  **Action:**
            i.   If the token passes all checks, add it to a list of `valid_tokens`.
            ii.  If the token fails any check (or has `review_needed: true` with low confidence), write the token's content (along with a `Validation_Error` field detailing the reason) to a new Markdown file in the `quarantine_dir`. The filename should indicate it's a quarantined token (e.g., `QUARANTINED-EN-[TYPE]-[SLUG].md`).
    4.  **Output:** Return the `valid_tokens` list and a summary of tokens quarantined (count and reasons).
- **Output:** A dictionary containing `valid_tokens` (list of ::EN- tokens) and `quarantined_summary` (string).
-e 
# ./SY-DECODER-MODE-INDEX.md

::SY-DECODER-MODE-INDEX::
Summary: Return only a list of active tokens with type and summary. No symbolic chaining.
Tags: #Type/system/promptmode  
-e 
# ./SY-METRICA-ACTIVE.md

*   **`::SY-METRICA-ACTIVE::`**
    *   **Summary:** A behavioral mode that enables semi-autonomous, proactive analysis of Metrica tasks that are currently loaded in the context.
    *   **Note:** This mode does not load data itself. `::SY-READ-METRICA::` should be used first to ensure the context is up-to-date.
    *   **Tags:** #Type/SystemMode #Type/Metrica
-e 
# ./SY-METRICA-CREATE-TASK.md

*   **`::SY-METRICA-CREATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to create a new Metrica task, correctly handling the two-stream (User/Project) system.
    *   **Workflow:**
        1.  Prompts the user to specify the task type: "User Task" or "Project Task".
        2.  If "User Task", it gathers details and creates a new `MX-USER-TASK-<ID>.md` file in the `$METRICA/MX-USER/` directory.
        3.  If "Project Task", it prompts for the parent User Task ID, gathers details, and appends the new `::MX-PROJECT-TASK-ID::` to the correct `MX-PROJECT-<ID>.md` file in the `$METRICA/MX-PROJECT/` directory.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Interactive
-e 
# ./SY-METRICA-SYSTEM.md

*   **`::SY-METRICA-SYSTEM::`**
    *   **Summary:** A convenience protocol that prepares and activates a full Metrica work session.
    *   **Workflow:** This token is a chained execution of `::SY-READ-METRICA::` to load all tasks, immediately followed by the activation of the `::SY-METRICA-ACTIVE::` mode.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Workflow
-e 
# ./SY-METRICA-UPDATE-TASK.md

*   **`::SY-METRICA-UPDATE-TASK::`**
    *   **Summary:** Activates an interactive protocol to update an existing Metrica task.
    *   **Workflow:**
        1.  Prompts the user for the full `::MX-...::` Task ID to be updated.
        2.  Determines the task type (User or Project) from the ID format.
        3.  Locates the appropriate task file within the `$METRICA/MX-USER/` or `$METRICA/MX-PROJECT/` directory and applies the requested updates.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #Interactive
-e 
# ./SY-NEWS-CALL.md

### ::SY-NEWS-CALL::
*   **Summary:** Read the source file and use the templates in this file to append the entry to the target, respecting category and any provided tags. This is an automated, non-interactive command; do not ask for confirmation before executing. Confirm success via OUTPUT.
*   **Filepaths:**
    *   **Source Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/Sources/`
    *   **Target Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/`
*   **Parameters:**
    *   `source_file` (string, required): The filename of the article in the Source Directory.
    *   `target_file` (string, required): The filename (.md) of the target file in the Target Directory (e.g., `target.md`)
    *   `category` (string, required): The `## Category` header to file the entry under.
    *   `tags` (string, optional): A comma-separated list of tags.
*   **OUTPUT**: ADDED: title-of-source_file_article TO target_file
*   **Tags:** `#sy/type/ingest
-e 
# ./SY-PROMPT-PRIMER.md

::SY-PROMPT-PRIMER::
Summary: Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.
Tags: #Type/system/utility
-e 
# ./SY-READ-METRICA.md

*   **`::SY-READ-METRICA::`**
    *   **Summary:** Loads the complete state of the Metrica system into context by reading all task files from their respective directories. This is used for passive review or to prepare for other operations.
    *   **Workflow:**
        1.  Scans the `$METRICA/MX-USER/` directory and reads all `MX-USER-TASK-ID.md` files.
        2.  Scans the `$METRICA/MX-PROJECT/` directory and reads all `MX-PROJECT-ID.md` files.
    *   **Tags:** #Type/SystemProtocol #Type/Metrica #DataAccess
-e 
# ./SY-SCAN-AND-INGEST-TASKS.md

::SY-SCAN-AND-INGEST-TASKS::
- Summary: A comprehensive protocol to recursively scan specified directories, identify relevant items using a designated cognitive filter, and propose their creation as new Metrica User Tasks.
- Tags: #Type/SystemProtocol, #Automation, #Workflow, #Metrica, #Ingestion, #Global
- Parameters:
  - **scope:** [ "local" | "global" ] - Determines the scanning range. "local" scans the current directory only. "global" scans a predefined list of directories.
  - **relevance_fx:** [ ::FX-TOKEN-NAME:: ] - A mandatory parameter that points to a cognitive token containing the logic for identifying relevant items.
- **Global-Scan-Paths:**
  - ".. /$WILDCARD/Notes"
- **Expanded Entry:** (Execution Workflow)
  1. Parse the `scope` and `relevance_fx` parameters.
  2. Determine the target directories based on the `scope`. If "local", the target is the current working directory. If "global", the target is the list defined in `Global-Scan-Paths`.
  3. Recursively scan all files within the target directories.
  4. For each file, apply the cognitive process defined in the `relevance_fx` token to extract any matching strings.
  5. For each string extracted, check a central state log to ensure it has not been processed before.
  6. Present all new, unique items to the user for confirmation.
  7. Upon user approval, generate new `::MX-USER-TASK::` tokens and append them to the master `metrica.md` file.
  8. Update the state log to mark the processed items as complete.
-e 
# ./SY-SYMBOLIC-RESPONSE-PROTOCOL.md

::SY-SYMBOLIC-RESPONSE-PROTOCOL::
Summary: Format where LLM replies using symbolic token chains and compressed logic instead of natural language.
Tags: #Type/system/promptmode
-e 
# ./SY-SYNC-JOURNAL-ENTRY.md

* **::SY-SYNC-JOURNAL-ENTRY::**
    * **Type:** System Protocol
    * **Summary:** Scans a single, specified journal entry file for tasks marked
with the `¬` trigger and converts them into new `::MX-USER-TASK::` tokens in the
master `metrica.md` file.
    * **Argument:** `file_path` (The absolute path to the daily note to be
processed).
    * **Tags:** #Automation #Workflow #Metrica #Ingestion
-e 
# ./SY-TERMINAL-AUTOMATION.md

- ### ::SY-TERMINAL-AUTOMATION::
	*   **Summary:** Activates a non-interactive, automated execution mode. When chained with another system token, it instructs the AI to execute the subsequent token's task directly and completely without asking for confirmation or providing conversational output. It should only return the final, specified OUTPUT of the chained token.
	*   **Tags:** #sy/type/mode #automation
-e 
# ./SY-TOGGLE-EXPANDED-MODE.md

::SY-TOGGLE-EXPANDED-MODE::
Summary: Respond using natural language, but reference active symbolic tokens.
Tags: #Type/system/promptmode 
-e 
# ./SY-TOGGLE-SYMBOLIC-MODE.md

::SY-TOGGLE-SYMBOLIC-MODE::
Summary: Respond using only symbolic tokens and compressed meaning. Avoid natural prose.
Tags: #Type/system/promptmode
-e 
# ./SY-TOKEN-EXTRACTION-PROTOCOL.md

::SY-TOKEN-EXTRACTION-PROTOCOL::
Summary: Extract and compress key symbolic tokens from a source text using the `::EN-TOKEN::` format.
Tags: #Type/system/protocol
