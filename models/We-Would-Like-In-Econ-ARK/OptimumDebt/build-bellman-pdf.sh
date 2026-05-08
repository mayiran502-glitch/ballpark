#!/usr/bin/env bash
# Regenerate OptimumDebt.pdf from bellman-excerpt.md (Formalized asset layer).
# Requires: pandoc on PATH, plus xelatex (TeX Live).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"
exec pandoc bellman-excerpt.md -o OptimumDebt.pdf \
  --pdf-engine=xelatex \
  -H OptimumDebt_pdf_header.tex \
  -V geometry:margin=1in \
  -V fontsize=11pt \
  --standalone \
  -f markdown+tex_math_double_backslash
