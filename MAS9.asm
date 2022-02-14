.model tiny
.data
A	db	1,-2,-3,-4,-5,-6,7,-8,9,-10
.code
N:	push cs
	pop	ds
	xor	ax,ax
	xor	bx,bx
	inc bx
	mov	cx,9
	mov al,A
M:	cmp	A[bx],al
	jl	K
	mov	al,A[bx]
K:	inc	bx
	loop M
	mov ax,4c00h
	int 21h
end N
