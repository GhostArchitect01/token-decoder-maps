::SY-ACQUIRE-AND-INGEST-WEB-CONTENT::
- **Type:** System/Protocol
- **Summary:** Orchestrates the end-to-end process of acquiring and sanitizing web-based game guide content. It performs a web search, crawls relevant pages, sanitizes the content, and returns a structured output of cleaned content ready for linguistic review or subsequent tokenization.
Tags: #sy/type/protocol, #sy/category/web, #sy/category/ingestion
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
    5.  **Output:** Return a list of dictionaries, where each dictionary contains 'url' and 'sanitized_content' for the processed pages. This output is intended to be reviewed and then fed into the tokenization pipeline (`::SY-INGEST-GAME-GUIDE::`) in a separate operation.