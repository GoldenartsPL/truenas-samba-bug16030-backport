#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
patch="patches/BUG16030-TrueNAS-25.10.7.patch"
expected="e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e"
if [[ ! -f "$patch" ]]; then echo "ERROR: Missing original patch: $patch" >&2; exit 2; fi
printf '%s  %s
' "$expected" "$patch" | sha256sum -c -
git apply --stat "$patch"
git apply --numstat "$patch"
echo "PASS: Original patch integrity and diff parsing checked (NOT source applicability)."
