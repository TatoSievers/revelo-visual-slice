# Playbook · Kit de abertura (primeira hora de toda tarefa)
Criado em 25/11, a partir das tarefas 1 e 2. Atualizado em 25/11 com o bloco de pré-produção.
Objetivo: chegar ao checkpoint "jogável de ponta a ponta" (Bloco A do playbook-plano-execucao) em ~6 prompts, sem gastar timer pensando no óbvio.
Prompts seguem o playbook-prompts-e-notas: inglês, um pedido por prompt, resultado visual, sem código, texto exato entre aspas. Trocar todos os [colchetes] antes de enviar.

## Prazos (confirmar no Project Guide de cada tarefa)
- 24h por tarefa. A Revelo às vezes oferece horas extras / "reclaim" de tarefa expirada: não é garantido e não é pago.
- Tudo conta dentro do prazo: build, QA, vídeo, rubrica, notas, "worked from" e o envio na plataforma. Documentação fora do prazo = tarefa perdida (tarefa 1).
- Se o prazo vai estourar, pedir extensão ANTES de expirar.
- E-mail "your task has just expired" = alarme: a tarefa não foi enviada na plataforma. Reclaim imediato (outra pessoa pode pegar). Foi o que aconteceu com a tarefa 2 em 24/11 14:37.

---

## 0. Antes de apertar play (timer PARADO)
- [ ] Screenity aberto (Tab area, câmera e microfone off). Gravar 10 s de uma aba com som e conferir o áudio no arquivo.
- [ ] Chrome com o console pronto (Cmd+Option+J).
- [ ] Pastas criadas: `Visual Slice/tarefaN/turns`, `/screenshots`, `/video`, `/references`.
- [ ] Este kit + playbook-plano-execucao abertos.
- [ ] Doc `tarefaN-[nome].md` criado a partir do modelo do playbook-plano-execucao.

## 1. Primeiros 10 min do timer
- [ ] Anotar o **Task ID** e a **duração máxima** mostrada no timer (em 25/11 o painel dizia 5h30).
- [ ] Colar no doc da tarefa: Original Request + GDD + **rubrica do formulário de envio**. Mandar para o Claude.
- [ ] Pausar o timer e entrar na pré-produção.

## 2. Pré-produção (timer PAUSADO, teto de 2–3h)
Regra da Revelo: planejamento externo é permitido; construção só no agente. **Aqui não se constrói nada jogável**: só decisões, textos, números e referências. O jogo bom feito pelo Claude fica para o portfólio, depois do envio.

Claude entrega, a partir do GDD + rubrica:
- [ ] **Escopo:** 5 frases (core loop · herói · objetivo · como o final mostra o objetivo · estilo), mínimo obrigatório, o que cortar se apertar, checklist de conformidade.
- [ ] **Bíblia de arte:** paleta de 5 cores (hex) aplicada a cenário/HUD/menus; silhueta do herói (1–2 detalhes marcantes); cenário e luz; logo e tipografia "de console".
- [ ] **Textos exatos:** título, itens de menu, How to Play (3 passos + controles), falas/legendas da intro e do final, telas de vitória e derrota. Uma vez na descoberta, uma no clímax.
- [ ] **Números:** vida/dano, tempo-alvo para perder (~1–2 min) e para vencer, duração da intro e do final, critério de nota (estrelas etc.).
- [ ] **Música e SFX:** BPM, tonalidade, instrumentos para menu, jogo, perigo e final; lista de SFX por ação.
- [ ] **Armadilhas do agente para evitar desde o prompt:** câmera "inteligente" (usar fixa/translúcida); gatilho por turno (usar regra "ao vivo"); menu com cara de site; tagline/subtítulo inventado; IA do inimigo deixada para o fim; derrota não testada.
- [ ] **Quadros de referência** (opcional): imagens geradas por IA a partir de briefings do Tato, para menu, HUD e final, sem obras de terceiros. Servem de alvo para os prompts. Antes de anexar ao agente, confirmar no Project Guide se é permitido.
- [ ] **Roteiro do vídeo** e rascunho do "worked from".
- [ ] **Fila de prompts:** P1–P6 preenchidos + plano dos turnos de IA, arte e FEEL.
- [ ] **Horário-limite:** tempo restante no timer − 55 min = congelar build.

