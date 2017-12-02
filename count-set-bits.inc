;
; count-set-bits.inc
;
; count the number of set bits in a register
;

; COUNT_SET_BITS Rd, Rr
; r16 <= Rd, Rr
.MACRO COUNT_SET_BITS

clr @0
push @1 ; perserve @1

loop:	sbrc @1, 0
		inc @0

		lsr @1 ; change bit to be masked
		breq return
		rjmp loop

return:
		pop @1

.ENDMACRO
