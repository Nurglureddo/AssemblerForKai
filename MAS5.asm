.model tiny
.data
A	db	1,-2,-3,-4,-5,-6,7,-8,9,-10
.code
N:	push cs
	pop	ds
	xor	ax,ax
	xor	bx,bx
	mov	cx,10
M:	cmp	A[bx],0
	jg	K
	sar A[bx],1
K:	inc	bx
	loop M
	mov ax,4c00h
	int 21h
end N