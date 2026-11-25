# Playbook · Como rodar uma tarefa (plano + regras do post-mortem + QA + envio)
Consolidado em 23/11 a partir do execution-plan v3 e dos post-mortems das rodadas 1 e 2 do Shoreline Longing. Atualizado em 24/11 com a tarefa 2 (Breakline Squad). Atualizado em 25/11: confirmação de envio + gravador.

## Gravador de tela (DEFINIDO 25/11)
- **Usar o Screenity** (extensão do Chrome), modo **Tab area**, câmera e microfone desligados.
- Não sugerir QuickTime (não funciona), OBS (o Tato não consegue usar) nem Loom (tem limitação).
- Antes de cada tarefa: gravar 10 s de uma aba tocando som e conferir se o áudio da aba saiu no arquivo.

## Relógio, pausa e envio (CONFIRMADO 23/11)
- **O relógio cobre TODO o processo: builds, QA, vídeo, rubrica, "worked from" e envio.** Não é só o tempo de build.
- Consequência confirmada: a tarefa 1 (Shoreline) foi perdida por isso: o build fechou e o envio ficou para depois, fora do tempo.
- **O timer pode ser pausável** (tarefa 2): nesse caso, contar SÓ pelo timer, nunca pelo horário de parede, e perguntar o tempo restante a cada turno.
- Duração máxima mostrada no painel em 25/11: **5h30** (antes trabalhávamos com 4h30). Confirmar no timer no início de cada tarefa.
- Regra: **congelar o build final com ~55 min de sobra** no timer (vídeo com derrota + edição + rubrica de 15 itens levaram ~50 min na tarefa 2).
- Preparar o vídeo (roteiro, gravador testado), a rubrica e o "worked from" EM PARALELO aos últimos turnos.
- Enviar com ≥30 min de sobra (margem para upload/erro de formulário).
- Nunca deixar o envio para outro dia.

## Reabrir o congelamento (tarefa 2: reaberto 3x)
Só reabrir se TODAS forem verdade:
1. O problema quebra um item da rubrica ou do vídeo obrigatório (ex.: derrota longa demais para gravar; inconsistência visível na intro).
2. A mudança é só número, texto ou reaproveitamento de sistema que já funciona.
3. Sobra no timer > tempo do turno (~10 min) + 55 min.
Antes: salvar `buildNN-stable`. Se o turno falhar em qualquer teste → volta ao stable, sem nova tentativa.

## As 12 regras (valem para toda tarefa)
1. Ler o briefing E A RUBRICA DO FORMULÁRIO DE ENVIO e fixar o MÍNIMO obrigatório antes de qualquer ideia: uma fase impecável (a Revelo pede UMA fase; final via Settings). **⚠️ Ver correção de 25/11 em playbook-regras-e-revisor → Escopo: se o GDD citar progressão, mínimo 2 fases + seleção.**
2. Interface pelo caminho confiável (texto/DOM na tela). Diegético só depois, e cortar após 2 falhas.
3. Regra das 2 falhas: o mesmo problema falhou 2x → trocar de abordagem ou cortar, sem discussão. (Funcionou 2x na tarefa 2: BPM e câmera.)
4. Congelar build estável a cada marco (download + `buildNN-stable`) e só entregar build testado.
5. Testar o gravador (Screenity, Tab area) com áudio da aba ANTES da tarefa.
6. Build final congelado com ~55 min de sobra no timer.
7. `#dev` desde o início (atalhos para completar, FALHAR, ver o final). Testar o atalho de falha cedo.
8. Ler o Project Guide de cada tarefa.
9. Console aberto em todo teste (Cmd+Option+J); erro vermelho vira o próximo FIX, citado literalmente.
10. Quando uma tela funciona, pedir que as outras usem "exatamente o mesmo mecanismo" (resolveu 5 menus num turno na tarefa 2).
11. Uma tela/um sistema por turno; exceção: restyle que reaproveita um sistema já aprovado.
12. Texto do jogo aparece 1x na descoberta e 1x no clímax; sem listas no HUD.

## Lições de processo
- O agente não tem navegador: o Tato é o único QA real. "Checks pass"/"simulação passou" = matemática, não tela.
- Turnos do agente levam ~5–30 min + ~5–10 min de teste. Mín. 20 turnos exigidos.
- Pedidos de arte grandes trazem regressão. Cor é seguro; geometria nova é risco.
- Sempre colar o texto exato no prompt (nomes, falas), senão o agente inventa. Pedir "no tagline / no subtitle".
- Formato FIX + "list 5 things to test" deu os turnos mais limpos.
- Testar mecânicas jogando de verdade cedo: exploits e balanceamento só aparecem jogando.
- **Testar a DERROTA no Bloco A** (o vídeo exige "a level lost"); dano/vida mal calibrados só apareceram na hora de gravar.
- **Jogo de stealth/IA: reservar um turno de reatividade do inimigo antes do polimento visual.** Adiar a IA deixou o "NPC burro" como ponto mais fraco.
- Câmera procedural "inteligente" falha: preferir câmera fixa em cutscene e obstáculos translúcidos em gameplay.
- Gatilhos de estado (música de perigo etc.): regra "ao vivo" (o que está na tela agora) > regra por turno.
- Controles que o How to Play promete têm que funcionar em todas as telas (ex.: Esc = Back).

