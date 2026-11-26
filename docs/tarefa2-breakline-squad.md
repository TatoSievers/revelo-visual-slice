# Tarefa 2: Breakline Squad (3D, Strategy)

## Status (atualizado 25/11 14:55 — REDO)
- **REPROVADA PARA REDO em 25/11** (Task 35e58678-ebc7-40df-9644-35496d5d1307 no e-mail de feedback; ID anterior 8367298f…).
- **Prazo: 24 horas úteis (sem fim de semana) para INICIAR o redo.** Depois disso = abandonada, sem pagamento. O Tato retoma no fim do dia 25/11 ou na manhã de 26/11.
- Pagamento: tempo do original + redo, limitado ao máximo original. Se não refizer, o original também não é pago.
- Base do redo: `build33`. **Entregar arquivo NOVO** (redo com o mesmo arquivo = reprovação automática).
- Timer do redo: **5h29m no início; timer só corre com o agente (5h19m às 10:44 de 26/11). Contar pelo timer, não pelo relógio.**
- **Referências: as 5 PRONTAS (25/11 14:54).** 4 geradas no GPT pelo Tato + mapa da fase 2 feito pelo Claude.

## REDO — o que o revisor pediu (19 itens)
### Manter (o revisor elogiou; re-testar a cada turno)
Intro encenada · final do amanhecer · cones visíveis bloqueados pelos contêineres · reaction shot mais fraco que o tiro do turno inimigo · inimigos caçando a última posição conhecida · música mudando entre turnos · layout do HUD em jogo · anel e barras de stamina · Equipment antes de cada tentativa · Retry passando por Equipment · Esc pausando tudo.

### Checklist (Obrigatório = O · Sugestão = S)
| # | Item | Tipo | Prompt | Status |
|---|------|------|--------|--------|
| 1 | A/D invertidos (strafe) | O | R1 | ok (26/11) |
| 2 | E e G sem custo de stamina; mostrar custo na barra | O | R2, R2b | ok (26/11; G-stamina re-testar quando alguém estiver ferido) |
| 3 | Só 1 fase: precisa de fase 2 + seleção de fases com melhor nota + último nível toca o final | O | R9, R10 | — |
| 4 | Melhor nota mistura estrelas de tentativas diferentes | O | R3, R3b | ok (26/11) |
| 5 | C (agachar) não faz nada; ensinar na 1ª cobertura baixa | ok | R7 | game-turn-44 (pose só visível na intro: câmera é travada atrás do soldado) |
| 6 | Dicas encadeadas (SHIFT trava as outras) | O | R4 | ok (26/11; fila de 2 dicas não testada) |
| 7 | Reaction shot nunca explicado; HUD sem aviso | ok | R6b | game-turn-43 |
| 8 | Intro: soldado azul agachado sem pernas | O | R8 | — |
| 9 | Lanterna: falta feixe da lente até o cone no chão | O | R17 | — |
| 10 | Vazio preto além dos muros; set dressing; soldados com mais detalhe | O | R15, R16 | — |
| 11 | Pausa sem Sound on/off direto | O | R11 | — |
| 12 | Dica e prompt de interação se sobrepõem | ok | R5 | game-turn-40 |
| 13 | Fontes do sistema → letreiro próprio desenhado em código | O | R14 | — |
| 14 | Logo sem design → logo desenhado em código (rachadura/brecha) | O | R13 | — |
| 15 | How to Play colado à esquerda → centralizar | O | R12 | — |
| 16 | Vitória corta direto para Results → "MISSION COMPLETE" | S | R18 | — |
| 17 | Settings da pausa oferece "Play ending scene" → só no menu principal | S | R11 | — |
| 18 | Mostrar outros pátios além dos muros | S | corte | — |
| 19 | Nota do turno 32 em português → tudo em inglês | O | entrega | — |

