; Perif�ricos
ON_OFF				EQU			1A0H
Opcao				EQU			1B0H
OK					EQU			1C0H

; Display
Display				EQU			200H
Display_end 		EQU			26FH
CaracterVazio 		EQU 		20H			; Caracter para limpar o ecra

MAlmoco				EQU 		1			; Op��o de Almoco
MBebidas			EQU 		2			; Op��o de Bebidas
MSandes				EQU 		3			; Op��o de Sandes
MSopas				EQU 		4			; Op��o de Sopas

MQuente 			EQU 		1			; Op��o de bebida quente
MFrio				EQU 		2			; Op��o de bebida fria

StackPointer 		EQU 		6000H 

Place 2000H
MenuInicio:
	String " MENU PRINCIPAL "
	String "1 - ALMO�O      "
	String "2 - BEBIDAS     "
	string "3 - SANDES      "
	String "4 - SOPAS       "
	String "                "
	String "                "

Place 2080H
MenuBebidas:
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
		MOV R0, Opcao
		MOVB R1, [R0]
		CMP R1, 0
		JEQ Le_Opcao
		CMP R1, MBebidas
		JEQ OBebidas
		CMP R1, MAlmoco
		JEQ OBAlmoco		
		CMP R1, MSandes
		JEQ OSandes		
		CMP R1, MSopas
		JEQ OSopas	
		CALL RotinaERRO
		JMP ligado
		
		
;------------------
;   Menu bebidas
;------------------	
		
OBebidas:		
		MOV R2, MenuBebidas
		CALL MostraDisplay
		CALL LimpaPerifericos
		MOV R0, Opcao
OBebidasciclo:
		MOVB R1, [R0]
		CMP R1, 0
		JEQ OBebidasciclo
		CMP R1, MQuente
		JEQ ligado
		CMP R1, MFrio
		JEQ ligado
		CALL RotinaERRO
		JMP OBebidas

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
;------------------
;  Rotina Almoco
;------------------			
		
OBAlmoco:
		JMP ligado	
		
		
;------------------
;  Rotina Sandes
;------------------			

OSandes:
		JMP ligado
		
		
;------------------
;  Rotina Sopas
;------------------			
		
OSopas:
		JMP ligado	
		
;------------------
; Mostra Display
;------------------		
		
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
		MOV R0, ON_OFF
		MOV R1, Opcao
		MOV R2, OK
		MOV R3, 0
		MOVB [R0], R3
		MOVB [R1], R3
		MOVB [R2], R3
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
