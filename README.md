msxcart_flash32k
================
MSX 32K EEPROM cartridge rewritable by software. 

This project contain a schematic and a software for MSX computers.
The schematic is a design to allow writing and reading the AT28C256 EEPROM
(EEPROM = Electronically Rewritable Read Access Memory).

Note on the code to write the EEPROM:

Due to some technical problems to enable/disable the EEPROM Software Data 
Protecion (SDP), this code only works if the SDP is previously disabled.
Make sure the EEPROM SDP has not been enabled by other means, as for example,
using an external EPROM programmer.

Before writing a ROM to the EEPROM, use the "at28unpr.com <slot number>"
to disable the SDP.

After writing the ROM to the EEPROM, use the "at28prot.com <slot number>"
to protect the EEPROM against writes when MSX boots.

How to operate and write protect the eeprom against undesirable writes:

1. Put jumper /wr in the interface
2. Plug the interface on the MSX and switch it on
3. Write the ROM to the EEPROM, for example: "at28c256 galaga.rom"
4. Switch off MSX and remove the interface
5. Remove the /wr Jumper
6. Plug the interface on the MSX and switch it on. Will boot into the game.