### Referências (uma por mudança, anexar no prompt correspondente)
| Ref | Arquivo | Prompt | Avaliação (25/11) |
|---|---|---|---|
| Mapa da fase 2 | Breakline_L2_TopDown_Layout.png | R9 | Claude (SVG). Ok. |
| Logo com letras rachadas | REF_Logo_Breach.png | R13 (e R14) | Estilo ok (stencil, rachadura turquesa, emblema). O "B" inicial saiu embaralhado → o prompt manda seguir o texto escrito. |
| Soldado agachado detalhado | REF_Soldier_Crouch.png | R7, R8, R16 | Ótima: pernas dobradas visíveis, capacete com faixa, 3 bolsos, mochila, joelheiras, botas, rosto. |
| Feixe da lente ao chão | REF_Flashlight_Beam.png | R17 | Ok: feixe sai da lente e termina na mancha cortada pelo contêiner. Tem torre de holofote e guindaste → prompt manda ignorar. |
| Pátio cercado de morros à noite | REF_Yard_Hills_Night.png | R15 | Morros, guindastes com luz vermelha, cidade, cerca: ok. **Risco: luminárias âmbar dentro do pátio e contêineres vermelhos.** Âmbar = luz inimiga na nossa paleta → luz âmbar extra confundiria a leitura dos cones. Prompt proíbe. |
Entram também no zip de "worked from" da entrega.

### Ordem e lógica
Core loop primeiro (R1–R10), porque a fase 2 e o seletor mudam a estrutura e a arte depois precisa cobrir as duas fases. Arte e UI depois (R11–R17). Sugestões por último (R18). Se faltar tempo, corta só S (16, 18); nunca O.

### Decisões do redo
- 26/11: R4 ganhou "só uma dica por vez" (evita TAB e movimento juntos no turno 1). R5 NÃO esconde a dica quando há prompt (isso mataria a dica do E e ela reapareceria depois do upload): prompt fica sempre abaixo da dica. R5b novo: letreiro "BREACH — SEALED" continua depois do upload.
- 26/11: R2b adicionou aviso vermelho acima do soldado nas recusas por stamina (G 20, E 15, tiro 25). Recusas por vida cheia/sem medkit só tremem o slot: aceito, não vale outro turno.
- 26/11: modelo por prompt — Sonnet em R1–R6, R8, R11–R17; Opus em R7, R9, R10 e na revisão final (limite semanal 73% usado, reset seg 30/11 8h).
- 25/11: a regra "uma fase só" (reunião de 23/11) foi o motivo do item 3. O revisor cobra os passos 7–8 do GDD. **Seguir o revisor.**
- 25/11: fase 2 = "NORTH QUAY" (layout no mapa): início SE, terminal num anel de contêineres com aberturas N e S, brecha no muro oeste, 3 guardas, fileira de caixas baixas entre o guarda do corredor e a rota. Fase 1 = "CONTAINER YARD".
- 25/11: hints viram independentes ANTES de adicionar o agachamento, para a dica do C já nascer no sistema novo.
- 25/11: item 17 aceito (sugestão do revisor). "Play ending scene" continua no Settings do menu principal.
- 25/11: item 18 cortado de saída (geometria nova, risco de performance; não é obrigatório).
- 25/11: referências no GPT (Runway sem créditos); mapa feito pelo Claude porque layout exato exige precisão.
- 25/11: cada prompt com ref diz o que USAR da imagem e o que IGNORAR (o agente copia tudo que vê). Âmbar dentro do pátio só nas lanternas.

## FILA DE PROMPTS DO REDO
Todo prompt termina com "Then list 5 things I should test." Testes de regressão a cada turno: lista "Manter" acima + console sem erro vermelho.

**R1 · Strafe**
Here's what goes wrong when I play: holding D moves the soldier to the left of the screen and holding A moves him to the right (I expected A to move left and D to move right, relative to the camera, like any third-person game). The left and right arrow keys should follow the same rule as A and D. Fix only the strafe direction. W, S, the mouse look and everything else stay exactly the same. Then list 5 things I should test.

