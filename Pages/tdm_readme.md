# README

## The TDM Framework

**Author-note**
At least some of this `README` is going to be human, but this is the first line so I can't say how much just yet.
**End Author-note**

### TDM: What (Introduction)

The Token Decoder Map (TDM) Framework is a synthesis of principles concerning Large Language Model (LLM) / AI interaction and use. It represents a unique, consistent philosophy and system for Human / LLM workflow, leveraging established techniques such as 'prompt' and 'context' engineering, in-context learning, and attention mechanisms. These are combined  with the principles of 'natural language'/'linguistic' programming and the abstraction of a high level domain specific language (DSL).

In simpler terms, the TDM Framework is an AI orchestration layer that capitalizes on the pattern matching abilities and attention mechanisms of LLMs to give users the ability to easily direct the AI where to find stored instructions or data for repeated use cases, with a goal of reliable and consistent behavior by the AI agent. 

### TDM: Why (Origins) 

The TDM Framework is an effort to leverage the same mechanisms that power the 'Symbolic AI' movement - that context is engineered not only by instruction, but also by the LLM's own internal probabilistic mechanisms.

We have all experienced that moment when using a synonym produces drastically different results, or realizes far too late we used slightly too ambiguous phrasing and the AI has gone off in the opposite direction of what we intended.

My own early experiences with AI led me to ask the question of whether or not we could design custom tokens (the context window/vector embedding type) to help reliably manage context / cut down on the need to type long complex prompts.

The resulting solution, originally proposed by ChatGPT 4o, was to create semantically unique identifiers that would act as pointers to information within the context window.

Thus ::TOKENS:: were born, the unique identifying string that would point to an associated piece of information contained in a simple plain text list - a 'decoder map' for the 'token', if you would.

This allows users to record information, instructions, etc in simple plain text files, and refer to them reliably using the ::TOKEN:: names as 'easy' shorthand. 

### TDM: How (Mechanisms at play)

**Author-note**
I will attempt to explain what I can myself, but I will include a more technical explanation by Gemini 2.5 Pro afterwards.
**End Author-note**

A reaction I sometimes get by those introduced to the TDM Framework is "well you have to fine-tune the model so it understands how to use it", and this is a great subject to start off with.

LLMs are already trained on essentially everything, and are inherently designed to be able to resolve patterns and respond appropriately. They struggle most when trying to *replicate structured form*, as patterns and details are not the same thing and their attention is easily lost.

The 'magic' of the TDM Framework is that it has no pre-trained exposure to it. It isn't being asked to replicate a canonical format - it is being asked to respect a system of generically structured data (::TOKENS::) whereby each reinforces an individual function. I hesitate to use the words 'symbolic' or 'recursive' because of the stigmatizing associated with them in 'serious' AI circles, but those are precisely the principles that allow the TDM Framework to function reliably (subjective claim, LLMs are inherently unreliable and this becomes a measure of 'how reliable').

The idea of semantic data pointers is 'generic', and the AI understands the 'symbolic' intent.

This is also exactly how the advanced features of the DSL work, as they're simply replicating standard `bash` syntax for piping and borrowing from elsewhere (IE: `function calls`) for parameters.

The LLM innately understands the meaning of these syntax's and given minor (IE: one-shot instruction) of its functionality it is easily able to adhere to the DSL.

While some ::TOKENS::, such as ::EN-:: tokens, may contain just a single piece of data or information, the methodology I have established for the (formal) deployment, use, and creation of 'TDM Protocols' is designed to reinforce context and consistency.

This is accomplished via:

- Modularity: Breaking workflows down into modular and reusable ::TOKENS::
- Atomization: Breaking down tasks or processes into smaller, more explicit sub tasks
- Self Referential Structure: By orchestrating the AIs entire context with the TDM Framework, the AI is subsumed into the role of a TDM agent, reinforcing its adherence to the framework (*This would be the 'recursive' component*)




