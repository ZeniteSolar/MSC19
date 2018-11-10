EESchema Schematic File Version 4
LIBS:basicsensormodule-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L basicsensormodule-rescue:R_Small-Device R303
U 1 1 5AAAFE5C
P 4250 3550
AR Path="/5AAAFE5C" Ref="R303"  Part="1" 
AR Path="/5AAC947C/5AAAFE5C" Ref="R303"  Part="1" 
F 0 "R303" V 4200 3650 50  0000 L CNN
F 1 "10k" V 4200 3300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 3550 50  0001 C CNN
F 3 "" H 4250 3550 50  0001 C CNN
	1    4250 3550
	0    1    1    0   
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R308
U 1 1 5AAB0092
P 4250 3750
AR Path="/5AAB0092" Ref="R308"  Part="1" 
AR Path="/5AAC947C/5AAB0092" Ref="R308"  Part="1" 
F 0 "R308" V 4200 3850 50  0000 L CNN
F 1 "10k" V 4200 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 3750 50  0001 C CNN
F 3 "" H 4250 3750 50  0001 C CNN
	1    4250 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3550 3100 3550
Wire Wire Line
	2850 3750 3750 3750
Wire Wire Line
	4550 3250 4550 3300
Wire Wire Line
	4350 3550 4550 3550
Connection ~ 4550 3550
Wire Wire Line
	4350 3750 4550 3750
Wire Wire Line
	4550 3750 4550 4000
Connection ~ 4550 3750
Wire Wire Line
	5250 3650 5350 3650
Connection ~ 5350 3650
Wire Wire Line
	5350 3250 5350 3300
Wire Wire Line
	5350 4100 5350 4000
$Comp
L basicsensormodule-rescue:R_Small-Device R306
U 1 1 5AAB2C10
P 6000 3650
AR Path="/5AAB2C10" Ref="R306"  Part="1" 
AR Path="/5AAC947C/5AAB2C10" Ref="R306"  Part="1" 
F 0 "R306" V 5800 3600 50  0000 L CNN
F 1 "1k" V 5900 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 3650 50  0001 C CNN
F 3 "" H 6000 3650 50  0001 C CNN
	1    6000 3650
	0    1    1    0   
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R307
U 1 1 5AAB2D9F
P 6400 3650
AR Path="/5AAB2D9F" Ref="R307"  Part="1" 
AR Path="/5AAC947C/5AAB2D9F" Ref="R307"  Part="1" 
F 0 "R307" V 6200 3600 50  0000 L CNN
F 1 "1k" V 6300 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6400 3650 50  0001 C CNN
F 3 "" H 6400 3650 50  0001 C CNN
	1    6400 3650
	0    1    1    0   
$EndComp
$Comp
L basicsensormodule-rescue:C_Small-Device C303
U 1 1 5AAB2FEC
P 6600 3900
AR Path="/5AAB2FEC" Ref="C303"  Part="1" 
AR Path="/5AAC947C/5AAB2FEC" Ref="C303"  Part="1" 
F 0 "C303" H 6610 3970 50  0000 L CNN
F 1 "100n" H 6610 3820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6600 3900 50  0001 C CNN
F 3 "" H 6600 3900 50  0001 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3650 6600 3650
Wire Wire Line
	6600 3600 6600 3650
Connection ~ 6600 3650
Wire Wire Line
	6100 3650 6200 3650
Connection ~ 6200 3650
$Comp
L basicsensormodule-rescue:C_Small-Device C302
U 1 1 5AAB31B3
P 6200 3900
AR Path="/5AAB31B3" Ref="C302"  Part="1" 
AR Path="/5AAC947C/5AAB31B3" Ref="C302"  Part="1" 
F 0 "C302" H 6210 3970 50  0000 L CNN
F 1 "100n" H 6210 3820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4250 6200 4000
Wire Wire Line
	7350 3550 7450 3550
Connection ~ 7450 3550
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP302
U 1 1 5AAB3DBB
P 5350 3250
AR Path="/5AAB3DBB" Ref="TP302"  Part="1" 
AR Path="/5AAC947C/5AAB3DBB" Ref="TP302"  Part="1" 
F 0 "TP302" H 5350 3550 50  0000 C BNN
F 1 "op_a_out" H 5350 3500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 5350 3250 50  0001 C CNN
F 3 "" H 5350 3250 50  0001 C CNN
	1    5350 3250
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:R_Small-Device R301
U 1 1 5AAB421B
P 4950 3300
AR Path="/5AAB421B" Ref="R301"  Part="1" 
AR Path="/5AAC947C/5AAB421B" Ref="R301"  Part="1" 
F 0 "R301" V 4900 3400 50  0000 L CNN
F 1 "10k" V 4850 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 3300 50  0001 C CNN
F 3 "" H 4950 3300 50  0001 C CNN
	1    4950 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3300 5350 3300
