#!/bin/bash

# Define output files
OUTPUT_TXT="tDM_merged_contacts_5.txt"
OUTPUT_MD="tDM_merged_contacts_5.md"

# The find command will locate all files while excluding specified directories and the output files.
# xargs -0 cat will then concatenate the content of the found files.
# The output is redirected to the .txt file.
find . -type f \
    -not -path "./.git/*" \
    -not -path "./.obsidian/*" \
    -not -path "./.trash/*" \
    -not -path "./.depcreciation/*" \
    -not -path "./.depreciation/*" \
    -not -path "./Ignore/*" \
    -not -name "$OUTPUT_TXT" \
    -not -name "$OUTPUT_MD" \
    -print0 | xargs -0 cat > "$OUTPUT_TXT"

# Create the markdown copy
cp "$OUTPUT_TXT" "$OUTPUT_MD"

echo "Script finished. Created $OUTPUT_TXT and $OUTPUT_MD"
