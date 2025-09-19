### ::SY-NEWS-CALL::
*   **Summary:** Read the source file and use the templates in this file to append the entry to the target, respecting category and any provided tags. Confirm success via OUTPUT.
*   **Filepaths:**
    *   **Source Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/Sources/`
    *   **Target Directory:** `/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links/`
*   **Parameters:**
    *   `source_file` (string, required): The filename of the article in the Source Directory.
    *   `target_file` (string, required): The filename (.md) of the target file in the Target Directory (e.g., `target.md`)
    *   `category` (string, required): The `## Category` header to file the entry under.
    *   `tags` (string, optional): A comma-separated list of tags.
- **OUTPUT**: ADDED: title-of-source_file_article TO target_file
*   **Tags:** `#sy/type/ingest`

---

# Gemini Automation Templates

This document outlines the templates used for automating the creation of entries in the `News.md`, `AI.md`, and `Bugs.md` files.

**Handling Exceptions (for refactoring only):** When refactoring an *existing, non-compliant* entry, prioritize retaining all original information. If data does not fit a standard field (e.g., a "Paywall" link), integrate it logically next to the most relevant field (e.g., `**Paywall:** <url>` after `**Source:** <url>`) rather than discarding it. This rule does not apply to creating new entries.



---

## 1. File Structure Template

This template defines the overall structure of the destination files. Main categories are separated by a horizontal rule (`---`).

```markdown
## <Category Name 1>

<Entry 1.1>

<Entry 1.2>

---

## <Category Name 2>

<Entry 2.1>
```

---

## 2. Individual Entry Template

This template defines the format for each individual entry that is generated and appended to the files.

```markdown
#### [<Title of the Article>](obsidian://open?vault=Laurel-catacomb&file=Resources%2FLinks%2FSources%2F<title-of-source_file-article><.md/.pdf.txt>)
*By <Author(s)> @ <Publication> on <YYYY-MM-DD>*

> <Synopsis or first paragraph>

**Source:** <URL to original article>
**Tags:** #<tag1> #<tag2>
```

### Field Descriptions:

*   **Title:** The main title of the entry, which links directly to the local source file in Obsidian.
*   **Byline:** An italicized line dynamically constructed from the article's byline information. All components (Author, Publication, Date) are optional and will only be included if they can be reliably extracted from the article's explicit byline. **Information (names, dates) mentioned in the main body of the text must not be used.** If no specific byline information can be found, this entire line will be omitted.
*   **Synopsis:** A blockquote containing the summary or first paragraph of the article.
*   **Source:** A link to the original URL of the article on the web.
*   **Tags:** A list of relevant tags.