EESchema Schematic File Version 4
LIBS:basicsensormodule-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L basicsensormodule-rescue:Crystal_Small-Device Y401
U 1 1 59FE3A5A
P 8300 3600
F 0 "Y401" H 8300 3700 50  0000 C CNN
F 1 "16MHz" H 8300 3500 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 8300 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321153.pdf" H 8300 3600 50  0001 C CNN
	1    8300 3600
	1    0    0    1   
$EndComp
$Comp
L basicsensormodule-rescue:C_Small-Device C403
U 1 1 59FE3A61
P 8050 3800
F 0 "C403" H 8060 3870 50  0000 L CNN
F 1 "22pF" H 8060 3720 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8050 3800 50  0001 C CNN
F 3 "" H 8050 3800 50  0001 C CNN
	1    8050 3800
	-1   0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:C_Small-Device C404
U 1 1 59FE3A68
P 8550 3800
F 0 "C404" H 8350 3900 50  0000 L CNN
F 1 "22pF" H 8350 3700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8550 3800 50  0001 C CNN
F 3 "" H 8550 3800 50  0001 C CNN
	1    8550 3800
	-1   0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R401
U 1 1 59FE4B17
P 6000 4050
F 0 "R401" H 6030 4070 50  0000 L CNN
F 1 "10k" H 6030 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 4050 50  0001 C CNN
F 3 "" H 6000 4050 50  0001 C CNN
	1    6000 4050
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:C_Small-Device C406
U 1 1 59FE4EE2
P 6000 4450
F 0 "C406" V 5900 4350 50  0000 L CNN
F 1 "100nF" V 6050 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 4450 50  0001 C CNN
F 3 "" H 6000 4450 50  0001 C CNN
	1    6000 4450
	-1   0    0    1   
$EndComp
$Comp
L basicsensormodule-rescue:LED_Small_ALT-Device D402
U 1 1 59FE5354
P 5900 5500
F 0 "D402" H 5850 5625 50  0000 L CNN
F 1 "LED_RED" H 5800 5400 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5900 5500 50  0001 C CNN
F 3 "" V 5900 5500 50  0001 C CNN
	1    5900 5500
	0    -1   -1   0   
$EndComp
Text Label 5200 5050 0    60   ~ 0
LED2
Text HLabel 6450 3250 2    60   Output ~ 0
SPI_SCK
Text HLabel 6450 3150 2    60   Input ~ 0
SPI_MISO
Text HLabel 6450 3050 2    60   Output ~ 0
SPI_MOSI
Text HLabel 6450 2750 2    60   Output ~ 0
MCP_SS
Text HLabel 6450 2850 2    60   Input ~ 0
MCP_INT
Text Label 5150 4250 0    60   ~ 0
RESET
Text HLabel 7950 2200 0    60   Input ~ 0
VCC
Text HLabel 7950 2350 0    60   Output ~ 0
GND
$Comp
L basicsensormodule-rescue:R_Small-Device R404
U 1 1 59FFC489
P 5900 5200
F 0 "R404" H 5930 5220 50  0000 L CNN
F 1 "1k" H 5930 5160 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5900 5200 50  0001 C CNN
F 3 "" H 5900 5200 50  0001 C CNN
	1    5900 5200
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:ATmega328P-PU-MCU_Microchip_ATmega U401
U 1 1 59FE3414
P 4350 3950
F 0 "U401" H 3850 5400 50  0000 L BNN
F 1 "ATMEGA328P-PU" H 4500 2450 50  0000 L BNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 4350 3950 50  0001 C CIN
F 3 "" H 4350 3950 50  0001 C CNN
	1    4350 3950
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R402
U 1 1 5AACAE36
P 7350 4350
F 0 "R402" V 7400 4450 50  0000 L CNN
F 1 "1k" V 7400 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7350 4350 50  0001 C CNN
F 3 "" H 7350 4350 50  0001 C CNN
	1    7350 4350
	0    -1   -1   0   
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R403
U 1 1 5AACB0BA
P 7350 4450
F 0 "R403" V 7400 4550 50  0000 L CNN
F 1 "1k" V 7400 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7350 4450 50  0001 C CNN
F 3 "" H 7350 4450 50  0001 C CNN
	1    7350 4450
	0    -1   -1   0   
