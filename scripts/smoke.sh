#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
bin="${1:-bin/gh}"
test -x "$bin"
"$bin" --version
"$bin" help >/dev/null
