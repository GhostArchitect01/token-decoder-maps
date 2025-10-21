import os

def generate_directory_tree_string_from_path(startpath, indent_level=0):
    """Recursively generates a string representation of the directory tree from a given path."""
    tree_string = ""
    indent_str = "  " * indent_level
    
    if not os.path.exists(startpath):
        return f"{indent_str}Path not found: {startpath}\n"

    basename = os.path.basename(startpath)
    if os.path.isdir(startpath):
        tree_string += f"{indent_str}[DIR] {basename}/\n"
        try:
            for item in sorted(os.listdir(startpath)):
                item_path = os.path.join(startpath, item)
                tree_string += generate_directory_tree_string_from_path(item_path, indent_level + 1)
        except PermissionError:
            tree_string += f"{indent_str}  [ERROR] Permission denied to list directory: {startpath}\n"
    elif os.path.isfile(startpath):
        tree_string += f"{indent_str}[FILE] {basename}\n"
    return tree_string

def concatenate_files(source_dir, output_file_path):
    """
    Concatenates .md and .txt files from source_dir into a single output_file_path,
    including a header, directory tree, and formatted content for each file.
    """
    print(f"Processing directory: {source_dir}")
    
    # Generate directory tree for the source_dir
    tree_string = generate_directory_tree_string_from_path(source_dir)

    with open(output_file_path, 'w', encoding='utf-8') as outfile:
        outfile.write("# Merged Context File for AI Review and Analysis\n\n")
        outfile.write("## Directory Tree:\n")
        outfile.write(tree_string)
        outfile.write("\n---\n\n") # Separator after tree

        for root, _, files in os.walk(source_dir):
            for file in files:
                if file.endswith(('.md', '.txt')):
                    file_path = os.path.join(root, file)
                    relative_filepath = os.path.relpath(file_path, source_dir)
                    try:
                        with open(file_path, 'r', encoding='utf-8') as infile:
                            content = infile.read()
                        outfile.write(f"--- {relative_filepath} ---\n")
                        outfile.write(content)
                        outfile.write("\n--- End of content ---\n\n")
                    except Exception as e:
                        print(f"Error reading {file_path}: {e}")

# Define paths
ROOT_PROJECT_DIR = "/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github"
MERGED_CONTEXT_DIR = os.path.join(ROOT_PROJECT_DIR, "merged_context")
INDIVIDUAL_CONTEXTS_DIR = os.path.join(MERGED_CONTEXT_DIR, "individual_contexts")

# Ensure output directory exists
os.makedirs(INDIVIDUAL_CONTEXTS_DIR, exist_ok=True)

# Specific Metrica and TDM Library Directories
specific_dirs = [
    "/storage/emulated/0/Documents/Laurel-catacomb/Metrica/MX-USER",
    "/storage/emulated/0/Documents/Laurel-catacomb/Metrica/MX-PROJECT",
    "/storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/EN-token-library",
    "/storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/FX-token-library",
    "/storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/SY-token-library",
]

for s_dir in specific_dirs:
    dir_name = os.path.basename(s_dir)
    output_filename = f"{dir_name.lower().replace('-', '_')}_combined.md"
    output_filepath = os.path.join(INDIVIDUAL_CONTEXTS_DIR, output_filename)
    concatenate_files(s_dir, output_filepath)

# Current Working Directory's Non-Hidden Direct Subdirectories
for item in os.listdir(ROOT_PROJECT_DIR):
    item_path = os.path.join(ROOT_PROJECT_DIR, item)
    if os.path.isdir(item_path) and not item.startswith('.') and item != "merged_context":
        dir_name = item
        output_filename = f"{dir_name.lower().replace('-', '_')}_combined.md"
        output_filepath = os.path.join(INDIVIDUAL_CONTEXTS_DIR, output_filename)
        concatenate_files(item_path, output_filepath)

print(f"All files concatenated into {INDIVIDUAL_CONTEXTS_DIR}")