
# Version 1.0.20251020
import sys
import glob

def delint_tag_lines(file_glob_pattern):
    """
    Finds all files matching the glob pattern, reads them, and removes all
    commas from any line starting with '- **Tags:**'. The file is then overwritten.

    Args:
        file_glob_pattern (str): The glob pattern for files to process.
    """
    files_to_process = glob.glob(file_glob_pattern, recursive=True)

    if not files_to_process:
        print(f"No files found matching pattern: {file_glob_pattern}")
        return

    print(f"Scanning {len(files_to_process)} files...")

    modified_count = 0
    for file_path in files_to_process:
        try:
            with open(file_path, 'r') as f:
                lines = f.readlines()
            
            new_lines = []
            file_modified = False
            for line in lines:
                if line.strip().startswith("- **Tags:**"):
                    if ',' in line:
                        modified_line = line.replace(',', ' ') # Replace comma with space for safety
                        new_lines.append(modified_line)
                        file_modified = True
                    else:
                        new_lines.append(line)
                else:
                    new_lines.append(line)
            
            if file_modified:
                with open(file_path, 'w') as f:
                    f.writelines(new_lines)
                print(f"- Delinted: {file_path}")
                modified_count += 1

        except IOError as e:
            print(f"Error processing file {file_path}: {e}", file=sys.stderr)
            continue
    
    print(f"\nFinished. Modified {modified_count} files.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python delint_tags.py <glob_pattern>", file=sys.stderr)
        print("Example: python delint_tags.py 'Tdm-library/**/*.md'", file=sys.stderr)
        sys.exit(1)

    delint_tag_lines(sys.argv[1])
