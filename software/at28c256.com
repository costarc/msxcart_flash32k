!�̈́���Y:���!f
:���ʄ!�:���ʄ:��� !�̈́��!�ڄ�!F̈́!�����!�̈́�͢��͸����O���=�k͸ @�S�>.���_��XW|�(�E!� �~���D��#���(����:���5!A	̈́��:�&@�$ :�&��$ �:B�&@�$ :C�&��$ �>�2�����(&@�$ �
8�:B�&@�$ :���:B�&@�$ >�7�! @>A��>T��>C��Gw�*~#��7��,��������x� ���!5̈́��[��S���� �!^̈́�!@ '�� �� � ! "�+"�"�"���~� (�
 ��>
0��>��#�����_���ͷ�{�ͷ���
870�������_� �����!�̈́����>.�����~#� (�����!�6 �# ��!�6 �
 ����:��� 	:���2��:���((�($� �<O !��	~怱2��O��y(��2��>��!� ~�7�O #�	6 ���8#�͸8:�� ����*��:����!� ��"�~���/ʦ�2��7#~���  �#~���  ��>�2�2��~� (�(	O� #�� �2�OG���"�7?�� �:�<2��� �7�~�7�� 7?�#�>�2U�>U2�j>�2U��*�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U��*�����(E&@�$ :�&��$ ͒�:�&@�$ :�&��$ ͬ(ͺ(͟��:B�&@�$ :C�&��$ ���{7�:U�2�:�j2��:�2U�:�2�j�!�:U���#:�j��! @~G>Aw#~O>Tw#~W>Cw��z��+y��+x���,��������x� ��ɯ2�!z
̈́��*���"��~�0��0G#"�~�(� (�08~#"��0Ox�'�'�'�'�Gx2�2���F!�� ���*���"�~�/��#~+�:  ~##�a8�a�A8<O�y͋~�. #2�͋�~�(�/(� (�.(	#�"��> �"�ɯ2�:��� (>�2�����(&@�$ ��8���:B�&@�$ >�7�:�&@�$ ���:B�&@�$ �: @�A7�:@�B�7�!�̈́:�͢>:��! @~͢> ����#����>2��!�̈́��͸���*@"~!�"@���� !u�~#x� �������>�A�W��  Slot  Searching for EEPROM
 Found writable memory in slot  
 EEPROM not found
 Writing file to EEPROM in slot  Completed.
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
Error - missing parameter /s <slot> before parameter /dx
 
Error - missing parameter /s <slot> before parameter /ex
 
Patching ROM. Use ESC to bypass ROM boot
 AT28C256 EEPROM Programmer for MSX v1.1
(c) Ronivon Costa, 2020

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
 h �help �i �s �p /f 7 ������            �        filenameext                            