**R2 · Stamina em E e G**
Using an item and interacting should cost stamina, as the design says. Pressing G to use the medkit costs 20 stamina, and pressing E at the terminal costs 15 stamina. While the soldier is in range to use them, the stamina bar previews the cost the same way it already previews the shot cost. If the soldier doesn't have enough stamina, the action doesn't happen and the bar gives the same "not enough" feedback it gives for a shot. Keep everything else as it is. Then list 5 things I should test.

**R3 · Melhor nota = melhor tentativa**
The best rating for a level must be the best single attempt, never stars combined from different attempts. What goes wrong now: one run earns "health kept" and "8 turns or less", another run earns only "objective done unseen", and "Best rating so far" shows 3/3, although no run got 3 stars. After each run, compare its star count with the saved best; only if the new run has more stars, replace the saved best with that run's stars exactly as earned. Save the best rating per level, so each level keeps its own. Keep everything else as it is. Then list 5 things I should test.

**R4 · Dicas independentes**
Tutorial hints are chained right now: the next hint only appears after the current one is done, so if I never hold Shift, "SHIFT Hurry" stays on screen for the whole level, even in the enemy turn, and the COVER, TAB, ENTER and E hints never appear. Make every hint independent and show it the moment the player first needs it: the movement hint at the start as now; SHIFT after the soldier first walks a few meters; COVER the first time he gets close to a container near a flashlight cone; TAB at the start of the first turn where the second soldier hasn't moved yet; ENTER when the active soldier's stamina first drops below half; E when a soldier first gets close to the terminal. Each hint stays for about 6 seconds or until the player does that action, whichever comes first, then fades and never comes back. No hints during the enemy turn. Keep everything else as it is. Then list 5 things I should test.

**R5 · Prompt de interação com posição própria**
The tutorial hint and the interaction prompt can cover each other, especially in smaller windows: at the terminal "SHIFT Hurry" sits on top of "PRESS E — RUN UPLOAD AT TERMINAL", and after the upload on top of "UPLOAD COMPLETE — HEAD TO THE NW BREACH". Give interaction prompts and objective messages their own fixed position in the lower middle of the screen, always below the hint with a clear gap, so the two never overlap at any window size, including 1280×720 and 1920×1080. If a hint wraps to two lines it grows upward, never down into the prompt. Keep the hints where they are. Keep everything else as it is. Then list 5 things I should test.

**R5b · Letreiro da brecha**
After the upload the breach barrier is down, but the label above the breach in the world still reads "BREACH — SEALED", even on the Results screen. When the upload completes, change that label to "BREACH — OPEN". Before the upload it stays "BREACH — SEALED". Keep everything else as it is. Then list 5 things I should test.

**R6 · Aviso de reaction shot**
Reaction shots need a warning and an explanation. During my turn, when the active soldier is about to step into a guard's flashlight cone (within about one meter of its edge), show a short warning in the alert red: "REACTION SHOT — YOU WILL BE SEEN", and make that cone's edge pulse red. When a reaction shot actually fires, the turn banner changes to "REACTION SHOT" for about 1.5 seconds, then goes back to the normal banner. The first time it happens in a run, show a one-time hint in the same style as the other hints: "Stepping into a flashlight draws an instant reaction shot. Stay in the dark or behind cover." Keep the damage and everything else as it is. Then list 5 things I should test.

**R7 · Agachar (C)** — anexar REF_Soldier_Crouch.png
Add crouch on C, as the controls promise ("C — crouch to use low cover"). C toggles crouch for the active soldier: he lowers into a crouch with both legs clearly visible and bent, knees forward and feet flat on the ground, never sinking into the floor, like the attached reference, and moves at half speed while crouched. Use the reference only for the pose. Add a few low cover pieces to the yard, waist-high crate stacks and concrete barriers about half a soldier's height, including one on the path from the start to the terminal. A crouched soldier behind low cover is not seen by a flashlight; a standing soldier behind low cover is still seen. Tall cover works as it does now. The first time the soldier gets near low cover, show a hint in the same style as the others: "C  Crouch behind low cover". Keep everything else as it is. Then list 5 things I should test.

