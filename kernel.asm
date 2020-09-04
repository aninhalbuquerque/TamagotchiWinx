org 0x7e00
jmp 0x0000:start

data:
	titulo db 'TAMAGOTCHI', 0
    jogar db 'jogar (1)', 0
    instrucoes db 'instrucoes (2)', 0
    creditos db 'creditos (3)', 0
    gameOver db 'GAME OVER X_X', 0
    escolhaNome db 'Escolha o nome: ', 0
    nome db 0
    tamagotchi db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00 
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 00
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15
    db  15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15
    db  00, 00, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 15, 00
    db  00, 00, 00, 00, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    tamagotchiMorto db  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 15, 15, 15, 15, 15,  0,  0,  0,  0,  0,  0,  0
	db  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 15, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0,  0,  0
	db  0,  0,  0,  0,  0,  0, 15, 15,  4,  4,  4,  4, 13, 13, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0,  0 
	db  0,  0,  0,  0,  0, 15, 13,  4,  4, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0,  0
	db  0,  0,  0,  0, 15, 13,  4, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0
	db  0,  0,  0, 15, 13, 13,  4, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0
	db  0,  0,  0, 15, 13,  4, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 15,  0,  0,  0,  0
    db  0,  0,  0, 15, 13,  4, 13, 15, 13, 15, 13, 13, 13,  4, 15, 13, 15, 13, 13, 13, 13, 15,  0,  0,  0
    db  0,  0,  0, 15, 13,  4, 13, 13, 15, 13, 13, 13, 13, 13,  4, 15, 13, 13, 13, 13, 13, 15,  0,  0,  0
    db  0,  0, 15, 13,  4, 13, 13, 13, 15, 13, 13, 13, 13, 13,  4, 15, 13, 13, 13, 13, 13, 15,  0,  0,  0
    db  0,  0, 15, 13,  4, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15,  4, 15, 13, 13, 13, 13, 15,  0,  0,  0
    db  0,  0, 15, 13,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 15,  0,  0,  0
    db  0,  0, 15, 13,  4, 13, 13, 13, 13, 13, 13, 15, 15, 13, 13,  4, 13, 13, 13, 13, 13, 13, 15,  0,  0
    db  0,  0, 15,  4, 13, 13, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13,  4, 13, 13, 13, 13, 13, 15,  0,  0
    db  0, 15, 13,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 15, 15,  0
    db 15, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 15
    db 15, 13, 13,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 15
    db 15, 15, 13,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 13, 13, 13, 13, 15
    db  0,  0, 15,  4, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 13, 13, 15, 15, 15,  0
    db  0,  0,  4,  4, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,  4, 15,  4,  4,  0,  0
    db  0,  4,  4,  4,  4,  4, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,  4,  4,  4,  4,  4,  0
    db  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4
    db  0,  0,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  0
    db  0,  0,  0,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  0,  0
    db  0,  0,  0,  0,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  4,  0,  0,  0,  0
    ; tamanho do corpo do tamagotchi x_x
	tamagotchiW dw 25
	tamagotchiH dw 25
	; posicao do tamagotchi vivo na tela
	tamagotchiX dw 80
	tamagotchiY dw 270
    ; posicao do tamagotchi falecido na tela
	tamagotchiMortoX dw 85
	tamagotchiMortoY dw 290
	; informações que a funcao draw_anything vai usar, porque assim pra qualquer desenho a gente chama ela
	; so precisa setar esses valores pra imagem que a gente quiser colocar
	; drawX e Y sao a posicao x e y na tela
	drawX dw 0
	drawY dw 0
	; spriteW e H sao a largura e altura do desenho
	spriteW dw 0
	spriteH dw 0
	; o desenho
	currentSprite dw 0

start:
    xor ax, ax
    mov ds, ax
    mov es, ax
    call modoVideoCor
    call telaMenu
    ;ler ordem do usuário
    call lerChar
    cmp al, '1'
        je telaNome
    jmp fim

telaMenu:
    call corLetra
    ;posicionar título
    add dl, 15
    add dh, 4
    call andarEspaco
    mov si, titulo
    call printString
    call pularLinha
    ;desenhar o tamagotchi
    call drawTamagotchi
    ;como a gente limpa todos os registradores depois de draw, tem que setar tudo de novo
    call corLetra
    ;posicionar jogar
    add dl, 15
    add dh, 15
    call andarEspaco
    mov si, jogar
    call printString
    ;posicionar instruções
    sub dl, 2
    add dh, 2
    call andarEspaco
    mov si, instrucoes
    call printString
    ;posicionar creditos
    add dl, 1
    add dh, 2
    call andarEspaco
    mov si, creditos
    call printString
    ret

telaNome:
    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call corLetra
    mov dl, 5
    mov dh, 4
    call andarEspaco
    mov si, escolhaNome
    call printString
    mov di, nome
    call lerString
    jmp telaGameOver

