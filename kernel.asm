org 0x7e00
jmp 0x0000:start

data:
    ;tela Menu
	titulo db 'TAMAGOTCHI', 0
    jogar db 'jogar (1)', 0
    instrucoes db 'instrucoes (2)', 0
    creditos db 'creditos (3)', 0

    ;tela Instruções
    instrucoes2 db 'INSTRUCOES', 0
    texto1 db 'Existem 3 tipos de vida, que decrescem acada 3 segundos', 0
    texto2 db '1. Alimentar aumenta 1 coracao e        diminui 1 gota', 0
    texto3 db '2. Passear aumenta 1 carinha feliz e    diminui 1 gota', 0
    texto4 db '3. Dar banho aumenta 1 gota e diminui 1 carinha feliz', 0
    texto5 db '4. Dormir aumenta 1 carinha feliz e     diminui 1 coracao', 0
    texto6 db 'Se alguma vida acabar ou extrapolar, o  tamagotchi morre', 0

    alimenta db 'Q - alimentar', 0
    passea db 'W - passear', 0
    dorme db 'E - nanar', 0
    banho db 'R - banho', 0
    ;tela Créditos    
    creditos2 db 'CREDITOS', 0
    day db 'Dayane Lira (dls6)', 0
    aninha db 'Ana Leticia (alas3)', 0
    alice db 'Alice Oliveira (aoqb)', 0
    vic db 'Victoria Luisi (vlsc)', 0

    ;tela Nome
    escolhaNome db 'Escolha o nome (ate 15 digitos): ', 0
    nome_max_len    equ 15
    nome:   resb    nome_max_len+1

    ;tela Cor
    escolhaCor db 'Escolha a cor do seu tamagotchi:', 0
    azul db 'azul (1)', 0
    rosa db 'rosa (2)', 0
    verde db 'verde (3)', 0

    ;tela GameOver
    gameOver db 'GAME OVER X_X', 0
    
    ;variáveis
    cor db 0
    qualTamagotchi db 0
    qtVidas db 0
    qtHappy db 0
    qtGotas db 0
    timerFake db 0

    voltarMenu db 'Aperte enter pra voltar pro menu', 0
    tamagotchi db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  13, 00, 13, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 13, 00, 13, 00
    db  13, 13, 13, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 13, 13, 13, 00
	db  00, 13, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 13, 00, 00
	db  00, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00 
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
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

    tamagotchi2 db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00, 00
	db  13, 00, 13, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00, 00
	db  13, 13, 13, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 13, 00, 13 
	db  00, 13, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 13, 13, 13
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 13, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15
    db  00, 15, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 00
    db  00, 00, 00, 00, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 15, 00, 00, 00
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

    vida1 db 00, 00, 00, 13, 13, 13, 13, 00, 00, 00, 00
    db 00, 00, 13, 13, 13, 13, 13, 13, 00, 00, 00
    db 00, 13, 13, 13, 13, 13, 13, 13, 13, 00, 00
    db 13, 13, 13, 00, 13, 13, 00, 13, 13, 13, 00
    db 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 00
    db 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 00
    db 13, 13, 13, 00, 13, 13, 00, 13, 13, 13, 00
    db 00, 13, 13, 13, 00, 00, 13, 13, 13, 00, 00
    db 00, 00, 13, 13, 13, 13, 13, 13, 00, 00, 00
    db 00, 00, 00, 13, 13, 13, 13, 00, 00, 00, 00

    vida2 db 00, 00, 00, 00, 00, 13, 00, 00, 00, 00, 00
    db 00, 00, 00, 00, 13, 13, 13, 00, 00, 00, 00
    db 00, 00, 00, 13, 13, 13, 13, 13, 00, 00, 00
    db 00, 00, 13, 13, 13, 13, 13, 13, 13, 00, 00
    db 00, 13, 13, 13, 13, 13, 13, 13, 13, 13, 00
    db 00, 13, 13, 13, 13, 13, 13, 13, 13, 13, 00
    db 00, 13, 13, 15, 13, 13, 13, 13, 13, 13, 00
    db 00, 13, 13, 15, 13, 13, 13, 13, 13, 13, 00
    db 00, 00, 13, 13, 15, 15, 13, 13, 13, 00, 00
    db 00, 00, 00, 13, 13, 13, 13, 13, 00, 00, 00

    comida db 00, 00, 00, 00, 00, 00, 00, 00, 06, 00, 00
    db 00, 00, 00, 02, 10, 10, 00, 06, 00, 00, 00
    db 00, 00, 02, 02, 02, 02, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 00, 06, 00, 00, 00, 00, 00
    db 00, 00, 04, 04, 04, 04, 04, 04, 04, 00, 00
    db 00, 04, 12, 12, 12, 04, 12, 12, 04, 04, 00
    db 00, 12, 15, 15, 12, 12, 12, 12, 12, 04, 00
    db 04, 15, 15, 12, 12, 12, 12, 12, 12, 04, 04
    db 04, 12, 12, 12, 12, 12, 12, 12, 12, 04, 04
    db 04, 12, 12, 12, 12, 12, 12, 12, 12, 04, 04
    db 00, 12, 12, 12, 12, 12, 12, 12, 04, 04, 00
    db 00, 04, 12, 12, 12, 12, 12, 04, 04, 04, 00
    db 00, 00, 04, 04, 04, 04, 04, 04, 04, 00, 00
    db 00, 00, 00, 04, 04, 00, 04, 04, 00, 00, 00

    arvore db 00, 00, 10, 10, 10, 00, 10, 10, 10, 00, 00
    db 00, 10, 10, 10, 10, 02, 10, 10, 10, 10, 00
    db 00, 10, 10, 10, 10, 10, 02, 10, 10, 10, 00
    db 10, 10, 02, 10, 10, 10, 10, 10, 02, 10, 10
    db 00, 02, 10, 10, 10, 10, 10, 10, 10, 02, 00
    db 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    db 00, 02, 10, 02, 10, 10, 10, 10, 10, 02, 00
    db 00, 10, 02, 10, 02, 10, 10, 10, 02, 10, 00
    db 00, 00, 10, 06, 10, 06, 10, 06, 10, 00, 00
    db 00, 00, 00, 10, 06, 10, 06, 10, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 00, 06, 06, 06, 00, 00, 00, 00
    db 00, 00, 00, 06, 06, 06, 06, 06, 00, 00, 00
    db 00, 00, 06, 06, 06, 06, 06, 06, 06, 00, 00

    dormindo db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 07, 07, 07, 07, 07, 07, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 07, 08, 08, 08, 08, 08, 08, 08, 07, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 07, 08, 08, 08, 08, 08, 08, 08, 08, 08, 07, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 07, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 07, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 07, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 07, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 07, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 07, 08, 08, 07, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 00, 07, 07, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 07, 08, 08, 07, 00, 00, 00, 00
	db  00, 00, 00, 00, 07, 15, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 15, 08, 08, 07, 00, 15, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 07, 08, 07, 15, 15, 15
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 07, 15, 15, 15
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 15, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 15, 13, 13, 15, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 00, 15, 13, 13, 13, 15, 15, 13, 13, 13, 13, 13, 13, 15, 15, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 00, 00
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00
    db  15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00
    db  15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00
    db  00, 00, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 15, 00, 00
    db  00, 00, 00, 00, 15, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 15, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

    banheira db  00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 00, 15, 15, 01, 15, 15, 15, 15, 15, 15, 00, 00, 00, 00, 00, 00, 00, 00
    db  00, 01, 00, 00, 00, 00, 00, 15, 13, 13, 01, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 01, 00, 00
	db  00, 01, 00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 01, 13, 13, 13, 13, 15, 00, 00, 00, 01, 00, 00
	db  00, 00, 00, 01, 00, 15, 01, 13, 13, 13, 13, 13, 13, 01, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00 
	db  00, 00, 00, 01, 15, 13, 01, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00, 00
	db  00, 00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00, 00
	db  00, 00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 01, 13, 15, 00, 00, 01, 00
    db  00, 00, 00, 15, 13, 13, 13, 13, 15, 13, 13, 13, 13, 13, 13, 15, 13, 13, 01, 13, 13, 15, 00, 01, 00
    db  00, 00, 00, 15, 13, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15, 13, 15, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 01, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 01, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00, 00
    db  00, 00, 15, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 15, 00, 00
    db  08, 08, 08, 08, 13, 13, 13, 13, 13, 13, 15, 13, 13, 15, 13, 13, 13, 13, 13, 13, 13, 08, 08, 08, 08
    db  08, 08, 08, 07, 01, 01, 01, 13, 13, 13, 13, 15, 15, 13, 13, 13, 13, 13, 08, 08, 08, 07, 08, 08, 08
    db  08, 08, 07, 07, 07, 01, 01, 01, 08, 08, 08, 08, 08, 08, 01, 01, 01, 01, 01, 07, 07, 07, 07, 08, 08
    db  00, 00, 08, 07, 07, 07, 01, 07, 07, 07, 07, 07, 07, 07, 01, 01, 01, 01, 07, 07, 07, 07, 08, 00, 00
    db  00, 00, 00, 08, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 01, 01, 07, 07, 07, 07, 08, 00, 00, 00
    db  00, 00, 00, 08, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 01, 07, 07, 07, 07, 08, 00, 00, 00
    db  00, 00, 00, 00, 08, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 08, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 08, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 08, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 08, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 07, 08, 00, 00, 00, 00, 00, 00
    db  00, 00, 00, 00, 00, 00, 00, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 08, 00, 00, 00, 00, 00, 00, 00

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
    ; posição X das vidas
    vida1X dw 239
    vida2X dw 252
    vida3X dw 265
    vida4X dw 278
    vida5X dw 291
    ; posição Y das vidas
    vidaY dw 2
    vida1Y dw 14
    vida2Y dw 26
    ;tamanho e posição dos objetos
    comidaW dw 11
    comidaH dw 14
    comidaX dw 130
    comidaY dw 60

    banheiraW dw 25
    banheiraH dw 25
    banheiraX dw 80
    banheiraY dw 270 

    arvoreW dw 11
    arvoreH dw 25
    arvoreX dw 260
    arvoreY dw 70

    dormindoW dw 26
    dormindoH dw 29
    dormindoX dw 80
    dormindoY dw 265
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
        cmp al, '2'
            je telaInstrucoes
        cmp al, '3'
            je telaCreditos
        jmp .espera

