section .data
    msg db "Encontre a mensagem secreta!", 0
    msgc db "Mensagem Secreta", 0
    ttl db "Mensagem", 0

section .bss
    written resd 1

section .text
global Start
extern ExitProcess
extern MessageBoxA

Start:
    ; Limpa os registradores
    xor eax, eax
    xor ebx, ebx

    ; Compara eax com ebx (ambos são zero neste ponto)
    cmp eax, ebx
    nop
    nop
    ; Jump condicional que pode ser facilmente modificado para exibir a mensagem secreta
    je show_normal_message
    
show_secret_message:
    ; Carrega a mensagem secreta
    lea eax, [msgc]
    ; Carrega o título para a mensagem secreta
    lea ebx, [ttl]
    jmp msgbox

show_normal_message:
    ; Carrega a mensagem normal
    lea eax, [msg]
    ; Carrega o título
    lea ebx, [ttl]

msgbox:
    ; Chama MessageBoxA
    push 0              ; uType (MB_OK)
    push ebx            ; lpCaption (título)
    push eax            ; lpText (mensagem)
    push 0              ; hWnd (NULL)
    call MessageBoxA

    ; Termina o programa
    push 0
    call ExitProcess