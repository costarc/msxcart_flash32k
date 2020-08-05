;|===========================================================================|
;|                                                                           |
;| MSXPi Cartridge 32K EEPROM                                                |
;|                                                                           |
;| Version : 1.0                                                             |
;|                                                                           |
;| Copyright (c) 2020 Ronivon Candido Costa (ronivon@outlook.com)            |
;|                                                                           |
;| All rights reserved                                                       |
;|                                                                           |
;| Redistribution and use in source and compiled forms, with or without      |
;| modification, are permitted under GPL license.                            |
;|                                                                           |
;|===========================================================================|
;|                                                                           |
;| This file is part of msxcart_flash32k project.                            |
;|                                                                           |
;| msxcart_flash32k is free software: you can redistribute it and/or modify  |
;| it under the terms of the GNU General Public License as published by      |
;| the Free Software Foundation, either version 3 of the License, or         |
;| (at your option) any later version.                                       |
;|                                                                           |
;| MSX PI Interface is distributed in the hope that it will be useful,       |
;| but WITHOUT ANY WARRANTY; without even the implied warranty of            |
;| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             |
;| GNU General Public License for more details.                              |
;|                                                                           |
;| You should have received a copy of the GNU General Public License         |
;| along with MSX PI Interface.  If not, see <http://www.gnu.org/licenses/>. |
;|===========================================================================|
;
; File history :
; 1.0  - 27/06/2020 : initial version
; Compile with z80asm: 
;  z80asm writerom.asm writerom.asm -o writerom.com

dma:            equ $80
regsize:        equ     1
numregtoread:   equ     64
TEXTTERMINATOR: EQU     0
BDOS:           EQU     5
CALLSTAT:       EQU     $55A8
INLINBUF:       EQU     $F55E
INLIN:          EQU     $00B1
CHPUT:          EQU     $00A2
CHGET:          EQU     $009F
INITXT:         EQU     $006C
EXPTBL:         EQU     $FCC1
RDSLT:          EQU     $000C
WRSLT:          EQU     $0014
CALSLT:         EQU     $001C
ENASLT:         EQU     $0024
RSLREG:         EQU     $0138
WSLREG:         EQU     $013B
CSRY:           EQU     $F3DC
CSRX:           EQU     $F3DD
ERAFNK:         EQU     $00CC
DSPFNK:         EQU     $00CF
PROCNM:         EQU     $FD89
XF365:          EQU     $F365                  ; routine read primary slotregister

DEVICE:         equ     0FD99H

txttab:         equ     $f676
vartab:         equ     $f6c2
arytab:         equ     $f6c4
strend:         equ     $f6c6
SLTATR:         equ     $fcc9
CALBAS:         equ     $0159
CHRGTR:         equ     $4666

ERRHAND:        EQU     $406F
FRMEVL:         EQU     $4C64
FRESTR:         EQU     $67D0
VALTYP:         EQU     $F663
USR:            EQU     $F7F8
ERRFLG:         EQU     $F414
HIMEM:          EQU     $FC4A
MSXPICALLBUF:   EQU     $E3D8

RAMAD0:         equ $F341             ; slotid DOS ram page 0
RAMAD1:         equ $F342             ; slotid DOS ram page 1
RAMAD2:         equ $F343             ; slotid DOS ram page 2
RAMAD3:         equ $F344             ; slotid DOS ram page 3

; This is a MSX-DOS program
; STart address is $100

        org     $100
    
        ld      hl,txt_ramsearch
        call    print
        call    search_eeprom
        ld      hl,txt_ramnotfound
        jp      c,print
        ld      hl,txt_ramfound
        call    print
        call    PRINTNUMBER
        ld      hl,txt_newline
        call    print
        ret

; Search for the EEPROM
search_eeprom:
        ld      a,$FF
        ld      (thisslt),a
nextslot:
         di
         call    sigslot
         cp      $FF
         jr      z,endofsearch
         ld      h,$40
         call    ENASLT
         call    testram
         jr      c,nextslot
         ld      a,(RAMAD1)
         ld      h,$40
         call    ENASLT
         ld      a,(thisslt)   ; return the slot where eeprom was found
         or      a
         ret 
endofsearch:
         ld      a,(RAMAD1)
         ld      h,$40
         call    ENASLT
         ld      a,$FF
         scf
         ret 

testram:
        ld      hl,$4000
        ld      e,(hl)
        push    de      ; save original value to restore later
        ld      e,'<'
        call    writeram
        pop     de
        ret     c
        call    writeram ; write original value
        inc     hl
        ld      e,(hl)
        push    de      ; save original value to restore later
        ld      e,'>'
        call    writeram
        pop     de
        ret     c
        call    writeram ; write original value
        or      a ; flag success
        ret 

