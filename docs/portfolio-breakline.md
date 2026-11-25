# Portfólio: Breakline Squad (versão feita pelo Claude)
Frente SECUNDÁRIA, nos moldes do portfolio-shoreline. Construído pelo Claude, sem o agente da Revelo, com as mesmas regras de qualidade (playbook-regras-e-revisor).

## Regras
- Um único index.html offline: three.js r160 + addons (EffectComposer, GTAO, UnrealBloom, Output, RoundedBoxGeometry, RoomEnvironment) empacotados com esbuild e inline. Arte e som gerados em código.
- Arquivos: `Visual Slice/Squad/portfolio/breakline-portfolio-vN.html`.
- Página publicada: artifact "Breakline Squad — portfolio" (https://claude.ai/artifact/2ZT9ka8in2bsPrfBoxrPRN), sempre com a última versão (v4).
- Teste: `#dev` no fim da URL. Atalhos: 1 vence, 2 falha, 3 final, 4 upload, 5 leva à brecha, 6 leva ao terminal. `#devlowq` força qualidade Leve (QA headless).
- Direção de arte: refs do zip Breakline_Squad. Mestre de personagens: 02_Character_Reference_Revised (versão grande enviada pelo Tato em 24/11). HUD: 03_In_Game_HUD + Stealth_Movement_Range + tutoriais 04/05 (anel no pé).
- Processo combinado (24/11): mudança visual grande passa primeiro por rascunho renderizado no motor do jogo; implementa só depois do ok.

## Diferenças em relação à entrega da Revelo (build33)
- **IA reativa:**
  - "!" de contato e callout por rádio;
  - barulho de tiro atrai guardas a até 15 m;
  - guarda vai ao último ponto visto e faz varredura "?"; depois de 2 buscas, "LOST HIM";
  - o alarme do upload puxa os 2 guardas mais próximos;
  - câmera tática segue cada guarda no turno inimigo.
- **Personagens da ficha revisada** (render arredondado, ver v4).
- **Esc:** pausa no jogo; volta nos menus; pula cenas.
- **Tab:** câmera faz blend suave entre os soldados.
- **Guardas não entram nos soldados.**
- **Dano:** 50/25 (Marksman 80% de acerto, queda menor com a distância); rifle do jogador 34.
- **Extras:** cone agachado/em pé, caixote só cobre agachado, smoke, reviver, % de acerto na mira.

## Spec
- **Fluxo de telas:** Click to start → intro → menu → Equipment → jogo → Results ou Mission failed (Retry → Equipment) → final ao amanhecer → menu.
- **Settings:** Sound, Quality (High/Light), Volume e Play ending scene.
- **Pátio procedural por missão:**
  - início sorteado, terminal no canto oposto, brecha num muro junto ao terminal;
  - 17 contêineres e 15 caixotes, com validação de conexão pelo grid;
  - 5 guardas: S-1 sentinela, P-1/P-2/P-3 patrulhas;
  - M-1 Marksman: parado, cone longo de 21 m e estreito, varre devagar, anda só 4 m quando alertado, posicionado a ≥ 19 m do início.
- **Personagens (v4):** blocos com cantos arredondados de verdade (RoundedBox) e sombreado suave, grafite com luzes teal (esquadrão) e âmbar (inimigos).
  - Vega: alta, faixa no capacete, luz no ombro, mochila.
  - Moss: largo, gorro canelado, mochila de rádio com antena que balança.
  - Sentry: enorme, viseira em fenda, lâmpada no ombro.
  - Patroller: curvado, lanterna.
  - Marksman: sobretudo, gola alta, fuzil com luneta acesa.
- **Animação (v4, princípios clássicos de animação):** baseada nos 12 princípios clássicos, implementada com molas.
  - Entrada e saída suaves em velocidade, agachar e morte.
  - Follow-through: o corpo dá um tranco para a frente ao parar e assenta com leve oscilação; a cabeça e a antena atrasam.
  - Inclinação nas curvas; a cabeça vira antes do corpo.
  - Squash & stretch: no contato do pé, ao levar tiro e ao assentar no agachamento.
  - Arcos: quadril sobe, desce e balança.
  - Ação secundária: respiração, troca de peso, olhar em volta, checagem de arma a cada 6–12 s parado, varredura da lanterna.
  - Exagero: tranco com passo para trás ao levar tiro; na morte, os joelhos cedem, o corpo gira, cai e quica.
  - Recuo com mola no tiro.
- **HUD (v4, pelas refs):**
  - No chão, anel em volta de cada soldado: 12 segmentos teal de stamina e arco interno de saúde (branco; vermelho abaixo de 35). O ativo fica aceso, o outro apagado.
  - Etiqueta com o nome acima da cabeça.
  - Cartão do ativo com retrato 3D ao vivo, barra de coração (teal) e de raio (amarela) em 10 segmentos, e munição.
  - Mini cartão do outro soldado e espaço do item com ícone.
  - Checklist "Reach the terminal / Extract n/2".
  - Pílula de turno "SQUAD TURN nn · Enter to end", que fica vermelha no turno inimigo.
  - 3 estrelas ao vivo, que apagam quando se perdem.
- **Estrelas (v4, pela ref):** ninguém cair; até 8 turnos; upload sem ser visto antes.
- **Qualidade:**
  - High: GTAO (oclusão de contato), bloom e reflexo de ambiente.
  - Light: sem pós-processamento e com halos sprite no lugar do bloom.
  - Textos e etiquetas são desenhados numa passada separada (camada 3), para não gerar artefato no AO.
- **Chão (v4):** sem manchas escuras nem poças; asfalto uniforme levemente molhado.
- **Áudio:** menu 95 BPM; jogo 115 BPM; perigo 130 BPM ao vivo; final 80 BPM em ré maior.

## Changelog
### v4 (24/11): personagens "render", Marksman, HUD das refs, animação com princípios clássicos
- Rascunhos aprovados antes de implementar: ficha 3D dos 5 personagens e comparação facetado × render (opção B escolhida).
- Itens detalhados em Spec (Personagens, Animação, HUD, Estrelas, Qualidade, Chão).
- **Pendente:** o Tato citou um "PDF de animação estilo Disney". Ele não estava nos arquivos desta conversa nem no projeto; implementei pelos 12 princípios clássicos. Quando o PDF chegar, refino caminhada, agachar e reações por ele.

### v3 (24/11)
Cartoon arredondado, animação procedural, luz difusa, pátio aleatório.

### v2 (24/11)
Passada de arte pelas referências.

### v1 (24/11)
Jogo completo de ponta a ponta.

### Pendente / ideias
- Testar no Mac a 60 fps em High; se cair, usar Light ou baixar a resolução do AO.
- Refinar a animação com o PDF de referência.
- Opção "repetir o mesmo pátio" no Retry.