telaMenu:
    ;setando quantidade de vidas pra 5 e a cor default do tamagotchi
    mov ah, 5
    mov [qtVidas], ah
    mov ah, 5
    mov [qtHappy], ah
    mov ah, 5
    mov [qtGotas], ah
    mov ah, 0
    mov [cor], ah
    ;desenhar o tamagotchi
    call drawTamagotchi
    ;como a gente limpa todos os registradores depois de draw, tem que setar tudo de novo
    mov bl, 0xd ; aqui a cor da letra
    call corLetra
    ;posicionar título
    mov dl, 15
    mov dh, 4
    call andarEspaco
    mov si, titulo
    call printString
    ;posicionar jogar
    mov dl, 15
    mov dh, 15
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
    mov bl, 0xd ; aqui a cor da letra
    call corLetra
    ; posicionar a texto de escolher nome
    mov dl, 5
    mov dh, 4
    call andarEspaco
    mov si, escolhaNome
    call printString
    ; posicionar onde vai ler o nome
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
    mov bl, 0xd ; aqui a cor da letra
    call corLetra
    
    mov dl, 3
    mov dh, 4
    call andarEspaco
    mov si, escolhaCor
    call printString

    call drawTamagotchi

    ;como a gente limpa todos os registradores depois de draw, tem que setar tudo de novo
	mov bl, 9 ; aqui a cor da letra azul
	call corLetra

    ;posicionar azul
    add dl, 15
    add dh, 15
    call andarEspaco
    mov si, azul
    call printString

	mov bl, 13 ; aqui a cor da letra rosa
    call corLetra

    ;posicionar rosa
    add dh, 3
    call andarEspaco
    mov si, rosa
    call printString

    ;fazer verde
	mov bl, 10
	call corLetra

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
    cmp al, '3'
    je .verde
    ;.verde:
    mov ah, 8
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
    .verde:
        mov ah, 2
        mov [cor], ah
        ret
