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

Another way to successfully program the EEPROM is to pass a command line parameter /s indicting the MSX SLOT where the EEPROM is connected, for example:

at28c256.com /s 1 /f game.rom

There is also a parameter ot help identify the slot, but it does not work when the EEPROMis already write protected:

at28c256 /i

How to write a ROM to the EEPROM:
=================================


Revision 0:

1. Close jumpers WR, A15. All others must be Open
2. Boot the MSX
3. Close jumper CS12
4. Try to identify the slot where the cartridge is connected with parameter "/i". See Note 1 below.

4. Write the ROM (ex: at28c256 /s 1 /f roadfighter.rom)



Note 1: Use "at28c256 /i" to check if the EEPROM slot can be located. 
If there was a previous ROM in the EEPROM, it will be identified  and shown with the initial bytes "41 42". Note that
all other internal expanded slots with some ROM will also be displayed, but with high slot numbers. 
If there was not any ROM previously recorded in your EEPROM, you may need to guess the slot number.
The external MSX slots will usually be identified by low numbers such as 01 and 02. Try using parameters "/s 1" or "/s 2" with the at28c256 command in these cases where the EEPROM is not located.


Note: Do not remove jumper WR. It should be closed at all times. Move only the other 2 jumpers around following the steps below.
To by-pass the cartridge ROM when it is connected in a slot, remove jumper CS1/CS2/CS12. Insert the jumper back on once the MSX has booted.

1. Close these jumpers: CS12, A15, WR, SLTSL
2. Program the EERPOM: at28c256.com /s slot /f filename.rom

If the EEPROM is 32KB, it is ready to boot. Simply restart the MSX.

If you programmed two banks (let's say, 2 x 16KB games), you can boot each bank switching jumpers as follows:

Revison 0:

Bank 1: Close jumpers CS12, WR, A14
Bank 2: Close jumpers CS12, WR, A15

Revision 1:

Bank 1: Close Jumpers CS1, WR, A15
Bank 2: Close Jumpers CS1, WR, A14


