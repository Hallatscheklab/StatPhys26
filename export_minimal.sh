#!/usr/bin/env bash
set -euo pipefail

# Run this from the Jupyter Book repo root.
OUT_DIR="_export_minimal"

# List of TOC "file:" refs (root + chapters)
TOC_FILES=(
  "intro-files/intro"
  "intro-files/course-Info-211-2026"
  "intro-files/introduction"
  "Probability-Entropy/Coin-flipping"
  "Probability-Entropy/Shannon-entropy-2"
  "ensemble-theory-1/Ensemble-Theory-1"
  "ensemble-theory-1/Ensemble-Theory-canonical"
  "ensemble-theory-1/L5-ensemble-theory-II"
  "thermalization-simulation"
  "Gibbs_Distribution"
  "paramagnet-FLC.ipynb"
  "Spontaneous-Reactions"
  "Crooks"
)

# Clean output
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

# Always include these if they exist
for f in "_toc.yml" "_config.yml"; do
  if [[ -f "$f" ]]; then
    mkdir -p "$OUT_DIR/$(dirname "$f")"
    cp -p "$f" "$OUT_DIR/$f"
  fi
done

copy_one() {
  local ref="$1"

  # If the ref already includes an extension, try as-is first.
  local candidates=("$ref" "${ref}.md" "${ref}.ipynb" "${ref}.rst")

  for cand in "${candidates[@]}"; do
    if [[ -f "$cand" ]]; then
      mkdir -p "$OUT_DIR/$(dirname "$cand")"
      cp -p "$cand" "$OUT_DIR/$cand"
      echo "OK  $cand"
      return 0
    fi
  done

  echo "WARN missing: $ref (tried: $ref, $ref.md, $ref.ipynb, $ref.rst)" >&2
  return 0
}

for ref in "${TOC_FILES[@]}"; do
  copy_one "$ref"
done

echo
echo "Done. Exported minimal set to: $OUT_DIR"
echo "To zip it:"
echo "  (cd \"$OUT_DIR\" && zip -r ../export_minimal.zip .)"