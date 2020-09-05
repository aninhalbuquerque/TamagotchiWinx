org 0x7e00
jmp 0x0000:start

data:
	titulo db 'TAMAGOTCHI', 0
    jogar db 'jogar (1)', 0
    instrucoes db 'instrucoes (2)', 0
    creditos db 'creditos (3)', 0
    creditos2 db 'CREDITOS', 0
    gameOver db 'GAME OVER X_X', 0
    day db 'Dayane Lira (dls6)', 0
    aninha db 'Ana Leticia (alas3)', 0
    alice db 'Alice Oliveira (aoqb)', 0
    vic db 'Victoria Luisi (vlsc)', 0
    escolhaNome db 'Escolha o nome (ate 15 digitos): ', 0
    escolhaCor db 'Escolha a cor do seu tamagotchi:', 0
    azul db 'azul (1)', 0
    rosa db 'rosa (2)', 0
    verde db 'verde (3)', 0
    nome_max_len    equ 15
    nome:   resb    nome_max_len+1
    cor db 0
    voltarMenu db 'Aperte enter pra voltar pro menu', 0
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
    
    tamagotchiMorto db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 00, 00, 15, 15, 04, 04, 04, 04, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00 
	db  00, 00, 00, 00, 00, 15, 13, 04, 04, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 15, 13, 04, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 04, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 04, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 00, 15, 13, 04, 13, 15, 13, 15, 13, 13, 13, 04, 15, 13, 15, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 00, 15, 13, 04, 13, 13, 15, 13, 13, 13, 13, 13, 04, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 04, 13, 13, 13, 15, 13, 13, 13, 13, 13, 04, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 04, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15, 04, 15, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 04, 13, 13, 13, 13, 13, 13, 15, 15, 13, 13, 04, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 00, 15, 04, 13, 13, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13, 04, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 15, 13, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 15, 15, 00
    db  15, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 15
    db  15, 13, 13, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 15
    db  15, 15, 13, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 13, 13, 13, 13, 15
    db  00, 00, 15, 04, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 13, 13, 15, 15, 15, 00
    db  00, 00, 04, 04, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 04, 15, 04, 04, 00, 00
    db  00, 04, 04, 04, 04, 04, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 04, 04, 04, 04, 04, 00
    db  04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04
    db  00, 00, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 00
    db  00, 00, 00, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 00, 00
    db  00, 00, 00, 00, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 04, 00, 00, 00, 00
    vida db 00, 00, 13, 13, 00, 00, 00, 13, 13, 00, 00
    db 00, 13, 13, 13, 13, 00, 13, 13, 13, 13, 00
    db 13, 13, 15, 15, 13, 13, 13, 13, 13, 13, 13
    db 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 13
    db 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
    db 00, 13, 13, 13, 13, 13, 13, 13, 13, 13, 00
    db 00, 00, 13, 13, 13, 13, 13, 13, 13, 00, 00
    db 00, 00, 00, 13, 13, 13, 13, 13, 00, 00, 00
    db 00, 00, 00, 00, 13, 13, 13, 00, 00, 00, 00
    db 00, 00, 00, 00, 00, 13, 00, 00, 00, 00, 00
    ; tamanho do corpo do tamagotchi x_x
	tamagotchiW dw 25
	tamagotchiH dw 25
	; posicao do tamagotchi vivo na tela
	tamagotchiX dw 80
	tamagotchiY dw 270
    ; posicao do tamagotchi falecido na tela
	tamagotchiMortoX dw 85
	tamagotchiMortoY dw 290
    ; tamanho do <3
    vidaW dw 11
    vidaH dw 10
    vida1X dw 9
    vida2X dw 22
    vida3X dw 35
    vida4X dw 48
    vida5X dw 61
    vidaY dw 2
	; informações que a funcao drawAnything vai usar, porque assim pra qualquer desenho a gente chama ela
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
    jmp .espera
    ;ler ordem do usuário
    .espera:
        call lerChar
        cmp al, '1'
            je telaNome
        cmp al, '3'
            je telaCreditos
        jmp .espera

telaMenu:
    call corLetra
    ;posicionar título
    mov dl, 15
    mov dh, 4
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
    mov dh, 5
    call pularLinha
    mov dl, 5
    call andarEspaco
    call lerString
    call telaCor
    jmp telaJogo
