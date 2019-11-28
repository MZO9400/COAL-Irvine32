; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

Include Irvine32.inc
ExitProcess proto,dwExitCode:dword

.code
main proc
    call      Clrscr
	mov	eax,5				
	add	eax,6
	mov cl,10
	mov al, 'A'
l1:	call WriteChar
	dec cl
	jnz l1
	call DumpRegs
	invoke ExitProcess,0
main endp
end main	