**R7b · Dica FIRE no padrão**
The FIRE hint ("Each shot costs stamina") does not behave like the others: it appears and disappears almost instantly. Make it work like the rest. Show it the first time the active soldier has a guard in range and can shoot, before the shot, not after. It stays for about 6 seconds, or until the player fires, whichever comes first, then fades and never comes back in that run. Keep every other hint as it is. Then list 5 things I should test.

**R7c · Feedback de cobertura baixa** (decidido no turno 12)
When the active soldier is crouched behind low cover and a guard's flashlight cannot see him because of it, show a short label in the safe teal over that cover piece: "IN COVER", and give the piece a thin teal outline. The moment he stands up or steps out of the cover's protection, the label and the outline disappear. Nothing shows for tall cover. Keep everything else as it is. Then list 5 things I should test.

**R8 · Pose agachada na intro**
In the intro's close shot of the crouched squad, the blue soldier has no visible legs and reads as a floating torso. Use exactly the same crouch pose the soldiers now use in play, with both legs visible and bent, for both soldiers in that shot. Keep the shot, its timing and the camera as they are. Then list 5 things I should test.

**R9 · Fase 2** — anexar Breakline_L2_TopDown_Layout.png
Add a second level, "NORTH QUAY", built like the attached top-down sketch, using exactly the same systems, controls, HUD, hints, art style, sounds and rules as level 1, which works. The squad starts in the southeast corner, in the dark. The terminal sits in the middle of the yard inside a ring of containers with two openings, one north and one south. The breach is on the west wall, sealed until the upload. Three guards, all behaving like the level 1 guards: one stands just north of the southern lane and shines his flashlight south across it, with a row of low crates between him and the lane, so crouching behind the crates is the safe way from the start to the south opening; one stands outside the north opening facing north; one stands west of the ring facing east toward it, with his back to the breach. For now, Continue on level 1's Results goes to the Equipment screen and then level 2; finishing level 2 plays the ending scene. Keep level 1 and everything else as it is. Then list 5 things I should test.

**R10 · Seleção de fases**
Add a level selection screen in the same visor style as the other menus. It lists "LEVEL 1 — CONTAINER YARD" and "LEVEL 2 — NORTH QUAY", each with its best mission rating as stars, empty stars if not played yet. Level 2 shows as locked until level 1 has been won once. Play on the main menu opens this screen; picking a level goes to the Equipment screen and then the level. After level 1's Results, Continue opens this screen with level 2 now unlocked. After level 2's Results, Continue plays the ending scene and then returns to the main menu. Esc goes back to the main menu. Keep everything else as it is. Then list 5 things I should test.

**R11 · Pausa**
Add a "SOUND: ON / OFF" item directly to the pause menu, between Resume and Restart, working the same as the sound toggle in Settings and always in sync with it. Also, when Settings is opened from the pause menu, hide "Play ending scene"; it stays in Settings opened from the main menu. Keep everything else as it is. Then list 5 things I should test.

**R12 · How to Play centralizado**
How to Play is pushed to the left half of the screen and the right side is empty. Center the controls panel and the three step cards as one balanced layout: controls on the left, the three step cards on the right, the whole group centered with equal margins on both sides, fitting 1280×720 and 1920×1080 without scrolling. Keep the text, style and behaviour as they are. Then list 5 things I should test.

