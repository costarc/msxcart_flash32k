>�!�
ͨ�UͶ:Q��!�:P��ʨ!�	:S��ʨ:R�� !
è�
��!	ͨ!r�9�0!�ͨ:N���0�s����͏ @�Se:N͐:b�#̓��|W|�(��ʹ�Se��� ���[��:`�!Dͨ>�Ͳ�=� ���:o=�(	2o�Se���[��!`ͨ�!<�(!uͨ:N���0�:N&@�$ :N&��$ �:B�&@�$ :C�&��$ ��g͍���z��: @G:k�>7�:@G:l�>7�:@G:m�>7����I�����: @�A7>�:@�T7>�:@�C7>�7?�: @2k:@2l:@2m�:k2 @:l2@:m2@�:N���n! @>Aw#Ͳ>Tw#Ͳ>CwͲ�[���!��[e ���:N���n���~#ͻx� ���[����!�ͨ��[eO:b�.(>�2U�>U2�j>�2U�y�Se��:p��:o�������������(:o�(� (�!��~>2k>��w>
�!�:k�w>H �� x� �>=�#����>!2p�#��7�q� �!	ͨ�! 'q� ��� ! "+"�"�"���~� (�
 ��>
0�#>�##�����_�����{�����8�|(�t(�O �!��	�怱�O�|(�t ����
870��#����_� �����!rͨ���I>.�#�I�~#� (�#���!q6 r# ��!r6 s
 ����:N�� 	:���2N�:N��((�($� �<O !��	~怱2N�O��y(��2N�>��!� ~�7�O #�	6 ��O8#&�8:P� ����*c�:S���!� ~��#~� �+~�  �#"c�2P�>�2O2P�~� (�(	O� #�� �2POG���"c7?�� �:O<2O�� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�Ͳ�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�Ͳ�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�Ͳ��,����� ������������x� �ɯ2Q!�ͨ��*c�O"c�~�0��0G#"c~�(� (�08~#"c�0Ox�'�'�'�'�Gx2R2N��)!Sq ���*c�O"c~�/�S#~+�:  ~##�a8�a�A8<O�y�n~�. #2c�n�~�(�/(� (�.(	#�"c�> �"cɯ2Q:R���R>�2N�t����8��_�2Q:R��!
ʨ!�ͨ��͐����>>2b��*c�O"c�~�0��0G#"c~�(� (�08~#"c�0Ox�'�'�'�'�Gx2o�!�ͨ:N�(G����>.�#�x��/�/���0��: @�A7 :@�B(7��������_�0���! @�s!@�s�0�����~��> ��#�#����>2`�!�
ͨͲ���nͲ*@"�!�"@ͲͲ !��~#x� �Ͳ�[���>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
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
 h �help �i �s �p �f e �z �r �  �����            ��.       �      filenameext                                      