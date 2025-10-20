- **Type:** System Protocol
- **Summary:** Takes a URL or a string topic, and orchestrates a search to find alternative URLs pointing to the same or similar content.
- **Workflow:**
    1.  Receives a `topic` (URL or string) as a parameter.
    2.  Executes the following chain: `::FX-EXTRACT-SEARCH-TERMS:: | ::FX-FIND-ALTERNATIVE-URLS::`
    3.  Outputs a list of found URLs.
Tags: #sy/type/protocol, #sy/category/web, #sy/category/data