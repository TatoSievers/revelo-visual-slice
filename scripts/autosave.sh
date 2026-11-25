#!/usr/bin/env bash
# Rede de segurança: commit automático a cada N minutos (padrão 20) se houver mudança.
# Uso: ./scripts/autosave.sh 20      (Ctrl+C para parar)
cd "$(dirname "$0")/.."
MIN="${1:-20}"
echo "autosave a cada $MIN min — Ctrl+C para parar"
while true; do
  sleep $((MIN*60))
  git add -A
  if ! git diff --cached --quiet; then
    git commit -m "autosave: $(date '+%Y-%m-%d %H:%M')" && git pull --rebase --autostash && git push \
      && echo "autosave $(date '+%H:%M') ok"
  fi
done
