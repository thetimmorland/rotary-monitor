;
; count-set-bits.inc
;
; count the number of set bits in a register
;

; COUNT_SET_BITS Rd, Rr
.MACRO COUNT_SET_BITS

setup:	clr @0
		push @1 ; perserve contents of Rr

loop:	sbrc @1, 0 ; if LSB is clear, skip do not count
		inc @0

		lsr @1
		breq exit ; if shifted byte is now zero, exit

		rjmp loop

exit:	pop @1 ; restore Rr

.ENDMACRO
