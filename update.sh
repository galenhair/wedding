#!/bin/bash
# Redeploy the Amanda-facing wedding page. Edit index.html, then run this.
# GitHub Pages auto-rebuilds on push — live at https://galenhair.github.io/wedding/
set -e
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Update wedding page}" || { echo "Nothing to commit."; exit 0; }
git push origin main
echo "Pushed. Live in ~30-60s at https://galenhair.github.io/wedding/"
