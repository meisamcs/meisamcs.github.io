#!/usr/bin/env bash
set -euo pipefail

# 1) Switch any 'layout: post' or 'layout: single' to 'layout: default'
for f in _posts/*.md; do
  if [ -f "$f" ]; then
    if grep -Eq '^[[:space:]]*layout:[[:space:]]*(post|single)\b' "$f"; then
      sed -i '' -E 's/^[[:space:]]*layout:[[:space:]]*(post|single)\b/layout: default/' "$f"
    fi
  fi
done

# 2) Ensure global CSS link is present (insert right after front matter end)
for f in _posts/*.md; do
  if [ -f "$f" ]; then
    if ! grep -q 'site-overrides.css' "$f"; then
      awk 'BEGIN{fm=0}
           /^---[ \t]*$/ {fm++; print; if(fm==2){print "<link rel=\"stylesheet\" href=\"{{ '\''/assets/css/site-overrides.css?v=5'\'' | relative_url }}\">"; next}}
           {print}' "$f" > "$f.tmp" && mv "$f.tmp" "$f"
    fi
  fi
done

# 3) Normalize any mid-word breaking if it slipped into posts
for f in _posts/*.md; do
  if [ -f "$f" ]; then
    sed -i '' -e 's/overflow-wrap:anywhere/overflow-wrap:normal;word-break:normal;hyphens:auto/g' "$f" || true
  fi
done
