section .data
	; db is 1 byte (8 bits)
	name 1 `db` "string"
	name 2 `db` 0xff
	name 3 `db` 100

	; dw is 2 byte (16 bits)
	name 4 `dw` 1000
	
	; dd is 4 bytes (32 bits)
	name 5 dd 100000	
