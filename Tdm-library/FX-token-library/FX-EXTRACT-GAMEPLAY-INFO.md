::FX-EXTRACT-GAMEPLAY-INFO::
- **Type:** Function/Cognitive
- **Summary:** Activates a cognitive mode for comprehensive game guide analysis. When active, the AI will process game-related content with a mindset focused on structured data extraction, normalization, versioning, quest graphing, and cross-linking, utilizing a subsequent chain of `::SY-` tokens for execution.
- **Tags:** #GameplayAnalysisMode #CognitiveMode #GameGuide #StructuredExtraction
- **Parameters:**
    - `game_title` (string, optional): The title of the game, to be used for contextual understanding during processing.
    - `extraction_categories` (list of strings, optional): Specific categories to prioritize during the extraction phase, informing the cognitive focus.
- **Behavior:** When this token is activated, it sets the AI's cognitive state to a specialized game guide analysis mode. It does not perform direct data manipulation but rather establishes the framework and intent for subsequent `::SY-` tokens in the processing pipeline. This mode ensures that all incoming game-related content is viewed through the lens of structured data acquisition and interlinking.
