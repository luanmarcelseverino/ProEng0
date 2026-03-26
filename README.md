# Automação com Robot Framework

Este projeto demonstra a implementação de testes automatizados utilizando a arquitetura **Page Object Model (POM)**, garantindo manutenibilidade e escalabilidade.

## Tecnologias Utilizadas
* **Linguagem:** Python
* **Framework:** Robot Framework
* **Library:** Browser (Playwright engine)
* **Gerenciador de Dependências:** Poetry

## Arquitetura
* `/resources`: Contém as Keywords e seletores de elementos (camada de abstração).
* `/tests`: Contém os cenários de teste escritos em linguagem natural.
* `/results`: Relatórios detalhados e evidências (screenshots).

## Como Rodar o Projeto
1. Certifique-se de ter o Python e o Node.js instalados.
2. Instale o Poetry: `pip install poetry`
3. Instale as dependências:
   ```bash
   poetry install
   poetry run rfbrowser init
   poetry run robot -d ./results teste/compra_test.robot

Dúvidas ou sugestões? Conecte-se comigo no LinkedIn https://www.linkedin.com/in/luanmarcelseverino/