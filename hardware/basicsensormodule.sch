EESchema Schematic File Version 4
LIBS:basicsensormodule-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6050 4000 1350 1250
U 5AABFC1B
F0 "CANBUS" 60
F1 "canbus.sch" 60
F2 "SI" I L 6050 4300 60 
F3 "SO" O L 6050 4200 60 
F4 "CS" I L 6050 4400 60 
F5 "SCK" I L 6050 4100 60 
F6 "INT" O L 6050 4500 60 
F7 "GND" O R 7400 4150 60 
F8 "VCC" I R 7400 4050 60 
F9 "CAN_H" B R 7400 4250 60 
F10 "CAN_L" B R 7400 4350 60 
$EndSheet
$Sheet
S 2850 3800 1000 600 
U 5AAC947C
F0 "OPAMP" 60
F1 "analog.sch" 60
F2 "+5V" I R 3850 3900 60 
F3 "GND" I R 3850 4100 60 
F4 "out1" I R 3850 4000 60 
F5 "in1-" I L 2850 4000 60 
F6 "in1+" I L 2850 3900 60 
$EndSheet
$Sheet
S 4350 3600 1150 1150
U 5AACA401
F0 "MCU" 60
F1 "atmega328p.sch" 60
F2 "SPI_MISO" I R 5500 4200 60 
F3 "SPI_MOSI" O R 5500 4300 60 
F4 "MCP_INT" I R 5500 4500 60 
F5 "VCC" I L 4350 3900 60 
F6 "GND" O L 4350 4100 60 
F7 "analog1" I L 4350 4000 60 
F8 "SPI_SCK" O R 5500 4100 50 
F9 "MCP_SS" O R 5500 4400 50 
$EndSheet
$Sheet
S 7750 2950 1050 500 
U 5AACFFEF
F0 "POWER SUPPLY" 60
F1 "supplies.sch" 60
F2 "GND" O R 8800 3250 60 
F3 "+5V_OUT" O L 7750 3250 60 
F4 "+18V_IN" I R 8800 3150 60 
F5 "+18V_OUT" I L 7750 3150 60 
$EndSheet
$Sheet
S 9400 3100 600  450 
U 5AAD16DD
F0 "CANBUS CONN" 60
F1 "canbus_connector.sch" 60
F2 "CAN_H" B L 9400 3350 60 
F3 "CAN_L" B L 9400 3450 60 
F4 "CAN_18V" O L 9400 3150 60 
F5 "CAN_GND" B L 9400 3250 60 
$EndSheet
Wire Wire Line
	6050 4500 5500 4500
Wire Wire Line
	6050 4400 5500 4400
Wire Wire Line
	6050 4200 5500 4200
Wire Wire Line
	6050 4100 5500 4100
Wire Wire Line
	5500 4300 6050 4300
Text Label 5650 4300 0    60   ~ 0
MOSI
Text Label 5650 4200 0    60   ~ 0
MISO
Text Label 5650 4100 0    60   ~ 0
SCK
Wire Wire Line
	3850 4000 4350 4000
Wire Wire Line
	3850 3900 4350 3900
Wire Wire Line
	3850 4100 4100 4100
Wire Wire Line
	9400 3150 8800 3150
Wire Wire Line
	8800 3250 9000 3250
Wire Wire Line
	9400 3350 9100 3350
Wire Wire Line
	9100 3350 9100 4250
Wire Wire Line
	9100 4250 7400 4250
Wire Wire Line
	7400 4350 9200 4350
Wire Wire Line
	9200 4350 9200 3450
Wire Wire Line
	9200 3450 9400 3450
Wire Wire Line
	9000 3250 9000 4150
Wire Wire Line
	9000 4150 7600 4150
Connection ~ 9000 3250
Wire Wire Line
	7750 3250 7550 3250
Wire Wire Line
	7550 3250 7550 3800
Wire Wire Line
	7550 4050 7400 4050
$Comp
L basicsensormodule-rescue:Screw_Terminal_01x04-Connector J102
U 1 1 5BE60AE4
P 1850 4000
F 0 "J102" H 2000 3900 50  0000 C TNN
F 1 "SENSOR" H 2100 4000 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-4-2.54_1x04_P2.54mm_Horizontal" H 1850 3775 50  0001 C CNN
F 3 "" H 1825 4000 50  0001 C CNN
	1    1850 4000
	-1   0    0    1   
$EndComp
$Comp
L basicsensormodule-rescue:SolderJumper_3_Open-Jumper JP101
U 1 1 5BE60CC9
P 2150 3150
F 0 "JP101" H 2150 3250 50  0000 C CNN
F 1 "jmp" H 2450 3250 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2150 3150 50  0001 C CNN
F 3 "~" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3900 2850 3900
Wire Wire Line
	2850 4000 2050 4000
Wire Wire Line
	2050 3800 2150 3800
