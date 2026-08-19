# Exercícios de Assembly MIPS — MARS

![Status](https://img.shields.io/badge/status-Concluído-green)
![Arquitetura](https://img.shields.io/badge/arquitetura-MIPS32-informational)
![Simulador](https://img.shields.io/badge/simulador-MARS-blueviolet)
![Licença](https://img.shields.io/badge/licença-MIT-green)

Repositório de exercícios de **Assembly MIPS**, desenvolvidos e executados no simulador **MARS (MIPS Assembler and Runtime Simulator)**, no contexto de uma disciplina de graduação voltada ao estudo de arquitetura de computadores e/ou organização de sistemas digitais. Os arquivos-fonte (`.s`) estão organizados em listas/blocos de exercícios, refletindo a progressão cronológica das atividades propostas em sala.

A relevância deste repositório é didática: cada arquivo constitui uma solução individual a um exercício proposto, permitindo o acompanhamento incremental do desenvolvimento de competências em programação em baixo nível — manipulação direta de registradores, gerenciamento de memória, chamadas de sistema (*syscalls*) e controle de fluxo sem abstrações de linguagens de alto nível.

---

## Sumário

1. [Contexto Acadêmico](#contexto-acadêmico)
2. [Arquitetura e Estrutura do Repositório](#arquitetura-e-estrutura-do-repositório)
3. [Pré-requisitos e Dependências](#pré-requisitos-e-dependências)
4. [Metodologia e Convenções Adotadas](#metodologia-e-convenções-adotadas)
5. [Licença e Contato](#licença-e-contato)

---

## Contexto Acadêmico

Este repositório reúne atividades práticas desenvolvidas para uma disciplina de graduação com ênfase em **Arquitetura de Computadores / Organização de Sistemas Digitais**, utilizando a arquitetura **MIPS32** como referência didática — escolha comum no ensino de Assembly por apresentar um conjunto de instruções reduzido (RISC), ortogonal e amplamente documentado, o que facilita a compreensão de conceitos fundamentais como *pipeline*, banco de registradores, modos de endereçamento e convenções de chamada.

As atividades foram realizadas e validadas no simulador **MARS**, ferramenta de referência no ensino de MIPS por fornecer um ambiente controlado de simulação (registradores, memória, pilha e *syscalls*) sem a necessidade de hardware ou *cross-compilers* dedicados.

---

## Arquitetura e Estrutura do Repositório

Os exercícios estão organizados em três diretórios numerados, cada um correspondendo a um bloco/lista de atividades distinto, conforme a estrutura observada no repositório:

```text
.
├── Lista1/
│   ├── Exercicio1.s
│   ├── Exercicio2.s
│   ├── Exercicio3.s
│   ├── Exercicio4.s
│   ├── Exercicio5.s
│   ├── Exercicio6.s
│   ├── Exercicio7.s
│   ├── Exercicio8.s
│   ├── Exercicio9.s
│   ├── Exercicio10.s
│   ├── Exercicio11.s
│   └── Exercicio12.s
│
├── Lista2/
│   ├── Lista2_Ex1.s
│   ├── Lista2_Ex2.s
│   ├── Lista2_Ex3.s
│   ├── Lista2_Ex4.s
│   ├── Lista2_Ex5.s
│   └── Lista2.Ex6s
│
└── Lista3/
    ├── Ex1_Lista Assembly 3.s
    ├── Ex2_Lista Assembly 3.s
    ├── Ex3_Lista Assembly 3.s
    ├── Ex4_Lista Assembly 3.s
    ├── Ex5_Lista Assembly 3.s
    ├── Ex6_Lista Assembly 3.s
    ├── Ex7_Lista Assembly 3.s
    └── Ex8_Lista Assembly 3.s
```

| Diretório | Conteúdo | Quantidade de arquivos |
|---|---|---|
| `1/` | Primeira lista de exercícios individuais (`Exercicio1` a `Exercicio12`) | 12 |
| `2/` | Segunda lista de exercícios (`Lista2`, itens 1 a 6) | 6 |
| `3/` | Terceira lista de exercícios (`Lista Assembly 2`, itens `Ex1` a `Ex8`) | 8 |

Cada arquivo `.s` é autocontido: representa a solução de um exercício específico e pode ser aberto e executado individualmente no MARS, sem dependências entre arquivos.

---

## Pré-requisitos e Dependências

| Requisito | Especificação |
|---|---|
| Simulador | **MARS (MIPS Assembler and Runtime Simulator)** |
| Ambiente de execução do simulador | Java Runtime Environment (JRE) |
| Arquitetura-alvo | MIPS32 |
| Extensão dos arquivos-fonte | `.s` |
| Sistema operacional | Multiplataforma (Windows, Linux, macOS) — dependente apenas da JVM |

O MARS é distribuído como um arquivo `.jar` único e não requer instalação em sentido estrito, apenas uma JVM compatível.

---

## Metodologia e Convenções Adotadas

**Organização por lista/bloco de atividades.** Os diretórios numerados (`1/`, `2/`, `3/`) correspondem a diferentes listas de exercícios propostas ao longo da disciplina, preservando a ordem cronológica de entrega como critério de organização — abordagem adequada ao propósito de portfólio acadêmico, em que a rastreabilidade da evolução do aprendizado é mais relevante do que uma taxonomia temática dos exercícios.

**Granularidade de um arquivo por exercício.** Cada exercício é implementado em um arquivo `.s` independente, sem uso de módulos ou bibliotecas compartilhadas entre exercícios — consistente com o uso do MARS como ambiente de execução isolado por arquivo.

---

## Licença e Contato

**Licença:** este repositório é distribuído sob a **Licença MIT**. Isso permite uso, cópia, modificação, fusão, publicação, distribuição, sublicenciamento e/ou venda de cópias do material, desde que o aviso de copyright e a nota de permissão sejam incluídos em todas as cópias ou partes substanciais do conteúdo. O material é fornecido "no estado em que se encontra", sem garantias de qualquer tipo. Caso o arquivo `LICENSE` ainda não exista na raiz do repositório, recomenda-se sua criação com o texto oficial da licença MIT, disponível em [https://opensource.org/license/mit](https://opensource.org/license/mit).


**Autoria:**

| Papel | Nome | Contato |
|---|---|---|
| Autora | Emily Rharysa | emyrhf.dev@gmail.com |

**Repositório:** [Atividades Assembly](https://github.com/emyrhf/atividades-assembly)
