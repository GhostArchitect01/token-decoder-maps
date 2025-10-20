# Version 1.0.20251020
import sys
import glob
import os
import re
from parse_ontology import parse_ontology

def find_invalid_tags(file_glob_pattern, ontology_file_path):
    """
    Scans files matching a glob pattern, extracts token info, and identifies non-conforming tags.

    Args:
        file_glob_pattern (str): A glob pattern for the files to validate.
        ontology_file_path (str): The absolute path to the tag ontology file.

    Returns:
        list: A list of dictionaries, where each dictionary represents a file
              with invalid tags and contains its details.
    """
    valid_tags = set(parse_ontology(ontology_file_path))
    if not valid_tags:
        print("Could not parse ontology file. Aborting.", file=sys.stderr)
        return []

    results = []
    files_to_check = glob.glob(file_glob_pattern, recursive=True)

    if not files_to_check:
        print(f"No files found matching pattern: {file_glob_pattern}", file=sys.stderr)
        return []

    for file_path in files_to_check:
        token_name = None
        title = None
        tags = []

        try:
            with open(file_path, 'r') as f:
                content = f.read()
                
                # Extract Token Name
                name_match = re.search(r"::(.*?)::", content)
                if name_match:
                    token_name = name_match.group(0)

                # Extract Title (with a more robust regex)
                title_match = re.search(r"- \*\*Title:\*\*\s*(.*)", content)
                if title_match:
                    title = title_match.group(1).strip()

                # Extract Tags
                tags_match = re.search(r"- \*\*Tags:\*\*\s*(.*)", content)
                if tags_match:
                    tag_string = tags_match.group(1)
                    tags = [tag.strip().strip(',') for tag in tag_string.split(' ') if tag.strip()]

            invalid_tags_found = []
            if tags:
                for tag in tags:
                    if tag not in valid_tags:
                        invalid_tags_found.append(tag)
            
            if invalid_tags_found:
                results.append({
                    'file': file_path,
                    'token_name': token_name or 'Not Found',
                    'title': title or 'Not Found',
                    'invalid_tags': invalid_tags_found
                })

        except IOError as e:
            print(f"Error reading file {file_path}: {e}", file=sys.stderr)
            continue

    return results

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python validate_tags.py <glob_pattern> <ontology_path>", file=sys.stderr)
        sys.exit(1)

    glob_pattern = sys.argv[1]
    ontology_path = sys.argv[2]

    if not os.path.isabs(ontology_path):
        ontology_path = os.path.abspath(ontology_path)

    non_conforming_files = find_invalid_tags(glob_pattern, ontology_path)

    # --- Reporting --- #
    report_lines = []
    if not non_conforming_files:
        report_lines.append("All checked files conform to the tag ontology.")
    else:
        report_lines.append("Found non-conforming tags in the following files:")
        for item in non_conforming_files:
            report_lines.append("--------------------------------------------------")
            report_lines.append(f"Token: {item['token_name']}")
            report_lines.append(f"Title: {item['title']}")
            report_lines.append(f"File:  {item['file']}")
            report_lines.append("Non-conforming Tags:")
            for tag in item['invalid_tags']:
                report_lines.append(f"  - {tag}")
        report_lines.append("--------------------------------------------------")

    report_content = "\n".join(report_lines)

    # Print report to console
    print(report_content)

    # Save report to file
    output_path = "temp/validation_report.txt"
    try:
        with open(output_path, 'w') as f:
            f.write(report_content)
        print(f"\nSuccessfully saved validation report to {output_path}")
    except IOError as e:
        print(f"\nError saving report to file {output_path}: {e}", file=sys.stderr)