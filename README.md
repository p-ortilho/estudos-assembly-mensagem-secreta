# Mensagem Secreta 🔍💻

Este repositório contém um exemplo simples de um programa em Assembly que exibe uma mensagem secreta ou uma mensagem normal, dependendo de uma condição. O programa utiliza a função MessageBoxA da API do Windows para exibir as mensagens. O objetivo deste repositório é fornecer um exemplo prático para estudar conceitos de Assembly, API do Windows e engenharia reversa.

## Arquivos Incluídos
Arquivo Assembly (.asm): Código-fonte do programa em Assembly.
Arquivo Objeto (.obj): Arquivo objeto gerado a partir do código Assembly.
Executável (.exe): Executável compilado e linkado a partir do arquivo objeto.

## Como Usar
- Compilação: Compile o código Assembly usando o NASM.
~~~
nasm -f win32 seu_arquivo.asm -o seu_arquivo.obj
~~~

- Linkagem: Linke o arquivo objeto gerado com a biblioteca do Windows usando o GoLink.
~~~
golink /console seu_arquivo.obj kernel32.dll user32.dll
~~~ 

## Engenharia Reversa 🔬🛠️
Para estudar engenharia reversa, você pode usar um debugger como o OllyDbg para abrir o executável e modificar o código em tempo de execução. Isso permitirá que você altere a condição do jump para exibir a mensagem secreta.