$EndComp
Text HLabel 5050 3650 2    60   Input ~ 0
analog1
NoConn ~ 5050 3850
NoConn ~ 5050 3950
NoConn ~ 5050 4050
NoConn ~ 5050 4150
NoConn ~ 5050 4750
NoConn ~ 5050 4650
NoConn ~ 5050 4850
Text Notes 5100 6400 0    60   ~ 0
http://ww1.microchip.com/downloads/en/appnotes/atmel-2521-avr-hardware-design-considerations_applicationnote_avr042.pdf
Wire Wire Line
	8550 3350 8550 3600
Wire Wire Line
	8550 3600 8400 3600
Wire Wire Line
	8200 3600 8050 3600
Wire Wire Line
	8050 3450 8050 3600
Wire Wire Line
	8050 4000 8050 3900
Wire Wire Line
	8550 4000 8550 3900
Wire Wire Line
	4950 3450 8050 3450
Connection ~ 8050 3600
Wire Wire Line
	4950 3350 8550 3350
Connection ~ 8550 3600
Wire Wire Line
	6000 4150 6000 4250
Connection ~ 6000 4250
Wire Wire Line
	4950 5050 5900 5050
Wire Wire Line
	5050 4550 4950 4550
Wire Wire Line
	4950 4450 5050 4450
Wire Wire Line
	6450 2750 4950 2750
Wire Wire Line
	4950 3050 6450 3050
Wire Wire Line
	6450 3150 4950 3150
Wire Wire Line
	4950 3250 6450 3250
Wire Wire Line
	4950 2850 6450 2850
Connection ~ 5900 5650
Wire Wire Line
	5900 5050 5900 5100
Wire Wire Line
	5050 3650 4950 3650
Wire Wire Line
	5050 3750 4950 3750
Wire Wire Line
	4950 3850 5050 3850
Wire Wire Line
	4950 4050 5050 4050
Wire Wire Line
	4950 3950 5050 3950
Wire Wire Line
	5050 4150 4950 4150
Wire Wire Line
	4950 4850 5050 4850
Wire Wire Line
	5050 4650 4950 4650
Wire Wire Line
	5050 4750 4950 4750
Wire Wire Line
	7450 4350 7550 4350
Wire Wire Line
	7450 4450 7550 4450
Wire Wire Line
	8050 3600 8050 3700
Wire Wire Line
	8550 3600 8550 3700
Wire Wire Line
	5900 5650 6200 5650
Wire Wire Line
	5900 5600 5900 5650
Wire Wire Line
	5900 5300 5900 5400
NoConn ~ 5050 3750
Wire Wire Line
	4350 5450 4350 5650
Wire Wire Line
	4350 5650 5900 5650
$Comp
L basicsensormodule-rescue:LED_Small_ALT-Device D403
U 1 1 5BE7DD75
P 6200 5500
F 0 "D403" H 6150 5625 50  0000 L CNN
F 1 "LED_RED" H 6100 5400 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6200 5500 50  0001 C CNN
F 3 "" V 6200 5500 50  0001 C CNN
	1    6200 5500
	0    -1   -1   0   
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R405
U 1 1 5BE7DD7B
P 6200 5200
F 0 "R405" H 6230 5220 50  0000 L CNN
F 1 "1k" H 6230 5160 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 5200 50  0001 C CNN
F 3 "" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5600 6200 5650
Wire Wire Line
	6200 5300 6200 5400
Wire Wire Line
	4950 4950 6200 4950
Wire Wire Line
	6200 4950 6200 5100
Text Label 5200 4950 0    60   ~ 0
LED1
Wire Wire Line
	6000 3950 6000 3850
Wire Wire Line
	4350 2450 4350 2350
Wire Wire Line
	4350 2350 4450 2350
