#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
version="${GH_VERSION:-${1:-dev}}"
mkdir -p bin
GH_VERSION="$version" SOURCE_DATE_EPOCH="${SOURCE_DATE_EPOCH:-0}" go run script/build.go bin/gh
