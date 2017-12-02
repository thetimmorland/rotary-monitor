;
; rotary-monitor.asm
;
; Created: 2017-12-01 1:40:49 PM
; Author : Tim
;

.INCLUDE "count-set-bits.inc"

.DEF switchInput = r16
.DEF setBits = r17
.DEF tmp = r18

.SET green = PB3
.SET red = PB4

start:	ldi tmp, 1 << green | 1 << red
		out DDRB, tmp

loop:	in switchInput, PINB ; read input register
		andi switchInput,  7 | 1 << 5 ; clear bits not tied to switch input (in case of floating input)

		COUNT_SET_BITS setBits, switchInput ; count number of set bits

		sbrs setBits, 0 ; skip jump if LSB of setBits is set (odd)
		rjmp isEven

isOdd:	ldi tmp, 1 << red
		out PORTB, tmp
		rjmp loop ; restart

isEven:	ldi tmp, 1 << green
		out PORTB, tmp

		rjmp loop ; restart