Wire Wire Line
	4450 2450 4450 2350
$Comp
L basicsensormodule-rescue:LL4148-Diode D401
U 1 1 5BE95CC8
P 5750 4050
F 0 "D401" V 5650 4200 50  0000 R CNN
F 1 "LL4148" V 5750 4400 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" H 5750 3875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 5750 4050 50  0001 C CNN
	1    5750 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	5750 3900 5750 3850
Wire Wire Line
	5750 3850 6000 3850
Wire Wire Line
	5750 4200 5750 4250
Wire Wire Line
	5750 4250 6000 4250
Connection ~ 5750 4250
Wire Wire Line
	4950 4250 5750 4250
Wire Wire Line
	8050 4000 8300 4000
$Comp
L basicsensormodule-rescue:GND-power #PWR0407
U 1 1 5BEB6AE8
P 8300 4100
F 0 "#PWR0407" H 8300 3850 50  0001 C CNN
F 1 "GND" H 8350 3900 50  0000 C CNN
F 2 "" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
	1    8300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4100 8300 4000
Connection ~ 8300 4000
Wire Wire Line
	8300 4000 8550 4000
$Comp
L basicsensormodule-rescue:GND-power #PWR0412
U 1 1 5BEB7AB4
P 4350 5750
F 0 "#PWR0412" H 4350 5500 50  0001 C CNN
F 1 "GND" H 4400 5550 50  0000 C CNN
F 2 "" H 4350 5750 50  0001 C CNN
F 3 "" H 4350 5750 50  0001 C CNN
	1    4350 5750
	1    0    0    -1  
$EndComp
Connection ~ 4350 5650
Wire Wire Line
	4350 5650 4350 5750
Wire Wire Line
	7950 2200 8050 2200
Wire Wire Line
	8050 2200 8050 2150
Connection ~ 4350 2350
Text Label 5300 3150 0    60   ~ 0
SPI_MISO
Text Label 5300 3050 0    60   ~ 0
SPI_MOSI
Text Label 5300 3250 0    60   ~ 0
SPI_SCK
Wire Wire Line
	4950 5150 5050 5150
NoConn ~ 5050 5150
$Comp
L basicsensormodule-rescue:GND-power #PWR0404
U 1 1 5BEC895B
P 8050 2450
F 0 "#PWR0404" H 8050 2200 50  0001 C CNN
F 1 "GND" H 8100 2250 50  0000 C CNN
F 2 "" H 8050 2450 50  0001 C CNN
F 3 "" H 8050 2450 50  0001 C CNN
	1    8050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2350 8050 2350
Wire Wire Line
	8050 2350 8050 2450
$Comp
L basicsensormodule-rescue:Conn_01x04-Connector_Generic J401
U 1 1 5BECD3FE
P 7750 4450
F 0 "J401" H 7700 4000 50  0000 C CNN
F 1 "USART" H 7700 4100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7750 4450 50  0001 C CNN
F 3 "~" H 7750 4450 50  0001 C CNN
	1    7750 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	6000 4250 6000 4350
$Comp
L basicsensormodule-rescue:GND-power #PWR0408
U 1 1 5BECF494
P 6000 4650
F 0 "#PWR0408" H 6000 4400 50  0001 C CNN
F 1 "GND" H 6050 4450 50  0000 C CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "" H 6000 4650 50  0001 C CNN
	1    6000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6000 4650
Wire Wire Line
	5750 3750 5750 3850
Connection ~ 5750 3850
$Comp
L basicsensormodule-rescue:C_Small-Device C405
U 1 1 5BED8033
P 6300 4250
F 0 "C405" V 6200 4100 50  0000 L CNN
F 1 "100nF" V 6100 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6300 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 4250 6200 4250
Text Label 5050 4450 0    60   ~ 0
USART_RX
Wire Wire Line
	6400 4250 7550 4250
