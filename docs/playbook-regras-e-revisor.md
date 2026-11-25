# Playbook · Regras da Revelo + o que o revisor cobra
Fonte: Project Guide v1.0 + approved.pdf, top-reasons.pdf, common-issues-in-games.pdf (17/11) + reunião com a Revelo (23/11) + **feedback de redo do Breakline Squad (25/11)**. Vale para toda tarefa "Game Design – Visual Slice".

## Condições
- US$30/h, 4h pagas + 30 min opcionais não pagos. Revisão em até 10 dias (o Breakline voltou em ~2h).
- Redo: **24 horas úteis para INICIAR**, senão vira abandonada. Pagamento = original + redo, limitado ao máximo original. Recusar o redo = original não é pago.
- Curva de aprendizado: até 4 tarefas; 1 aprovada (Perfect/Minor Edits) passa; 4ª reprovação = exclusão.
- Ler o Project Guide de CADA tarefa: confirmar se relógio, pausa e envio continuam iguais.

## Escopo (CORRIGIDO 25/11)
- Reunião de 23/11: "uma fase só; final por Settings → Play ending scene".
- **O revisor do Breakline reprovou justamente por isso**: o GDD tinha passos "a fase continua / terminar a fase volta para escolher a próxima" e menu de seleção de fases com melhor nota. Com uma fase, esses passos "não podem ser jogados".
- **Regra nova: se o GDD ou o core loop citar progressão, próxima fase, seleção de fases ou desbloqueio, construir NO MÍNIMO 2 fases + seleção de fases.** A 2ª fase reaproveita todos os sistemas e muda só layout/inimigos. O final toca ao terminar a última fase E continua em Settings → Play ending scene.
- Na dúvida entre a reunião e o GDD: o revisor avalia pelo GDD.

## Entregáveis
- Jogo jogável com core loop completo, em um único index.html, sem recursos externos (arte e som em código).
- Intro, menu, instruções, configurações, pausa, derrota/vitória, encerramento.
- Identidade visual própria, animação, SFX/música, UI consistente.
- Mínimo de 20 interações com o agente, cada uma com nota + screenshot. **Todas as notas em inglês** (uma nota em PT virou item do redo).
- Vídeo com áudio: intro, vitória, derrota, encerramento.
- Autoavaliação dos critérios + referências ("worked from").

## Critérios
Direção de arte · Animação · Áudio · Interface · Funcionalidade (sem bugs).

## Regras de construção
- Conceito, mecânica e 2D/3D vêm do GDD.
- Planejamento externo (Claude/ChatGPT) permitido; construção SÓ no agente da Revelo.
- Um pedido por prompt, descrevendo resultado visual, não código. Tudo em EN. Proibido colar código ou enviar imagens com copyright. Imagens próprias, geradas por IA ou royalty-free são recomendadas pelo revisor (uma por mudança).

## Reprovação automática (sozinho já devolve)
- Lista de controles no menu ou sempre na tela → controles só no How to Play ou ensinados na 1ª fase.
- Esc não pausa.
- Settings sem opção de "tocar a cena final" (Play ending scene).
- Item da rubrica marcado como falho na autoavaliação → corrigir antes de enviar.
- Vídeo sem áudio ou incompleto.
- Redo com o mesmo arquivo.
- Também citados: visual genérico de IA, menu com cara de site, animação pobre, bugs/elementos fora da tela, notas genéricas.

## Motivos de redo (12–17/11)
Interface 72% · Direção de arte 46% · Intro/final 44% · Personagens/materiais 41% · Música 40% · Onboarding/controles 38% · Animação/câmera 35% · Game feel 29% · SFX 27% · Texto demais 25% · Checklist de menu 24% · Item da rubrica marcado como falho 22%

## O revisor testa a spec item por item (lição de 25/11)
O revisor do Breakline apertou cada tecla da lista de controles e conferiu cada frase do GDD. Antes de congelar:
- [ ] **Toda tecla listada no GDD faz o que diz** (C sem função = item de redo). Testar também a direção (A/D invertidos passaram despercebidos).
- [ ] **Toda ação que o GDD diz gastar recurso, gasta**, e o custo aparece na barra (E e G grátis = item de redo).
- [ ] "Guarda o melhor" = melhor tentativa única, não soma de tentativas.
- [ ] Cada elemento de HUD nomeado no GDD existe (ex.: "Reaction shot warning").
- [ ] Pausa tem os itens que a spec lista, DIRETO na pausa (Sound não pode estar só dentro de Settings).
- [ ] Dicas independentes, cada uma no momento em que é necessária; nunca encadeadas atrás de ação opcional; nunca sobre o prompt de interação.
- [ ] Mecânica central (ex.: reaction shot) ensinada na 1ª fase com aviso + dica.

## Regras extraídas do revisor
1. Jogo 3D → menu 3D. Menu, jogo e final parecem o mesmo jogo.
2. Uma paleta aplicada a TUDO (cenário, props, HUD).
3. Tela de título = logo de verdade + botões. Sem subtítulo, tagline ou legenda. **Logo desenhado em código** (letras como formas, ligadas à premissa: rachadura, brecha, emblema), não texto digitado.
4. HUD com UM foco: poucos cards agrupados, sem rótulos decorativos.
5. How to Play curto: cabe em Full HD; controles à esquerda + 3 passos à direita, **o conjunto centralizado** (colado à esquerda foi cobrado).
6. Storytelling: quem é o herói, qual o objetivo, mostrado no gameplay; o final mostra o herói atingindo o objetivo.
7. Intro: começa com "Click to start"; câmera passeia pelo ambiente antes de chegar ao jogador.
8. Final cinematográfico, com o mesmo nível de detalhe do gameplay.
9. Personagem com rosto e silhueta própria; **sem "caixa primitiva"**: capacete, colete, bolsos, botas no mesmo low-poly. Poses sem membros sumindo no chão.
10. Câmera que segue o jogador e reage à ação; nada estático; squash & stretch.
11. Luz vinda das fontes da cena (**lanterna = feixe visível saindo da lente**, não só mancha no chão); sombras; glow; partículas.
12. Materiais com variação. **Nada de vazio preto além do cenário**: morros/horizonte + set dressing em TODAS as cenas.
13. Música: mesmo estilo em menu, jogo e final; só muda a intensidade.
14. SFX para atacar, levar dano, defender, conquistar.
15. Aceitar setas E WASD.
16. No redo: mudar SÓ o que foi pedido. Se o revisor anexar um mock-up, seguir o mock-up.
17. Regra de ouro: tem que ser divertido. Jogue você mesmo.
18. ~~Uma fase só~~ → ver "Escopo (CORRIGIDO 25/11)": progressão no GDD = mínimo 2 fases + seleção.
19. **Fontes do sistema (Segoe UI, Arial, Consolas) são cobradas**: letreiro próprio desenhado em código para títulos e menus; HUD pequeno legível.
20. Vitória com "momento" (beat de 2–3 s) antes do Results.