telaJogo:
    ;desenhar a tela do jogo
    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call drawVidas
    call drawHappys
    call drawGotas

	mov bl, [cor] ; aqui a cor da letra
	call corLetra
    mov dl, 2
    mov dh, 0
    call andarEspaco
    mov si, nome
    call printString

    mov si, alimenta
    mov dl, 5
    mov dh, 17
    call andarEspaco
    call printString

    mov si, passea
    mov dl, 5
    mov dh, 19
    call andarEspaco
    call printString

    mov si, dorme
    mov dl, 24
    mov dh, 17
    call andarEspaco
    call printString

    mov si, banho
    mov dl, 24
    mov dh, 19
    call andarEspaco
    call printString

    ; setar timer
    call timer
    
    jmp loopJogo

mexeBicho:
    mov ah, [timerFake]     ; pra nao repetir a mesma coisa dentro do mesmo segundo
    cmp dh, ah              ; vou ver se eu já printei naquele segundo
    je .continua
 
    mov [timerFake], dh     ; se n printei, agr eu vou salvar o tempo no timerFake e desenhar o bicho por cima do outro
    call drawTamagotchi
    
    .continua:
        ret

loopJogo:
    call verTempo
    call mexeBicho

    cmp dh, 3 ;dh é onde fica os segundos
        jge .diminuirVidas
    
    call verSeTemEntrada
    jz loopJogo ;se for 0 (ou seja, não tem entrada), volta pro loop
    call lerChar ;se não for 0, ele vê qual é o char
        cmp al, 'q'
            je .alimenta
        cmp al, 'w'
            je .passea
        cmp al, 'e'
            je .dorme
        cmp al, 'r'
            je .banho
    jmp loopJogo
    
    .alimenta:
        call .aumentarVida
        call .diminuirVida2
        jmp telaAlimenta
    .passea:
        call .aumentarVida1
        call .diminuirVida2
        mov ax, 260         ;reseta a posicao da arvore pra printar certo dps
        mov [arvoreX], ax
        jmp telaPassea
    .dorme:
        call .aumentarVida1
        call .diminuirVida
        jmp telaDorme
    .banho:
        call .aumentarVida2
        call .diminuirVida1
        jmp telaBanho
    .diminuirVidas:
        call .diminuirVida
        call .diminuirVida1
        call .diminuirVida2
        jmp telaJogo
    .aumentarVida:
        mov ah, [qtVidas]
        add ah, 1
        cmp ah, 6
            je telaGameOver
        mov [qtVidas], ah
        ret
    .aumentarVida1:
        mov ah, [qtHappy]
        add ah, 1
        cmp ah, 6
            je telaGameOver
        mov [qtHappy], ah
        ret
    .aumentarVida2:
        mov ah, [qtGotas]
        add ah, 1
        cmp ah, 6
            je telaGameOver
        mov [qtGotas], ah
        ret
    .diminuirVida:
        mov ah, [qtVidas]
        sub ah, 1
        cmp ah, 0
            je telaGameOver
        mov [qtVidas], ah
        ret
    .diminuirVida1:
        mov ah, [qtHappy]
        sub ah, 1
        cmp ah, 0
            je telaGameOver
        mov [qtHappy], ah
        ret
    .diminuirVida2:
        mov ah, [qtGotas]
        sub ah, 1
        cmp ah, 0
            je telaGameOver
        mov [qtGotas], ah
        ret

