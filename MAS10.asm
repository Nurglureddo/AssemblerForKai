code segment
	assume cs:code, ds:code
N:	push cs
	pop	ds
	xor	ax,ax
	xor	bx,bx
	inc bx
	inc bx
	mov	cx,9
	mov ax,A
M:	cmp	A[bx],ax
	jg	K
	mov ax,A[bx]
K:	inc	bx
	inc	bx
	loop M
	mov ax,4c00h
	int 21h
A	dw	1,-2,-3,-4,5,6,-7,-8,-9,10
code ends
end N