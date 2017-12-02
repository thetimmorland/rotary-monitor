# rotary-monitor

Credit: http://darcy.rsgc.on.ca

For your first assembly language challenge you are to CONTINUOUSLY monitor a BCD rotary switch in the manner described. If there are an EVEN number of set bits in the BCD value read, your bicolor LED should show red, otherwise it will show green. You will use the ATtiny85 for this challenge. To simplify the matter somewhat you are only required to monitor the BCD values from 0 to 7 inclusive .The BCD value is to be read on pins 0-2 and your bicolor LED will span pins 3 and 4, with the longer lead in pin 3.

## Task.

1. Familiarize yourself with the rotary switch provided (https://www.digikey.ca/products/en?keywords=428527420910-ND)
2. Breadboard the circuit using parts from your toolkit and any extra components supplied. You may wish to grab a DMM if it would help.
3. Within the file RotaryMonitor.S, develop, test, and document pure AVR assembly code (no Arduino C code) to meet the requirements above.
4. Use your phone to capture images and video of your circuit in action for your ER.
5. At the end of the challenge period, attach RotaryMonitor.S to an email to handin under the Subject Line: Challenge 1 (Code) and leave your circuit in the box on the center table.
6. By midnight tomorrow night (Saturday December 2), develop and submit a comprehensive ER report (don't forget to include your fully documented Code) under the Subject Line: Challenge 1 (ER).
