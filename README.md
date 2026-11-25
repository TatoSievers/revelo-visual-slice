# Revelo · Visual Slice — base de conhecimento

Processo, playbooks e estado das tarefas "Game Design – Visual Slice" da Revelo, feito para ser continuado por **qualquer LLM**.

- **LLM chegando agora?** Leia [`AGENTS.md`](AGENTS.md) e depois [`STATE.md`](STATE.md).
- **Humano?** Comece em [`docs/00-LEIA-PRIMEIRO.md`](docs/00-LEIA-PRIMEIRO.md).

## Uso diário
```bash
./scripts/session-start.sh          # início de sessão: pull + mostra o STATE
./scripts/sync.sh "turn: turno 4"   # salvar: add + commit + push
./scripts/autosave.sh 20 &          # opcional: commit automático a cada 20 min
```

## Subir para o GitHub (primeira vez)
```bash
cd revelo-visual-slice
git init -b main && git add . && git commit -m "docs: base inicial"
gh repo create revelo-visual-slice --private --source=. --push
# sem gh: crie o repo PRIVADO no site e rode
# git remote add origin git@github.com:SEU_USUARIO/revelo-visual-slice.git && git push -u origin main
```
⚠️ Mantenha o repositório **privado** (Task IDs, pagamento, regras internas da Revelo).
