>�!�ͣ�Pͱ:��!S:��ʣ!W	:��ʣ:�� !�	ã���!�ͣ!5�4�+!Wͣ:���+�n���͊ @�S(:͋:$��~��wW|�(� �:%�(��ͽ�� ���V�:"�!�
ͣ>�ͭ�=� ���:2=�(	22�S(���V�!�
ͣ�!�(!=ͣ:���+�:&@�$ :&��$ �:B�&@�$ :C�&��$ ��p͖�"�̓��: @G:.�>7�:@G:/�>7�:@G:0�>7����R����: @�A7>�:@�T7>�:@�C7>�7?�: @2.:@2/:@20�:.2 @:/2@:02@�:���i! @>Aw#ͭ>Tw#ͭ>Cwͭ�V��:���i!f�[(�@ ��Ͷ���S(�V��!f�[( ���:����i���~#Ͷx� ���V���S(�!�ͣ���(:2�(� (�!f�~>2.>��w>
�!f:.�w>H �� x� �>=�����>!23���7�4� �!�ͣ�! '4� �f� ! "B+"T"V"X��~� (�
 ��>
0�>�#�����_�����{�����8�|(�t(�O �!��	�怱�O�|(�t ����
870������_� �����!:ͣ���D>.��D�~#� (����!46 5# ��!56 6
 ����:�� 	:���2�:��((�($� �<O !��	~怱2�O��y(��2�>��!� ~�7�O #�	6 ��J8#��8:� ����*&�:���!� ~��#~� �+~�  �#"&�2�>�22�~� (�(	O� #�� �2OG���"&7?�� �:<2�� �7�~�7�� 7?�#�>�2U�>U2�j>�2U�ͭ�>�2U�>U2�j>�2U�>�2U�>U2�j> 2U�ͭ�>�2U�>U2�j>�2U�>�2U�>U2�j>2U�ͭ��,Ϳ���,Ϳ����������x� �ɯ2!gͣ��*&�J"&�~�0��0G#"&~�(� (�08~#"&�0Ox�'�'�'�'�Gx22��$!4 ���*&�J"&~�/�#~+�:  ~##�a8�a�A8<O�y�i~�. #2&�i�~�(�/(� (�.(	#�"&�> �"&ɯ2:���>�2�o�����8��'�2:��!�	ʣ!�ͣ��͋���>>2$��>2%�!�ͣ:�(G����>.��x��/�/���+��: @�A7 :@�B(7�������'�+��! @�;!@�;�+�����~��> ���#���>2"�!�
ͣͭ���iͭ*@"�!�"@ͭͭ !��~#x� �ͭ�V��>�A�W��  Erasing the EEPROM... Slot  Checking slot  Searching for EEPROM
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
 
Write process completed
 
Writing process failed!
Check if eeprom legs are clean,
and well seated in the socket (if socketed).
 To force disabling the AT28C256 Software Data Protection (SDP),
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
 AT28C256 EEPROM Programmer for MSX
v1.4 b20230307.030
(c) Ronivon Costa, 2020-2023

 h �help �i �s �p Rf e �r �  �����            ��.        �      filenameext                                      