→ Só despausar o timer com tudo acima pronto.

## 3. Fila de prompts de abertura (Bloco A)
Ordem pensada para ter derrota, vitória e o fluxo completo cedo. Cada prompt termina pedindo 5 testes.
Se o P1 vier pela metade no primeiro turno, dividir: P1a (mundo, herói, câmera) e P1b (vitória e derrota).

### P1 · Fase jogável (core loop)
"Build the first and only level of [game name]: [setting in one sentence, with time of day and mood]. The player controls [hero, one visual detail] with WASD and the arrow keys[, mouse to look]. The goal is [win condition, in player terms]. The player loses when [lose condition]; a loss should be possible within about two minutes of careless play. When the player wins, show a simple results screen with [score/rating from the GDD]; when the player loses, show a failure screen with a Retry option. The camera follows [the hero] smoothly from [above / over the shoulder]. Do not show any list of controls on screen. Then list 5 things I should test."

### P2 · Atalhos #dev
"Add hidden developer shortcuts that only work when I open the game with #dev at the end of the address: key 1 wins the level instantly, key 2 loses it instantly, key 3 plays the ending scene. Without #dev these keys do nothing and nothing about them appears on screen. Keep everything else as it is. Then list 5 things I should test."

### P3 · Fluxo de telas
"Create the full screen flow, all in plain on-screen text, no boxes or cards: a 'Click to start' screen with the logo "[GAME TITLE]", then a short intro, then the main menu, then the level, then the win or failure screen, then back to the menu. Main menu items, exactly: "Play", "How to Play", "Settings". Use the same logo "[GAME TITLE]" on the Click to start screen, the intro and the menu, with no tagline and no subtitle. No sound plays before the player clicks. Keep everything else as it is. Then list 5 things I should test."

### P4 · Esc (pausa e voltar)
"During the level, Esc pauses everything (movement, enemies, timers, sounds) and shows a pause menu with exactly: "Resume", "Restart", "Settings", "Main Menu". Esc again resumes. In every menu screen, Esc goes back to the previous screen. Restart must reset the level completely. Keep everything else as it is. Then list 5 things I should test."

### P5 · How to Play + Settings
"Add the How to Play screen: a short explanation in [3] steps of how to win, plus the controls, all fitting on a 1920×1080 screen without scrolling. Text, exactly: [colar]. Add the Settings screen with exactly two items: "Sound" (on/off) and "Play ending scene", which plays the ending scene and then returns to Settings. Both screens use exactly the same look and mechanism as the main menu, which works. Esc goes back. Keep everything else as it is. Then list 5 things I should test."

### P6 · Áudio base
"Add base audio: a calm music loop for the menu, a [mood] music loop for the level, and short sounds for [3 key actions from the GDD], win and loss. Music should be described as [tempo in BPM, key, instruments]. Nothing plays before 'Click to start'. The Sound setting mutes everything. Keep everything else as it is. Then list 5 things I should test."

→ CHECKPOINT do Bloco A: jogável de ponta a ponta, derrota em < 2 min, Esc ok, Settings com "Play ending scene". Congelar `buildNN-stable` e seguir para inimigo reativo (se o gênero pede) e direção de arte.

## 4. Testes padrão depois de cada prompt de abertura
- Console sem erro vermelho (copiar literal se houver → vira FIX).
- WASD e setas.
- Perder de propósito e ver a tela de falha → Retry.
- Esc em jogo e em cada menu.
- Nada de lista de controles fixa na tela.
- Print com o nome pelo timestamp.

## 5. Nota do turno 1 (molde)
"Asked for the base level only: [o que pedi]. Got [o que veio, específico]. [O que funciona, com detalhe concreto]. Not right yet: [o que está errado] (next: [o que vou pedir]). Turn took ~[N] min."

## 6. Paralelo nos últimos turnos (não deixar para o fim)
- Roteiro do vídeo (playbook-plano-execucao → Vídeo final) e Screenity pronto.
- Rubrica e "worked from" finalizados.
- Envio final na plataforma até a tela "Task Submitted" + print. Conferir o painel ("Tasks to be reviewed").
