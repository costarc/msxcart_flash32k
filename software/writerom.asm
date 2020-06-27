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
; 1.0    : initial version
TEXTTERMINATOR: EQU     0
BDOS:           EQU     5


; This is a MSX-DOS program
; STart address is $100

        org     $100
        ld      hl,txt_ramsearch
        call    print

        ld      c,040H
        call    PG1RAMSEARCH

; Reenable interrupts that was disabled by RDSLT

        ei

; if could not find the cartridge, exit with error message
        ld      hl,txt_ramnotfound
        jp      c,print

; Found writable memory therefore can continue writing the ROM into the eeprom
instcall:

; PG1RAMSEARCH return in A the slot id where RAM was found
; Test (again?) fi can write in the $4000 area of the slot 
        push    af
        call    ramcheck
        pop     af

        ld      hl,txt_ramnotfound

; Could not write - print error
        jp      nz,print

        push    af
        ld      hl,txt_ramfound
        call    print
        pop     af
        push    af
        call    PRINTNUMBER
        ld      hl,txt_newline
        call    print
        ld      hl,txt_writingflash
        call    print
        pop     af

; read filename passed with DOS command line

        ld     hl,$80
        ld     a,(hl)
        ld     e,a
        ld     d,0
        add    hl,de
        inc    hl
        xor    a
        ld    (hl),a  ; insert a zero at the end of the parameter to find when to stop parsing 

        call    fcb_reset
        call    readcliparms
        call    openfile
        call    readfileblock
        call    z,printblock

        ret

openfile:
        ld     c,$0f
        ld     de,fcb
        call   BDOS
        cp     $ff
        jr     z, fnotfounderr
        ld     hl,txt_ffound
        or     a
        call   z, print
        ret 

fnotfounderr:
        ld     hl,txt_fnotfound
        call   print
        ret

readfileblock:
        ld      c,$14
        ld      de,fcb
        call    BDOS
        ld     hl,txt_err_reading
        cp     $00
        ret    z
        jp     print

printblock:
        ld      b,128
        ld      hl,$80
printblock0:
        push    bc
        push    hl
        ld      a,(hl)
        call    PUTCHAR
        pop     hl
        pop     bc
        inc     hl
        djnz    printblock0
        ret

relocprog1:
        push    af
        push    bc
        push    de
        push    hl
        ld      c,a
        ld      a,(de)
        ld      e,a
        ld      a,c
        call    WRSLT
        pop     hl
        pop     de
        pop     bc
        pop     af
        inc     hl
        inc     de
        dec     bc
        push    af
        ld      a,b
        or      c
        jr      z,relocfinish
        pop     af
        jr      relocprog1

    relocfinish:
        pop     af
        ret

ramcheck:
        push    af
        ld      e,$aa
        ld      hl,$F8
        call    WRSLT
        pop     af
        ld      hl,$F8
        call    RDSLT
        cp      $aa     ;set Z flag if found ram
        ret

PG1RAMSEARCH:
        LD      HL,EXPTBL
        LD      B,4
        XOR     A
PG1RAMSEARCH1:
        AND     03H
        OR      (HL)
PG1RAMSEARCH2:
        PUSH    BC
        PUSH    HL
        LD      H,C
PG1RAMSEARCH3:
        LD      L,10H
PG1RAMSEARCH4:
; Switch slot
        PUSH    AF
        CALL    RDSLT
        CPL
; Save the value read in the register E
        LD      E,A
        POP     AF
        PUSH    DE
        PUSH    AF
; Try writing into the memory area of the slot
; to check if found RAM 
        CALL    WRSLT
        POP     AF
        POP     DE
        PUSH    AF
        PUSH    DE
; Read back the from the slot 
        CALL    RDSLT
        POP     BC
        LD      B,A
        LD      A,C
        CPL
        LD      E,A
        POP     AF
        PUSH    AF
        PUSH    BC
        CALL    WRSLT
        POP     BC
; Check if value written was saved in the memory
        LD      A,C
        CP      B
        JR      NZ,PG1RAMSEARCH6
        POP     AF
        DEC     L
        JR      NZ,PG1RAMSEARCH4
        INC     H
        INC     H
        INC     H
        INC     H
        LD      C,A
        LD      A,H
        CP      40H
        JR      Z,PG1RAMSEARCH5
        CP      80H
        LD      A,C
        JR      NZ,PG1RAMSEARCH3
PG1RAMSEARCH5:
        LD      A,C
        POP     HL
        POP     HL
        RET
	
PG1RAMSEARCH6:
        POP     AF
        POP     HL
        POP     BC
        AND     A
        JP      P,PG1RAMSEARCH7
        ADD     A,4
        CP      90H
        JR      C,PG1RAMSEARCH2
PG1RAMSEARCH7:
        INC     HL
        INC     A
        DJNZ    PG1RAMSEARCH1
        SCF
        RET

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

