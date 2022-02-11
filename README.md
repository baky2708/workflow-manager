## Introdução

Esse é um script para aqueles que utilizam tmux no dia a dia, seja para desenvolver ou para organizar melhor seu terminal.

Ele facilita na hora da criação de workflows utilizando tmuxinator como ferramenta.

## Dependencias

- [lua 5.4>](https://www.lua.org/start.html)

- [tmux 3.2>](https://github.com/tmux/tmux/wiki)

- [tmuxinator 3.0>](https://github.com/tmuxinator/tmuxinator)

## Utilização

Após o clone do repositório, você pode executar o arquivo *workflow* com seus devidos parâmetros.

`lua workflow -[parâmetro] --[parâmetro2]`
![help image](https://github.com/baky2708/workflow-manager/tree/add-images/images/workflow-manager-help.png)
<!-- ![alt text](https://github.com/[username]/[reponame]/blob//workflow-manager-help.png?raw=true) -->

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

### Depois de Criado

Basta rodar `tmuxinator [nome do workflow]` para iniciar.

## Contribuição

Posteriormente pretendo adicionar mais modelos workflows e argumentos para o script.

Caso alguém queira alterar algum modelo ou adicionar algum, sinta-se a vontade. Os modelos estão dentro do arquivo `src/file-content/init.lua`.

## Copyright

Copyright (c) 2022 Flávio (Baky) Isaque.
