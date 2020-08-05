EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1850 3550 0    50   ~ 0
+5V
Text Label 1900 3250 0    47   ~ 0
GND
$Comp
L Device:C_Small C1
U 1 1 5F04F395
P 1750 3350
F 0 "C1" H 1750 3200 50  0000 C CNN
F 1 "100nF" H 1700 3650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1750 3350 50  0001 C CNN
F 3 "~" H 1750 3350 50  0001 C CNN
	1    1750 3350
	-1   0    0    1   
$EndComp
NoConn ~ 2650 3250
NoConn ~ 2150 3650
NoConn ~ 2650 3550
NoConn ~ 2650 3650
NoConn ~ 2650 1950
NoConn ~ 2150 1650
NoConn ~ 2150 1950
NoConn ~ 2650 1450
NoConn ~ 2650 1550
Wire Wire Line
	2150 3250 2100 3250
Wire Wire Line
	2150 3350 2100 3350
Wire Wire Line
	2100 3350 2100 3250
Wire Wire Line
	2150 3550 2100 3550
Wire Wire Line
	2150 3450 2100 3450
Wire Wire Line
	2100 3450 2100 3550
Connection ~ 2100 3550
Wire Wire Line
	2650 3350 2700 3350
Wire Wire Line
	2700 3350 2700 3450
Wire Wire Line
	2700 3450 2650 3450
Connection ~ 2100 3250
Wire Wire Line
	1750 3250 2100 3250
Wire Wire Line
	1500 3550 1750 3550
Wire Wire Line
	1750 3450 1750 3550
Connection ~ 1750 3550
Wire Wire Line
	1750 3550 2100 3550
NoConn ~ 5350 3400
$Comp
L msx_slot:CONN_02X25 P1
U 1 1 5EDD120E
P 2400 2450
F 0 "P1" H 2400 3773 50  0001 C CNN
F 1 "MSX_CONNECTOR" H 2400 3773 50  0000 C CNN
F 2 "MyFootprints:card_edge_connector" H 2400 1700 50  0001 C CNN
F 3 "" H 2400 1700 50  0000 C CNN
	1    2400 2450
	1    0    0    -1  
$EndComp
$Comp
L AT28C256:AT28C256-15PU U1
U 1 1 5F051ACF
P 4700 2350
F 0 "U1" H 4700 3720 50  0000 C CNN
F 1 "AT28C256-15PU" H 4700 3629 50  0000 C CNN
F 2 "MyFootprints:DIP254P1524X482-28" H 4700 2350 50  0001 L BNN
F 3 "Paged Parallel EEPROM" H 4700 2350 50  0001 L BNN
F 4 "PDIP-28" H 4700 2350 50  0001 L BNN "Field4"
F 5 "AT28C256-15PU" H 4700 2350 50  0001 L BNN "Field5"
F 6 "1095782" H 4700 2350 50  0001 L BNN "Field6"
F 7 "ATMEL" H 4700 2350 50  0001 L BNN "Field7"
F 8 "96K6555" H 4700 2350 50  0001 L BNN "Field8"
	1    4700 2350
	1    0    0    -1  
