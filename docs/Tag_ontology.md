# The TDM Tag Ontology (v0.1.251001)

**Core Principles**
The ontology is a namespaced, hierarchical system. The top-level tag namespace aligns with the token prefix it describes (e.g., #mx/ for ::MX- tokens). It uses a `#domain/category/value` structure and is intended to be stored in a single, canonical tag_ontology.md file ($TAGONTOLOGY) for the AI to reference on demand.

#mx/ (Metrica Tokens)

A Metrica task is described using two primary hierarchical tags: one for its State and one for its Domain.
### State Tags (`#mx/type/status/value`)
* #mx/user/status/[status]
* #mx/project/status/[status]
* #mx/agent/status/[status]
* **Allowed [status] values:** `pending`, `done`, `started`, `obsolete`

### Domain Tags (`#mx/category/value`)
* #mx/category/[category]
* **Allowed [category] values:** `build`, `design`, `system`, `debug`, `refactor`

**Example Usage:**
A 'pending' 'User Task' related to 'build' would have two tags:
- `#mx/user/status/pending`
- `#mx/category/build`

#fx/ (Function/Cognitive Tokens)
 * #fx/type/
   * review
   * debug
   * expert
   * cot (Chain of Thought)
   * verify
   * oppose
   * design
 * #fx/category/
   * protocol
   * analysis
   * dev
   * persona
#sy/ (System/Utility Tokens)
 * #sy/type/
   * protocol
   * utility
   * mode
 * #sy/category/
   * metrica
   * data
   * web
   * file-io
   * runtime
   * ingestion
#en/ (Entity/Knowledge Tokens)
 * #en/type/
   * Game/Writing: character, item, world, setting, system, planet, mechanic, class, background, origin, ability
   * Information: index, guide, fact
   * System: rs, ml, legendarium
 * #en/category/
   * log
   * game
   * writing
   * info
   * glyph

Relational & Global Tags

 * #*/protocol/
   * Links a component token (like ::FX- or ::SY-) to the high-level protocol it serves (e.g., `#sy/protocol/daily-dispatcher)`.
 * #en/project/
   * Links an entity token to the specific project it belongs to (e.g., `#en/project/tdm-game-guide`). This can be extended for project-specific sub-categories like #`en/project/tdm-game-guide/log`.
 * #tech/
   * A top-level, global tag for specific, reusable technologies (e.g., `#tech/python`, `#tech/obsidian`).
 