.include "/home/aryan/Downloads/m328Pdef.inc" ;Header File
ldi r16, 0b00111100 ;loading register with value
out ddrd, r16 ;configuring portd as input and output
main: ;main subroutine
ldi r18, 0b11000000 ;loading register with value
in r17, PIND ;reading input from portd and storing in r17
AND r17, r18 ;and operation between r17 and r18
cpi r17, 0b00000000 ;immediatly comparing r17 with value
brne l1 ;branch to l1 if not equal
ldi r21, 0b00000100 ;loading register with value
out portd, r21 ;sending data to d port
l1: cpi r17, 0b01000000 ;immediatly comparing r17 with value
brne l2 ;branch to l2 if not equal
ldi r22, 0b00001000 ;loading register with value
out portd, r22 ;sending data to d port
l2: cpi r17, 0b10000000 ;immediatly comparing r17 with value
brne l3 ;branch to l3 if not equal
ldi r23, 0b00010000 ;loading register with value
out portd, r23 ;sending data to d port
l3: cpi r17, 0b11000000 ;immediatly comparing r17 with value
brne l4 ;branch to l4 if not equal
ldi r24, 0b00100000 ;loading register with value
out portd, r24 ;sending data to d port
l4: rjmp main ;relative jump to main