telaJogo:
    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call corLetra
    mov dl, 5
    mov dh, 4
    call andarEspaco
    ;aqui da merda hihi
    mov si, nome
    call printString
    call lerChar
    jmp telaGameOver


telaGameOver:
    call limparTela
    call modoVideoCor
	call corLetra

	mov si, gameOver

	;isso aqui eh pra posicionar a string, pode mudar
	mov dl, 14
    mov dh, 7
	call andarEspaco

    call printString
	call draw_tamagotchiMorto
    jmp fim

draw_anything:
	call clearRegistradores	; zero tudo porque vou usar muita coisa

	push 0a000h
    pop es	; isso aqui eh pra deixar o [es] no inicio da tela e eu vou usar esse es pra printar os pixels
	
	mov ax, [drawY]
	mov bx, 320	; 320 eh a quantidade de pixels na linha
	mul bx	; vai fazer ax * bx, resultado guardado em [dx][ax]
	add ax, [drawX] ; agr adiciona quantos pixels da posicao x

	mov di, ax	;o ax vai ser a posiçao do primeiro pixel que a gente vai printar, entao vamo salvar em di

	xor cx,cx	;zero tudo menos o dx, porque vou usar o di
    xor ax,ax
    xor bx,bx

	mov si, [currentSprite]	;si guarda/aponta o sprite que vamo desenhar

	.printLinha:
		lodsb	;vai pegar oq ta na si, que no caso eh o sprite
		cmp al, 0	; se for 0 eh espaco em branco e nao vamos printar nada
		je .naoprinta0	;ai eu pulo pra incrementar os contadores e seguir pro prox pixel

		;mov al, 15 ; cor branca pro pixel
		mov [es:di], al	;es+deslocamento = primeiro pixel da tela + quantos pixels eu vou pular pra chegar no lugar q eu quero e al tem a cor que eu vou colocar. esse eh o print

		.naoprinta0:
			inc di	; incremendo o di pra ser a proxima posicao do pixel que vai ser printado
			inc cx	; incremento o contador de colunas
			cmp cx, [spriteW]	; imprimiu a primeira linha do desenho?
			jne .printLinha	; se nao terminou continua imprimindo
	
	.proxLinha:
		xor cx, cx	; zera o contador de colunas
		sub di, [spriteW]	; subtrai as colunas pra voltar pro começo da linha
		add di, 320	; vai pra linha abaixo
		inc bx	; incrementa quantas linhas printou
		cmp bx, [spriteH]	; terminei de printar as linhas?
		jne .printLinha	; se nao terminou continua imprimindo

	.end:
		call clearRegistradores	;limpo tudo pq melhor prevenir
		ret

drawTamagotchi:
    xor ax, ax
    mov ax, [tamagotchiX]
	mov [drawX], ax

	mov ax, [tamagotchiY]
	mov [drawY], ax

	mov ax, [tamagotchiW]
	mov [spriteW], ax

	mov ax, [tamagotchiH]
	mov [spriteH], ax

	mov ax, tamagotchi
	mov [currentSprite], ax

	call draw_anything

	ret

draw_tamagotchiMorto:
	xor ax, ax	; zero o ax que eu vou usar pra nao dar merda
	; vou colocar os valores do tamagotchiMorto no lugar certo

	mov ax, [tamagotchiMortoX]
	mov [drawX], ax

	mov ax, [tamagotchiMortoY]
	mov [drawY], ax

	mov ax, [tamagotchiW]
	mov [spriteW], ax

	mov ax, [tamagotchiH]
	mov [spriteH], ax

	mov ax, tamagotchiMorto
	mov [currentSprite], ax

	call draw_anything

	ret

modoVideoCor:
    ;modo video
    mov ah, 0h 
    mov al, 13h ;mov al, 0xd modo antigo
    int 10h

    mov ah, 0xb 
    mov bh, 0 
    mov bl, 0xd ;cor
    int 10h

    ret

corLetra:
    mov ah, 0xe
	mov bh, 0
	mov bl, 0xd ; aqui a cor da letra
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

lerString:
    mov al, 0
    .for:
        call lerChar 
        stosb   ;pega o caracter no al e coloca no endereço de memoria onde di aponta
        ;mov si, nome
        ;call printString
        call printChar 
        cmp al, 13 ;chegou no enter?
            je .fim ;cabou string
        jmp .for ;faz dnv
    .fim:
        dec di ;na ultima posição da string tava salvo o enter, aí a gente vai colocar o 0 no lugar
        mov al, 0
        stosb
        ret

printString:
    lodsb       ;passa da posição de si da string pra al
    cmp al, 0
        je .fin
    call printChar
    jmp printString
    .fin:
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
    int 10h
    ret

limparTela:
    mov ah, 0
    mov al, 12h
    int 10h
    ret
clearRegistradores:
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
	ret
fim:    
    jmp $

