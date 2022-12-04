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

The programmer need the slot number where the EEPROM is inserted. You may need to guess the slot (usually it will be 1 or 2),
but for EEPROMs that were previously programmed, it will be displayed using the command:

at28c256.com /i


Note that the slot 1 may not be the top slot in some MSXs. For example, the Canon V-25 slot 1 in on the bottom left side of the micro.

How to write a ROM to the EEPROM:
=================================

PCB Revision 1

1. Close jumpers WR, A15, CS12. All others must be Open
2. Boot the MSX
3. Now close also jumper SLTSL (top jumper)
4. Try to identify the slot where the cartridge is connected with parameter "/i". See Note 1 below.
4. Write the ROM passing the correct slot number in the "/s" parameter, for example: at28c256 /s 1 /f roadfighter.rom)

PCB Revision 0 (with 6 jumpers):

1. Close jumpers WR, A15. All others must be Open
2. Boot the MSX
3. Now close also jumper CS12
4. Try to identify the slot where the cartridge is connected with parameter "/i". See Note 1 below.
4. Write the ROM passing the correct slot number in the "/s" parameter, for example: at28c256 /s 1 /f roadfighter.rom)


PCB Revision 0 with an extra jumper wired up for SLTSL:
Use the same steps described for Revison 1 above.

Notes:
=====

1: Use "at28c256 /i" to check if the EEPROM slot can be located. 
If there was a previous ROM in the EEPROM, it will be identified  and shown with the initial bytes "41 42". Note that
all other internal expanded slots with some ROM will also be displayed, but with high slot numbers. 
If there was not any ROM previously recorded in your EEPROM, you may need to guess the slot number.

2: The external MSX slots will usually be identified by low numbers such as 01 and 02. Try using parameters "/s 1" or "/s 2" with the at28c256 command to program the EEPROM in these cases where the EEPROM is not located and you have to guess the slot number.

3: Do not remove jumper WR. It should be closed at all times. Write protect is enabled by software by the at28c256.com program.

4: To by-pass the cartridge ROM when it is connected in a slot, remove jumper SLTSL (Revision 1) or CS12 in Revision 0. Insert the jumper back on once the MSX has booted, otherwise the EEPROM will not be enabled for MSX to program it.
