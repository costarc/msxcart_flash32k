msxcart_flash32k
================
MSX 32K EEPROM cartridge rewritable by software. 

This project contain a schematic and a software for MSX computers.
The schematic is a design to allow writing and reading the AT28C256 EEPROM
(EEPROM = Electronically Rewritable Read Access Memory).

Note on the code to write the EEPROM:

Due to some technical problems to enable/disable the EEPROM Software Data 
Protecion (SDP), the auto detection only works if the SDP was previously disabled.
Make sure the EEPROM SDP has not been enabled by other means, as for example,
using an external EPROM programmer.

Another better option is to pass an command line parameters indicting the
MSX SLOT where the EEPROM is plugged, for example:

at28c256.com /s 1 /f game.rom

There is also a parameter ot help identify the slot:
at28c256 /i

How to operate and write protect the eeprom against undesirable writes:
The softwre should enable the SDP after writing the rom. However, to enable
a phisycal protection in cases where the EEPROM will not be re-writed 
constantly, use the following steps:

1. Put jumper /wr in the interface
2. Plug the interface on the MSX and switch it on
3. Write the ROM to the EEPROM, for example: "at28c256 /s 1 /f galaga.rom"
4. Switch off MSX and remove the interface
5. Remove the /wr Jumper
6. Plug the interface on the MSX and switch it on. Will boot into the game.