; ===============================================================
; Get parameters from DOS CLI
; ===============================================================
readcliparms:
        ld    hl,$80
        ld    de,fcb

; Get number of characters in the command line
; will return the total number + 1 (because includes the space after the program name)
        ld    a,(hl)
        inc   hl
        or    a
        jr    z,err_nofname

; sanitize parms, cleaning spaces before the parameters
parsefn:

remove_spaces:
; remove all spaces in the beginning of the CLI parameters
        ld    a,(hl)
        or    a
        jr    z,err_nofname
        cp    ' '
        jr    nz, finddrive
        inc   hl
        djnz  remove_spaces

; CLI does not contain a filename as parameters
err_nofname:
        ld    hl,txt_nofn
        jp    print

; Verify if the parameter has a drive specification "X:"
finddrive:
        inc    hl
        ld     a,(hl)
        dec    hl
        cp     ":"
        jr     z,getdrive
        xor    a               ; set current drive in the FCB
        ld     (de),a
        jr     getfname       ; go read filename

getdrive:
; CLI paramaters contain drive specification
; 0 = current
; 1 = drive A
; 2 = drive B and so on.
        ld     a,(hl)
        ld     c,'a'
        cp     'a'
        jr     nc,getdrive_lowercase
        ld     c,'A'
getdrive_lowercase:
        sub    c     
        inc    a        ; if drive in CLI was "A:" this will set "1" in the FCB
                        ; if drive in CLI was "B:" this will set "2" in the FCB 
        ld     (de),a
        inc    hl
        inc    hl

getfname:
        inc   de       ; DE pointing to start of fname in FCB
        ld    b,8      ; will loop 8 times to fill fname filed in the FCB

; read up to 8 characters for the filename
readnextchar:
        ld    a,(hl)
        cp    "."
        jr    z,fillwithspaces_fn
        or    a
        jr    z,fillwithspaces_fn
        ld    (de),a
        inc   hl
        inc   de
        djnz  readnextchar
        jr    setfnext

fillwithspaces_fn:
        call  fillwithspaces   ; fill fcb_fn with spaces when name less than 8 chars   
        ld    b,3
setfnext:
        ld    a,(hl)
        inc   hl
        or    a
        jr    z,fillwithspaces_ext
        cp    "."
        jr    nz,extnextchar
        jr    setfnext
extnextchar:
        ld    (de),a
        inc   de
        djnz  readnextchar
        ret

fillwithspaces_ext:
       call    fillwithspaces
       ret

fillwithspaces:
        ld    a,' '
        ld    (de),a
        inc   de
        djnz  fillwithspaces
        ret

fcb_reset:
        ld    hl, fcb_reset_data
        ld    de, fcb
        ld    bc,37
        ldir
        ret

; ===============================================================

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

fcb_reset_data:   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

fcb:
; reference: https://www.msx.org/wiki/FCB    
fcb_drv: db 0           ; Drive number containing the file.
                        ; (0 for Default drive, 1 for A, 2 for B, ..., 8 for H)

fcb_fn: db "filename"   ; 8 bytes for filename and 3 bytes for its extension. 
        db "ext"        ; When filename or extension has less than 8 or 3, the rest are 
                        ; filled in by spaces (20h). In case of search "?" (3Fh) may be used
                        ; to represent any character.
fcb_ex: db 0            ; "Current block LO" or "Extent number LO" depending of function called.
fcb_s1: db 0            ; "Current block HI" or "File attributes" (DOS2) depending of function called.
fcb_s2: db 0            ; "Record size LO" or "Extent number HI" depending of function called. 
                        ; NOTE: Because of Extent number the record size must be manually 
                        ; defined after opening a file!
fcb_rc: db 0            ; "Record size HI" or "Record count" depending of function called.
fcb_al: db 0,0,0,0      ; File size in bytes (1~4294967296).
        db 0,0          ; Date (DOS1) / Volume ID (DOS2)
        db 0,0          ; Time (DOS1) / Volume ID (DOS2)
        db 0            ; Device ID. (DOS1)
                        ; FBh = PRN (Printer)
                        ; FCh = LST (List)
                        ; FCh = NUL (Null)
                        ; FEh = AUX (Auxiliary)
                        ; FFh = CON (Console)
        db 0            ; Directory location. (DOS1)
        db 0,0          ; Top cluster number of the file. (DOS1)
        db 0,0          ; Last cluster number accessed (DOS1)
        db 0,0          ; Relative location from top cluster of the file number of clusters
                        ; from top of the file to the last cluster accessed. (DOS1)
fcb_cr: db 0            ; Current record within extent (0...127)
fcb_rn: db 0,0,0,0      ; Random record number. If record size <64 then all 4 bytes will be used.
        db 0,0,0

INCLUDE "include.asm"

