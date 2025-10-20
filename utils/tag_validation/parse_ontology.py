# Version 1.0.20251020
import sys
import os

def parse_ontology(file_path):
    """
    Parses a TDM tag ontology file that uses tab-based indentation.

    Args:
        file_path (str): The absolute path to the tag ontology file.

    Returns:
        list: A list of all valid, fully-qualified tags.
    """
    if not os.path.exists(file_path):
        print(f"Error: Ontology file not found at {file_path}", file=sys.stderr)
        return []

    valid_tags = []
    stack = []
    
    try:
        with open(file_path, 'r') as f:
            for line in f:
                line = line.rstrip()
                stripped_line = line.strip()

                # Skip empty lines, the preamble, and headers
                if not stripped_line or '(' in stripped_line or ')' in stripped_line or '**Core Principles**' in stripped_line:
                    continue
                if not (stripped_line.startswith('#') or stripped_line.startswith('*')):
                    continue

                # Calculate indentation level by counting tab characters
                level = line.count('\t')

                # Clean the tag part
                tag_part = stripped_line.lstrip('* ').split(':')[0].strip()

                # If it's a full tag, reset the stack
                if tag_part.startswith('#'):
                    stack = [p for p in tag_part.split('/') if p]
                else:
                    # It's a child, so manage stack hierarchy
                    while len(stack) > level:
                        stack.pop()
                    stack.append(tag_part)
                
                # Join the stack to form the full tag path
                if stack:
                    full_tag = "/".join(stack)
                    if not full_tag.startswith('#'):
                        full_tag = '#' + full_tag
                    valid_tags.append(full_tag)

    except IOError as e:
        print(f"Error reading file {file_path}: {e}", file=sys.stderr)
        return []

    # Remove duplicates and sort for consistency
    return sorted(list(set(valid_tags)))

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python parse_ontology.py <path_to_ontology_file>", file=sys.stderr)
        sys.exit(1)

    ontology_file = sys.argv[1]
    tags = parse_ontology(ontology_file)
    
    if tags:
        # Print to console
        print("--- Valid Tags ---")
        for tag in tags:
            print(tag)
        
        # Save to file
        output_path = "temp/ontology_tags.txt"
        try:
            with open(output_path, 'w') as f:
                for tag in tags:
                    f.write(f"{tag}\n")
            print(f"\nSuccessfully saved tag list to {output_path}")
        except IOError as e:
            print(f"\nError saving to file {output_path}: {e}", file=sys.stderr)