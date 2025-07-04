# Decoder Prompt Map (LLM Runtime)

::PROMPT-PRIMER::
Type: Utility  
Summary: Initializes decoder-aware context. LLM will interpret tokens using loaded definitions.  
Tags: #Bootstrap #System   

::SYMBOLIC-RESPONSE-PROTOCOL::
Type: PromptProtocol  
Summary: Format where LLM replies using symbolic token chains and compressed logic instead of natural language.  
Tags: #PromptLogic #Symbolic #Compression  

::TOGGLE-SYMBOLIC-MODE::
Type: PromptMode  
Summary: Respond using only symbolic tokens and compressed meaning. Avoid natural prose.  
Tags: #ExecutionMode #Symbolic  

::TOGGLE-EXPANDED-MODE::
Type: PromptMode  
Summary: Respond using natural language, but reference active symbolic tokens.  
Tags: #ExecutionMode #Prose  

::DECODER-MODE-INDEX::
Type: PromptMode  
Summary: Return only a list of active tokens with type and summary. No symbolic chaining.  
Tags: #ExecutionMode #Listing  

::TOKEN-EXTRACTION-PROTOCOL::
Type: PromptProtocol  
Summary: Extract and compress key symbolic tokens from a source text using the ::TOKEN:: format.  
Tags: #SymbolicParsing #Tokenization