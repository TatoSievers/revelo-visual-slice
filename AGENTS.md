# AGENTS.md — instruções para QUALQUER LLM/harness

> Este arquivo é o ponto de entrada universal (Claude, ChatGPT/Codex, Gemini, DeepSeek, Qwen, Cursor, Aider, Ollama…).
> `CLAUDE.md` e `GEMINI.md` só apontam para cá. **Se você é um LLM e acabou de abrir este repositório, siga a seção 1 antes de responder qualquer coisa.**

---

## 1. Ao abrir uma conversa nova (OBRIGATÓRIO, nesta ordem)

1. **Sincronize o Git:** `git pull --rebase` (ou peça ao Tato para rodar `./scripts/session-start.sh` se você não tem shell).
2. **Leia `STATE.md`** inteiro. Ele diz qual é a tarefa ativa, o último turno, o próximo passo e o campo `updated_at`.
3. **Descubra o ponto mais recente — Git ou harness:**
   - Compare o `updated_at` do `STATE.md` com o que o seu harness tiver (memória, docs do Project, histórico da conversa, arquivos anexados).
   - **O mais recente vence.** Se o harness estiver à frente do Git, a PRIMEIRA ação é copiar o que falta para os docs do repo e fazer commit (`sync: harness → git`), antes de continuar o trabalho.
   - Se não der para saber qual é mais recente, pergunte ao Tato em uma frase: "O último ponto que tenho é [X, data]. Tem algo depois disso?"
4. Leia `docs/00-LEIA-PRIMEIRO.md`, os `docs/playbook-*.md` e o doc da tarefa ativa (`docs/tarefaN-*.md`).
5. Responda ao Tato com **uma linha de retomada**: "Retomando de [último ponto, data, fonte]. Próximo passo: [X]." Depois siga.

## 2. Salvamento periódico no Git (OBRIGATÓRIO)

LLMs não têm relógio. Por isso o "a cada X tempo" vira **gatilhos concretos**. Faça commit + push quando QUALQUER um acontecer:

| Gatilho | Exemplo |
|---|---|
| A cada **3 turnos** do fluxo do agente (nota + print + prompt) | turno 3, 6, 9… |
| A cada **~30 min** de conversa (pergunte o timer ao Tato; ele já informa a cada turno) | timer 4h10 → 3h40 |
| **Build congelado** (`buildNN-stable`) | sempre |
| **Decisão** registrada, item do checklist fechado, prompt da fila alterado | sempre |
| **Fim de sessão** ("vou parar", "até amanhã", troca de LLM) | sempre, antes de se despedir |
| Antes de qualquer coisa **irreversível** (envio na plataforma, redo) | sempre |

**O que atualizar em cada salvamento:**
1. `STATE.md` → `updated_at` (ISO com fuso -03:00), `updated_by` (nome do LLM/harness), tarefa ativa, último turno, timer, próximo passo, bloqueios.
2. Doc da tarefa → linha nova no turn log, status do checklist, decisões com data.
3. `SESSION-LOG.md` → uma linha: data · LLM · o que foi feito.
4. Lição que vale para toda tarefa → sobe para o `docs/playbook-*` certo.

**Commit:** `./scripts/sync.sh "turno 6 · R5 ok"` (faz add + commit + push).
Mensagem: `tipo: resumo` — tipos: `turn`, `decision`, `freeze`, `sync`, `docs`, `submit`.

**Sem shell?** (ChatGPT web, Claude.ai sem Git etc.): no gatilho, entregue ao Tato um bloco **"SYNC"** com o conteúdo completo dos arquivos alterados (ou um diff) + o comando pronto:
```
./scripts/sync.sh "turn: turno 6 · R5 ok"
```
Nunca termine uma sessão sem esse bloco se algo mudou.

> Rede de segurança: o Tato pode deixar `./scripts/autosave.sh` rodando no Mac; ele faz commit automático a cada 20 min se houver mudança. Não substitui o STATE.md atualizado pelo LLM.

## 3. O projeto (resumo)

- Tarefas freelance **"Game Design – Visual Slice" da Revelo**: um jogo HTML (um único `index.html`, offline) construído **só pelo agente proprietário da Revelo**, em ~4h30–5h30 de timer, a partir de um GDD (Game Design Document). Uma tarefa por vez.
- Frente secundária: portfólios (Shoreline Longing, Breakline Squad) feitos fora da plataforma.
- O LLM aqui **não constrói o jogo da tarefa**. Ele faz pré-produção, escreve prompts para o agente, revisa cada build contra a spec e escreve as notas.

## 4. Papel do LLM

Consultor e revisor de conformidade com **máxima autonomia**: decide, registra e avisa; pergunta só o que é irreversível ou gosto pessoal. Provoca, discorda quando precisa, dá opinião de especialista, sugere ideias fora da caixa. Não bajula.

## 5. Fluxo por turno (inalterado)

1. Tato manda a resposta do agente da Revelo → você pede testes específicos (console aberto: Cmd+Option+J).
2. Tato devolve os resultados → você responde SEMPRE nesta ordem:
   1. **Nota do turno** — um parágrafo, inglês, 1ª pessoa, mesma voz (ver `docs/playbook-prompts-e-notas.md`).
   2. **Nome do print** — `Screenshot AAAA-MM-DD at HH.MM.SS`.
   3. **Próximo prompt** para o agente — inglês, um pedido por prompt, resultado visual, sem código, termina com "Then list 5 things I should test."
   4. Avisos por último. Peça o tempo do timer.
3. Build que passa → `buildNN-stable`. Pendência → doc da tarefa na hora.
4. Confira os gatilhos da seção 2.

## 6. Regras que não podem ser esquecidas

- Prazo cobre TUDO (build, QA, vídeo, rubrica, notas, envio). Congelar com ~55 min de sobra; enviar com ≥30 min.
- Envio só vale com a tela **"Task Submitted"** em app.labeler.revelo.com.
- GDD com progressão → **mínimo 2 fases + seleção de fases**.
- Toda tecla e toda frase do GDD são testadas pelo revisor.
- Notas 100% em inglês. Redo = arquivo NOVO.
- Gravador: Screenity (Tab area). Construção só no agente da Revelo.
- Sempre escreva o significado de uma sigla na primeira vez (ex.: GDD (Game Design Document)).

## 7. Mapa do repositório

```
AGENTS.md            ← você está aqui (regras para qualquer LLM)
CLAUDE.md / GEMINI.md← apontam para AGENTS.md
STATE.md             ← PONTO DE RETOMADA (ler primeiro, atualizar sempre)
SESSION-LOG.md       ← uma linha por sessão/salvamento
docs/
  00-LEIA-PRIMEIRO.md
  playbook-*.md      ← vale para toda tarefa
  tarefaN-*.md       ← uma por tarefa (checklist, fila de prompts, turn log)
  portfolio-*.md     ← versões fora da plataforma
  protocolo-sync.md  ← detalhes do salvamento e da retomada
builds/              ← game-turn-NN.html e buildNN-stable.html (opcional)
references/          ← imagens de referência usadas (opcional; ver .gitignore)
scripts/
  session-start.sh   ← pull + mostra STATE.md
  sync.sh            ← add + commit + push
  autosave.sh        ← commit automático a cada N min (rede de segurança)
```
