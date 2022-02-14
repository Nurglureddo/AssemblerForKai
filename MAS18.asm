code segment
	assume cs:code, ds:code
N:	push cs
	pop	ds
	xor	ax,ax
	xor	bx,bx
	mov	cx,5
M:	cmp	A[bx],0
	jg	K
	mov A[bx],0
K:	inc	bx
	inc	bx
	loop M
	mov ax,4c00h
	int 21h
	A	dw	1,-2,-3,-4,5
code ends
end N