## Pré-voo (antes do play)
- [ ] Docs abertos; Screenity testado com áudio da aba.
- [ ] GDD + Original Request + **rubrica do formulário de envio** colados no `tarefaN-*`. Task ID anotado.
- [ ] 5 frases: core loop · herói · objetivo · como o final mostra o objetivo cumprido · estilo visual.
- [ ] Mínimo obrigatório listado e checklist de conformidade montado a partir da spec/rubrica.
- [ ] Corte definido: o que fica de fora se o tempo apertar.
- [ ] Prompts 1 e 2 escritos.
- [ ] Horário-limite: timer − 55 min = congelar build.

## Blocos (ajustar ao GDD)
### Bloco A: fundação jogável completa (primeira metade do tempo)
1. Core loop do GDD com câmera que segue; vitória E DERROTA testadas; setas E WASD; `#dev` (vencer/perder/final).
2. Fluxo completo de telas (DOM): "Click to start" → intro → menu → jogo → vitória/derrota → final → menu. Esc pausa (Resume / Restart / Settings / Menu) e Esc = Back nos menus.
3. How to Play curto + fase ensina jogando. Nenhuma lista de controles fixa.
4. Áudio base + desbloqueio no "Click to start".
5. Inimigo reativo (se o gênero depende dele).
6. Settings: som, "Play ending scene".
→ CHECKPOINT: jogável de ponta a ponta, derrota em < 2 min possível? Congelar build.

### Bloco B: direção de arte
7. Paleta aplicada a tudo + luz das fontes da cena + materiais.
8. Herói e objetos legíveis; história visível no cenário.
9. Interface: logo, fonte de console, menu = cena ao vivo + logo + itens de texto (sem card centralizado); HUD com um foco.
10. Intro encenada + final cinematográfico.

### Bloco C: vida
11. Animação/VFX/câmera reagindo.
12. SFX completos + música (pedida como música: BPM, tonalidade, instrumentos).

### Bloco D: acabamento
13. Polimento do que mais destoa.
14. FIX final → congelar.

## QA antes do vídeo (‼ = reprova sozinho)
- [ ] ‼ Esc pausa e congela tudo
- [ ] ‼ Settings tem "Play ending scene"
- [ ] ‼ Nenhuma lista de controles no menu/HUD (nem teclas em botões)
- [ ] ‼ Nenhum item da rubrica ficaria como "falho"
- [ ] Título = logo + itens, sem subtítulo/tagline; mesmo logo no Click to start, intro e menu
- [ ] How to Play cabe em 1920×1080 sem rolar; Esc volta
- [ ] Setas e WASD funcionam
- [ ] Nada fora da tela em 1280×720 e 1920×1080
- [ ] Restart limpa o estado
- [ ] Áudio: nada antes do clique; música coerente entre telas
- [ ] Console sem erro vermelho
- [ ] Derrota alcançável em ~1–2 min; vitória alcançável jogando normal

## Vídeo final (Screenity, Tab area, COM áudio da aba; cortar esperas na edição)
1. Click to start → intro
2. Menu (hover) → How to Play → Settings
3. Derrota → tela de falha → Retry
4. Partida até a vitória (mostrar inimigo reagindo) → Results
5. Final completo → menu
Conferir o áudio antes de subir. Em redo: arquivo NOVO e mudar SÓ o que foi pedido.

## Envio (dentro do relógio)
- [ ] Build congelado + QA acima
- [ ] Vídeo com áudio (intro, vitória, derrota, final)
- [ ] Rubrica: todos Pass, comentários em voz natural (1ª pessoa, fatos do vídeo, sem adjetivo vazio)
- [ ] Notas dos turnos (≥20) + prints nomeados pelo timestamp
- [ ] References: uma linha por referência + zip só com o que foi usado (sem __MACOSX)
- [ ] **Envio final na plataforma (app.labeler.revelo.com) até aparecer a tela "Task Submitted".** O formulário sozinho NÃO fecha a tarefa (tarefa 2: formulário em 24/11, envio real só em 25/11). Não há e-mail de confirmação de envio; o sinal é a tela + o painel com "Tasks to be reviewed". Print da tela "Task Submitted".
- Depois do envio: limite de 1 tarefa em revisão por vez; a próxima só libera após o resultado (e-mail "review limit").

## Modelo de brief (copiar para `tarefaN-[nome].md`)
```
# Tarefa N: [Nome] ([2D/3D], [gênero])
## Status (inclui horário-limite para congelar o build)
## Original request (colar)
## GDD (colar ou resumir fiel)
## Rubrica do formulário de envio (colar)
## Core loop (passos do GDD, na ordem em que será avaliado)
## Mínimo obrigatório (telas + passos) / Fora de escopo
## 5 frases: core loop · herói · objetivo · final · estilo em 1 frase
## Checklist de conformidade (da spec + rubrica desta tarefa)
## Decisões (com data)
## Fila de prompts prontos
## Turn log
| # | Pedido | Resultado | Problemas vistos | Build | Print |
## Envio (checklist)
## Post-mortem
```
