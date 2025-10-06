#!/usr/bin/env bash
set -euo pipefail

for f in _posts/*.md; do
  # ensure Cayman's layout
  if grep -Eq '^[[:space:]]*layout:[[:space:]]*(post|single)\b' "$f"; then
    sed -i '' -E 's/^[[:space:]]*layout:[[:space:]]*(post|single)\b/layout: default/' "$f"
  fi

  # insert CSS link after front matter if missing
  if ! grep -q 'site-overrides.css' "$f"; then
    awk 'BEGIN{fm=0}
         /^---[ \t]*$/ {fm++; print; if(fm==2){print "<link rel=\"stylesheet\" href=\"{{ '\''/assets/css/site-overrides.css?v=5'\'' | relative_url }}\">"; next}}
         {print}' "$f" > "$f.tmp" && mv "$f.tmp" "$f"
  fi
done