telaAlimenta:
    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call drawMaca
    call drawVidas
    call drawHappys
    call drawGotas

	mov bl, [cor] ; aqui a cor da letra
	call corLetra
    mov dl, 2
    mov dh, 0
    call andarEspaco
    mov si, nome
    call printString

    mov si, alimenta
    mov dl, 5
    mov dh, 17
    call andarEspaco
    call printString

    mov si, passea
    mov dl, 5
    mov dh, 19
    call andarEspaco
    call printString

    mov si, dorme
    mov dl, 24
    mov dh, 17
    call andarEspaco
    call printString

    mov si, banho
    mov dl, 24
    mov dh, 19
    call andarEspaco
    call printString

    call timer
    
    jmp .espera
    
    .espera:
        mov ah, 02h ; escolhe a funcao de ler o tempo do sistema
        int 1aH     ; interrupcao que lida com o tempo do sistema
        cmp dh, 2
            je telaJogo
        jmp .espera

telaPassea:

    call limparTela
    call modoVideoCor
    call drawTamagotchi
    call drawPassea
    call drawVidas
    call drawHappys
    call drawGotas
	mov bl, [cor] ; aqui a cor da letra
	call corLetra
    mov dl, 2
    mov dh, 0
    call andarEspaco
    mov si, nome
    call printString

    mov si, alimenta
    mov dl, 5
    mov dh, 17
    call andarEspaco
    call printString

    mov si, passea
    mov dl, 5
    mov dh, 19
    call andarEspaco
    call printString

    mov si, dorme
    mov dl, 24
    mov dh, 17
    call andarEspaco
    call printString

    mov si, banho
    mov dl, 24
    mov dh, 19
    call andarEspaco
    call printString

    call timer

    jmp .espera
    
    .espera:
        mov ah, 02h ; escolhe a funcao de ler o tempo do sistema
        int 1aH     ; interrupcao que lida com o tempo do sistema

        mov ah, [timerFake]     ; pra nao repetir a mesma coisa enquanto nao mudar de segundo
        cmp dh, ah
        je .ignora

        mov [timerFake], dh
        call erasePassea    ; esse erase ele só pinta um quadrado preto do tamanho do desenho anterior pra nao ter q printar a tela inteira dnv
        mov ax, [arvoreX]
        sub ax, 45          ;vou mover pra esquerda, entao diminuo 45 da posicao X da arvore
        mov [arvoreX], ax
        call drawPassea

        .ignora:
            cmp dh, 5
            je telaJogo
                
            jmp .espera

