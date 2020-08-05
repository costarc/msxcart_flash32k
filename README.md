msxcart_flash32k
================
MSX 32K EEPROM cartridge rewritable by software. 

This project contain a schematic and a software for MSX computers.
The schematic is a design to allow writing and reading the AT28C256 EEPROM
(EEPROM = Electronically Rewritable Read Access Memory).

Note on the code to write the EEPROM:

The AT28C256 seems to have too fast writting times for the MSX.
Even though it can be writtem correctly by this software,
the SDP (software data protection) is not working.
My guess is that the cycle times for the protocol is too fast for the MSX
(it is aroudn nanosecods).
I choose to leave the call to the SDP routines in place, as it is not causing
any harm, or noticeable delays in the writting process for these small 32K eeproms.
In case anyone comes through this code, and make the SDP work, please get in touch.

How to write and protect the eeprom against undesireable writes:

1. Put jumper /wr in the interface
2. Plug the interface on the MSX and switch it on
3. Write the ROM to the EEPROM, for example: "at28c256 galaga.rom"
4. Switch off MSX and remove the interface
5. Remove the /wr Jumper
6. Plug the interface on the MSX and switch it on. Will boot into the game.
