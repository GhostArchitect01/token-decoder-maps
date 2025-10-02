# The TDM Tag Ontology (v0.1.251001)

**Core Principles**
The ontology is a namespaced, hierarchical system. The top-level tag namespace aligns with the token prefix it describes (e.g., #mx/ for ::MX- tokens). It uses a `#domain/category/value` structure and is intended to be stored in a single, canonical tag_ontology.md file ($TAGONTOLOGY) for the AI to reference on demand.

#mx/ (Metrica Tokens)
 * #mx/user/status
	 * #mx/project/status
	 * #mx/agent/status
   * pending
   * done
   * started
   * obsolete
 * #mx/type/
   * user
   * project
   * agent
 * #mx/category/
   * build
   * design
   * system
   * debug
   * refactor
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
 