#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# Configuration
# -----------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROMPT_FILE="$SCRIPT_DIR/../prompts/high-confidence.md"
# File types considered as local context
CONTEXT_EXTENSIONS=("md" "txt" "json" "csv")

# Max file size in bytes (default: 200 KB)
MAX_FILE_SIZE=$((200 * 1024))

# Gemini CLI binary (override if needed)
GEMINI_BIN="${GEMINI_BIN:-gemini}"

# -----------------------------
# Validation
# -----------------------------

if [[ ! -f "$PROMPT_FILE" ]]; then
  echo "ERROR: Prompt file not found at $PROMPT_FILE" >&2
  exit 1
fi

if [[ $# -eq 0 ]]; then
  echo "USAGE: confidence <your question>" >&2
  exit 1
fi

# -----------------------------
# Collect context files
# -----------------------------

CONTEXT_PAYLOAD=""
USED_FILES=()

for ext in "${CONTEXT_EXTENSIONS[@]}"; do
  for file in *."$ext"; do
    [[ -e "$file" ]] || continue

    size=$(wc -c <"$file")
    if (( size > MAX_FILE_SIZE )); then
      continue
    fi

    CONTEXT_PAYLOAD+=$'\n'
    CONTEXT_PAYLOAD+="--- FILE: $file ---"$'\n'
    CONTEXT_PAYLOAD+="$(cat "$file")"$'
'
    USED_FILES+=("$file")
  done
done

# -----------------------------
# Build user prompt
# -----------------------------

USER_PROMPT=""

if [[ ${#USED_FILES[@]} -gt 0 ]]; then
  USER_PROMPT+="CONTEXT FILES (local, authoritative):"$'
'
  USER_PROMPT+="$CONTEXT_PAYLOAD"$'
'
else
  USER_PROMPT+="NO LOCAL CONTEXT FILES FOUND IN CURRENT DIRECTORY."$'

'
fi

USER_PROMPT+="QUESTION:"$'
'
USER_PROMPT+="$*"$'
'

# -----------------------------
# Execute Gemini
# -----------------------------

COMBINED_PROMPT="SYSTEM INSTRUCTIONS:"$'\n'
COMBINED_PROMPT+="$(cat "$PROMPT_FILE")"$'\n\n'
COMBINED_PROMPT+="USER REQUEST:"$'\n'
COMBINED_PROMPT+="$USER_PROMPT"

exec "$GEMINI_BIN" "$COMBINED_PROMPT"