telaDorme:
    call limparTela
    call modoVideoCor
    call drawDormindo
    call drawVidas
    call drawHappys
    call drawGotas
	mov bl, [cor] ; aqui a cor da letra
	call corLetra
    mov dl, 2
    mov dh, 0
    call andarEspaco
    mov si, nome
    call printString

    mov si, alimenta
    mov dl, 5
    mov dh, 17
    call andarEspaco
    call printString

    mov si, passea
    mov dl, 5
    mov dh, 19
    call andarEspaco
    call printString

    mov si, dorme
    mov dl, 24
    mov dh, 17
    call andarEspaco
    call printString

    mov si, banho
    mov dl, 24
    mov dh, 19
    call andarEspaco
    call printString

    call timer
    
    jmp .espera
    
    .espera:
        mov ah, 02h ; escolhe a funcao de ler o tempo do sistema
        int 1aH     ; interrupcao que lida com o tempo do sistema
        cmp dh, 2
            je telaJogo
        jmp .espera

telaBanho:
    call limparTela
    call modoVideoCor
    call drawBanho
    call drawVidas
    call drawHappys
    call drawGotas
	mov bl, [cor] ; aqui a cor da letra
	call corLetra
    mov dl, 2
    mov dh, 0
    call andarEspaco
    mov si, nome
    call printString

    mov si, alimenta
    mov dl, 5
    mov dh, 17
    call andarEspaco
    call printString

    mov si, passea
    mov dl, 5
    mov dh, 19
    call andarEspaco
    call printString

    mov si, dorme
    mov dl, 24
    mov dh, 17
    call andarEspaco
    call printString

    mov si, banho
    mov dl, 24
    mov dh, 19
    call andarEspaco
    call printString

    call timer

    jmp .espera
    
    .espera:
        mov ah, 02h ; escolhe a funcao de ler o tempo do sistema
        int 1aH     ; interrupcao que lida com o tempo do sistema
        cmp dh, 2
            je telaJogo
        jmp .espera

