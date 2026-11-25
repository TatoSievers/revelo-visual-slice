# Playbook · Direção de arte e áudio (método reutilizável)

## Método de direção de arte
1. Estilo descritível em 1 frase, do início ao fim (régua: "reconheço o estilo em 2 segundos?" + "a cena tem profundidade e luz?").
2. Referências = TÉCNICAS (gravura, risografia, toon shading, low-poly), nunca artistas ou obras. Evitar semelhança com personagens conhecidos.
3. Folha de personagem como referência mestre; geometria simples (esfera, cone, cilindro, caixa) que o agente consegue construir.
4. Estilo plano/gráfico entra como ACABAMENTO sobre uma cena com luz, sombra e materiais de verdade. Cenário "liso" é criticado.
5. Uma paleta aplicada a tudo: cenário, props, personagens, HUD, menu e final.
6. Interface pelo caminho confiável (DOM) primeiro; UI diegética (escrita no cenário etc.) só depois e cortada após 2 falhas.
7. Cor é mudança segura; geometria nova é risco de regressão (um elemento por turno).

## Paleta acessível (como montar)
- 4 tons em escada de luminosidade: claro (fundo/luz), acento (herói/importante), ambiente, escuro (texto/contorno/sombra).
- Testar WCAG e simulação deutan/protan/tritan. Se dois tons colapsam, separar a luminosidade.
- Exemplos já testados: riso rosa (#F4EFE6 / #FF7AC6 / #00666E / #1D2B53) e entardecer do Shoreline (#F2E8D8 / #F08A6C / #1F6B6E / #1B2440).

Regras de acessibilidade:
1. Texto sempre escuro sobre claro ou claro sobre escuro.
2. Cor nunca carrega significado sozinha: forma + movimento + som.
3. Todo elemento interativo com contorno.
4. Reduce effects e Safe Mode (ver playbook-plano-execucao).
5. Nada pisca mais de 3x por segundo.
6. Tudo jogável só com teclado (setas e WASD). Controles no How to Play / ensinados na 1ª fase, NUNCA fixos na tela.

## Style blocks (EN, adaptar)
Mundo: "Art direction: [style in one sentence]. Apply one palette to everything, scenery, props, characters and HUD: [light] for [..], [accent] for the hero and anything important, [ambient] for the environment, and [dark] for outlines and shadows. Keep real depth: light comes from the scene's own light sources, objects cast tinted shadows, and materials differ, some matte, some glossy, some with subtle relief. Every object has a thin [dark] outline. Shapes are chunky and readable at a glance."

UI: "Interface: create a real game logo for the title, [letter style] in [accent] with a [dark] outline. The main menu shows the live game scene behind the logo and buttons only, no subtitle or extra text. Buttons have a [dark] outline: hover fills them [accent], pressed fills them [ambient]. The in-game HUD has only a few grouped cards with one clear focus; no decorative labels. Use the same style for pause, settings, win and lose screens. Fonts should feel like a console game, not a website."

Textura sobre a tela (se o estilo pedir), escada de fallback: 1) grão que desliza com o movimento · 2) grão a ~8–12 fps · 3) estático. ~15% de opacidade, gerado em código, HUD nítido por cima; Reduce effects = estático; Safe Mode = desligado.

## Áudio
Regra: tudo sintetizado no browser (Web Audio), sem arquivos.
- Desbloqueio: nenhum som antes do primeiro clique/tecla ("Click to start").
- Música: mesmo estilo, instrumentos e escala em menu, jogo e final; só a intensidade muda. Bateria só no gameplay. Estrutura intro/verso/refrão/ponte. Escala pelo clima (ver playbook-regras-e-revisor). Reverb + chorus.
- SFX de interface: tick no hover, confirmação no clique, "voltar" mais grave.
- SFX de jogo: ação, dano, defesa, conquista; variação de pitch.
- Vitória/derrota distintas; música abaixa por baixo. Pausa: música a ~30% e abafada.
- Settings: volume música/efeitos + mute.
- Ideia que funcionou no Shoreline: cada conquista toca uma nota da escala → as conquistas formam uma melodia → a melodia volta completa no final.

Checklist: [ ] nada antes do clique · [ ] loop sem estalo · [ ] pausa/mute funcionam · [ ] gravador captura o áudio da aba (testar 10 s antes).

## "Worked from" (modelo)
Conceito do GDD da Revelo; direção de arte, paleta, personagens e decisões de interface do Tato; imagens de referência geradas por IA a partir de briefings dele, sem artistas/obras de terceiros; textos do jogo [autoria]; planejamento e revisão com Claude; construção 100% no agente da Revelo. Listar só os anexos realmente usados.
