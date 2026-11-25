# Portfólio: Shoreline Longing (versão construída pelo Claude)
Junta: rebuild-spec + portfolio-changelog. Frente SECUNDÁRIA: só mexer quando nenhuma tarefa Revelo estiver ativa.

## Regras
- Mesmas regras de QUALIDADE da Revelo (playbook-regras-e-revisor). Única exceção: construído pelo Claude, não pelo agente.
- Um único index.html, offline, arte e som em código.
- Arquivos: `Visual Slice/turns/portfolio-vN.html`. Teste: `#dev` (1/2/3 fase, 0 completa, 9 falha, 8 luz, 7 final).
- Página publicada: artifact "Shoreline Longing — portfolio", sempre com a última versão (v9, jogável no celular por toque).
- Pendente: salvar `portfolio-v5.html` a `portfolio-v9.html` e `shoreline-longing-clip-60s.mp4` na pasta `turns`.
- Próximos: regravar o clipe de 60s com a figura de luz, o cachecol e o farol novos; gaivota de perto parece avião de papel.

## Spec (resumo)
Visual, personagens, paleta e poema: ver tarefa1-shoreline-arquivo. Diferenças do portfólio: F1, F2 e F3 completas (pôr do sol → crepúsculo → noite com estrelas e farol); final noturno com as duas figuras e o cachecol compartilhado; versos um por vez; título + Main menu; menu volta ao pôr do sol.

## Changelog
### v9 (22/11): corrida no toque, farol, busca
- Toque duplo mantém a corrida até ela parar (~0,7 s); conta para a saudade e a dica "hurry".
- Farol com dois fachos girando (~10 s/volta), clarão quando aponta para a câmera; visível do entardecer à noite.
- Objetos espalhados ao acaso a cada início/Retry (na F1 o primeiro é sempre verdadeiro); versos sempre em ordem.
- Sinais de descoberta: brilho de sol de 4 pontas de longe (3–70 m), inclusive nos ocos.

### v8 (22/11): jogável no celular + cachecol compartilhado
- Toque: tocar = andar, toque duplo = correr, arrastar = seguir o dedo, tocar no objeto = contemplar, tocar na luz = Stillness, botão "II" de pausa. Dicas e How to play com palavras de toque. Câmera mais perto em pé.
- Correções: bloco do menu estável; verso não cobre a pausa; gaivotas só sobre o mar.
- Final: cachecol macio caindo entre os ombros das duas; poça de luz em degradê.

### v7 (22/11): QA headless
- Overlays escondidos não bloqueiam mais cliques; menus medidos a cada quadro e posicionados no lado livre; celular em pé corrigido.
- "Click/Tap to begin" libera o áudio antes da intro. HUD some no achado.
- Figura de luz refeita (núcleo claro, bordas que dissolvem, motes subindo); espuma quebrada; gaivotas mais baixas.

### Clipe 60s (21/11): `shoreline-longing-clip-60s.mp4`
1280×720, 30 fps, gravado da v6 com relógio controlado. Roteiro: intro e título → caminhada e fauna → achado → pôr do sol com golfinhos → fim de fase → noite → final → título. Áudio sintetizado sincronizado (não é o áudio ao vivo). A figura, o cachecol e o farol são os da v6.

### v6 (21/11): praia viva
Fauna (maçaricos, caranguejos, gaivotas, golfinhos, vaga-lumes, mar bioluminescente); sol e lua com halo; personagem reage aos bichos e aos achados; reverb, 4 seções de música; marés F1 ~3,5 min, F2 ~2,8, F3 ~2,5.

### v1–v5 (20–21/11)
v1 F1 de ponta a ponta (base game-turn-32) · v2 falésia, farol, capim, pegadas · v3 pegadas de verdade, squash & stretch · v4 F2/F3 + título escrito à mão · v5 ritmo do poema e figura de luz da rodada 2.