$EndComp
Text GLabel 2150 1250 0    50   Input ~ 0
cs1
Text GLabel 2150 1350 0    50   Input ~ 0
cs12
NoConn ~ 2150 1450
NoConn ~ 2150 1550
NoConn ~ 2150 1750
Text GLabel 2150 1850 0    50   Input ~ 0
wr
Text GLabel 2150 2050 0    50   Input ~ 0
A9
Text GLabel 2150 2150 0    50   Input ~ 0
A11
Text GLabel 2150 2250 0    50   Input ~ 0
A7
Text GLabel 2150 2350 0    50   Input ~ 0
A12
Text GLabel 2150 2450 0    50   Input ~ 0
A14
Text GLabel 2150 2550 0    50   Input ~ 0
A1
Text GLabel 2150 2650 0    50   Input ~ 0
A3
Text GLabel 2150 2750 0    50   Input ~ 0
A5
Text GLabel 2150 2850 0    50   Input ~ 0
D1
Text GLabel 2150 2950 0    50   Input ~ 0
D3
Text GLabel 2150 3050 0    50   Input ~ 0
D5
Text GLabel 2150 3150 0    50   Input ~ 0
D7
Text GLabel 2650 1250 2    50   Input ~ 0
cs2
Text GLabel 2650 1350 2    50   Input ~ 0
sltsl
NoConn ~ 2650 1650
NoConn ~ 2650 1750
Text GLabel 2650 1850 2    50   Input ~ 0
rd
Text GLabel 2650 2050 2    50   Input ~ 0
A15
Text GLabel 2650 2150 2    50   Input ~ 0
A10
Text GLabel 2650 2250 2    50   Input ~ 0
A6
Text GLabel 2650 2350 2    50   Input ~ 0
A8
Text GLabel 2650 2450 2    50   Input ~ 0
A13
Text GLabel 2650 2550 2    50   Input ~ 0
A0
Text GLabel 2650 2650 2    50   Input ~ 0
A2
Text GLabel 2650 2750 2    50   Input ~ 0
A4
Text GLabel 2650 2850 2    50   Input ~ 0
D0
Text GLabel 2650 2950 2    50   Input ~ 0
D2
Text GLabel 2650 3050 2    50   Input ~ 0
D4
Text GLabel 2650 3150 2    50   Input ~ 0
D6
$Comp
L power:+5V #PWR01
U 1 1 5F066736
P 1200 3550
F 0 "#PWR01" H 1200 3400 50  0001 C CNN
F 1 "+5V" H 1250 3600 50  0000 C CNN
F 2 "" H 1200 3550 50  0001 C CNN
F 3 "" H 1200 3550 50  0001 C CNN
	1    1200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5F06797C
P 4000 1350
F 0 "#PWR03" H 4000 1200 50  0001 C CNN
F 1 "+5V" H 4015 1523 50  0000 C CNN
F 2 "" H 4000 1350 50  0001 C CNN
F 3 "" H 4000 1350 50  0001 C CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 5F0699C8
P 1200 3250
F 0 "#PWR02" H 1200 3000 50  0001 C CNN
F 1 "GNDREF" H 1150 3300 50  0000 C CNN
F 2 "" H 1200 3250 50  0001 C CNN
F 3 "" H 1200 3250 50  0001 C CNN
	1    1200 3250
	1    0    0    -1  
$EndComp
Connection ~ 1750 3250
Text GLabel 4000 1750 0    50   Input ~ 0
mem_oe
Text GLabel 4000 1550 0    50   Input ~ 0
mem_we
$Comp
L power:GNDREF #PWR04
U 1 1 5F06B86B
P 4000 3550
F 0 "#PWR04" H 4000 3300 50  0001 C CNN
F 1 "GNDREF" H 3950 3600 50  0000 C CNN
F 2 "" H 4000 3550 50  0001 C CNN
F 3 "" H 4000 3550 50  0001 C CNN
	1    4000 3550
	1    0    0    -1  
$EndComp
Text GLabel 5400 1350 2    50   Input ~ 0
D0
Text GLabel 5400 1450 2    50   Input ~ 0
D1
Text GLabel 5400 1550 2    50   Input ~ 0
D2
Text GLabel 5400 1650 2    50   Input ~ 0
D3
Text GLabel 5400 1750 2    50   Input ~ 0
D4
Text GLabel 5400 1850 2    50   Input ~ 0
D5
Text GLabel 5400 1950 2    50   Input ~ 0
D6
Text GLabel 5400 2050 2    50   Input ~ 0
D7
Text GLabel 4000 1950 0    50   Input ~ 0
A0
Text GLabel 4000 2050 0    50   Input ~ 0
A1
Text GLabel 4000 2150 0    50   Input ~ 0
A2
Text GLabel 4000 2250 0    50   Input ~ 0
A3
Text GLabel 4000 2350 0    50   Input ~ 0
A4
Text GLabel 4000 2450 0    50   Input ~ 0
A5
Text GLabel 4000 2550 0    50   Input ~ 0
A6
Text GLabel 4000 2650 0    50   Input ~ 0
A7
Text GLabel 4000 2750 0    50   Input ~ 0
A8
Text GLabel 4000 2850 0    50   Input ~ 0
A9
Text GLabel 4000 2950 0    50   Input ~ 0
A10
Text GLabel 4000 3050 0    50   Input ~ 0
A11
Text GLabel 4000 3150 0    50   Input ~ 0
A12
Text GLabel 4000 3250 0    50   Input ~ 0
A13
Text GLabel 4000 3350 0    50   Input ~ 0
mem_A14
Text Notes 8200 7650 0    50   ~ 0
05/08/2020
Text Notes 7350 7500 0    50   ~ 0
MSX AT28C256 EEPROM Programable Cartridge
Text Notes 7050 6700 0    50   ~ 0
Ronivon Costa
Text GLabel 3050 4300 0    50   Input ~ 0
cs1
Text GLabel 3050 4500 0    50   Input ~ 0
cs12
Text GLabel 3050 4400 0    50   Input ~ 0
cs2
Text GLabel 3050 4600 0    50   Input ~ 0
wr
Text GLabel 3550 4300 2    50   Input ~ 0
mem_oe
Text GLabel 3050 4700 0    50   Input ~ 0
A14
Text GLabel 3050 4800 0    50   Input ~ 0
A15
Text GLabel 3550 4700 2    50   Input ~ 0
mem_A14
Text GLabel 3550 4900 2    50   Input ~ 0
mem_ce
Text GLabel 3050 4900 0    50   Input ~ 0
sltsl
Text GLabel 4000 1650 0    50   Input ~ 0
mem_ce
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 5EFE8625
P 3250 4600
F 0 "J1" H 3300 5117 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 3300 5026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Horizontal" H 3250 4600 50  0001 C CNN
F 3 "~" H 3250 4600 50  0001 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4500 3550 4400
Wire Wire Line
	3550 4300 3550 4400