Wire Wire Line
	4850 3300 4550 3300
$Comp
L basicsensormodule-rescue:R_Small-Device R309
U 1 1 5AAB4362
P 4950 4000
AR Path="/5AAB4362" Ref="R309"  Part="1" 
AR Path="/5AAC947C/5AAB4362" Ref="R309"  Part="1" 
F 0 "R309" V 4900 4100 50  0000 L CNN
F 1 "10k" V 4850 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	0    1    -1   0   
$EndComp
Wire Wire Line
	5350 4000 5050 4000
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP301
U 1 1 5AAB45B1
P 4550 3250
AR Path="/5AAB45B1" Ref="TP301"  Part="1" 
AR Path="/5AAC947C/5AAB45B1" Ref="TP301"  Part="1" 
F 0 "TP301" H 4550 3550 50  0000 C BNN
F 1 "op_a_in-" H 4550 3500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 4550 3250 50  0001 C CNN
F 3 "" H 4550 3250 50  0001 C CNN
	1    4550 3250
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP307
U 1 1 5AAB4639
P 4550 4050
AR Path="/5AAB4639" Ref="TP307"  Part="1" 
AR Path="/5AAC947C/5AAB4639" Ref="TP307"  Part="1" 
F 0 "TP307" H 4550 4350 50  0000 C BNN
F 1 "op_a_in+" H 4550 4300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 4550 4050 50  0001 C CNN
F 3 "" H 4550 4050 50  0001 C CNN
	1    4550 4050
	-1   0    0    1   
$EndComp
Connection ~ 4550 3300
Connection ~ 4550 4000
Connection ~ 5350 3300
$Comp
L basicsensormodule-rescue:R_Small-Device R304
U 1 1 5AAB5EF4
P 3750 3650
AR Path="/5AAB5EF4" Ref="R304"  Part="1" 
AR Path="/5AAC947C/5AAB5EF4" Ref="R304"  Part="1" 
F 0 "R304" H 3850 3700 50  0000 L CNN
F 1 "10k" H 3850 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3750 3650 50  0001 C CNN
F 3 "" H 3750 3650 50  0001 C CNN
	1    3750 3650
	-1   0    0    1   
$EndComp
Connection ~ 3750 3550
Connection ~ 3750 3750
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP304
U 1 1 5AAB63B7
P 7850 3500
AR Path="/5AAB63B7" Ref="TP304"  Part="1" 
AR Path="/5AAC947C/5AAB63B7" Ref="TP304"  Part="1" 
F 0 "TP304" H 7850 3800 50  0000 C BNN
F 1 "op_b_out" H 7850 3750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 7850 3500 50  0001 C CNN
F 3 "" H 7850 3500 50  0001 C CNN
	1    7850 3500
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP305
U 1 1 5AAB6737
P 6600 3600
AR Path="/5AAB6737" Ref="TP305"  Part="1" 
AR Path="/5AAC947C/5AAB6737" Ref="TP305"  Part="1" 
F 0 "TP305" H 6600 3900 50  0000 C BNN
F 1 "op_b_in+" H 6650 3850 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6200 3800 6200 3650
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP303
U 1 1 5AAB73FF
P 3750 3450
AR Path="/5AAB73FF" Ref="TP303"  Part="1" 
AR Path="/5AAC947C/5AAB73FF" Ref="TP303"  Part="1" 
F 0 "TP303" H 3750 3750 50  0000 C BNN
F 1 "in-" H 3750 3700 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 3750 3450 50  0001 C CNN
F 3 "" H 3750 3450 50  0001 C CNN
	1    3750 3450
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:TestPoint-Connector TP306
U 1 1 5AAB7477
P 3750 3850
AR Path="/5AAB7477" Ref="TP306"  Part="1" 
AR Path="/5AAC947C/5AAB7477" Ref="TP306"  Part="1" 
F 0 "TP306" H 3750 4150 50  0000 C BNN
F 1 "in+" H 3750 4100 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 3750 3850 50  0001 C CNN
F 3 "" H 3750 3850 50  0001 C CNN
	1    3750 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 3450 3750 3550
Wire Wire Line
	3750 3750 3750 3850
Text HLabel 8000 3550 2    60   Input ~ 0
out1
$Comp
L basicsensormodule-rescue:D_Zener_Small-Device D301
U 1 1 5AABF910
P 7850 3850
AR Path="/5AABF910" Ref="D301"  Part="1" 
AR Path="/5AAC947C/5AABF910" Ref="D301"  Part="1" 
F 0 "D301" H 7850 3940 50  0000 C CNN
F 1 "4V7" H 7850 3760 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF_Handsoldering" V 7850 3850 50  0001 C CNN
F 3 "" V 7850 3850 50  0001 C CNN
	1    7850 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3750 7850 3550