**R13 · Logo** — anexar REF_Logo_Breach.png
Design a real logo for the game, drawn in code with shapes, not typed in a font, in the style of the attached sketch. The letters in the sketch are a little garbled, so spell it exactly "BREAKLINE" and "SQUAD" and use the sketch only for the style. "BREAKLINE" in bold, angular, stencil-style capital letters in off-white with a dark outline, with one jagged breach crack running diagonally through the whole word; the two halves are slightly offset along the crack and a thin glowing teal line (#5FE3D0) shows through it. "SQUAD" sits below in smaller, widely spaced stencil letters, with a small emblem to its left: a cracked square with the same teal line. No tagline, no subtitle. Use this exact logo on Click to start, in the intro and on the main menu, replacing the current one. Keep everything else as it is. Then list 5 things I should test.

**R14 · Letreiro próprio**
All menu text uses system fonts (Segoe UI, Arial, Consolas), so the menus look generic. Draw the game's own lettering in code, in the same angular stencil style as the new logo, and use it for every screen title and every menu item: Click to start, main menu, level select, Equipment, How to Play, Settings, Pause, Results and Mission failed. For small HUD numbers and hint text, use a clean, condensed look in the same spirit that stays easy to read at small sizes. Keep sizes, positions and colors as they are. Then list 5 things I should test.

**R15 · Morros + set dressing** — anexar REF_Yard_Hills_Night.png
Beyond the yard walls there is a black void. Surround the yard with the same layered hills used in the ending, in dark night tones, in every scene: main menu, intro, level 1, level 2 and the ending, like the attached reference. Add set dressing outside and along the walls: two large dockside gantry cranes with small blinking red lights on top, chain-link fence along parts of the wall, a few distant city lights low on the horizon, and a faint low haze over the ground that the flashlights light up. Use the reference only for the hills, cranes, fence, city lights and haze. Don't add the wall lamps or any other amber light inside the yard, and keep the containers' current colors: inside the yard, amber light must come only from the guards' flashlights. Everything stays outside the play area or doesn't block, so gameplay, cover and cones stay the same. Keep everything else as it is. Then list 5 things I should test.

**R16 · Detalhe dos soldados** — reusar REF_Soldier_Crouch.png
The soldiers read as raw primitive boxes. Add detail in the same low-poly style, like the attached reference: a rounded helmet with a brim and a thin visor strip, a tactical vest with three pouches on the front, a small backpack, knee pads and chunkier boots, keeping each soldier's own color. Keep their size, animations, the crouch pose and everything else as it is. Then list 5 things I should test.

**R17 · Feixe da lanterna** — anexar REF_Flashlight_Beam.png
The flashlight light starts on the floor, so it doesn't read as a flashlight. Keep the floor cone exactly as it is, it's the gameplay read and it correctly stops at cover. Add a faint visible beam of warm light (#FFB23E, very transparent, a little brighter near the lens) from each guard's flashlight lens down to the floor cone, with a small bright glow at the lens, like the attached reference. Use the reference only for the beam and the lens glow; don't add the floodlight tower, the crane or the barriers from the picture. The beam is visual only. Keep everything else as it is. Then list 5 things I should test.

**R18 · Vitória (sugestão)**
Reaching the breach cuts straight to Results. Add a short win beat of about 2.5 seconds first: the camera holds, the soldier steps through the breach, "MISSION COMPLETE" appears in the game's lettering with a short rising sound, then Results appears as it does now. Keep everything else as it is. Then list 5 things I should test.

## Entrega do redo
- Nota do turno 32 reescrita em EN (abaixo). Conferir TODAS as notas antigas: nada em português.
- Vídeo novo (Screenity, Tab area, com áudio): Click to start → intro (pose agachada) → menu → How to Play centralizado → pausa com Sound → seleção de fases → Equipment → fase 1 mostrando dicas, agachar, aviso de reaction shot, custo de E/G → derrota → Retry → Equipment → vitória fase 1 → Results → seleção (fase 2 liberada) → vitória fase 2 → final.
- Rubrica: revisar comentários dos itens tocados.
- References zip: adicionar as 5 refs novas.

### Nota do turno 32 (EN, para substituir)
Turn 32 raised the guards' damage, because losing took far too long: soldiers soaked up dozens of hits and being seen felt harmless. I only changed the numbers. The enemy-turn shot went from 22 to 35 and the cone reaction shot from 9 to 15, with stamina, cover, cones, the medkit and the rating untouched. Playing it, the direction was right but not enough: a soldier still took about 10 hits to go down, while a guard drops after about 4 of mine, so getting caught still didn't feel dangerous. The mission-failed screen, Retry and the ending all still work, and the console stayed clean. Next turn evens it out: 50 for the enemy-turn shot and 25 for the reaction shot, so a soldier goes down after 2 full hits or 4 reaction shots, roughly matching what a guard can take. That will be the last change before the final freeze.

## Redo turn log
| # | Pedido | Resultado | Problemas vistos | Build | Print |
|---|--------|-----------|------------------|-------|-------|
| 1 | R1 strafe A/D | ok (A/D, setas, diagonais) | hint SHIFT preso no turno 3 (→R4) | game-turn-34 | 10.10.56 (26/11) |
| 2 | R2 custo E/G | parcial: custo e prévia ok, recusa sem aviso | sem mensagem acima do soldado | game-turn-35 | 10.25.32 (26/11) |
| 3 | R2b aviso de recusa | ok em E (15) e tiro (25); G (20) só validado em código | G sem medkit/vida cheia só treme o slot (aceito) | game-turn-36 | 10.40.20 (26/11) |
| 4 | R3 melhor nota | parcial: regra ok, não persistia ao recarregar | reload zerava | game-turn-37 | 10.47.16 (26/11) |
| 5 | R3b persistência | ok (1★→3★ substitui; 2★/1★ não rebaixam) | — | game-turn-38 | 13.43.29 (26/11) |
| 6 | R4 dicas independentes | ok: WASD, TAB, ENTER, SHIFT, COVER, E aparecem sozinhas; nenhuma no turno inimigo | fila de 2 dicas não vista | game-turn-39 | 14.00.38 (26/11) |
| 7 | R5 slot do prompt | ok (dica acima do prompt, COVER 2 linhas cresce p/ cima) | letreiro BREACH ficava SEALED após upload (→R5b) | game-turn-40 | 14.08.21 (26/11) |
| 8 | R5b letreiro da brecha | ok: SEALED antes, OPEN após upload, volta SEALED no Restart, console limpo | Results (teste 3) e cena final (teste 5) não verificados | game-turn-41 | 14.16.45 (26/11) |
| 9 | R6 aviso de reaction shot | FALHOU: 10 prints sem aviso vermelho, cone segue bege, sem dica | nada visível perto da borda do cone (→R6b) | game-turn-42 | 14.51.32 (26/11) |
| 10 | R6b aviso mais visível | ok: aviso vermelho a ~1,5 m, cone vermelho pulsando, banner REACTION SHOT 1,5 s, dica REACTION na 1ª vez | cobertura/fumaça sem aviso e música de perigo não vistas (checar na regressão) | game-turn-43 | 15.05.22 (26/11) |
| 11 | R7 agachar (C) + cobertura baixa | ok no visível: dica C, 4 coberturas baixas, barreira na rota | dica FIRE some rápido demais (→R7b); pose agachada de perfil não vista | game-turn-44 | 15.32.24 (26/11) |
| 12 | R7b dica FIRE no padrão | ok: C e FIRE em fila (15.46.01 → 15.46.06), FIRE antes do 1º tiro, tiros funcionam (Vega 0/4, Sentry caído) | FIRE apareceu com containers entre Vega e guardas; duração de ~6 s e retry não medidos | game-turn-45 | 15.46.06 (26/11) |

---
# HISTÓRICO DA 1ª ENTREGA

## Status da 1ª entrega (24/11)
- Formulário em 24/11 ~11:53; envio real na plataforma em 25/11 ~12:04 (reclaim).
- BUILD FINAL: `build33` (dano 50/25). Fallbacks: `build32-stable`, `build31-stable`.
- Vídeo: Breakline Squad_v01.mp4 (5:56), com intro, derrota, vitória e final.
- Rubrica: 8 core loop + 7 presentation, todos Pass.
- Referências: Breakline_Squad_References.zip (13 imagens).
- Turnos feitos: 33.

## Linha de builds estáveis
build23 (BPM) → build24 (HUD visor) → build25 (menus) → build27 (câmera translúcida) → build28 (títulos) → build29 (entulho) → build30 (sem subtítulos) → build31 (logo na intro) → build32 (dano 35/15) → **build33 (dano 50/25) = enviado**.

## Pendências conhecidas antes do feedback (o revisor NÃO cobrou; não mexer no redo)
- IA dos guardas passiva entre detecções.
- Esc não volta de How to Play/Settings/Equipment.
- Tab troca de soldado sem transição suave.
- Guarda pode encostar no soldado.
- Mira dos guardas erra bastante (72% / 45%).

## Artes de referência (GPT) — "worked from"
- 01_Container_Yard_Squad_Stealth → estilo/clima
- 01_Stealth_Movement_Range / 02_Enemy_Detection_Combat → cones, "!"
- 03_In_Game_HUD → estrelas, cards, banner de turno
- 01_Main_Menu → logo com rachadura (turnos 25, 28, 31); LEVELS não copiado
- 02_Ending_Dawn_Extraction → final
- Tutorial 1–7 → dicas em jogo
- Visor refs 1 e 2 → interface (turnos 24, 25)
- 02_Character_Reference (Initial/Revised) → NÃO usado

## Original request
Mini-jogo tático por turnos; o jogador controla diretamente um membro do esquadrão em terceira pessoa, gerencia stamina e evita os reaction shots que os inimigos disparam quando ele entra no cone de visão. Movimento livre em 3D no turno; todo metro e toda ação gastam stamina; entrar num cone = tiro imediato (menos dano, menos precisão).

## GDD (resumo fiel)
- Objetivo: ativar o terminal (E) e levar pelo menos 1 membro de pé até a extração. Squad inteiro caído = falha.
- Stamina por membro, por turno: andar, correr (Shift), atirar, recarregar (R), interagir (E), usar item (G).
- Cones de visão mostrados; cobertura sólida bloqueia. Reaction shot mais fraco que o tiro do turno inimigo.
- Turno inimigo (Enter): inimigos vão à última área conhecida, buscam visão e atiram forte.
- Troca de membro (Tab). Equipamento antes da fase. Mission rating; guarda o melhor.
- Passos 7–8: a fase continua; terminar a fase volta para escolher a próxima. Menus: seleção de fases desbloqueadas com a melhor nota de cada.
- Controles: WASD · mouse · LMB · RMB · Shift · C · Tab · E · R · G · Enter · Esc.

## Estado do jogo no build33
- Pátio noturno; início seguro SW; terminal NE; brecha NW real, selada até o upload.
- Click to start, intro e menu com o mesmo logo; How to Play com controles + 3 passos; Settings com Sound + Play ending scene.
- HUD visor; sem teclas fixas; labels de tamanho fixo; banners com glitch.
- Câmera sobre o ombro; obstáculos entre câmera e soldado ficam 25% translúcidos.
- Dano dos guardas: 50 / 25. Rifle do jogador: 34.
- Derrota: "MISSION FAILED — Both soldiers are down" → Retry → Equipment.
- Áudio: temas 95/115 BPM; perigo 130 BPM ao vivo; final em maior.
- Final: câmera fixa, dupla sai pela brecha, amanhecer, "Upload complete. The yard never saw them."
- Paleta: Noite #0D1320 · Concreto #44505F · Luz inimiga #FFB23E · Esquadrão #5FE3D0 · Alerta #FF4D3D.

## Decisões da 1ª entrega
- 24/11 11:15: build33 final. Mira dos guardas mantida.
- 24/11 11:04: dano 35/15 insuficiente → 50/25 (turno 33).
- 24/11 10:33: correção de Esc nos menus não feita.
- 24/11 10:28: IA não melhorada após congelamento.
- 24/11 09:45: câmera falhou 2x → translucidez.
- 24/11 09:12: menus de console num turno só. Personagens cortados.
- 24/11 08:45: BPM falhou 2x → regra ao vivo. Turno de IA cortado.

## Turn log da 1ª entrega
| # | Pedido | Resultado | Problemas vistos | Print |
|---|--------|-----------|------------------|-------|
| 1–13 | base, controles, inimigos, luz, tiro, caçada, início seguro | — | — | 13.48.47 → 18.23.20 |
| 14 | Fluxo de telas completo | ok | logo só texto | 18.32.06 |
| 15 | Equipment + G + estrelas + Results | ok | NPCs burros | 18.52.09 |
| 16 | Dicas visor + custo do tiro | ok | texto da dica errado | 19.04.45 |
| 17 | Intro + final | intro rápida; final não toca | depth buffer | 19.19.32 |
| 18 | FIX cutscenes | final toca; intro agachada | câmera do final nos contêineres | 19.31.52 |
| 19 | Final + áudio + Shift | final toca | câmera na parede; música = ruído | 19.51.13 |
| 20 | Áudio refeito | temas ok | coração não entra; tiro seco | 20.21.52 |
| 21 | Final câmera fixa + áudio | céu/morros ok | dupla atravessa parede; BPM não volta | 20.36.07 |
| 22 | Brecha real + BPM volta | brecha/final ok; 3★ | BPM preso (2ª falha) | 21.53.50 |
| 23 | FIX BPM (regra ao vivo) | perigo entra e sai | labels variáveis; teclas fixas | 08.55.07 (24/11) |
| 24 | HUD visor | HUD/banners/Results visor | menus com cara de site | 09.08.57 (24/11) |
| 25 | Menus de console | logo, itens à esquerda, How to Play | tagline | 09.27.51 (24/11) |
| 26 | FIX câmera no muro | brecha limpa | câmera cola no ombro | 09.38.05 (24/11) |
| 27 | Câmera: obstáculos translúcidos | corredores limpos | entulho opaco | 09.51.46 (24/11) |
| 28 | Títulos | ok; 3★ | subtítulos decorativos | 10.00.09 (24/11) |
| 29 | Entulho translúcido | ok | — | 10.08.29 (24/11) |
| 30 | Sem subtítulos | ok | logo antigo na intro | 10.15.47 (24/11) |
| 31 | Logo novo na intro | ok | IA fraca; Esc nos menus | 10.27.51 (24/11) |
| 32 | Dano 35/15 | derrota lenta (~10 tiros) | assimetria | (teste de derrota) |
| 33 | Dano 50/25 | derrota no turno 3; vitória ok | mira (aceito) | 11.10.41 (24/11) |

## Post-mortem da 1ª entrega
- Contar SÓ pelo timer quando ele é pausável. Funcionou.
- Câmera "inteligente" falha: preferir câmera fixa / obstáculo translúcido.
- Música precisa ser pedida como música.
- Gatilhos de estado: regra "ao vivo".
- "Use exactly the same style as the HUD" resolveu 5 telas num turno.
- O agente inventa tagline: pedir "no tagline / no subtitle".
- IA adiada demais. Balanceamento testado tarde. Congelamento reaberto 3x.
- **Lições do feedback (25/11):** (1) "uma fase só" contrariou os passos 7–8 do GDD e virou item de reprovação; (2) todo controle listado no GDD precisa funcionar (C não fazia nada); (3) toda ação que o GDD diz gastar stamina precisa gastar (E, G); (4) dicas não podem ser encadeadas; (5) fonte do sistema e logo de texto puro são cobrados; (6) a pausa precisa ter Sound direto; (7) as notas são lidas: tudo em inglês.


## Sugestão opcional (após R18)
- Texto "HEAD TO THE NW BREACH" não tem bússola no jogo; trocar para "HEAD TO THE NW BREACH — FOLLOW THE TEAL BEAM".