$Comp
L basicsensormodule-rescue:GND-power #PWR0409
U 1 1 5BEE0905
P 7450 4650
F 0 "#PWR0409" H 7450 4400 50  0001 C CNN
F 1 "GND" H 7500 4450 50  0000 C CNN
F 2 "" H 7450 4650 50  0001 C CNN
F 3 "" H 7450 4650 50  0001 C CNN
	1    7450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7450 4550
Wire Wire Line
	7450 4550 7550 4550
Text Label 5050 4550 0    60   ~ 0
USART_TX
Text Label 6600 4350 0    60   ~ 0
USART_RX
Wire Wire Line
	6600 4350 7250 4350
Wire Wire Line
	6600 4450 7250 4450
Text Label 6600 4450 0    60   ~ 0
USART_TX
$Comp
L basicsensormodule-rescue:+5V-power #PWR0401
U 1 1 5BF321D4
P 4350 1750
F 0 "#PWR0401" H 4350 1600 50  0001 C CNN
F 1 "+5V" H 4400 1950 50  0000 C CNN
F 2 "" H 4350 1750 50  0001 C CNN
F 3 "" H 4350 1750 50  0001 C CNN
	1    4350 1750
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:+5V-power #PWR0402
U 1 1 5BF32222
P 8050 2150
F 0 "#PWR0402" H 8050 2000 50  0001 C CNN
F 1 "+5V" H 8100 2350 50  0000 C CNN
F 2 "" H 8050 2150 50  0001 C CNN
F 3 "" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:+5V-power #PWR0406
U 1 1 5BF330B7
P 5750 3750
F 0 "#PWR0406" H 5750 3600 50  0001 C CNN
F 1 "+5V" H 5800 3950 50  0000 C CNN
F 2 "" H 5750 3750 50  0001 C CNN
F 3 "" H 5750 3750 50  0001 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2350 3650 2350
Wire Wire Line
	3650 2350 3650 2750
Wire Wire Line
	3650 2750 3750 2750
$Comp
L basicsensormodule-rescue:C_Small-Device C402
U 1 1 5BF3B4C1
P 3650 2950
F 0 "C402" H 3700 2850 50  0000 L CNN
F 1 "100nF" H 3700 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3650 2950 50  0001 C CNN
F 3 "" H 3650 2950 50  0001 C CNN
	1    3650 2950
	-1   0    0    1   
$EndComp
Connection ~ 3650 2750
Wire Wire Line
	3650 2750 3650 2850
$Comp
L basicsensormodule-rescue:GND-power #PWR0405
U 1 1 5BF3D2B5
P 3650 3150
F 0 "#PWR0405" H 3650 2900 50  0001 C CNN
F 1 "GND" H 3700 2950 50  0000 C CNN
F 2 "" H 3650 3150 50  0001 C CNN
F 3 "" H 3650 3150 50  0001 C CNN
	1    3650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3050 3650 3150
Wire Wire Line
	5050 2950 4950 2950
NoConn ~ 5050 2950
Text Label 5300 2850 0    60   ~ 0
MCP_INT
Text Label 5300 2750 0    60   ~ 0
MCP_SS
$Comp
L basicsensormodule-rescue:C_Small-Device C401
U 1 1 5BF2780D
P 4550 2050
F 0 "C401" H 4650 2050 50  0000 L CNN
F 1 "100nF" H 4550 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4550 2050 50  0001 C CNN
F 3 "" H 4550 2050 50  0001 C CNN
	1    4550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1950 4550 1850
Wire Wire Line
	4350 1850 4350 1750
Wire Wire Line
	4550 1850 4350 1850
Wire Wire Line
	4350 1850 4350 2350
Connection ~ 4350 1850
$Comp
L basicsensormodule-rescue:GND-power #PWR0403
U 1 1 5BF3B38D
P 4550 2250
F 0 "#PWR0403" H 4550 2000 50  0001 C CNN
F 1 "GND" H 4600 2050 50  0000 C CNN
F 2 "" H 4550 2250 50  0001 C CNN
F 3 "" H 4550 2250 50  0001 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2250 4550 2150
$EndSCHEMATC
