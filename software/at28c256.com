>�!�
ͅ�2͓:���!~:���ʅ!9	:���ʅ:��� !�	Å���!�ͅ!��!9ͅ:�ͣ��P�����l @�S�:��m:�� �`��YW|�(#� �:��(��!8�[����S���� ���8�:��!�
ͅ>�͏�=� ���:=�(	2�S����8�!
ͅ�!��(!ͅ:�ͣ��:�&@�$ :�&��$ �:B�&@�$ :C�&��$ ��{͡�-�͎��: @G: �>7�:@G:�>7�:@G:�>7����]����: @�A7>�:@�T7>�:@�C7>�7?�: @2 :@2:@2�: 2 @:2@:2@�:����K! @>Aw#͏>Tw#͏>Cw͏�8��!8�[� ���:�����K���~#͘x� ���8���S��!�ͅ���(:�(� (�!8�~>2 >��w>
�!8: �w>H �� x� �>=� ����>!2� ��7�� �!�ͅ�! '� �8� ! "+"&"("*��~� (�
 ��>
0� >� #�����_������{������8�|(�t(�O �!��	�怱�O�|(�t ����
870�� ����_� �����!ͅ���&>.� �&�~#� (� ���!6 # ��!6 
 ����:��� 	:���2��:���((�($� �<O !��	~怱2��O��y(��2��>��!� ~�7�O #�	6 ��,8#���8:�� ����*��:����!� ~��#~� �+~�  �#"��2���>�2�2��~� (�(	O� #�� �2�OG���"�7?�� �:�<2��� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�͏�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�͏�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�͏��,͡���,͡����������x� �ɯ2�!�ͅ��*��,"��~�0��0G#"�~�(� (�08~#"��0Ox�'�'�'�'�Gx2�2���!� ���*��,"�~�/��#~+�:  ~##�a8�a�A8<O�y�K~�. #2��K�~�(�/(� (�.(	#�"��> �"�ɯ2�:�����>�2��Q���ͼ8��	�2�:���!�	ʅ!�ͅ���m���>>2���>2��!�ͅ:��(G��ͣ>.� �x��/�/ͣ���: @�A7 :@�B(7�������	���! @�!@�������~ͣ> �� �#���>2��!w
ͅ͏���K͏*@"�!�"@͏͏ !z�~#x� �͏�8��>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
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
/i Show initial 24 bytes of the slot cartridge
/e Erase the EEPROM
/r reset / slow write to recover eeprom from internal unstable state
/f File name with extension, for example game.rom
 h �help �i ns �p 4f �e �r �  �����            ��.        �      filenameext                                      