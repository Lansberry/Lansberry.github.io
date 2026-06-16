#!/bin/bash
# Copy latest COMMAND-CENTER.html from VIBE CODING and push to GitHub Pages
SOURCE="/Users/nick.lansberry/Library/Mobile Documents/com~apple~CloudDocs/VIBE CODING/COMMAND-CENTER.html"
REPO="$(dirname "$0")"

cp "$SOURCE" "$REPO/index.html"
cd "$REPO"
git add index.html
git commit -m "Update tracker $(date '+%Y-%m-%d')"
git push
echo "✓ Live at https://lansberry.github.io"