Wire Wire Line
	2150 3800 2150 3300
$Comp
L basicsensormodule-rescue:GND-power #PWR0104
U 1 1 5BE61E21
P 2150 4200
F 0 "#PWR0104" H 2150 3950 50  0001 C CNN
F 1 "GND" H 2200 4000 50  0000 C CNN
F 2 "" H 2150 4200 50  0001 C CNN
F 3 "" H 2150 4200 50  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4100 2150 4100
Wire Wire Line
	2150 4100 2150 4200
$Comp
L basicsensormodule-rescue:GND-power #PWR0106
U 1 1 5BE62497
P 7600 4550
F 0 "#PWR0106" H 7600 4300 50  0001 C CNN
F 1 "GND" H 7650 4350 50  0000 C CNN
F 2 "" H 7600 4550 50  0001 C CNN
F 3 "" H 7600 4550 50  0001 C CNN
	1    7600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4150 7600 4550
Connection ~ 7600 4150
Wire Wire Line
	7600 4150 7400 4150
$Comp
L basicsensormodule-rescue:GND-power #PWR0105
U 1 1 5BE62C48
P 4100 4200
F 0 "#PWR0105" H 4100 3950 50  0001 C CNN
F 1 "GND" H 4150 4000 50  0000 C CNN
F 2 "" H 4100 4200 50  0001 C CNN
F 3 "" H 4100 4200 50  0001 C CNN
	1    4100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4200 4100 4100
Connection ~ 4100 4100
Wire Wire Line
	4100 4100 4350 4100
$Comp
L basicsensormodule-rescue:+5V-power #PWR0103
U 1 1 5BE6342B
P 7400 3700
F 0 "#PWR0103" H 7400 3550 50  0001 C CNN
F 1 "+5V" H 7450 3900 50  0000 C CNN
F 2 "" H 7400 3700 50  0001 C CNN
F 3 "" H 7400 3700 50  0001 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3700 7400 3800
Wire Wire Line
	7400 3800 7550 3800
Connection ~ 7550 3800
Wire Wire Line
	7550 3800 7550 4050
$Comp
L basicsensormodule-rescue:+5V-power #PWR0101
U 1 1 5BE64E90
P 1850 2600
F 0 "#PWR0101" H 1850 2450 50  0001 C CNN
F 1 "+5V" H 1900 2800 50  0000 C CNN
F 2 "" H 1850 2600 50  0001 C CNN
F 3 "" H 1850 2600 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3150 1950 3150
$Comp
L basicsensormodule-rescue:LL4148-Diode D101
U 1 1 5BE65BF3
P 1850 2850
F 0 "D101" V 1900 2750 50  0000 R CNN
F 1 "LL4148" V 1850 2750 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 1850 2675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 1850 2850 50  0001 C CNN
	1    1850 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 2600 1850 2700
Wire Wire Line
	1850 3000 1850 3150
Wire Wire Line
	2150 3850 2150 3800
Connection ~ 2150 3800
$Comp
L basicsensormodule-rescue:C_Small-Device C102
U 1 1 5BE67608
P 2150 3950
F 0 "C102" H 2250 3850 50  0000 L CNN
F 1 "100nF" H 2250 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 3950 50  0001 C CNN
F 3 "~" H 2150 3950 50  0001 C CNN
	1    2150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4050 2150 4100
Connection ~ 2150 4100
Wire Wire Line
	2350 3150 7750 3150
$Comp
L basicsensormodule-rescue:MountingHole-Mechanical H104
U 1 1 5BE9AF15
P 2950 5650
F 0 "H104" H 3050 5700 50  0000 L CNN
F 1 "MountingHole" H 3050 5650 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 5650 50  0001 C CNN
F 3 "~" H 2950 5650 50  0001 C CNN
	1    2950 5650
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:MountingHole-Mechanical H103
U 1 1 5BE9BC53
P 2950 5450
F 0 "H103" H 3050 5500 50  0000 L CNN
F 1 "MountingHole" H 3050 5450 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 5450 50  0001 C CNN
F 3 "~" H 2950 5450 50  0001 C CNN
	1    2950 5450
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:MountingHole-Mechanical H102
U 1 1 5BE9BC79
P 2950 5250
F 0 "H102" H 3050 5300 50  0000 L CNN
F 1 "MountingHole" H 3050 5250 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 5250 50  0001 C CNN
F 3 "~" H 2950 5250 50  0001 C CNN
	1    2950 5250
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:MountingHole-Mechanical H101
U 1 1 5BE9BC9F
P 2950 5050
F 0 "H101" H 3050 5100 50  0000 L CNN
F 1 "MountingHole" H 3050 5050 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2950 5050 50  0001 C CNN
F 3 "~" H 2950 5050 50  0001 C CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3250 9400 3250
$EndSCHEMATC
