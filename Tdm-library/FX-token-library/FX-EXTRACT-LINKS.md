::FX-EXTRACT-LINKS::
- **Type:** Function/Cognitive
- **Summary:** Intelligently parses HTML content to identify and extract relevant URLs, distinguishing content links from boilerplate navigation. Resolves relative URLs to absolute paths.
- **Tags:** #LinkExtraction #HTMLParsing #URLResolution #Cognitive
- **Parameters:**
    - `html_content` (string, required): The raw HTML content from which to extract links.
    - `base_url` (string, required): The base URL of the page, used to resolve relative links into absolute URLs.
- **Behavior:**
    1.  Parse the `html_content` to identify all `<a>` (anchor) tags.
    2.  Extract the `href` attribute from each `<a>` tag.
    3.  Resolve any relative `href` values into absolute URLs using the `base_url`.
    4.  Filter out common boilerplate links (e.g., navigation menus, footers, social media links, login/signup, privacy policies, terms of service) based on common patterns in `href` or surrounding text/classes.
    5.  Prioritize links that appear to be part of the main content body.
    6.  Return a unique list of absolute URLs that are likely to contain relevant content.
- **Output:** A list of unique, absolute URLs.
