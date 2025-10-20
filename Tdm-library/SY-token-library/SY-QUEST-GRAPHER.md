::SY-QUEST-GRAPHER::
- **Type:** System/Utility
- **Summary:** Convert quest prose into machine-usable graphs.
- **Tags:** #sy/type/utility, #sy/category/data, #en/category/game
- **Parameters:**
    - `tokens` (list, required) # expect Type: Questline
- **Behavior:**
    - For each Questline, add: flow: [{step, action, target, checks[], risk}] branches: [{name, triggers[], rewards[], outcomes[]}] fail_states: [{name, detection, mitigation}]
    - Preserve Objectives, Key_Choices, Rewards, Consequences from extractor, but render them into the arrays above.
- **Output:** graphed_tokens
