# LEIA PRIMEIRO: Revelo · Visual Slice (atualizado 25/11 14:30)

## ⚠️ Se as instruções do projeto citarem docs antigos
Os docs foram consolidados em 23/11. Equivalências:
| Nome antigo nas instruções | Doc atual |
|---|---|
| reviewer-lessons, project-guide-summary | playbook-regras-e-revisor |
| revelo-templates-feel-fix, interaction-log | playbook-prompts-e-notas |
| execution-plan, postmortem-shoreline-longing | playbook-plano-execucao |
| audio-pack, art-directions | playbook-arte-e-audio |
| game-brief, prompts, turn-log, art-bible (Shoreline) | tarefa1-shoreline-arquivo |
| rebuild-spec-shoreline-longing, portfolio-changelog | portfolio-shoreline |
Os playbooks valem sobre as instruções antigas.

## Status das tarefas
| Tarefa | Jogo | Estado |
|---|---|---|
| 1 | Shoreline Longing | PERDIDA: documentação/envio fora do prazo de 24h. Provável ID f4246c75… (Expired). Doc: tarefa1-shoreline-arquivo |
| 2 | Breakline Squad (3D, Strategy) | **REDO pedido em 25/11** (Rejected for redo; 15 itens obrigatórios + 3 sugestões + 1 de entrega). **24 horas úteis para INICIAR o redo.** Plano, checklist e fila de prompts R1–R18 em tarefa2-breakline-squad. |
Curva de aprendizado: "Learning curve · 0 of 1" (1 aprovação passa). Até 4 tarefas; 4ª reprovação = exclusão. Aprovadas: 0. Perdidas: 1. Em redo: 1.

## IDs das tarefas (registrar SEMPRE no início de cada tarefa)
- f4246c75… : Expired (provavelmente Shoreline)
- 8367298f-870d-410f-b7ab-0535e755eab8 : Breakline Squad (envio 25/11)
- 35e58678-ebc7-40df-9644-35496d5d1307 : Breakline Squad, ID citado no e-mail de feedback/redo (25/11)

## Regras que custaram caro
1. **24h por tarefa, e o prazo cobre TUDO: build, QA, vídeo, rubrica, notas e envio.** Timer pausável → contar só pelo timer. Congelar com ~55 min; enviar com ≥30 min de sobra.
2. ~~Uma fase só~~ **CORRIGIDO 25/11: se o GDD fala em próxima fase / seleção de fases, fazer no mínimo 2 fases + seleção.** A regra "uma fase só" da reunião de 23/11 foi motivo de redo no Breakline. O final continua em Settings → "Play ending scene".
3. **Ler a rubrica do formulário de envio no início.**
4. **O envio só vale com a tela "Task Submitted" na plataforma (app.labeler.revelo.com).**
5. **Gravador: Screenity (Tab area).** Não usar QuickTime, OBS ou Loom.
6. **Construção só no agente da Revelo.** Pré-produção com o Claude é permitida.
7. **O revisor testa cada tecla e cada frase do GDD.** Checklist "O revisor testa a spec item por item" no playbook-regras-e-revisor, antes de congelar.
8. **Notas 100% em inglês.**

## Papel do Claude
Revisão de conformidade: ler a spec e a rubrica de cada tarefa, montar o checklist no doc da tarefa e conferir cada build contra ele. Máxima autonomia: decidir, registrar e avisar; perguntar só o que for irreversível ou gosto pessoal.

## Organização (prefixos)
- `playbook-*`: vale para TODA tarefa.
- `tarefaN-*`: um doc por tarefa.
- `portfolio-*`: versões feitas pelo Claude fora da plataforma.

| Doc | Para quê |
|---|---|
| playbook-kit-abertura | Prazos, setup, primeiros 10 min, pré-produção, prompts P1–P6, testes padrão, molde da nota 1 |
| playbook-regras-e-revisor | Regras da Revelo; reprovações automáticas; checklist "revisor testa a spec"; 20 regras do revisor |
| playbook-plano-execucao | Gravador, relógio/envio, congelamento, 12 regras, pré-voo, blocos, QA, vídeo, modelo de brief |
| playbook-prompts-e-notas | Regras de prompt, FIX, FEEL, nota de turno, nome de print |
| playbook-arte-e-audio | Método de arte, paleta, áudio, "worked from" |
| tarefa1-shoreline-arquivo | Tudo da tarefa 1 |
| tarefa2-breakline-squad | **REDO: checklist dos 19 itens + fila R1–R18** + histórico da 1ª entrega |
| portfolio-shoreline / portfolio-breakline | Versões do Claude fora da plataforma |

## Começar uma tarefa nova
1. Seguir o playbook-kit-abertura.
2. Criar `tarefaN-[nome].md` a partir do modelo em playbook-plano-execucao. Anotar o Task ID.
3. Atualizar a tabela de status acima.
4. Ao fechar: post-mortem no doc da tarefa; lição geral sobe para o playbook.

## Fluxo por turno
1. Tato manda a resposta do agente → Claude pede testes específicos (console aberto: Cmd+Option+J).
2. Tato devolve o resultado → Claude responde SEMPRE NESTA ORDEM: **1) nota do turno** (um parágrafo, EN) → **2) nome do print** → **3) próximo prompt** → avisos por último. Pedir o tempo do timer a cada turno.
3. Tato é o único QA real.
4. Build que passa é congelado (`buildNN-stable`).
5. Claude confere o checklist; pendências vão para o doc da tarefa na hora.

## Cola rápida (reprova sozinho)
Controles fixos na tela/menu · Esc não pausa · Settings sem "Play ending scene" · item da rubrica falho · vídeo sem áudio ou sem derrota · redo com o mesmo arquivo · envio fora do prazo · tarefa sem tela "Task Submitted" · nota em português.

## Arquivos no computador do Tato
`/Volumes/UGreen/Revelo/Visual Slice/`
- Tarefa 1: `turns/`, `screenshots/`, `moodboard/`.
- Tarefa 2: `Squad/Turns/game-turn-NN.html`.
- PDFs do revisor na raiz.
