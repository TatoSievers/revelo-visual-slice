#!/usr/bin/env bash
# Salvar: ./scripts/sync.sh "tipo: resumo"
set -e
cd "$(dirname "$0")/.."
MSG="${1:-sync: $(date '+%Y-%m-%d %H:%M')}"
git add -A
if git diff --cached --quiet; then echo "Nada para salvar."; exit 0; fi
git commit -m "$MSG"
git pull --rebase --autostash
git push
echo "✅ salvo: $MSG"
