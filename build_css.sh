#!/usr/bin/env bash
# Build the site's OWN purged Tailwind CSS into public/css/tailwind.css.
#
# Replaces the cdn.tailwindcss.com dev build (a remote third-party request on
# every page view, and a dev-only build). Uses the pinned Tailwind standalone
# CLI via npx; config in tailwind.config.js scans templates/ + content/ so only
# the utility classes the site uses survive purging. No external resource ends
# up in the output — this CSS is self-contained.
#
# Run before ./03_generate_static_files.sh (that script calls this).
set -euo pipefail
cd "$(dirname "$0")"

TAILWIND_VERSION="3.4.17"
echo "==> Building Tailwind CSS (v${TAILWIND_VERSION}, purged) -> public/css/tailwind.css ..."
npx -y "tailwindcss@${TAILWIND_VERSION}" \
  --config ./tailwind.config.js \
  --input ./src/main/css/tailwind.src.css \
  --output ./public/css/tailwind.css \
  --minify

echo "==> Done: $(wc -c < public/css/tailwind.css | tr -d ' ') bytes"