Connection ~ 7850 3550
Wire Wire Line
	7850 3950 7850 4100
Text HLabel 8800 2900 0    60   Input ~ 0
+5V
Text HLabel 8800 3050 0    60   Input ~ 0
GND
$Comp
L basicsensormodule-rescue:GND-power #PWR0302
U 1 1 5AAC31B3
P 9150 3100
AR Path="/5AAC31B3" Ref="#PWR0302"  Part="1" 
AR Path="/5AAC947C/5AAC31B3" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 9150 2850 50  0001 C CNN
F 1 "GND" H 9150 2950 50  0000 C CNN
F 2 "" H 9150 3100 50  0001 C CNN
F 3 "" H 9150 3100 50  0001 C CNN
	1    9150 3100
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:+5V-power #PWR0301
U 1 1 5AAC3254
P 9150 2850
AR Path="/5AAC3254" Ref="#PWR0301"  Part="1" 
AR Path="/5AAC947C/5AAC3254" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 9150 2700 50  0001 C CNN
F 1 "+5V" H 9250 2850 50  0000 C CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "" H 9150 2850 50  0001 C CNN
	1    9150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2900 8800 2900
Wire Wire Line
	8800 3050 9150 3050
Text HLabel 2850 3550 0    60   Input ~ 0
in1-
Text HLabel 2850 3750 0    60   Input ~ 0
in1+
Text Notes 6450 6450 0    60   ~ 0
https://www.edn.com/electronics-blogs/bakers-best/4418766/Closer-to-real-world-analog-filters
Wire Wire Line
	9150 3050 9150 3100
Wire Wire Line
	9150 2850 9150 2900
Wire Wire Line
	4550 3550 4650 3550
Wire Wire Line
	4550 3750 4650 3750
Wire Wire Line
	5350 3650 5500 3650
Wire Wire Line
	6600 3650 6750 3650
Wire Wire Line
	6600 3650 6600 3800
Wire Wire Line
	6200 3650 6300 3650
Wire Wire Line
	7450 3550 7850 3550
Wire Wire Line
	7450 3550 7450 4250
Wire Wire Line
	6750 3250 6750 3450
Wire Wire Line
	4550 3300 4550 3550
Wire Wire Line
	4550 4000 4550 4050
Wire Wire Line
	5350 3300 5350 3650
Wire Wire Line
	3750 3550 4150 3550
Wire Wire Line
	3750 3750 4150 3750
Wire Wire Line
	7450 3250 7450 3550
Wire Wire Line
	7850 3550 8000 3550
$Comp
L basicsensormodule-rescue:R_Small-Device R305
U 1 1 5BE62E23
P 5600 3650
AR Path="/5BE62E23" Ref="R305"  Part="1" 
AR Path="/5AAC947C/5BE62E23" Ref="R305"  Part="1" 
F 0 "R305" V 5400 3600 50  0000 L CNN
F 1 "1k" V 5500 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 3650 50  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
	1    5600 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3650 5800 3650
Connection ~ 5800 3650
$Comp
L basicsensormodule-rescue:C_Small-Device C301
U 1 1 5BE62E2C
P 5800 3900
AR Path="/5BE62E2C" Ref="C301"  Part="1" 
AR Path="/5AAC947C/5BE62E2C" Ref="C301"  Part="1" 
F 0 "C301" H 5810 3970 50  0000 L CNN
F 1 "100n" H 5810 3820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5800 3900 50  0001 C CNN
F 3 "" H 5800 3900 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4050 5800 4000
Wire Wire Line
	5800 3800 5800 3650
Wire Wire Line
	5800 3650 5900 3650
Wire Wire Line
	6600 4000 6600 4050
Wire Wire Line
	6200 4250 7450 4250
Wire Wire Line
	6750 3250 7450 3250
Wire Wire Line
	3300 3550 3750 3550
$Comp
L basicsensormodule-rescue:LM324-Amplifier_Operational U301
U 3 1 5BE784E0
P 4950 3650
AR Path="/5BE784E0" Ref="U301"  Part="3" 
AR Path="/5AAC947C/5BE784E0" Ref="U301"  Part="3" 
F 0 "U301" H 5050 3800 50  0000 C CNN
F 1 "LM324" H 5000 3900 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4900 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5000 3850 50  0001 C CNN
	3    4950 3650
	1    0    0    1   
$EndComp
$Comp
L basicsensormodule-rescue:LM324-Amplifier_Operational U301
U 2 1 5BE7C0AB
P 7050 3550
AR Path="/5BE7C0AB" Ref="U301"  Part="2" 
AR Path="/5AAC947C/5BE7C0AB" Ref="U301"  Part="2" 
F 0 "U301" H 7200 3700 50  0000 C CNN
F 1 "LM324" H 7150 3800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7000 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7100 3750 50  0001 C CNN
	2    7050 3550
	1    0    0    1   
