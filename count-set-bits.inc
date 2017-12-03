;
; count-set-bits.inc
;
; count the number of set bits in a register
;

; COUNT_SET_BITS Rd, Rr
.MACRO COUNT_SET_BITS

setup:	clr @0
		push @1 ; perserve contents of Rr

loop:	sbrc @1, 0
		inc @0

		lsr @1 ; change bit to be masked
		breq exit
		rjmp loop

exit:	pop @1 ; restore Rr

.ENDMACRO
