#!/usr/bin/env bash
# Build the full info.bdsa.io document root:
#   publish/          BDSA project site
#   publish/docs/     Digital Slide Archive documentation mirror
#
# Usage: scripts/build.sh [output-dir]
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
out="${1:-$root/publish}"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

rm -rf "$out"
mkdir -p "$out"

echo "==> Building BDSA project site"
python3 -m mkdocs build --strict -f "$root/mkdocs.yml" -d "$out"

echo "==> Fetching dsa-docs"
git clone --depth 1 https://github.com/Gutman-Lab/dsa-docs.git "$tmp/dsa-docs"

cat > "$tmp/dsa-docs/mkdocs.mirror.yml" <<'YAML'
INHERIT: mkdocs.yml
site_url: https://info.bdsa.io/docs/
YAML

echo "==> Building documentation mirror under /docs/"
(
  cd "$tmp/dsa-docs"
  python3 -m mkdocs build --strict -f mkdocs.mirror.yml -d "$out/docs"
)

echo "==> Checking documentation links"
python3 "$tmp/dsa-docs/scripts/check_links.py" "$out/docs" --base-path /docs

echo "==> Done: $out"
