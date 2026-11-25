# Tarefa 1: Shoreline Longing (3D, "Sports"). Arquivo consolidado (23/11)
Junta: game-brief, art-bible-provenance, prompts, turn-log e post-mortem da tarefa.

## Status: PERDIDA (confirmado 23/11)
- build47-final ficou pronto em 21/11 12:36, mas o envio ficou para 23/11.
- Confirmado pela Revelo: o relógio cobre TODO o processo (build + QA + vídeo + rubrica + envio), não só o build. O envio fora do tempo fez a task sumir. Todo o trabalho foi perdido.
- Lição (já no playbook-plano-execucao): congelar o build com ~45 min de sobra e enviar dentro do relógio, no mesmo dia.
- O jogo segue vivo como portfólio (ver portfolio-shoreline).

## Original request
Caminhada meditativa single-player numa praia infinita; objetos achados disparam fragmentos poéticos; medidor de saudade ESCONDIDO enche até um breve momento abstrato de conexão.
Core loop (GDD): intro → menu → aprende andar e "regard" jogando → anda para encher a saudade (passear x correr enquanto a maré volta) → sinais de descoberta → regard → fragmento entra no poema → decide desviar/Stillness/correr → medidor cheio = conexão, ou maré = falha → Level Results (Resonance, best) → Retry/próxima → final.
Controles: WASD/setas · mouse olhar · LMB/E regard · Shift correr · Espaço Stillness · J diário · Esc pausa.

## Decisões finais
- Escopo entregue: só F1 completa (F2/F3 escondidas no código, não apagadas).
- Estilo: praia fria do norte ao entardecer, 3D low-poly com acabamento de gravura/risografia, contornos navy.
- Paleta: Paper #F2E8D8 · Coral #F08A6C · Sea Teal #1F6B6E · Deep Navy #1B2440 · Gold (companheira/contemplação).
- Heroína: casaco-sino navy com capuz pontudo, rosto mínimo, cachecol coral longo que cresce uma faixa por verso verdadeiro.
- Companheira de luz: mesma silhueta em luz dourada, sem rosto. Parcial nas conexões de fase; inteira só no final.
- Medidor de saudade só por som. Achados ocos: frio + nota grave.
- Onboarding escrito na areia, um por vez, só na F1.
- Menus: DOM na tela, sem caixas (a versão escrita na areia em 3D foi cortada após 2 falhas). Menu top view pelo esboço do Tato (#44).
- Ritmo do texto: verso 1x no achado e 1x no final.
- Áudio: ambiente rarefeito pentatônico (sinos, marimba abafada, pad); cada verso uma nota.

## Poema (original, aprovado pelo Tato)
F1: I walked here once, before the light was low. / The sea keeps every name it has ever read. / A shell still holds the hush of someone's hand. / I am not lost. I am only early.
F2: The wind returns what I forgot to say. / Each footprint is a letter, half erased. / Somewhere ahead, a lamp is being lit. / The cold is only the shape of waiting.
F3: I carried you the whole way, like a tide. / The shore was never empty. It was listening. / Your silence was a word I learned to speak. / Walk with me now. The light is long enough.
Ocos: Only salt. / An empty shell. Nothing sings inside. / The sea has already taken this one back. / Just driftwood. Just cold.

## Proveniência
Conceito do GDD da Revelo; direção de arte, paleta, personagens, onboarding na areia e regras de continuidade do Tato; imagens de referência geradas no GPT a partir de briefings dele; poema escrito para o jogo (Claude, aprovado pelo Tato); planejamento com Claude; construção 100% no agente da Revelo.

## Turn log resumido
Rodada 1 (18–20/11, expirou 20/11 15:36 antes do envio):
- #1–#5: mundo, objetos + versos + cachecol, maré + medidor escondido, correções.
- #6: todas as telas. #7–#12: câmera, dunas, onboarding na areia, Results, horizonte com farol.
- #13–#16: achados ocos + Stillness; #14 quebrou o boot, #15 consertou.
- #17–#20: fases 2/3, versos, final noturno, música. Tempo expirou no #20 (+tempo).
- #21–#32: sliders, Safe mode, estrelas, menu na areia, capuz. Fim de fase em F2/F3 nunca fechou.
Rodada 2 (21/11, a partir do build 33):
- #33–#35: fim de fase, Results com o sistema da pausa → build35-stable.
- #36–#39: erro do console; menus em DOM; tag não fechada → build39-stable.
- #40–#43: ending; `}` sobrando no #40; figura de luz; poema 1x → build43-stable.
- #44: menu top view → build44-stable. #45–#47: cores, farol → build47-final.

## Post-mortem específico
- Rodada 1: 3 fases quando o briefing pedia o core loop; menu na areia ~8 turnos; vídeo resolvido só no fim → expirou.
- Rodada 2: cortar F2/F3 e fechar o loop antes da arte funcionou; congelar builds; console achou 3 causas raiz. MAS o envio foi deixado para outro dia achando que o relógio só contava o build → tarefa perdida.

## Arquivos
`/Volumes/UGreen/Revelo/Visual Slice/`: `turns/`, `screenshots/`, `moodboard/Shoreline_Longing_Imagens_Organizadas/`.
