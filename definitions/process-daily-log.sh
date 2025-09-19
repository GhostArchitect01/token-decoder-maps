#!/bin/zsh

# Daily Log Dispatcher Script
# Version: 2.2.0 (using --include-directories)

SCRIPT_VERSION="2.2.0"

# --- Helper Functions ---
_log() {
    local message="$1"
    echo "$(date +'%Y-%m-%d %H:%M:%S') [dispatcher v${SCRIPT_VERSION}] $message"
}

# --- Core Functions ---

# Function to process a single date
process_date() {
  local MMDD_HYPHEN=$1
  local MMDD=${MMDD_HYPHEN//-/}
  local MONTH=${MMDD:0:2}
  local DAY=${MMDD:2:4}
  local YEAR=2025

  # Find the daily note file
  local FILE_PATH=$(find /storage/emulated/0/Documents/Laurel-catacomb/Metrica/Notes/ -name "${YEAR}-${MONTH}-${DAY}*.md")

  if [ -z "$FILE_PATH" ]; then
    _log "Warning: Daily note for ${YEAR}-${MONTH}-${DAY} not found. Skipping."
  else
    _log "Processing ${FILE_PATH}..."
    
    local prompt="::SY-PROCESS-DAILY-LOG::(file_path='$FILE_PATH')"
    _log "Prompt: $prompt"

    # The directory where the script will run from
  local life_dir="/storage/emulated/0/Documents/Laurel-catacomb/Life"
  local metrica_dir="/storage/emulated/0/Documents/Laurel-catacomb/Metrica"
    
  pushd "$life_dir" >/dev/null || { _log "FATAL: Failed to cd into $life_dir"; return 1; }
    
  _log "VERIFICATION: Current directory is now: $(pwd)"
  _log "Attempting to call Gemini CLI..."

  local cli_output
  cli_output=$(timeout 120 node /data/data/com.termux/files/home/.gemini-cli/package/dist/index.js \
      --approval-mode yolo \
      -m gemini-2.5-flash \
      --include-directories "$metrica_dir" \
      -p "$prompt" 2>&1)

  local exit_code=$?
    
  popd >/dev/null
    
  _log "Gemini call finished. Exit code: $exit_code"
  _log "Gemini raw output: $cli_output"
    
  echo "$cli_output"
    
  return $exit_code
  fi
}

# --- Main script logic ---
main() {
    _log "--- Starting Daily Log Dispatcher v${SCRIPT_VERSION} ---"

    if [ "$#" -eq 1 ]; then
      # Single date
      process_date "$1"
    elif [ "$#" -eq 3 ] && [ "$2" == "to" ]; then
      # Date range
      START_DATE_STR=$1
      END_DATE_STR=$3

      YEAR=2025
      # remove hyphens for date command
      CURRENT_DATE=$(date -d "${YEAR}${START_DATE_STR//-/}" +%Y%m%d)
      END_DATE=$(date -d "${YEAR}${END_DATE_STR//-/}" +%Y%m%d)

      while [ "$CURRENT_DATE" -le "$END_DATE" ]; do
        MMDD_HYPHEN=$(date -d "$CURRENT_DATE" +%m-%d)
        process_date "$MMDD_HYPHEN"
        CURRENT_DATE=$(date -d "$CURRENT_DATE + 1 day" +%Y%m%d)
      done
    else
      _log "Usage: $0 <mm-dd> | <mm-dd> to <mm-dd>"
      exit 1
    fi
    
    _log "--- Daily Log Dispatcher Finished ---"
    return 0
}

# Execute the main function with all script arguments
main "$@"