; EQU:
; Data addresses used by the opcodes that point to uninitialized memory areas.
L6001:       equ  6001h	; 24577. Subroutine. Called by: L62E2[6300h].
L6010:       equ  6010h	; 24592. Subroutine. Called by: L62E2[62E6h].
L601B:       equ  601Bh	; 24603. Subroutine. Called by: L62E2[62E9h].
; Last element of stack:
L63D1:       equ  63D1h
L8008:       equ  8008h	; 32776. Subroutine. Called by: L62E2[62F9h].
L801B:       equ  801Bh	; 32795. Subroutine. Called by: L62E2[6304h].
L8030:       equ  8030h	; 32816. Data accessed by: 62EFh(in L62E2), 62F5h(in L62E2)


             org 62E2h ; 62E2h


; Label not accessed.
62E2 L62E2:
62E2 F3           DI          
62E3 31 D3 63     LD   SP,L63D1+2 	; 63D3h, top of stack
62E6 CD 10 60     CALL L6010  	; 6010h
62E9 CD 1B 60     CALL L601B  	; 601Bh
62EC 21 32 80     LD   HL,8032h 	; 32818, -32718
62EF 22 30 80     LD   (L8030),HL 	; 8030h
62F2 11 00 58     LD   DE,5800h 	; 22528
62F5 L62F5:
62F5 2A 30 80     LD   HL,(L8030) 	; 8030h
62F8 7E           LD   A,(HL) 
62F9 CD 08 80     CALL L8008  	; 8008h
62FC D5           PUSH DE     
62FD 11 88 13     LD   DE,1388h 	; 5000
6300 CD 01 60     CALL L6001  	; 6001h
6303 D1           POP  DE     
6304 CD 1B 80     CALL L801B  	; 801Bh
6307 18 EC        JR   L62F5  	; 62F5h


6309 00           defb 00h    	; 0
630A 00           defb 00h    	; 0
630B 00           defb 00h    	; 0
630C 00           defb 00h    	; 0
630D 00           defb 00h    	; 0
630E 00           defb 00h    	; 0
630F 00           defb 00h    	; 0
6310 00           defb 00h    	; 0
6311 00           defb 00h    	; 0
6312 00           defb 00h    	; 0
6313 00           defb 00h    	; 0
6314 00           defb 00h    	; 0
6315 00           defb 00h    	; 0
6316 00           defb 00h    	; 0
6317 00           defb 00h    	; 0
6318 00           defb 00h    	; 0
6319 00           defb 00h    	; 0
631A 00           defb 00h    	; 0
631B 00           defb 00h    	; 0
631C 00           defb 00h    	; 0
631D 00           defb 00h    	; 0
631E 00           defb 00h    	; 0
631F 00           defb 00h    	; 0
6320 00           defb 00h    	; 0
6321 00           defb 00h    	; 0
6322 00           defb 00h    	; 0
6323 00           defb 00h    	; 0
6324 00           defb 00h    	; 0
6325 00           defb 00h    	; 0
6326 00           defb 00h    	; 0
6327 00           defb 00h    	; 0
6328 00           defb 00h    	; 0
6329 00           defb 00h    	; 0
632A 00           defb 00h    	; 0
632B 00           defb 00h    	; 0
632C 00           defb 00h    	; 0
632D 00           defb 00h    	; 0
632E 00           defb 00h    	; 0
632F 00           defb 00h    	; 0
6330 00           defb 00h    	; 0
6331 00           defb 00h    	; 0
6332 00           defb 00h    	; 0
6333 00           defb 00h    	; 0
6334 00           defb 00h    	; 0
6335 00           defb 00h    	; 0
6336 00           defb 00h    	; 0
6337 00           defb 00h    	; 0
6338 00           defb 00h    	; 0
6339 00           defb 00h    	; 0
633A 00           defb 00h    	; 0
633B 00           defb 00h    	; 0
633C 00           defb 00h    	; 0
633D 00           defb 00h    	; 0
633E 00           defb 00h    	; 0
633F 00           defb 00h    	; 0
6340 00           defb 00h    	; 0
6341 00           defb 00h    	; 0
6342 00           defb 00h    	; 0
6343 00           defb 00h    	; 0
6344 00           defb 00h    	; 0
6345 00           defb 00h    	; 0
; ...
; ...
; ...
