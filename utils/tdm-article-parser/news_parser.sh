#!/bin/zsh

# Unified News Parser Script
# Version: 2.0.0

SCRIPT_VERSION="2.0.0"

# --- Helper Functions ---

# Main log function
_n_log() {
    local message="$1"
    local log_entry="$(date +'%Y-%m-%d %H:%M:%S') [n v${SCRIPT_VERSION}] $message"
    echo "$log_entry" # Also print to console for real-time feedback
    echo "$log_entry" >> ~/tdm-article-parser/n_function.log
}

# Log function for the news() sub-process
_news_log() {
    local message="$1"
    local log_entry="$(date +'%Y-%m-%d %H:%M:%S') [news v${SCRIPT_VERSION}] $message"
    echo "$log_entry" >> ~/tdm-article-parser/news_function.log
}

# --- Core Functions ---

# Function to automate adding a new entry with Gemini
news() {
  local target_dir="/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links"
  local log_file=~/tdm-article-parser/news_function.log
  local telemetry_file=~/tdm-article-parser/gemini_telemetry.log

  local source_filepath="$1"
  local target_filepath="$2"
  local category_name="$3"
  local tags="$4"

  local prompt="::SY-TERMINAL-AUTOMATION:: | ::SY-NEWS-CALL::(source_file=\"$source_filepath\", target_file=\"$target_filepath\", category=\"$category_name\", tags=\"$tags\")"

  _news_log "Executing news function..."
  _news_log "Prompt: $prompt"

  # Temporarily change to the target directory
  pushd "$target_dir" >/dev/null || { _news_log "FATAL: Failed to cd into $target_dir"; return 1; }

  _n_log "VERIFICATION: Current directory is now: $(pwd)"
  _news_log "Attempting to call Gemini CLI..."

  local cli_output
  cli_output=$(timeout 120 node /data/data/com.termux/files/home/.gemini-cli/package/dist/index.js \
    --approval-mode yolo \
    -m gemini-2.5-flash -p "$prompt" 2>&1)

  local exit_code=$?

  # Return to original directory
  popd >/dev/null

  _news_log "Gemini call finished. Exit code: $exit_code"
  _news_log "Gemini raw output: $cli_output"

  echo "$cli_output"

  return $exit_code
}

# Main script logic, replacing the old n() function
main() {
    _n_log "--- Starting News Parser v${SCRIPT_VERSION} ---"

    if [ "$#" -ne 4 ]; then
        _n_log "Usage: ./news_parser.sh \"<stub_filename>\" \"<target_filename>\" \"<category>\" \"<tags>\"" >&2
        _n_log "Example: ./news_parser.sh \"stub.md\" \"News.md\" \"Technology\" \"#ai, #gemini\"" >&2
        return 1
    fi

    local stub_argument="$1"
    local target_filename="$2"
    local category="$3"
    local tags="$4"

    local base_dir="/storage/emulated/0/Documents/Laurel-catacomb/Resources/Links"
    local sources_dir="$base_dir/Sources"
    local stub_filepath=""
    local stub_filename=""

    # --- Robust File Discovery ---
    if [ -f "$sources_dir/$stub_argument" ]; then
        stub_filepath="$sources_dir/$stub_argument"
    elif [[ "$stub_argument" != *.md ]] && [ -f "$sources_dir/$stub_argument.md" ]; then
        stub_filepath="$sources_dir/$stub_argument.md"
    fi

    if [ -z "$stub_filepath" ]; then
        _n_log "Exact file '$stub_argument' not found. Attempting case-insensitive search..."
        local found_files=($(find "$sources_dir" -maxdepth 1 -type f -iname "$stub_argument"*))
        if [ ${#found_files[@]} -eq 1 ]; then
            stub_filepath="${found_files[0]}"
            _n_log "Found unique match: '$(basename "$stub_filepath")'"
        else
            _n_log "Error: Stub not found or ambiguous for '$stub_argument'" >&2
            return 1
        fi
    fi
    
    stub_filename=$(basename "$stub_filepath")
    _n_log "Processing stub: '$stub_filepath'"

    # --- Call Protocol ---
    _n_log "Calling news function..."
    local target_filepath="$base_dir/$target_filename"
    local news_output
    news_output=$(news "$stub_filepath" "$target_filepath" "$category" "$tags")
    local news_exit_code=$?

    _n_log "News function output: $news_output"

    if [ $news_exit_code -ne 0 ]; then
        _n_log "Error: news() failed with exit code $news_exit_code." >&2
        return $news_exit_code
    fi

    # --- AI Output Parsing ---
    local title
    title=$(echo "$news_output" | grep -o 'ADDED: .* TO' | sed -e 's/ADDED: //' -e 's/ TO//')

    if [ -z "$title" ]; then
        _n_log "Error: Could not parse title from AI output." >&2
        return 1
    fi
    _n_log "Parsed title from AI: '$title'"

    # --- Filename Derivation ---
    local new_basename
    if command -v iconv &> /dev/null; then
        new_basename=$(echo "$title" | iconv -f UTF-8 -t ASCII//TRANSLIT)
    else
        new_basename="$title"
    fi
    new_basename=$(echo "$new_basename" | tr '[:upper:]' '[:lower:]' | sed -e 's/[^a-z0-9]/-/g' -e 's/--+/-/g' -e 's/^-//' -e 's/-$//' | cut -c 1-80)

    if [ -z "$new_basename" ]; then
        _n_log "Error: Computed filename is empty after sanitization." >&2
        return 1
    fi

    # Preserve the original extension
    local extension="${stub_filename##*.}"
    if [ "$extension" = "$stub_filename" ]; then # No extension
        extension="md"
    fi
    local final_filename="${new_basename}.${extension}"
    local new_filepath="$sources_dir/$final_filename"

    if [ "$stub_filepath" != "$new_filepath" ]; then
        _n_log "Renaming '$stub_filename' -> '$final_filename'"
        if ! mv "$stub_filepath" "$new_filepath"; then
            _n_log "Error: Failed to rename file." >&2
            return 1
        fi
    fi

    _n_log "News ingestion successful."
    _n_log "--- News Parser Finished ---"
    return 0
}

# Execute the main function with all script arguments
main "$@"
