; Perif�ricos
ON_OFF				EQU			190H
Sel_Nr_Menu			EQU			1A0H
OK					EQU			1B0H
CHANGE				EQU			1C0H
CANCEL				EQU			1D0H
PESO				EQU			1E0H
PRODUTO				EQU 		1F0H
;CODIGOS DOS PRODUTOS	
UVAS				EQU			
MELANCIA			EQU
ANANAS				EQU
KIWI				EQU
PESSEGO				EQU
BANANA				EQU
MORANGO				EQU
FRAMBOESA			EQU
LARANJA				EQU
TANGERINA			EQU
CENOURA				EQU
BATATA				EQU
NABO				EQU
BETERRABA			EQU
ALHO				EQU
CEBOLA				EQU
ERVILHA				EQU
LENTILHAS			EQU
TRIGO				EQU
MILHO				EQU
FAVAS				EQU
CASTANHAS			EQU
NOZ					EQU
AMENDOIM			EQU
CAFÉ				EQU


; Display
Display				EQU			200H
Display_end 		EQU			26FH
CaracterVazio 		EQU 		20H			; Caracter para limpar o ecra

MBalanca			EQU 		1			; Opcao de Balanca
MRegistos			EQU 		2			; Opcao de Registos
OLimpa				EQU 		3			; Opcao de Limpar

;StackPointer 		EQU 		6000H 

Place 0180H
MostraBotoes:
	String "Botoes em baixo "

Place 0192H
BOnOff:
	String "On_off        "

Place 01A2H
BSel_Nr_Menu:
	String "Sel_Nr_Menu   "

Place 01B2H
BOk:
	String "Ok            "

Place 01C2H
BChange:
	String "Change        "

Place 01D2H
BCancel:
	String "Cancel        "

Place 01E2H
BPeso:
	String "Peso          "

Place 01F2H
BProduto:
	String "Produto       "


;Tabela dos Precos e Nomes 
Place 0300H
Uvas:	
	String "      Uvas      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      5.34EUR/KG"
	String "Total:          "
	String "                "
Melancia:	
	String "    Melancia    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "                "
Ananas:	
	String "     Ananas     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.87EUR/KG"
	String "Total:          "
	String "                "
Kiwi:	
	String "      Kiwi      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      3.56EUR/KG"
	String "Total:          "
	String "                "
Pessego:	
	String "     Pessego    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      4.46EUR/KG"
	String "Total:          "
	String "                "
Framboesa:	
	String "    Framboesa   "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "     17.81EUR/KG"
	String "Total:          "
	String "                "
Laranja:	
	String "     Laranja    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.60EUR/KG"
	String "Total:          "
	String "                "
Tanjerina:	
	String "    Tanjerina   "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      2.22EUR/KG"
	String "Total:          "
	String "                "
Cenoura:	
	String "     Cenoura    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.04EUR/KG"
	String "Total:          "
	String "                "
Batata:	
	String "     Batata     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.14EUR/KG"
	String "Total:          "
	String "                "
Nabo:	
	String "      Nabo      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      2.28EUR/KG"
	String "Total:          "
	String "                "
Beterraba:	
	String "    Beterraba   "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      5.23EUR/KG"
	String "Total:          "
	String "                "
Alho:	
	String "      Alho      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      6.19EUR/KG"
	String "Total:          "
	String "                "
Cebola:	
	String "     Cebola     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "     1.43EUR/KG"
	String "Total:          "
	String "                "
Ervilha:	
	String "     Ervilha    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      1.42EUR/KG"
	String "Total:          "
	String "                "
Lentilhas:	
	String "    Lentilhas   "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      2.19EUR/KG"
	String "Total:          "
	String "                "
Trigo:	
	String "      Trigo     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      0.95EUR/KG"
	String "Total:          "
	String "                "
Milho:	
	String "      Milho     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      3.62EUR/KG"
	String "Total:          "
	String "                "
Favas:	
	String "      Favas     "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      4.07EUR/KG"
	String "Total:          "
	String "                "
Castanhas:	
	String "    Castanhas   "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      8.92EUR/KG"
	String "Total:          "
	String "                "
Noz:	
	String "       Noz      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "     18.39EUR/KG"
	String "Total:          "
	String "                "
Amendoim:	
	String "    Amendoim    "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "      8.03EUR/KG"
	String "Total:          "
	String "                "
