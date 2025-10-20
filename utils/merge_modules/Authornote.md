I decided a modular context file/system prompt structure was the best approach, as it allows for reusing components across different environments. 

Currently I have an A and B stream, for gemini-cli (local filesystem access) and Gemini (mobile/web with Google/Android integration via 'Gemini Apps'.

This script allows me to easily update the global context file after making updates. It could be more configurable but I'll tackle that when I add additional streams.