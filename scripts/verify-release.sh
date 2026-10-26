#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
patch="patches/BUG16030-TrueNAS-25.10.7.patch"
expected="eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070"
if [[ ! -f "$patch" ]]; then echo "ERROR: Missing published patch: $patch" >&2; exit 2; fi
printf '%s  %s
' "$expected" "$patch" | sha256sum -c -
git apply --stat "$patch"
git apply --numstat "$patch"
echo "PASS: Published patch integrity and diff parsing checked (NOT source applicability)."
