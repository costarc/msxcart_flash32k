>�!�
ͤ�QͲ:D��!�:C��ʤ!�	:F��ʤ:E�� !
ä�
��!�ͤ!e�5�,!�ͤ:A���,�o����͋ @�SX:A͌:U����xW|�(��ʹ�SX��� ���W��:S�!7ͤ>�ͮ�=� ���:b=�(	2b�SX���W��!Sͤ�!/�(!hͤ:A���,�:A&@�$ :A&��$ �:B�&@�$ :C�&��$ ��g͍���z��: @G:^�>7�:@G:_�>7�:@G:`�>7����I�����: @�A7>�:@�T7>�:@�C7>�7?�: @2^:@2_:@2`�:^2 @:_2@:`2@�:A���j! @>Aw#ͮ>Tw#ͮ>Cwͮ�W���!� �[X@���:A���j���~#ͮ���W����!�ͤ��[XO:U�.(>�2U�>U2�j>�2U�y�SX��:c��:b�������������(:b�(� (�!� �~>2^>��w>
�!� :^�w>H �� x� �>=�����>!2c���7�d� �!	ͤ�!@ 'd� �� � ! "r+"�"�"���~� (�
 ��>
0�>�#�����_�����{�����8�|(�t(�O �!��	�怱�O�|(�t ����
870������_� �����!eͤ���E>.��E�~#� (����!d6 e# ��!e6 f
 ����:A�� 	:���2A�:A��((�($� �<O !��	~怱2A�O��y(��2A�>��!� ~�7�O #�	6 ��K8#�8:C� ����*V�:F���!� ~��#~� �+~�  �#"V�2C�>�2B2C�~� (�(	O� #�� �2COG���"V7?�� �:B<2B�� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�ͮ�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�ͮ�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�ͮ��,ͷ����������x� �ɯ2D!�ͤ��*V�K"V�~�0��0G#"V~�(� (�08~#"V�0Ox�'�'�'�'�Gx2E2A��!Fd ���*V�K"V~�/�F#~+�:  ~##�a8�a�A8<O�y�a~�. #2V�a�~�(�/(� (�.(	#�"V�> �"Vɯ2D:E���E>�2A�p����8��R�2D:E��!
ʤ!�ͤ��͌����>>2U��*V�K"V�~�0��0G#"V~�(� (�08~#"V�0Ox�'�'�'�'�Gx2b�!�ͤ:A�(G����>.��x��/�/���,��: @�A7 :@�B(7��������R�,���! @�f!@�f�,�����~��> ���#����>2S�!�
ͤͮ���jͮ*@"�!�"@ͮͮ !��~#x� �ͮ�W���>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
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
 h �help �i �s �p }f e �z �r �  �����            ��.       �      filenameext                            