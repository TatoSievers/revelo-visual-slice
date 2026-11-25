# Playbook · Prompts para o agente + notas de turno

## Regras de prompt (Revelo)
- Sempre em inglês, UM pedido por prompt, descrevendo o resultado VISUAL/jogável, nunca código.
- Nada de código colado nem imagem com copyright.
- Texto exato entre aspas (nomes, falas, títulos), senão o agente inventa.
- Terminar com "Keep everything else as it is." quando for ajuste.
- Pedido grande = regressão. Se o pedido tem "e" demais, dividir.

## Formatos que funcionaram
- Base: "[o que o jogador deve ver/sentir]. [detalhe concreto: tempo, cor, posição]. Keep everything else as it is."
- Reaproveitar o que funciona: "Make the [tela X] use exactly the same mechanism as the [tela Y], which works."
- Pedir verificação: "...Then list 5 things I should test."

## FIX (usar nas reservas; um bug por prompt)
"Here's what goes wrong when I play: [what I did] → [what I saw] (I expected [what should happen]). Find the cause and fix only that. Keep everything else exactly the same. Then list 5 things I should test before submitting."
- Descrever como JOGADOR, nunca como código. Erro vermelho do console: citar literalmente.
- Mesmo bug 2x → trocar abordagem ou cortar.

## FEEL (um por turno, só depois do checkpoint jogável)
Origem: carrossel power.ai (21/11), adaptado. Prioridade padrão: F1 → F4 → F3 → F2 → F5 → F6. Escolher os 2–3 que a mecânica do GDD mais usa. Trocar [colchetes] pelos nomes reais.

F1 · Camera: "Make the camera follow [the hero] with a soft, slight delay: it trails a little behind when [she/he] starts moving and catches up smoothly when [she/he] stops, so it never snaps. Keep everything else as it is."

F2 · Acceleration: "When the player starts moving, the speed should build up over about a third of a second instead of jumping to full speed, and ease out the same way when the keys are released. Keep everything else as it is."

F3 · Impact: "When [the hero] [gets hit by / crashes into] [obstacle], the screen gives one small, short shake, under half a second, together with a short impact sound. No shake when 'Reduce effects' is on. Keep everything else as it is."

F4 · Reward: "When the player [collects / scores] [object], a small burst of [sparks / confetti] in [palette colors] pops from that spot and fades within a second, with a bright pickup sound that rises in pitch on each one in a row. Keep everything else as it is."

F5 · Forgiving collisions: "Make collisions forgiving: if [the hero] only grazes the edge of [obstacle], let [her/him] pass, and [objects] should be picked up from slightly farther away than they look. Keep everything else as it is."

F6 · Squash & stretch: "Add squash and stretch to [the hero]: a slight stretch when [jumping / starting to run] and a quick squash when [landing / stopping], small and fast, so the movement feels alive. Keep everything else as it is."

## Nota de turno
Formato: UM parágrafo corrido, inglês natural, primeira pessoa, mesma voz do início ao fim da tarefa. Conteúdo: o que pedi → o que veio (específico, com o que está errado ou acima do esperado) → o que decidi a seguir e por quê (critério de design, legibilidade, acessibilidade, tempo).

Exemplo (nota #01 do Shoreline):
"Asked for the base world only: an endless cold beach at dusk, a lone walker with a coral scarf, a third-person follow camera, WASD/arrows, mouse look and Shift to hurry. Got a working raw-WebGL scene with surf, wind and footstep sounds, a title card and Esc pause already in. Walking and the camera feel calm, a good base. Not right yet: a controls bar sits permanently at the bottom (to be removed: controls will be taught in play) and the walker reads as a generic figure; the hooded design comes in the art pass. Turn took ~15 min (agent queue)."

Anti-"nota de IA":
- Nada de adjetivo vazio (amazing, great, improved, seamless). Fatos observáveis.
- Número ou detalhe concreto sempre que possível (cor, timing, posição).
- Mostrar cortes também ("dropped X to protect the timebox").
- Curta, imperfeita, como falaria num review. Sem travessões em excesso, sem listas.

## Print
Nome pelo timestamp do macOS: `Screenshot AAAA-MM-DD at HH.MM.SS`. Pasta da tarefa: `Visual Slice/tarefaN/screenshots`.