Connection ~ 3550 4400
Wire Wire Line
	3550 4700 3550 4800
$Comp
L Device:CP C2
U 1 1 5F2DB013
P 1500 3400
F 0 "C2" H 1550 3200 50  0000 R CNN
F 1 "100uF" H 1600 3650 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1538 3250 50  0001 C CNN
F 3 "~" H 1500 3400 50  0001 C CNN
	1    1500 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 3250 1500 3250
Connection ~ 1500 3250
Wire Wire Line
	1500 3250 1750 3250
Wire Wire Line
	1200 3550 1500 3550
Connection ~ 1500 3550
Text GLabel 5950 4400 2    50   Input ~ 0
mem_we
$Comp
L power:+5V #PWR05
U 1 1 5F2D3E56
P 5750 4100
F 0 "#PWR05" H 5750 3950 50  0001 C CNN
F 1 "+5V" H 5765 4273 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F2D75CA
P 5750 4250
F 0 "R1" H 5818 4296 50  0000 L CNN
F 1 "10K" H 5818 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 4240 50  0001 C CNN
F 3 "~" H 5750 4250 50  0001 C CNN
	1    5750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4400 5950 4400
Text GLabel 3550 4600 2    50   Input ~ 0
mem_we
$Comp
L power:+5V #PWR06
U 1 1 5F2EDBC8
P 5750 4750
F 0 "#PWR06" H 5750 4600 50  0001 C CNN
F 1 "+5V" H 5765 4923 50  0000 C CNN
F 2 "" H 5750 4750 50  0001 C CNN
F 3 "" H 5750 4750 50  0001 C CNN
	1    5750 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F2EDBCE
P 5750 4900
F 0 "R2" H 5818 4946 50  0000 L CNN
F 1 "10K" H 5818 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 4890 50  0001 C CNN
F 3 "~" H 5750 4900 50  0001 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5050 5950 5050
Text GLabel 5950 5050 2    50   Input ~ 0
mem_ce
Text Notes 10600 7650 0    50   ~ 0
3
Text GLabel 5950 5700 2    50   Input ~ 0
mem_oe
$Comp
L Device:R_US R3
U 1 1 5F2B2133
P 5750 5550
F 0 "R3" H 5818 5596 50  0000 L CNN
F 1 "10K" H 5818 5505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 5540 50  0001 C CNN
F 3 "~" H 5750 5550 50  0001 C CNN
	1    5750 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5F2B2756
P 5750 5400
F 0 "#PWR07" H 5750 5250 50  0001 C CNN
F 1 "+5V" H 5765 5573 50  0000 C CNN
F 2 "" H 5750 5400 50  0001 C CNN
F 3 "" H 5750 5400 50  0001 C CNN
	1    5750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5700 5950 5700
$EndSCHEMATC
