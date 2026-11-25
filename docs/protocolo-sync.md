# Protocolo de sincronização e retomada (Git ⇄ harness)

## Por que existe
O trabalho troca de LLM por custo (Claude, ChatGPT, Gemini, DeepSeek, Qwen, Ollama). Cada harness tem a própria memória, e nenhuma enxerga a outra. **O Git é a memória comum.** `STATE.md` é o ponteiro para o ponto mais recente.

## Regra de ouro
> O ponto mais recente vence. Se ele estiver fora do Git, a primeira tarefa é trazê-lo para o Git.

## Retomada (início de toda conversa)
```
git pull --rebase                       # ou ./scripts/session-start.sh
ler STATE.md (updated_at, tarefa, próximo passo)
comparar com o harness (memória, docs do Project, conversa, anexos)
  ├─ Git mais recente ou igual → seguir pelo STATE.md
  ├─ harness mais recente      → atualizar docs + STATE.md → commit "sync: harness → git" → seguir
  └─ incerto                   → perguntar ao Tato em 1 frase
responder: "Retomando de [ponto, data, fonte]. Próximo passo: [X]."
```

## Salvamento (gatilhos)
3 turnos · ~30 min · build congelado · decisão · fim de sessão · antes de algo irreversível.
Arquivos: `STATE.md` → doc da tarefa → `SESSION-LOG.md` → playbook (se for lição geral).
Comando: `./scripts/sync.sh "tipo: resumo"`.

## Harness sem shell
O LLM entrega um bloco SYNC:
```
### SYNC · 2026-11-26T10:40-03:00 · ChatGPT
Arquivos alterados: STATE.md, docs/tarefa2-breakline-squad.md
[conteúdo completo de cada arquivo, ou diff]
Comando: ./scripts/sync.sh "turn: redo turno 3 · R3 ok"
```
O Tato cola os arquivos e roda o comando.

## Projeto do claude.ai
Os docs em `claude/*.md` do Project são espelho de `docs/`. Ao voltar para o Claude depois de outro LLM: puxar do Git e atualizar os docs do Project (o Git vence se for mais recente). Ao sair do Claude: o Claude grava no Git (ou entrega o bloco SYNC).

## Conflitos
- Dois LLMs editaram o mesmo doc → manter as duas versões das linhas novas do turn log/decisões (ordem por data), nunca apagar decisão.
- `git pull` com conflito e LLM sem shell → o Tato manda o arquivo com marcadores `<<<<<<<` e o LLM devolve a versão resolvida.

## Privacidade
Repositório **privado**. Contém Task IDs, valores de pagamento e regras internas da Revelo. Não publicar. Não subir vídeos, PDFs do revisor nem material com copyright (ver `.gitignore`).
