#!/bin/bash
# Post-validation for vocab-analyst outputs
# Catches unexpected web_search usage or incomplete cards

LOG_FILE="/tmp/vocab-analyst-validation.log"
VOCAB_DIR="glean/20_Vocabulary"

# Ensure log file exists
touch "$LOG_FILE"
echo "[$(date)] Starting validation..." >> "$LOG_FILE"

# Check if directory exists
if [ ! -d "$VOCAB_DIR" ]; then
    echo "❌ ERROR: Directory $VOCAB_DIR not found" | tee -a "$LOG_FILE"
    exit 1
fi

# Check for web_search traces in recent outputs
VIOLATIONS=$(grep -r "web_search\|web_fetch\|http://" "$VOCAB_DIR" 2>/dev/null | grep "status: done")
if [ ! -z "$VIOLATIONS" ]; then
    echo "❌ VIOLATION: Web tools or external links detected in processed files:" | tee -a "$LOG_FILE"
    echo "$VIOLATIONS" | cut -d: -f1 | sort | uniq | tee -a "$LOG_FILE"
    echo "Please review and reprocess these files using internal knowledge only."
    exit 1
fi

# Check for incomplete files (missing cards)
echo "Checking card counts..." >> "$LOG_FILE"
for file in "$VOCAB_DIR"/*.md; do
    if [ -f "$file" ] && grep -q "status: done" "$file"; then
        card_count=$(grep -c "^####.*Card [0-9]" "$file")
        if [ "$card_count" -lt 12 ]; then
            echo "⚠️  WARNING: $file has only $card_count/12 cards" | tee -a "$LOG_FILE"
        fi
    fi
done

echo "[$(date)] Validation complete" >> "$LOG_FILE"
echo "✅ Validation finished. Check /tmp/vocab-analyst-validation.log for details."
exit 0
