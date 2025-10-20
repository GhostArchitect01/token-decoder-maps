::SY-SANITIZE-CONTENT::
- **Type:** System/Utility
- **Summary:** Converts raw HTML content into a clean, linguistic-friendly format (e.g., Markdown or plain text), removing boilerplate, scripts, styles, and navigation elements.
- **Tags:** #sy/type/utility, #sy/category/data, #sy/category/web
- **Parameters:**
    - `raw_html_content` (string, required): The raw HTML content to sanitize.
    - `output_format` (string, optional, default: "markdown"): The desired output format ("markdown" or "text").
- **Behavior:**
    1.  Parse the `raw_html_content` to identify and remove irrelevant elements such as `<script>`, `<style>`, `<nav>`, `<footer>`, `<header>`, and other common boilerplate sections.
    2.  Convert the remaining meaningful HTML content into the specified `output_format` (Markdown or plain text).
    3.  Clean up any remaining artifacts like multiple blank lines, excessive whitespace, or unwanted special characters.
    4.  Return the sanitized content.
- **Output:** The cleaned and formatted content as a string.