Cafe:	
	String "      Cafe      "
	String "Peso :          "
	String "                "
	String "Preco:          "
	String "     20.25EUR/KG"
	String "Total:          "
	String "                "




Place 2000H
MenuInicio:
	String " MENU PRINCIPAL "
	String "1 - BALANCA     "
	String "2 - REGISTOS    "
	string "----------------"
	String "4 - LIMPAR      "
	String "    REGISTOS    "
	String "                "

Place 2080H
MenuBalanca:
	String "  MENU BEBIDAS  "
	String "1 - QUENTES     "
	String "2 - FRIAS       "
	string "                "
	String "                "
	String "                "
	String "                "
	
Place 2100H
MenuErro:
	String "     ATEN��O    "
	String "                "
	String "      OP��O     "
	string "     ERRADA     "
	String "                "
	String "                "
	String "                "	
	
Place 0000H
Inicio:	
		MOV R0, Principio
		JMP R0

Place 3000H

;inicializar o stackpoint para o Call funcuonar
pilha:
	STACK 10H;
StackPointer:

Principio:
		MOV SP, StackPointer
		CALL LimpaDisplay
		CALL LimpaPerifericos
		MOV R0, ON_OFF
Liga:
		MOVB R1, [R0]
		CMP R1, 1
		JNE Liga
ligado:	
		MOV R2, MenuInicio
		CALL MostraDisplay
		CALL LimpaPerifericos
Le_Opcao:
		MOV R0, Sel_Nr_Menu
		MOVB R1, [R0]
		CMP R1, 0
		JEQ Le_Opcao
		CMP R1, MBalanca
		JEQ OBalanca
;		CMP R1, MAlmoco
;		JEQ OBAlmoco		
;		CMP R1, MSandes
;		JEQ OSandes		
;		CMP R1, MSopas
;		JEQ OSopas	
		CALL RotinaERRO
		JMP ligado
		
		

;------------------
;   Rotina Erro
;------------------			
		
RotinaERRO:
		PUSH R0
		PUSH R1
		PUSH R2
		MOV R2, MenuErro
		CALL MostraDisplay
		CALL LimpaPerifericos		
		MOV R0, OK
ERRO:
		MOVB R1, [R0]
		CMP R1, 1
		JNE ERRO
		POP R2
		POP R1
		POP R0
		RET

		
MostraDisplay:
		PUSH R0
		PUSH R1
		PUSH R3
		MOV R0, Display
		MOV R1, Display_end
Ciclo:	
		MOV R3, [R2]
		MOV [R0], R3
		ADD R2, 2
		ADD R0, 2
		CMP R0, R1
		JLE Ciclo
		POP R3
		POP R2
		POP R1
		RET
		
;--------------------
; Limpa Perifericos
;--------------------				
			
LimpaPerifericos:
		PUSH R0
		PUSH R1
		PUSH R2
		PUSH R3
		PUSH R4
		PUSH R5
		PUSH R6
		MOV R0, ON_OFF
		MOV R1, Sel_Nr_Menu
		MOV R2, OK
		MOV R3, CHANGE
		MOV R4, CANCEL
		MOV R5, PESO 
		MOV R6, PRODUTO
		MOV R7, 0
		MOV R8, 0
CicloLimpaPerifericos:; Para limpar os 2 brimeiros bits
		ADD R0,R8		
		ADD R1,R8
		ADD R2,R8
		ADD R3,R8
		ADD R4,R8
		ADD R5,R8
		MOVB [R0], R6
		MOVB [R1], R6
		MOVB [R2], R6
		MOVB [R3], R6
		MOVB [R4], R6
		MOVB [R5], R6
		ADD R8, 1
		CMP R8, 1
		JEQ CicloLimpaPerifericos
		POP R6
		POP R5
		POP R4
		POP R3
		POP R2
		POP R1
		POP R0
		RET

;------------------
;  Limpa Display
;------------------	
		
LimpaDisplay:
		PUSH R0
		PUSH R1
		PUSH R2		
		MOV R0, Display
		MOV R1, Display_end
CicloLimpa:	
		MOV R2, CaracterVazio
		MOVB [R0], R2
		ADD R0, 1
		CMP R0, R1
		JLE CicloLimpa
		POP R2
		POP R1
		POP R0		
		RET		



;------------------
;  	 Balanca
;------------------	
OBalanca:

	JMP ligado;
