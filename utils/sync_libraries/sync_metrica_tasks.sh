#!/bin/bash
#
# NAME
#   sync_metrica_tasks.sh - Synchronize the canonical Metrica Tasks
#
# SYNOPSIS
#   ./sync_metrica_tasks.sh
#
# DESCRIPTION
#   This script synchronizes the MX-USER and MX-PROJECT task directories
#   from the canonical Metrica location into the local project's
#   'Metrica' directory.
#
#   It uses rsync to perform an efficient one-way sync. Files in the
#   destination that do not exist in the source will be deleted.
#
#   - SOURCE: /storage/emulated/0/Documents/Laurel-catacomb/Metrica/
#   - DESTINATION: /storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/Metrica/
#

# --- Configuration ---
SOURCE_BASE="/storage/emulated/0/Documents/Laurel-catacomb/Metrica/"
DEST_BASE="/storage/emulated/0/Documents/Laurel-catacomb/token-decoder-framework-github/Metrica/"
RSYNC_OPTS="-av --delete"

# --- Main ---
echo "Starting Metrica tasks synchronization..."

# --- Sync MX-USER tasks ---
SOURCE_USER_DIR="${SOURCE_BASE}MX-USER/"
DEST_USER_DIR="${DEST_BASE}MX-USER/"
echo "  Syncing User Tasks..."
echo "    Source:      $SOURCE_USER_DIR"
echo "    Destination: $DEST_USER_DIR"
mkdir -p "$DEST_USER_DIR"
rsync $RSYNC_OPTS "$SOURCE_USER_DIR" "$DEST_USER_DIR"
echo "  User Tasks sync complete."

# --- Sync MX-PROJECT tasks ---
SOURCE_PROJECT_DIR="${SOURCE_BASE}MX-PROJECT/"
DEST_PROJECT_DIR="${DEST_BASE}MX-PROJECT/"
echo "  Syncing Project Tasks..."
echo "    Source:      $SOURCE_PROJECT_DIR"
echo "    Destination: $DEST_PROJECT_DIR"
mkdir -p "$DEST_PROJECT_DIR"
rsync $RSYNC_OPTS "$SOURCE_PROJECT_DIR" "$DEST_PROJECT_DIR"
echo "  Project Tasks sync complete."

echo "Metrica tasks synchronization complete."