telaInstrucoes:
    call limparTela
    call modoVideoCor
    call corLetra

    mov si, instrucoes2
	mov dl, 15
    mov dh, 1
	call andarEspaco
    call printString

    mov si, texto1
    mov dl, 0
    mov dh, 3
    call andarEspaco
    call printString

    mov si, texto2
    mov dl, 1
    mov dh, 6
    call andarEspaco
    call printString

    mov si, texto3
    mov dl, 1
    mov dh, 9
    call andarEspaco
    call printString

    mov si, texto4
    mov dl, 1
    mov dh, 12
    call andarEspaco
    call printString

    mov si, texto5
    mov dl, 1
    mov dh, 15
    call andarEspaco
    call printString

    mov si, texto6
    mov dl, 0
    mov dh, 19
    call andarEspaco
    call printString

    mov si, voltarMenu
    mov dl, 4
    mov dh, 23
	call andarEspaco
    call printString

    mov ax, 0

    .esperaEnter:
        mov ah, 0
			int 16h
			cmp al, 13
			jne esperaEnter	

    jmp start

telaCreditos:
    call limparTela
    call modoVideoCor
    mov bl, 0xd ; aqui a cor da letra
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

    jmp start


telaGameOver:
    call limparTela
    call modoVideoCor
    mov bl, [cor] ; aqui a cor da letra
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
		;cmp al, 0	; se for 0 eh espaco em branco e nao vamos printar nada
		;je .naoprinta0	;ai eu pulo pra incrementar os contadores e seguir pro prox pixel
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

eraseAnything:
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
		lodsb
        mov al, 0
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

    mov ah, [qualTamagotchi]
    not ah
    mov [qualTamagotchi], ah

    cmp ah, 0
    je .troca
    
    mov ax, tamagotchi
    mov [currentSprite], ax
    call drawAnything
    ret

    .troca:
        mov ax, tamagotchi2
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

drawVidas:
    mov ah, [qtVidas]
    cmp ah, 1
        je .draw1
    cmp ah, 2
        je .draw2
    cmp ah, 3
        je .draw3
    cmp ah, 4
        je .draw4
    ;nenhum, então desenha 5
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
    mov ax, [vida5X]
	mov [drawX], ax
    call drawVida
    ret

    .draw1:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawVida
        ret
    .draw2:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawVida
        xor ax, ax
        mov ax, [vida2X]
	    mov [drawX], ax
        call drawVida
        ret
    .draw3:
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
    .draw4:
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

drawHappys:
    mov ah, [qtHappy]
    cmp ah, 1
        je .draw1
    cmp ah, 2
        je .draw2
    cmp ah, 3
        je .draw3
    cmp ah, 4
        je .draw4
    ;nenhum, então desenha 5
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawHappy
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawHappy
    xor ax, ax
    mov ax, [vida3X]
	mov [drawX], ax
    call drawHappy
    xor ax, ax
    mov ax, [vida4X]
	mov [drawX], ax
    call drawHappy
    mov ax, [vida5X]
	mov [drawX], ax
    call drawHappy
    ret

    .draw1:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawHappy
        ret
    .draw2:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida2X]
	    mov [drawX], ax
        call drawHappy
        ret
    .draw3:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida2X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida3X]
        mov [drawX], ax
        call drawHappy
        ret
    .draw4:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida2X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida3X]
        mov [drawX], ax
        call drawHappy
        xor ax, ax
        mov ax, [vida4X]
        mov [drawX], ax
        call drawHappy
        ret



drawHappy:
    mov ax, [vida1Y]
	mov [drawY], ax

	mov ax, [vidaW]
	mov [spriteW], ax

	mov ax, [vidaH]
	mov [spriteH], ax

	mov ax, vida1
	mov [currentSprite], ax

	call drawAnything

	ret

