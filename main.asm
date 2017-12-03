;
; rotary-monitor.asm
;
; if the input of a rotary encoder is even set LED red
; otherwise set LED green
;

.INCLUDE "count-set-bits.inc"

.SET green = PB3
.SET red = PB4

setup:	ldi r16, 1 << green | 1 << red ; enable output for LED pins
		out DDRB, r16

loop:	.DEF rotaryInput = r16
		.DEF setBits = r17

		in rotaryInput, PINB ; read input register
		andi rotaryInput,  0x07 ; clear pins not tied to rotary input (in case of floating input)

		COUNT_SET_BITS setBits, rotaryInput ; count number of set bits

		sbrs setBits, 0 ; skip rjmp if LSB of setBits is set (odd)
		rjmp isEven

		.UNDEF rotaryInput
		.UNDEF setBits
		
isOdd:	ldi r16, 1 << green ; set LED green
		out PORTB, r16
		
		rjmp loop ; restart

isEven:	ldi r16, 1 << red ; set LED red
		out PORTB, r16

		rjmp loop ; restart
