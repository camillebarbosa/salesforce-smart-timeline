Smart Case Timeline 🚀

Uma timeline inteligente para Salesforce Service Cloud construída com duas abordagens arquiteturais diferentes:

OmniStudio (FlexCard + DataRaptor)
LWC + Apex

O objetivo do projeto é explorar diferentes estratégias de desenvolvimento dentro do ecossistema Salesforce para criação de experiências modernas de atendimento e acompanhamento de Cases.

📌 Objetivo

A Smart Case Timeline centraliza eventos importantes do ciclo de vida de um Case em uma única visualização cronológica, permitindo que agentes tenham contexto rápido e organizado do atendimento.

A timeline foi idealizada para exibir:

criação do Case
mudanças de status
escalations
emails enviados/recebidos
atividades
comentários internos
eventos importantes do suporte
🏗️ Arquitetura do Projeto

O projeto possui duas implementações paralelas para comparação arquitetural.

🔹 Abordagem 1 — OmniStudio
Tecnologias
FlexCard
DataRaptor
OmniStudio
Objetivo

Explorar uma abordagem low-code focada em:

velocidade de desenvolvimento
configuração declarativa
reutilização
integração simplificada
Fluxo
FlexCard
↓
DataRaptor
↓
Case Object
↓
Renderização da Timeline
Benefícios
menor volume de código
desenvolvimento rápido
fácil manutenção declarativa
excelente para cenários enterprise OmniStudio
🔹 Abordagem 2 — LWC + Apex
Tecnologias
Lightning Web Components
Apex
DTO Pattern
Imperative Apex Calls
Objetivo

Explorar uma abordagem customizada com maior controle sobre:

UI/UX
performance
agregação de dados
lógica de negócio
Fluxo
LWC
↓
Imperative Apex Call
↓
Apex Service Layer
↓
DTO Transformation
↓
Timeline Rendering
Benefícios
maior flexibilidade
arquitetura escalável
controle total da experiência
possibilidade de realtime updates
suporte para agregação complexa de dados
🧠 Conceitos abordados
Salesforce
Service Cloud
OmniStudio
FlexCards
DataRaptors
LWC
Apex
DTO Pattern
Front-end
Dynamic Rendering
Conditional Rendering
Component Architecture
Timeline UI
Date Formatting
Arquitetura
Aggregator Pattern
Low-code vs Custom Development
Reactive vs Imperative Calls
Separation of Concerns
⚡ Chamada Reativa vs Imperativa

O projeto também explora as diferenças entre:

Reativa (@wire)
execução automática
cache automático
ideal para leitura simples
Imperativa
execução manual
maior controle
ideal para timelines e componentes complexos
✅ Funcionalidades da V1
Exibição do evento de criação do Case
Nome do criador
Status inicial
Formatação de data/hora
Timeline visual customizada
Implementação via OmniStudio
Implementação via LWC + Apex
📂 Estrutura prevista
force-app/
│
├── lwc/
│   └── caseTimeline/
│
├── classes/
│   └── CaseTimelineController.cls
│
├── omnistudio/
│   ├── flexcards/
│   └── dataraptors/
🎯 Objetivo de estudo

Este projeto foi criado com foco em:

estudo de arquitetura Salesforce
comparação entre abordagens
construção de experiência enterprise
aprofundamento em Service Cloud
evolução prática em LWC e OmniStudio
📸 Preview
OmniStudio Version
FlexCard + DataRaptor
abordagem declarativa
LWC + Apex Version
componente customizado
renderização dinâmica
backend Apex
📌 Status

🚧 Em desenvolvimento — V1 concluída.