# The TDM Tag Ontology (v0.1.1.251001)

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
			* failed
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
		* cot
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

# Relational & Global Tags
	* #fx/protocol/
	* #sy/protocol/
	* #en/project/
	* #tech/