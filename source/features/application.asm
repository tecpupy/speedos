	BITS 16
	ORG 32768
	%INCLUDE 'mikedev.inc'

start:
	mov si, mystring
	call os_print_string

	call os_wait_for_key

	ret

	mystring db 'My first MikeOS program!', 0