#!/bin/bash

# SCRIPT: create_combined_contexts.sh
#
# This script generates three concatenated text files from the contents of the
# TDM framework, Metrica, and TDM library directories.
# Each output file includes a main header explaining its context, and each
# individual file entry is marked with its source path.

# Define the base directory path
BASE_DIR="/storage/emulated/0/Documents/Laurel-catacomb"

# Define output file names
FRAMEWORK_OUT="tdm_framework_content.txt"
METRICA_OUT="metrica_content.txt"
LIBRARY_OUT="tdm_library_content.txt"

# --- Define AI Context Headers ---
HEADER_FRAMEWORK="# CONTEXT: TDM Framework Source Code\n# This file is a concatenated collection of all source documents for the Token-Decoder Map (TDM) framework. It includes core documentation, utility scripts, and examples. Each entry is sourced from a separate file, indicated by a '--- FILE: ...' header."
HEADER_METRICA="# CONTEXT: Metrica Task Management System\n# This file is a concatenated collection of all documents from the Metrica task tracking system. It contains user tasks and project tasks that define goals and work items. Each entry is sourced from a separate file, indicated by a '--- FILE: ...' header."
HEADER_LIBRARY="# CONTEXT: TDM Token Library\n# This file is a concatenated collection of all token definitions from the TDM library. It includes definitions for System (SY), Function (FX), and Entity (EN) tokens. Each entry is sourced from a separate file, indicated by a '--- FILE: ...' header."

echo "Starting content concatenation with file headers..."

# --- 1. Process token-decoder-framework-github ---
echo "Processing 'token-decoder-framework-github'..."
echo -e "$HEADER_FRAMEWORK\n" > "$FRAMEWORK_OUT"
find "$BASE_DIR/token-decoder-framework-github" -type f \
    -not -path "*/.git/*" \
    -not -path "*/.obsidian/*" \
    -not -path "*/.trash/*" \
    -not -path "*/.ignore/*" \
    -not -path "*/.depreciation/*" \
    -not -name "*.pdf" \
    -not -name "combined*" \
    -print0 | xargs -0 sh -c '
    for file_path do
        echo "--- FILE: ${file_path} ---"
        cat "${file_path}"
        echo
        echo "========================================"
        echo
    done
' _ >> "$FRAMEWORK_OUT"

# --- 2. Process Metrica ---
echo "Processing 'Metrica'..."
echo -e "$HEADER_METRICA\n" > "$METRICA_OUT"
find "$BASE_DIR/Metrica" -type f \
    -not -path "*/.git/*" \
    -not -path "*/.obsidian/*" \
    -not -path "*/.trash/*" \
    -print0 | xargs -0 sh -c '
    for file_path do
        echo "--- FILE: ${file_path} ---"
        cat "${file_path}"
        echo
        echo "========================================"
        echo
    done
' _ >> "$METRICA_OUT"

# --- 3. Process Tdm-library ---
echo "Processing 'Tdm-library'..."
echo -e "$HEADER_LIBRARY\n" > "$LIBRARY_OUT"
find "$BASE_DIR/Tdm-library" -type f \
    -not -path "*/.obsidian/*" \
    -print0 | xargs -0 sh -c '
    for file_path do
        echo "--- FILE: ${file_path} ---"
        cat "${file_path}"
        echo
        echo "========================================"
        echo
    done
' _ >> "$LIBRARY_OUT"

echo "----------------------------------------"
echo "Concatenation complete."
echo "Output files created in the current directory:"
echo "  - $FRAMEWORK_OUT"
echo "  - $METRICA_OUT"
echo "  - $LIBRARY_OUT"
