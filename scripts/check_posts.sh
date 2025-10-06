#!/usr/bin/env bash
set -e

echo "== Layout lines in posts =="
grep -n '^[[:space:]]*layout:' _posts/*.md || true

echo
echo "== Posts missing global CSS include =="
missing=0
for f in _posts/*.md; do
  if ! grep -q 'site-overrides.css' "$f"; then
    echo "$f"
    missing=1
  fi
done
[ "$missing" -eq 0 ] && echo "All posts include global CSS ✅"
