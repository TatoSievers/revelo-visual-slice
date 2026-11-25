#!/usr/bin/env bash
# Início de sessão: puxa o Git e mostra o ponto de retomada.
set -e
cd "$(dirname "$0")/.."
git pull --rebase --autostash || echo "⚠️  pull falhou — resolva antes de continuar."
echo "================ STATE.md ================"
cat STATE.md
echo "================ últimos commits ========="
git log --oneline -5
