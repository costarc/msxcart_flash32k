>�!�
͠�Mͮ: ��!�:���ʠ!T	:��ʠ:�� !�	à���!�͠!"�1�(!T͠:�;�(�k���͇ @�S:�͈:��{��tW|�(� �:�(��ͽ�� ���S�:�!	͠>�ͪ�=� ���:=�(	2�S���S�!%͠�!�(!:͠:�;�(�:�&@�$ :�&��$ �:B�&@�$ :C�&��$ ��p͖�"�̓��: @G:�>7�:@G:�>7�:@G:�>7����R����: @�A7>�:@�T7>�:@�C7>�7?�: @2:@2:@2�:2 @:2@:2@�:����f! @>Aw#ͪ>Tw#ͪ>Cwͪ�S��:����f!S�[�@ �����S�S��!S�[ ���:�����f���~#ͳx� ���S���S�!�͠���(:�(� (�!S�~>2>��w>
�!S:�w>H �� x� �>=�����>!2 ���7�!� �!�͠�! '!� �S� ! "/+"A"C"E��~� (�
 ��>
0�>�#�����_�����{�����8�|(�t(�O �!��	�怱�O�|(�t ����
870������_� �����!7͠���A>.��A�~#� (����!!6 "# ��!"6 #
 ����:��� 	:���2��:���((�($� �<O !��	~怱2��O��y(��2��>��!� ~�7�O #�	6 ��G8#�� 8:�� ����*�:���!� ~��#~� �+~�  �#"�2��>�2�2��~� (�(	O� #�� �2�OG���"7?�� �:�<2��� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�ͪ�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�ͪ�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�ͪ��,ͼ���,ͼ����������x� �ɯ2 !�͠��*�G"�~�0��0G#"~�(� (�08~#"�0Ox�'�'�'�'�Gx22���!!! ���*�G"~�/�#~+�:  ~##�a8�a�A8<O�y�f~�. #2�f�~�(�/(� (�.(	#�"�> �"ɯ2 :���>�2��l�����8��$�2 :��!�	ʠ!�͠��͈���>>2��>2�!�͠:��(G��;>.��x��/�/;�(��: @�A7 :@�B(7�������$�(��! @�8!@�8�(�����~;> ���#���>2�!�
͠ͪ���fͪ*@"�!�"@ͪͪ !��~#x� �ͪ�S��>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
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
 h �help �i �s �p Of e �r �  �����            ��.        �      filenameext                                      