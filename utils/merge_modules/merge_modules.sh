#!/bin/bash

# Script to merge TDM context modules

# --- Configuration ---
SOURCE_DIR="/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/context-modules"
TARGET_FILE_A="combined_a.md"
TARGET_FILE_B="combined_b.md"
LOG_PREFIX="[TDM Merge Script]"

# --- Functions ---
log() {
    echo "$LOG_PREFIX $1"
}

# --- Main Script ---
log "Script started."

# Parse command-line options
while getopts ":s:" opt; do
  case $opt in
    s)
      STREAM_ID="$OPTARG"
      log "Stream identifier set to: $STREAM_ID"
      ;;
    \?)
      log "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      log "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

if [ -z "$STREAM_ID" ]; then
    log "Error: Stream identifier not provided. Use -s [A|B]"
    exit 1
fi

# Map stream ID to module files and set target file
case $STREAM_ID in
    A)
        MODULE_FILES=("context-module-1a.md" "context-module-2a.md" "context-module-3.md" "context-module-4a.md")
        TARGET_FILE="$TARGET_FILE_A"
        log "Identified module files for stream A: ${MODULE_FILES[*]}"
        ;;
    B)
        MODULE_FILES=("context-module-1b.md" "context-module-2b.md" "context-module-3.md" "context-module-4b.md")
        TARGET_FILE="$TARGET_FILE_B"
        log "Identified module files for stream B: ${MODULE_FILES[*]}"
        ;;
    *)
        log "Error: Invalid stream identifier. Use A or B."
        exit 1
        ;;
esac

# Clear the target file
> "$TARGET_FILE"
log "Cleared target file: $TARGET_FILE"

# Concatenate module files
for module_file in "${MODULE_FILES[@]}"; do
    if [ -r "$SOURCE_DIR/$module_file" ]; then
        log "Merging file: $module_file"
        cat "$SOURCE_DIR/$module_file" >> "$TARGET_FILE"
    else
        log "Error: Module file not found or not readable: $SOURCE_DIR/$module_file"
        exit 1
    fi
done

log "Script finished."
