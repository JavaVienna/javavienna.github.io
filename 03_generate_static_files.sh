#!/usr/bin/env bash
# 03 — generate the static site into target/roq/ (no database needed).
#
# Batch mode MUST be an environment variable (not -D) so it reaches the forked
# runner process; otherwise the runner starts a server and hangs instead of
# generating-and-exiting.
set -euo pipefail
cd "$(dirname "$0")"
# shellcheck source=_env.sh
source ./_env.sh

free_port "$ROQ_PORT"
# Build our OWN purged Tailwind CSS (public/css/tailwind.css); no cdn.tailwindcss.com.
./build_css.sh
echo "==> Generating static site (this reads committed data/*.json, not the DB) ..."
rm -rf target/roq
QUARKUS_ROQ_GENERATOR_BATCH=true QUARKUS_HTTP_PORT="$ROQ_PORT" \
  mvn -q -DskipTests package quarkus:run

count="$(find target/roq -name '*.html' 2>/dev/null | wc -l | tr -d ' ')"
echo "==> Done: $count HTML files in target/roq/"
echo "    Preview with: ./05_preview_static.sh"