drawGotas:
    mov ah, [qtGotas]
    cmp ah, 1
        je .draw1
    cmp ah, 2
        je .draw2
    cmp ah, 3
        je .draw3
    cmp ah, 4
        je .draw4
    ;nenhum, então desenha 5
    xor ax, ax
    mov ax, [vida1X]
	mov [drawX], ax
    call drawGota
    xor ax, ax
    mov ax, [vida2X]
	mov [drawX], ax
    call drawGota
    xor ax, ax
    mov ax, [vida3X]
	mov [drawX], ax
    call drawGota
    xor ax, ax
    mov ax, [vida4X]
	mov [drawX], ax
    call drawGota
    mov ax, [vida5X]
	mov [drawX], ax
    call drawGota
    ret

    .draw1:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawGota
        ret
    .draw2:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida2X]
	    mov [drawX], ax
        call drawGota
        ret
    .draw3:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida2X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida3X]
        mov [drawX], ax
        call drawGota
        ret
    .draw4:
        xor ax, ax
        mov ax, [vida1X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida2X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida3X]
        mov [drawX], ax
        call drawGota
        xor ax, ax
        mov ax, [vida4X]
        mov [drawX], ax
        call drawGota
        ret



drawGota:
    mov ax, [vida2Y]
	mov [drawY], ax

	mov ax, [vidaW]
	mov [spriteW], ax

	mov ax, [vidaH]
	mov [spriteH], ax

	mov ax, vida2
	mov [currentSprite], ax

	call drawAnything

	ret

drawMaca:
    xor ax, ax
    mov ax, [comidaX]
    mov [drawX], ax
    mov ax, [comidaY]
    mov [drawY], ax

    mov ax, [comidaW]
    mov [spriteW], ax
    mov ax, [comidaH]
    mov [spriteH], ax
    mov ax, comida
    mov [currentSprite], ax

    call drawAnything

    ret

drawBanho:
    xor ax, ax
    mov ax, [banheiraX]
	mov [drawX], ax
	mov ax, [banheiraY]
	mov [drawY], ax


	mov ax, [banheiraW]
	mov [spriteW], ax

	mov ax, [banheiraH]
	mov [spriteH], ax

	mov ax, banheira
	mov [currentSprite], ax

	call drawAnything

	ret

drawDormindo:
    xor ax, ax
    mov ax, [dormindoX]
	mov [drawX], ax
	mov ax, [dormindoY]
	mov [drawY], ax


	mov ax, [dormindoW]
	mov [spriteW], ax

	mov ax, [dormindoH]
	mov [spriteH], ax

	mov ax, dormindo
	mov [currentSprite], ax

	call drawAnything

	ret

erasePassea:
    xor ax, ax
    mov ax, [arvoreX]
	mov [drawX], ax
	mov ax, [arvoreY]
	mov [drawY], ax

	mov ax, [arvoreW]
	mov [spriteW], ax

	mov ax, [arvoreH]
	mov [spriteH], ax

	mov ax, arvore
	mov [currentSprite], ax

	call eraseAnything

	ret

drawPassea:
    xor ax, ax
    mov ax, [arvoreX]
	mov [drawX], ax
	mov ax, [arvoreY]
	mov [drawY], ax

	mov ax, [arvoreW]
	mov [spriteW], ax

	mov ax, [arvoreH]
	mov [spriteH], ax

	mov ax, arvore
	mov [currentSprite], ax

	call drawAnything

	ret

timer:
    mov ah, 03h ; escolhe a funcao de ler o tempo do sistema
    mov ch, 0   ; horas
    mov cl, 0   ; minutos
    mov dh, 0   ; segundos
    mov dl, 1   ; seta o modo entre dia e noite do relogio do sistema(1 para dia)
    int 1aH     ; interrupcao que lida com o tempo do sistema
    ret

verTempo:
    mov ah, 02h ; escolhe a funcao de ler o tempo do sistema
    int 1aH     ; interrupcao que lida com o tempo do sistema
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
	int 10h
    ret

verSeTemEntrada:
    mov ah, 1 ;vê o status da entrada 
    int 16h 
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

