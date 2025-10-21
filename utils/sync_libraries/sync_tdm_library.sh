#!/bin/bash
#
# NAME
#   sync_tdm_library.sh - Synchronize the canonical TDM Library
#
# SYNOPSIS
#   ./sync_tdm_library.sh
#
# DESCRIPTION
#   This script synchronizes the contents of the canonical TDM library
#   (~/storage/shared/Documents/Laurel-catacomb/Tdm-library) into the
#   local project's TDM library directory.
#
#   It uses rsync to perform an efficient one-way sync. Files in the
#   destination that do not exist in the source will be deleted.
#
#   - SOURCE: /storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/
#   - DESTINATION: /storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/Tdm-library/
#

# --- Configuration ---
SOURCE_DIR="/storage/emulated/0/Documents/Laurel-catacomb/Tdm-library/"
DEST_DIR="/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/Tdm-library/"
RSYNC_OPTS="-av --delete"

# --- Main ---
echo "Starting TDM Library synchronization..."
echo "  Source:      $SOURCE_DIR"
echo "  Destination: $DEST_DIR"

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# Execute the synchronization
rsync $RSYNC_OPTS "$SOURCE_DIR" "$DEST_DIR"

echo "TDM Library synchronization complete."
