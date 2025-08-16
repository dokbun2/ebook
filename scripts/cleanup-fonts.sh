#!/bin/bash

# Script to clean up unused font files
# This script identifies fonts that are not referenced in any HTML files

FONTS_DIR="../fonts"
BACKUP_DIR="../fonts_backup"

# Create backup directory
echo "Creating backup of fonts directory..."
if [ ! -d "$BACKUP_DIR" ]; then
    cp -r "$FONTS_DIR" "$BACKUP_DIR"
    echo "Backup created at $BACKUP_DIR"
fi

# Find all font files referenced in HTML files
echo "Finding referenced fonts..."
REFERENCED_FONTS=$(find .. -name "*.html" -type f -exec grep -h "url.*fonts/" {} \; | \
    sed 's/.*url.*fonts\///' | \
    sed "s/['\")].*//" | \
    sort -u)

# Count statistics
TOTAL_FONTS=$(ls "$FONTS_DIR" | wc -l)
REFERENCED_COUNT=$(echo "$REFERENCED_FONTS" | wc -l)

echo "Total font files: $TOTAL_FONTS"
echo "Referenced font files: $REFERENCED_COUNT"
echo "Unused font files: $((TOTAL_FONTS - REFERENCED_COUNT))"

# List unused fonts
echo -e "\nUnused fonts that can be removed:"
for font in "$FONTS_DIR"/*; do
    filename=$(basename "$font")
    if ! echo "$REFERENCED_FONTS" | grep -q "^$filename$"; then
        echo "  - $filename"
    fi
done

echo -e "\nTo remove unused fonts, run: ./cleanup-fonts.sh --remove"

# Remove unused fonts if --remove flag is passed
if [ "$1" == "--remove" ]; then
    echo -e "\nRemoving unused fonts..."
    REMOVED_COUNT=0
    for font in "$FONTS_DIR"/*; do
        filename=$(basename "$font")
        if ! echo "$REFERENCED_FONTS" | grep -q "^$filename$"; then
            rm "$font"
            REMOVED_COUNT=$((REMOVED_COUNT + 1))
        fi
    done
    echo "Removed $REMOVED_COUNT unused font files"
    echo "Remaining fonts: $(ls "$FONTS_DIR" | wc -l)"
fi