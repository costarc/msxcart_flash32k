>�!�
͉�6͗:)��!�:(��ʉ!g	:+��ʉ:*�� !�	É���!�͉!J��!g͉:&ͧ��T�����p @�S=:&���q�O::��d��]W|�(� M�!� �[=���S=��� ���<�:8�!͉>�͓�=� ���:G=�(	2G�S=���<�!8͉�!�(!M͉:&ͧ��:&&@�$ :&&��$ �:B�&@�$ :C�&��$ ��v͜�(�͉��: @G:C�>7�:@G:D�>7�:@G:E�>7����X����: @�A7>�:@�T7>�:@�C7>�7?�: @2C:@2D:@2E�:C2 @:D2@:E2@�:&���O! @>Aw#͓>Tw#͓>Cw͓�<��!�͉��[=O::�.(>�2U�>U2�j>�2U�y�S=���:H��:G��������������(:G�(� (�!� �~>2C>��w>
�!� :C�w>H �� x� �>=�����>!2H���7�I� �!�͉�!@ 'I� �� � ! "W+"i"k"m��~� (�
 ��>
0�>�#�����_������{������8�|(�t(�O �!��	�怱�O�|(�t ����
870������_� �����!J͉���*>.��*�~#� (����!I6 J# ��!J6 K
 ����:&�� 	:���2&�:&��((�($� �<O !��	~怱2&�O��y(��2&�>��!� ~�7�O #�	6 ��08#���8:(� ����*;�:+���!� ~��#~� �+~�  �#";�2(��>�2'2(�~� (�(	O� #�� �2(OG���";7?�� �:'<2'�� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�͓�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�͓�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�͓��,͜����������x� �ɯ2)!�͉��*;�0";�~�0��0G#";~�(� (�08~#";�0Ox�'�'�'�'�Gx2*2&��!+I ���*;�0";~�/�+#~+�:  ~##�a8�a�A8<O�y�F~�. #2;�F�~�(�/(� (�.(	#�";�> �";ɯ2):*���*>�2&�U�����8��7�2):*��!�	ʉ!�͉���q���>>2:��*;�0";�~�0��0G#";~�(� (�08~#";�0Ox�'�'�'�'�Gx2G�!�͉:&�(G��ͧ>.��x��/�/ͧ���: @�A7 :@�B(7�������7���! @�K!@�K������~ͧ> ���#���>28�!�
͉͓���O͓*@"�!�"@͓͓ !��~#x� �͓�<��>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
 Found writable memory in slot  Found writable memory but its not the eeprom in slot  
 EEPROM not found in slot  Writing file to EEPROM in slot  Completed.
 Filename is empty or not valid
 Error opening file
 File not found
 Reading file from disk: Error reading data from file
 End of file
 No command line parameters passed
 Filename:
 Returning to MSX-DOS
 File name not specified
 Disabling AT28C256 Software Data Protection on slot: Enabling AT28C256 Software Data Protection on slot: 
Error - parameter /s <slot> must come first or it is missing
 
Error - missing parameter /s <slot> before parameter /dx
 
Error - missing parameter /s <slot> before parameter /ex
 
Patching ROM. Use ESC to bypass ROM boot
 AT28C256 EEPROM Programmer for MSX v1.3
(c) Ronivon Costa, 2020-2023

 
Write process completed
 
Writing process failed!
Check if eeprom legs are clean,
and well seated in the socket (if socketed).
 To force disabling the AT28C256 Software Data Protction (SDP),
call this program passing the slot as parameter.
Must specify two digits for the slot, as for example:
at28csdp 01

Afterwards, you can use verrom.com to verify if the SDP was correctly disable.
 Invalid parameters
Command line options: at28c256 </h | /i> | </s <slot> </f> file.rom>

/h Show this help
/s <slot number>
/r number of retries to write
/i Show initial 24 bytes of the slot cartridge
/p Patch rom to skip boot when pressing ESC (Dangerous)
/e Erase the EEPROM
/f File name with extension, for example game.rom
 h �help �i is �p bf �e �z �r �  �����            ��.       �      filenameext                            