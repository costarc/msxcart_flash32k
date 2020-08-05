CHPUT: EQU $A2
org $4000
db "AB"
dw INIT
db "MSXPi2 CPLD TST"
INIT:
ld a,'M'
call CHPUT
ld a,'S'
call CHPUT
ld a,'X'
call CHPUT
ld a,'P'
call CHPUT
ld a,'I'
call CHPUT
halt