telaCor:
    call limparTela
    call modoVideoCor
    call corLetra
    
    mov dl, 3
    mov dh, 4
    call andarEspaco
    mov si, escolhaCor
    call printString

    call drawTamagotchi
    ;como a gente limpa todos os registradores depois de draw, tem que setar tudo de novo
    mov ah, 0xe
	mov bh, 0
	mov bl, 9 ; aqui a cor da letra
	int 10h

    ;posicionar azul
    add dl, 15
    add dh, 15
    call andarEspaco
    mov si, azul
    call printString

    mov ah, 0xe
	mov bh, 0
	mov bl, 13 ; aqui a cor da letra
	int 10h
    ;posicionar rosa
    add dh, 3
    call andarEspaco
    mov si, rosa
    call printString

    ;fazer verde
    mov ah, 0xe
	mov bh, 0
	mov bl, 10
	int 10h ; coloca a letra verde

    sub dl, 1   ; posiciona a string e printa
    add dh, 3
    call andarEspaco
    mov si, verde
    call printString
    
    ; ler entrada e comparar
    call lerChar
    cmp al, '1'
    je .azul
    cmp al, '2'
    je .rosa
    ;.verde:
    mov ah, 2
    mov [cor], ah
    ret
    .azul:
        mov ah, 9
        mov [cor], ah
        ret
    .rosa:
        mov ah, 13
        mov [cor], ah
        ret
telaJogo:
    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call draw3Vidas
    call corLetra
    mov dl, 10
    mov dh, 4
    call andarEspaco
    mov si, nome
    call printString
    call lerChar
    jmp telaGameOver

telaCreditos:
    call limparTela
    call modoVideoCor
    call corLetra

    mov si, creditos2
	mov dl, 16
    mov dh, 4
	call andarEspaco
    call printString

    mov si, alice
    mov dl, 10
    mov dh, 13
	call andarEspaco
    call printString

    mov si, aninha
    mov dl, 11
    mov dh, 15
	call andarEspaco
    call printString

    mov si, day
    mov dl, 11
    mov dh, 17
	call andarEspaco
    call printString

    mov si, vic
    mov dl, 10
    mov dh, 19
	call andarEspaco
    call printString

    mov si, voltarMenu
    mov dl, 4
    mov dh, 22
	call andarEspaco
    call printString

	call drawTamagotchi

    esperaEnter:
			mov ah, 0
			int 16h
			cmp al, 13
			jne esperaEnter	

    ;call limparTela
    jmp start


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
    mov si, voltarMenu
    mov dl, 4
    mov dh, 18
    call andarEspaco
    call printString
	call drawTamagotchiMorto
    jmp .espera

    .espera:
        call lerChar
        cmp al, 13
            jne .espera
        call limparTela
        jmp start

drawAnything:
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
        cmp al, 13
        jne .pulaCor
        mov al, [cor] ; cor branca pro pixel
            .pulaCor:
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

	call drawAnything

	ret

drawTamagotchiMorto:
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

	call drawAnything

	ret

draw5Vidas:
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida3X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida4X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida5X]
	mov [drawX], ax
    call drawVida
    ret

draw4Vidas:
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida3X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida4X]
	mov [drawX], ax
    call drawVida
    ret

draw3Vidas:
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida3X]
	mov [drawX], ax
    call drawVida
    ret

draw2Vidas:
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawVida
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawVida
    ret

draw1Vida:
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawVida
    ret

drawVida:
    mov ax, [vidaY]
	mov [drawY], ax

	mov ax, [vidaW]
	mov [spriteW], ax

	mov ax, [vidaH]
	mov [spriteH], ax

	mov ax, vida
	mov [currentSprite], ax

	call drawAnything

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
    mov di, nome
    lea si, [di+nome_max_len]
    .for:
        cmp di, si
        jae .fim
        call lerChar 
        call printChar 
        cmp al, 13 ;chegou no enter?
        je .fim ;cabou string
        
        mov [di], al
        inc di
        jmp .for ;faz dnv
    .fim:
        mov [di], byte 0
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

