org 0x7e00
jmp 0x0000:start

data:
	titulo db 'tamagotchi', 0
    jogar db 'jogar', 0
    instrucoes db 'instrucoes', 0
    creditos db 'creditos', 0
    


start:
    xor ax, ax
    mov ds, ax
    mov es, ax
    call modoVideoCor
    call mostraMenu
    jmp fim
    
mostraMenu:
    mov si, titulo
    call printString
    call pularLinha
    mov si, jogar
    call printString
    call pularLinha
    mov si, instrucoes
    call printString
    call pularLinha
    mov si, creditos
    call printString
    call pularLinha
    ret
    
modoVideo:
    mov AX, 0011h
    mov bh, 0
	mov bl, 5
	int 10h
    ret
modoVideoCor:
    mov ah, 0
    mov al, 13h
    int 10h ; modo video
    
    mov ah, 0bh
    mov bh, 01h
    mov bl, 12   
    int 10h
    ret

lerChar:
    mov ah, 0x00
    int 16h
    ret
printChar:   
    mov ah, 0xe
    int 10h
    ret
printString:
    lodsb       ;passa da posição de di da string pra al
    cmp al, 0
        je .fin
    call printChar
    jmp printString
    .fin:
        ret
lerString:
    mov al, 0
    .for:
        call lerChar 
        stosb   ;pega o caracter no al e coloca no endereço de memoria onde di aponta
        call printChar 
        cmp al, 13 ;chegou no enter?
            je .fim ;cabou string
        jmp .for ;faz dnv
    .fim:
        dec di ;na ultima posição da string tava salvo o enter, aí a gente vai colocar o 0 no lugar
        mov al, 0
        stosb
        ret
pularLinha:
    mov ah, 02h
    mov bh, 0
    add dh, 1
    mov dl, 0
    int 10h
    ret
andarEspaco:
    mov ah, 02h
    mov bh, 0
    mov dl, 10
    int 10h
    ret
fim:    
    jmp $