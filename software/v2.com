!\���:2��!:1����!_::�����!���n�!E���!#������F!�����O����([��:-&@�$ :-&��$  @�S.>.�9���0PW|�(�E!� �~��ͷ��#���(�:B�&@�$ :C�&��$ !�����!�����[.�S.�G� �!����!@ 'G� �� � ! "U+"g"i"k��~� (�
 ��>
0�9>�9#�����_����*�{��*���
870��9����_� �����!B�����!G6 H# ��!H6 I
 ����>�2-�����(&@�$ ͞8�:B�&@�$ :-��:B�&@�$ >�7�! @>Aͳ�>Tͳ�>Cͳ�Gw;~#��7��,��������x� ���:-�� 	:���2-�:-��((�($� �<O !��	~怱2-�O��y(��2-�>��!� ~�7�O #�	6 �͓�#�L�:1� �;��*3�22!&	����> 25�> 26ɯ22!���:9!������F͟ɯ22!y��:9!�������F���>I�9�*3͓"3�~�0��0G#"3~�(� (�08~#"3�0Ox�'�'�'�'�Gx29���!:G ���*3͓"3~�/�:#~+�:  ~##�a8�a�A8<O�y�)~�. #23�)�~�(�/(� (�.(	#�"3�> �"3�>�2021�~� (�(	O� #�� �21OG���"37?�� �:0<20�� �7�~�7�� 7?�#��&@�$ �&��$ >�2U�>U2�j>�2U�;:B�&@�$ :C�&��$ ��&@�$ �&��$ >�2U�>U2�j>�2U�>�2U�>U2�j> 2U�;:B�&@�$ :C�&��$ �Searching for EEPROM
 Found writable memory in slot  
 EEPROM not found
 Writing to EEPROM on slot  Completed.
 Filename is empty or not valid
 Error opening file
 File not found
 Reading file
 Error reading data from file
 End of file
 Invalid parameters
 No command line parameters passed
 Filename:
 Returning to MSX-DOS
 File name not specified
 Disabling AT28C256 Software Data Protection on slot: Enabling AT28C256 Software Data Protection on slot: 
Error - missing parameter /s <slot> before parameter /dx
 
Error - missing parameter /s <slot> before parameter /ex
 AT28C256 EEPROM Programmer for MSX
(c) Ronivon Costa, 2020

 
Write process completed
==> ATTENTION <==
Switch off the MSX immediately, remove the interface, then remove the /wr jumper
 To force disabling the AT28C256 Software Data Protction (SDP),
call this program passing the slot as parameter.
Must specify two digits for the slot, as for example:
at28csdp 01

Afterwards, you can use verrom.com to verify if the SDP was correctly disable.
 EEPROM AT28C256 Programmer for MSX v1.0
Format: at28c256 </options> file.rom

/h Show this help
/s <slot number> (must be 2 digits)
/i Show initial 256 byets of the slot cartridge
/d Disable the EEPROM Software Data Protection before writing
/e Enable the EEPROM Software Data Protection after writing
/dx Disable the EEPROM Software Data Protection and exit
/ex Enable the EEPROM Software Data Protection and exit
/f File name with extension, for example game.rom
 h @help @e Ld Rex Xdx wi �s �f � �  ���  ������             filenameext                            