>�!	��ͤ�:+��!�
:*����!,:-����:,�� !�����8!���!H͈�!,��:(��:(��ͽ������ʰ���� @�S=>.�r�����W|�(�E!� �~��ͷ��#���(�ͪ��::��C!�	����!��(!��:(���:(&@�$ :(&��$ �:B�&@�$ :C�&��$ ��P�v���c��: @G:C�>7�:@G:D�>7�:@G:E�>7����2�����: @�A7>�:@�T7>�:@�C7>�7?�: @2C:@2D:@2E�:C2 @:D2@:E2@�:(��ͽ! @>Aw#͝>Tw#͝>Cw͝ͪ����,��������x� ���!�����[=�S=�G� �!����!@ 'G� �� � ! "U+"g"i"k��~� (�
 ��>
0�r>�r#�����_����c�{��c���8�|(�t(�O �!��	�怱�O�|(�t ����
870��r����_� �����!����͘>.�r͘�~#� (�r���!G6 H# ��!H6 I
 ����:(�� 	:���2(�:(��((�($� �<O !��	~怱2(�O��y(��2(�>��!� ~�7�O #�	6 �͞8#�W8:*� �/��*;�:-���!� ~��#~� �+~�  �#";�2*�:>�2)2*�~� (�(	O� #�� �2*OG���";7?�� �:)<2)�� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�͝�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�͝��,��������x� ��ɯ2+!����*;͞";�~�0��0G#";~�(� (�08~#";�0Ox�'�'�'�'�Gx2,2(��I!-G ���*;͞";~�/�-#~+�:  ~##�a8�a�A8<O�y͎~�. #2;͎�~�(�/(� (�.(	#�";�> �";ɯ2+:,�� U>�2(�������8���!���:(�(G���>.�r�x��/�/����: @�A7 :@�B(7������������! @����~�> ��r�#�����>2:�!R	������ͽ��*@"�!�"@���� !��~#x� ���ͪ���>�A�W��  Slot  Checking slot  Searching for EEPROM
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
Error - missing parameter /s <slot> 
 
Error - missing parameter /s <slot> before parameter /dx
 
Error - missing parameter /s <slot> before parameter /ex
 
Patching ROM. Use ESC to bypass ROM boot
 AT28C256 EEPROM Programmer for MSX v1.2
(c) Ronivon Costa, 2020-2023

 
Write process completed
 To force disabling the AT28C256 Software Data Protction (SDP),
call this program passing the slot as parameter.
Must specify two digits for the slot, as for example:
at28csdp 01

Afterwards, you can use verrom.com to verify if the SDP was correctly disable.
 Invalid parameters
Command line options: at28c256 </h | /i> | </s <slot> </f> file.rom>

/h Show this help
/s <slot number>
/i Show initial 24 bytes of the slot cartridge
/p Patch rom to skip boot when pressing ESC (Dangerous)
/f File name with extension, for example game.rom
 h �help �i �s �p =f :  �����            �       �     filenameext                            