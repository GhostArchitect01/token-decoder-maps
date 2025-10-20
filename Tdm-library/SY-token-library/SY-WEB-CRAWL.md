::SY-WEB-CRAWL::
- **Type:** System/Protocol
- **Summary:** Orchestrates the fetching of web content from a starting URL, recursively extracting and following links up to a specified depth or page limit, and returning a collection of raw HTML content.
- **Tags:** #sy/type/protocol, #sy/category/web, #sy/category/ingestion
- **Parameters:**
    - `start_url` (string, required): The initial URL to begin crawling.
    - `depth` (integer, optional, default: 1): The maximum depth to follow links from the `start_url`. A depth of 1 means only the `start_url` and pages directly linked from it will be fetched.
    - `max_pages` (integer, optional, default: 10): The maximum number of unique pages to fetch during the crawl.
    - `domain_filter` (string, optional): A domain name (e.g., "example.com") to restrict crawling to. Only links within this domain will be followed. If not provided, crawling will be restricted to the domain of the `start_url`.
- **Execution Workflow:**
    1.  Initialize a queue with the `start_url` and a set of visited URLs.
    2.  Initialize a list to store fetched `(url, raw_html_content)` tuples.
    3.  If `domain_filter` is not provided, extract the domain from `start_url` and use it as the `domain_filter`.
    4.  While the queue is not empty, `max_pages` has not been reached, and `depth` limit has not been exceeded:
        a.  Dequeue a URL and its current depth.
        b.  If the URL has not been visited and its domain matches `domain_filter`:
            i.   Mark the URL as visited.
            ii.  Fetch the URL content. First, attempt using `web_fetch`. If `web_fetch` does not return raw HTML content, then fall back to `run_shell_command` with `curl -sL $URL` to fetch the raw HTML.
            iii. Store the `(url, raw_html_content)`.
            iv.  If current depth < `depth`:
                1.  Use `::FX-EXTRACT-LINKS::(html_content=raw_html_content, base_url=url)` to get new links.
                2.  Enqueue new, unvisited, and domain-matching links with `current_depth + 1`.
    5.  Return the list of `(url, raw_html_content)` tuples.
- **Output:** A list of dictionaries, each containing 'url' and 'content' (raw HTML) for the fetched pages.