$EndComp
$Comp
L basicsensormodule-rescue:LM324-Amplifier_Operational U301
U 5 1 5BE7C131
P 8750 4050
AR Path="/5BE7C131" Ref="U301"  Part="5" 
AR Path="/5AAC947C/5BE7C131" Ref="U301"  Part="5" 
F 0 "U301" H 8550 4100 50  0000 R CNN
F 1 "LM324" H 8550 4050 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8700 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8800 4250 50  0001 C CNN
	5    8750 4050
	-1   0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:C_Small-Device C304
U 1 1 5BE7C4D7
P 8700 4050
AR Path="/5BE7C4D7" Ref="C304"  Part="1" 
AR Path="/5AAC947C/5BE7C4D7" Ref="C304"  Part="1" 
F 0 "C304" H 8710 4120 50  0000 L CNN
F 1 "100n" H 8710 3970 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8700 4050 50  0001 C CNN
F 3 "" H 8700 4050 50  0001 C CNN
	1    8700 4050
	-1   0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:GND-power #PWR0308
U 1 1 5BE81413
P 8850 4450
AR Path="/5BE81413" Ref="#PWR0308"  Part="1" 
AR Path="/5AAC947C/5BE81413" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 8850 4200 50  0001 C CNN
F 1 "GND" H 8850 4300 50  0000 C CNN
F 2 "" H 8850 4450 50  0001 C CNN
F 3 "" H 8850 4450 50  0001 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4400 8700 4400
Wire Wire Line
	8700 4400 8700 4150
Wire Wire Line
	8850 4350 8850 4400
Connection ~ 8850 4400
Wire Wire Line
	8850 4400 8850 4450
Wire Wire Line
	8850 3700 8700 3700
Wire Wire Line
	8700 3700 8700 3950
$Comp
L basicsensormodule-rescue:+5V-power #PWR0303
U 1 1 5BE86FFF
P 8850 3650
AR Path="/5BE86FFF" Ref="#PWR0303"  Part="1" 
AR Path="/5AAC947C/5BE86FFF" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 8850 3500 50  0001 C CNN
F 1 "+5V" H 8950 3650 50  0000 C CNN
F 2 "" H 8850 3650 50  0001 C CNN
F 3 "" H 8850 3650 50  0001 C CNN
	1    8850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3650 8850 3700
Connection ~ 8850 3700
Wire Wire Line
	8850 3700 8850 3750
Wire Wire Line
	4550 4000 4850 4000
Wire Wire Line
	7850 3500 7850 3550
Text Notes 2900 3300 0    50   ~ 0
0R for current
Text Notes 3900 3900 1    50   ~ 0
30R for current
$Comp
L basicsensormodule-rescue:R_Small-Device R302
U 1 1 5BE77B14
P 3200 3550
AR Path="/5BE77B14" Ref="R302"  Part="1" 
AR Path="/5AAC947C/5BE77B14" Ref="R302"  Part="1" 
F 0 "R302" V 3000 3500 50  0000 L CNN
F 1 "100k" V 3100 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	0    1    1    0   
$EndComp
$Comp
L basicsensormodule-rescue:GND-power #PWR0307
U 1 1 5BE6E97E
P 7850 4100
AR Path="/5BE6E97E" Ref="#PWR0307"  Part="1" 
AR Path="/5AAC947C/5BE6E97E" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 7850 3850 50  0001 C CNN
F 1 "GND" H 7850 3950 50  0000 C CNN
F 2 "" H 7850 4100 50  0001 C CNN
F 3 "" H 7850 4100 50  0001 C CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:GND-power #PWR0305
U 1 1 5BE6E9BF
P 6600 4050
AR Path="/5BE6E9BF" Ref="#PWR0305"  Part="1" 
AR Path="/5AAC947C/5BE6E9BF" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 6600 3800 50  0001 C CNN
F 1 "GND" H 6600 3900 50  0000 C CNN
F 2 "" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:GND-power #PWR0304
U 1 1 5BE6EA00
P 5800 4050
AR Path="/5BE6EA00" Ref="#PWR0304"  Part="1" 
AR Path="/5AAC947C/5BE6EA00" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 5800 3800 50  0001 C CNN
F 1 "GND" H 5800 3900 50  0000 C CNN
F 2 "" H 5800 4050 50  0001 C CNN
F 3 "" H 5800 4050 50  0001 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
$Comp
L basicsensormodule-rescue:GND-power #PWR0306
U 1 1 5BE6EA41
P 5350 4100
AR Path="/5BE6EA41" Ref="#PWR0306"  Part="1" 
AR Path="/5AAC947C/5BE6EA41" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 5350 3850 50  0001 C CNN
F 1 "GND" H 5350 3950 50  0000 C CNN
F 2 "" H 5350 4100 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
	1    5350 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
