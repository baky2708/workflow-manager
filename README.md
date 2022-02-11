## Introdução

Esse é um script para aqueles que utilizam tmux no dia a dia, seja para desenvolver ou para organizar melhor seu terminal.

Ele facilita na hora da criação de workflows utilizando tmuxinator como ferramenta.

## Dependencias

<a href="https://www.lua.org/start.html" target="_blank">Lua 5.4></a>
<a href="https://github.com/tmux/tmux/wiki" target="_blank">Tmux 3.2></a>
<a href="https://github.com/tmuxinator/tmuxinator" target="_blank">Tmuxinator 3.0></a>

## Utilização

Após o clone do repositório, você pode executar o arquivo *workflow* com seus devidos parâmetros.

`lua workflow -[parâmetro] --[parâmetro2]`

Depois de executar o script, você terá em seu `~/.config/tmuxinator/`, um arquivo com o workflow criado.

Você pode colocar o repositório em seu `.local/bin` para executá-lo direto de seus binários.

## Argumentos

### Primeiro argumento

O primeiro argumento serve para dizer que tipo de workflow você irá criar.

Criar um workflow default:
`lua workflow -d`

Criar um workflow de react:
`lua workflow -r`

### Segundo argumento

O segundo argumento serve para adicionar testes em seu workflow.

`lua workflow -d --jest`

`lua workflow -r --cypress`

## Contribuição

Posteriormente pretendo adicionar mais modelos workflows e argumentos para o script.

Caso alguém queira alterar algum modelo ou adicionar algum, sinta-se a vontade. Os modelos estão dentro do arquivo `src/file-content/init.lua`.

## Copyright

Copyright (c) 2022 Flávio (Baky) Isaque.