writeram:
        ;- send write-protectiton codes
        ld      a,$AA
        ld      ($9555),a
        ld      a,$55
        ld      ($6AAA),a 
        ld      a,$A0
        ld      ($9555),a 
        ; -
        call    delay
        ; - 
        ld      a,e
        ld      (hl),a
        call    checkifsaved
        ret

checkifsaved:
        push    af
        push    bc
        push    de
        push    hl
        ld      e,a   ; e = byte to verify
        ld      bc,$0000
checkifsaved0:
        ld      a,(hl)
        cp      e
        jr      z,checkifsaved_found
        dec     bc
        ld      a,b
        or      c
        jr      nz,checkifsaved0
        pop     hl
        pop     de
        pop     bc
        pop     af
        scf         ; flag that bytes was not written to eeprom
        ret    
checkifsaved_found:
        pop     hl
        pop     de
        pop     bc
        pop     af
        or      a  ; flag that bytes was written to eeprom
        ret

delay:
        ld      bc,20
delay0:
        dec     bc
        ld      a,b
        or      c
        jr      nz,delay0
        ret

disable_w_prot:
        push    af
        ld      a, $AA
        ld      ($9555),a 
        ld      a, $55
        ld      ($6AAA),a 
        ld      a, $80
        ld      ($9555),a 
        ld      a, $AA
        ld      ($9555),a 
        ld      a, $55
        ld      ($6AAA),a 
        ld      a, $20
        ld      ($9555),a
        call    delay
        pop     af
        ret

; -------------------------------------------------------
; SIGSLOT
; Returns in A the next slot every time it is called.
; For initializing purposes, thisslt has to be #FF.
; If no more slots, it returns A=#FF.
; this code is programmed by Nestor Soriano aka Konamiman
; --------------------------------------------------------
sigslot:
    ld      a, (thisslt)                ; Returns the next slot, starting by
    cp      $FF                         ; slot 0. Returns #FF when there are not more slots
    jr      nz, .p1                     ; Modifies AF, BC, HL.
    ld      a, (EXPTBL)
    and     %10000000
    ld      (thisslt), a
    ret
.p1:
    ld      a, (thisslt)
    cp      %10001111
    jr      z, .nomaslt
    cp      %00000011
    jr      z, .nomaslt
    bit     7, a
    jr      nz, .sltexp
.p2:
    and     %00000011
    inc     a
    ld      c, a
    ld      b, 0
    ld      hl, EXPTBL
    add     hl, bc
    ld      a, (hl)
    and     %10000000
    or      c
    ld      (thisslt), a
    ret
.sltexp:
    ld      c, a
    and     %00001100
    cp      %00001100
    ld      a, c
    jr      z, .p2
    add     a, %00000100
    ld      (thisslt), a
    ret
.nomaslt:
    ld      a, $FF
    ret


;-----------------------
; PRINT                |
;-----------------------
print:
        push    af
        ld      a,(hl)      ;get a character to print
        cp      TEXTTERMINATOR
        jr      Z,PRINTEXIT
        cp      10
        jr      nz,PRINT1
        pop     af
        push    af
        ld      a,10
        jr      nc,PRINT1
        call    PUTCHAR
        ld      a,13
PRINT1:
        call    PUTCHAR     ;put a character
        INC     hl
        pop     af
        jr      print
PRINTEXIT:
        pop     af
        ret

;-----------------------
; PRINTNUMBER          |
;-----------------------
PRINTNUMBER:
printnumber:
        push    de
        ld      e,a
        push    de
        AND     0F0H
        rra
        rra
        rra
        rra
        call    PRINTDIGIT
        pop     de
        ld      a,e
        AND     0FH
        call    PRINTDIGIT
        pop     de
        ret

PRINTDIGIT:
        cp      0AH
        jr      c,PRINTNUMERIC
PRINTALFA:
        ld      d,37H
        jr      PRINTNUM1

PRINTNUMERIC:
        ld      d,30H
PRINTNUM1:
        add     a,d
        call    PUTCHAR
        ret

PUTCHAR:
        push    bc
        push    de
        push    hl
        ld      e,a
        ld      c,2
        call    BDOS
        pop     hl
        pop     de
        pop     bc
        ret

txt_ramsearch:   db      "Search for ram in $4000",13,10,0
txt_ramfound:   db      "Found RAM in slot ",0
txt_newline:    db      13,10,0
txt_ramnotfound:   db      "ram not found",13,10,0
txt_writingflash:   db      "Writing to EEPROM...",13,10,0
txt_completed: db      "Completed.",13,10,0
txt_nofn:         db "Filename is empty or not valid",13,10,0
txt_fileopenerr:  db "Error opening file",13,10,0
txt_fnotfound: db "File not found",13,10,0
txt_ffound: db "Reading file",13,10,0
txt_err_reading: db "Error reading data from file",13,10,0
txt_endoffile:   db "End of file",13,10,0

thisslt: db $FF
curraddr: dw $0000


