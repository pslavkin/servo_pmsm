EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 19
Title "QEP encoder Interfase"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1250 3200 0    50   Input ~ 0
QEP1_A
Text GLabel 1250 3300 0    50   Input ~ 0
QEP1_B
Text GLabel 1250 3500 0    50   Input ~ 0
QEP1_S
$Comp
L servo:GND #PWR?
U 1 1 5E2F5F80
P 1450 3850
AR Path="/5DDE8C5E/5E2F5F80" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F80" Ref="#PWR01102"  Part="1" 
F 0 "#PWR01102" H 1450 3600 30  0001 C CNN
F 1 "GND" H 1450 3692 30  0000 C CNN
F 2 "" H 1450 3850 50  0001 C CNN
F 3 "" H 1450 3850 50  0001 C CNN
	1    1450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3800 1450 3800
Wire Wire Line
	1450 3800 1450 3850
$Comp
L servo:3V3 #PWR?
U 1 1 5E2F5F88
P 1400 2950
AR Path="/5DDE8C5E/5E2F5F88" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F88" Ref="#PWR01101"  Part="1" 
F 0 "#PWR01101" H 1300 3050 20  0001 C CNN
F 1 "3V3" H 1400 3100 28  0000 C CNN
F 2 "" H 1400 2950 50  0001 C CNN
F 3 "" H 1400 2950 50  0001 C CNN
	1    1400 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E2F5F90
P 3600 4300
AR Path="/5DDE8C5E/5E2F5F90" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F90" Ref="#PWR01104"  Part="1" 
F 0 "#PWR01104" H 3600 4050 30  0001 C CNN
F 1 "GNDH" H 3600 4142 30  0000 C CNN
F 2 "" H 3600 4300 50  0001 C CNN
F 3 "" H 3600 4300 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3000 3100 3100
Wire Wire Line
	2950 3800 3100 3800
Wire Wire Line
	3100 3800 3100 4200
Text Notes 2950 4150 2    39   ~ 8
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text GLabel 1250 3400 0    50   Input ~ 0
QEP1_I
$Comp
L servo:Resistor R1101
U 1 1 5E304AAA
P 4300 3200
F 0 "R1101" H 4400 3250 20  0000 C CNN
F 1 "100e" H 4200 3250 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3100 60  0001 C CNN
F 3 "" H 3900 3200 60  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR01103
U 1 1 5E311045
P 3100 3000
F 0 "#PWR01103" H 3100 2800 20  0001 C CNN
F 1 "5VH" H 3105 3157 28  0000 C CNN
F 2 "" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 3000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C1101
U 1 1 5E31A9A1
P 3400 3900
F 0 "C1101" V 3350 3900 20  0000 R CNN
F 1 "1nF" V 3400 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3400 3800 60  0001 C CNN
F 3 "" H 3400 3900 60  0000 C CNN
	1    3400 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4200 3600 4300
Wire Wire Line
	2950 3100 3100 3100
Wire Wire Line
	1550 3200 1250 3200
Wire Wire Line
	1250 3300 1550 3300
Wire Wire Line
	1550 3400 1250 3400
Wire Wire Line
	1250 3500 1550 3500
Text GLabel 9850 3200 2    50   Input ~ 0
QEP2_A
Text GLabel 9850 3300 2    50   Input ~ 0
QEP2_B
Text GLabel 9850 3500 2    50   Input ~ 0
QEP2_S
Text GLabel 9850 3400 2    50   Input ~ 0
QEP2_I
Text Notes 3350 1550 0    197  ~ 39
2x Isolated Incremental encoder \n5v input A-B-I-S
$Comp
L servo:SI8662BD U1101
U 1 1 5E914D68
P 2250 3400
F 0 "U1101" H 2250 3989 60  0000 C CNN
F 1 "SI8662BD" H 2250 3883 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 1650 3700 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2150 4000 60  0001 C CNN
	1    2250 3400
	-1   0    0    -1  
$EndComp
Text GLabel 1250 3600 0    50   Input ~ 0
QEP1_OUT1
Text GLabel 1250 3700 0    50   Input ~ 0
QEP1_OUT2
Wire Wire Line
	1550 3600 1250 3600
Wire Wire Line
	1250 3700 1550 3700
Text Notes 800  3800 0    20   ~ 0
Free to use output, for any use
Text GLabel 9850 3600 2    50   Input ~ 0
QEP2_OUT1
Text GLabel 9850 3700 2    50   Input ~ 0
QEP2_OUT2
Text Notes 10300 3800 2    20   ~ 0
Free to use output, for any use
$Comp
L servo:Capacitor C1102
U 1 1 61854B0C
P 3600 3900
F 0 "C1102" V 3550 3900 20  0000 R CNN
F 1 "1nF" V 3600 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3600 3800 60  0001 C CNN
F 3 "" H 3600 3900 60  0000 C CNN
	1    3600 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C1103
U 1 1 61854B38
P 3800 3900
F 0 "C1103" V 3750 3900 20  0000 R CNN
F 1 "1nF" V 3800 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3800 3800 60  0001 C CNN
F 3 "" H 3800 3900 60  0000 C CNN
	1    3800 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C1104
U 1 1 61854BCB
P 4000 3900
F 0 "C1104" V 3950 3900 20  0000 R CNN
F 1 "1nF" V 4000 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4000 3800 60  0001 C CNN
F 3 "" H 4000 3900 60  0000 C CNN
	1    4000 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1102
U 1 1 618588E2
P 4300 3300
F 0 "R1102" H 4400 3350 20  0000 C CNN
F 1 "100e" H 4200 3350 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3200 60  0001 C CNN
F 3 "" H 3900 3300 60  0001 C CNN
	1    4300 3300
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1103
U 1 1 6185890A
P 4300 3400
F 0 "R1103" H 4400 3450 20  0000 C CNN
F 1 "100e" H 4200 3450 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3300 60  0001 C CNN
F 3 "" H 3900 3400 60  0001 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1104
U 1 1 61858934
P 4300 3500
F 0 "R1104" H 4400 3550 20  0000 C CNN
F 1 "100e" H 4200 3550 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3400 60  0001 C CNN
F 3 "" H 3900 3500 60  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 61861F29
P 4500 2900
AR Path="/5DE49152/61861F29" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/61861F29" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/61861F29" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/61861F29" Ref="#PWR01105"  Part="1" 
F 0 "#PWR01105" H 4500 2700 20  0001 C CNN
F 1 "5VH" H 4505 3057 28  0000 C CNN
F 2 "" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
$Comp
L servo:Jumper_3_Bridged12 JP?
U 1 1 61861F2F
P 4800 2950
AR Path="/5E1BAEAA/61861F2F" Ref="JP?"  Part="1" 
AR Path="/5DE3DF56/61861F2F" Ref="JP?"  Part="1" 
AR Path="/5E092156/61861F2F" Ref="JP1101"  Part="1" 
F 0 "JP1101" H 4800 3119 39  0000 C CNN
F 1 "jumper" H 4800 3044 39  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4600 2750 50  0001 C CNN
F 3 "~" H 4700 2850 50  0001 C CNN
	1    4800 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 61861F36
P 5100 2900
AR Path="/5E1BAEAA/61861F36" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/61861F36" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/61861F36" Ref="#PWR01106"  Part="1" 
F 0 "#PWR01106" H 5100 2700 20  0001 C CNN
F 1 "15VH" H 5100 3057 28  0000 C CNN
F 2 "" H 5100 2900 50  0001 C CNN
F 3 "" H 5100 2900 50  0001 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2950 5100 2900
Wire Wire Line
	5000 2950 5100 2950
Wire Wire Line
	4500 2900 4500 2950
Wire Wire Line
	4500 2950 4600 2950
$Comp
L servo:Screw_Terminal_01x08 J1101
U 1 1 61870E29
P 5200 3400
F 0 "J1101" H 5280 3392 50  0000 L CNN
F 1 "tblock" H 5280 3301 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00293_1x08_P5.08mm_Horizontal" H 5200 3400 50  0001 C CNN
F 3 "~" H 5200 3400 50  0001 C CNN
	1    5200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3050
Wire Wire Line
	5000 3200 4500 3200
Wire Wire Line
	4500 3300 5000 3300
Wire Wire Line
	5000 3400 4500 3400
Wire Wire Line
	4500 3500 5000 3500
$Comp
L servo:Resistor R1105
U 1 1 618792C6
P 4300 3600
F 0 "R1105" H 4400 3650 20  0000 C CNN
F 1 "100e" H 4200 3650 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3500 60  0001 C CNN
F 3 "" H 3900 3600 60  0001 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1106
U 1 1 618792F0
P 4300 3700
F 0 "R1106" H 4400 3750 20  0000 C CNN
F 1 "100e" H 4200 3750 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 3600 60  0001 C CNN
F 3 "" H 3900 3700 60  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3600 4550 3600
Wire Wire Line
	5000 3700 4750 3700
Wire Wire Line
	4100 3600 2950 3600
Wire Wire Line
	2950 3700 4100 3700
Wire Wire Line
	3100 4200 3400 4200
Wire Wire Line
	2950 3500 4000 3500
Wire Wire Line
	2950 3300 3600 3300
Wire Wire Line
	2950 3200 3400 3200
$Comp
L servo:Capacitor C1105
U 1 1 61880060
P 4550 3900
F 0 "C1105" V 4500 3900 20  0000 R CNN
F 1 "1nF" V 4550 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4550 3800 60  0001 C CNN
F 3 "" H 4550 3900 60  0000 C CNN
	1    4550 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C1106
U 1 1 61880067
P 4750 3900
F 0 "C1106" V 4700 3900 20  0000 R CNN
F 1 "1nF" V 4750 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4750 3800 60  0001 C CNN
F 3 "" H 4750 3900 60  0000 C CNN
	1    4750 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 4100 3400 4200
Connection ~ 3400 4200
Wire Wire Line
	3600 4100 3600 4200
Connection ~ 3600 4200
Wire Wire Line
	3600 4200 3800 4200
Wire Wire Line
	3800 4100 3800 4200
Connection ~ 3800 4200
Wire Wire Line
	3800 4200 4000 4200
Connection ~ 4000 4200
Wire Wire Line
	3400 3800 3400 3200
Connection ~ 3400 3200
Wire Wire Line
	3400 3200 4100 3200
Wire Wire Line
	3600 3800 3600 3300
Connection ~ 3600 3300
Wire Wire Line
	3600 3300 4100 3300
Wire Wire Line
	3800 3800 3800 3400
Wire Wire Line
	2950 3400 3800 3400
Connection ~ 3800 3400
Wire Wire Line
	3800 3400 4100 3400
Wire Wire Line
	4000 3800 4000 3500
Connection ~ 4000 3500
Wire Wire Line
	4000 3500 4100 3500
Wire Wire Line
	4550 3800 4550 3600
Connection ~ 4550 3600
Wire Wire Line
	4550 3600 4500 3600
Wire Wire Line
	4750 3800 4750 3700
Connection ~ 4750 3700
Wire Wire Line
	4750 3700 4500 3700
Wire Wire Line
	4750 4200 4750 4100
Wire Wire Line
	4000 4200 4550 4200
Wire Wire Line
	4550 4100 4550 4200
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 4750 4200
Wire Wire Line
	4000 4100 4000 4200
Wire Wire Line
	3400 4200 3600 4200
Wire Wire Line
	4750 4200 4900 4200
Wire Wire Line
	4900 4200 4900 3800
Wire Wire Line
	4900 3800 5000 3800
Connection ~ 4750 4200
Wire Wire Line
	1400 2950 1400 3100
Wire Wire Line
	1400 3100 1550 3100
$Comp
L servo:GND #PWR?
U 1 1 618A5A41
P 9650 3850
AR Path="/5DDE8C5E/618A5A41" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/618A5A41" Ref="#PWR01111"  Part="1" 
F 0 "#PWR01111" H 9650 3600 30  0001 C CNN
F 1 "GND" H 9650 3692 30  0000 C CNN
F 2 "" H 9650 3850 50  0001 C CNN
F 3 "" H 9650 3850 50  0001 C CNN
	1    9650 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9550 3800 9650 3800
Wire Wire Line
	9650 3800 9650 3850
$Comp
L servo:3V3 #PWR?
U 1 1 618A5A49
P 9700 2950
AR Path="/5DDE8C5E/618A5A49" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/618A5A49" Ref="#PWR01112"  Part="1" 
F 0 "#PWR01112" H 9600 3050 20  0001 C CNN
F 1 "3V3" H 9700 3100 28  0000 C CNN
F 2 "" H 9700 2950 50  0001 C CNN
F 3 "" H 9700 2950 50  0001 C CNN
	1    9700 2950
	-1   0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 618A5A4F
P 7500 4300
AR Path="/5DDE8C5E/618A5A4F" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/618A5A4F" Ref="#PWR01109"  Part="1" 
F 0 "#PWR01109" H 7500 4050 30  0001 C CNN
F 1 "GNDH" H 7500 4142 30  0000 C CNN
F 2 "" H 7500 4300 50  0001 C CNN
F 3 "" H 7500 4300 50  0001 C CNN
	1    7500 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 3000 8000 3100
Wire Wire Line
	8150 3800 8000 3800
Wire Wire Line
	8000 3800 8000 4200
Text Notes 8150 4150 0    39   ~ 8
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
$Comp
L servo:Resistor R1107
U 1 1 618A5A5A
P 6800 3200
F 0 "R1107" H 6900 3250 20  0000 C CNN
F 1 "100e" H 6700 3250 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3100 60  0001 C CNN
F 3 "" H 6400 3200 60  0001 C CNN
	1    6800 3200
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR01110
U 1 1 618A5A61
P 8000 3000
F 0 "#PWR01110" H 8000 2800 20  0001 C CNN
F 1 "5VH" H 8005 3157 28  0000 C CNN
F 2 "" H 8000 3000 50  0001 C CNN
F 3 "" H 8000 3000 50  0001 C CNN
	1    8000 3000
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C1112
U 1 1 618A5A67
P 7700 3900
F 0 "C1112" V 7650 3900 20  0000 R CNN
F 1 "1nF" V 7700 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7700 3800 60  0001 C CNN
F 3 "" H 7700 3900 60  0000 C CNN
	1    7700 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	7500 4200 7500 4300
Wire Wire Line
	8150 3100 8000 3100
Wire Wire Line
	9550 3200 9850 3200
Wire Wire Line
	9850 3300 9550 3300
Wire Wire Line
	9550 3400 9850 3400
Wire Wire Line
	9850 3500 9550 3500
$Comp
L servo:SI8662BD U1102
U 1 1 618A5A74
P 8850 3400
F 0 "U1102" H 8850 3989 60  0000 C CNN
F 1 "SI8662BD" H 8850 3883 60  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 8250 3700 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 8750 4000 60  0001 C CNN
	1    8850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3600 9850 3600
Wire Wire Line
	9850 3700 9550 3700
$Comp
L servo:Capacitor C1111
U 1 1 618A5A80
P 7500 3900
F 0 "C1111" V 7450 3900 20  0000 R CNN
F 1 "1nF" V 7500 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7500 3800 60  0001 C CNN
F 3 "" H 7500 3900 60  0000 C CNN
	1    7500 3900
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1110
U 1 1 618A5A87
P 7300 3900
F 0 "C1110" V 7250 3900 20  0000 R CNN
F 1 "1nF" V 7300 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7300 3800 60  0001 C CNN
F 3 "" H 7300 3900 60  0000 C CNN
	1    7300 3900
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1109
U 1 1 618A5A8E
P 7100 3900
F 0 "C1109" V 7050 3900 20  0000 R CNN
F 1 "1nF" V 7100 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7100 3800 60  0001 C CNN
F 3 "" H 7100 3900 60  0000 C CNN
	1    7100 3900
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1108
U 1 1 618A5A95
P 6800 3300
F 0 "R1108" H 6900 3350 20  0000 C CNN
F 1 "100e" H 6700 3350 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3200 60  0001 C CNN
F 3 "" H 6400 3300 60  0001 C CNN
	1    6800 3300
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1109
U 1 1 618A5A9C
P 6800 3400
F 0 "R1109" H 6900 3450 20  0000 C CNN
F 1 "100e" H 6700 3450 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3300 60  0001 C CNN
F 3 "" H 6400 3400 60  0001 C CNN
	1    6800 3400
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1110
U 1 1 618A5AA3
P 6800 3500
F 0 "R1110" H 6900 3550 20  0000 C CNN
F 1 "100e" H 6700 3550 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3400 60  0001 C CNN
F 3 "" H 6400 3500 60  0001 C CNN
	1    6800 3500
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 618A5AAA
P 6600 2900
AR Path="/5DE49152/618A5AAA" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/618A5AAA" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/618A5AAA" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/618A5AAA" Ref="#PWR01108"  Part="1" 
F 0 "#PWR01108" H 6600 2700 20  0001 C CNN
F 1 "5VH" H 6605 3057 28  0000 C CNN
F 2 "" H 6600 2900 50  0001 C CNN
F 3 "" H 6600 2900 50  0001 C CNN
	1    6600 2900
	-1   0    0    -1  
$EndComp
$Comp
L servo:Jumper_3_Bridged12 JP?
U 1 1 618A5AB0
P 6300 2950
AR Path="/5E1BAEAA/618A5AB0" Ref="JP?"  Part="1" 
AR Path="/5DE3DF56/618A5AB0" Ref="JP?"  Part="1" 
AR Path="/5E092156/618A5AB0" Ref="JP1102"  Part="1" 
F 0 "JP1102" H 6300 3119 39  0000 C CNN
F 1 "jumper" H 6300 3044 39  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6100 2750 50  0001 C CNN
F 3 "~" H 6200 2850 50  0001 C CNN
	1    6300 2950
	-1   0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 618A5AB7
P 6000 2900
AR Path="/5E1BAEAA/618A5AB7" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/618A5AB7" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/618A5AB7" Ref="#PWR01107"  Part="1" 
F 0 "#PWR01107" H 6000 2700 20  0001 C CNN
F 1 "15VH" H 6000 3057 28  0000 C CNN
F 2 "" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0001 C CNN
	1    6000 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 2950 6000 2900
Wire Wire Line
	6100 2950 6000 2950
Wire Wire Line
	6600 2900 6600 2950
Wire Wire Line
	6600 2950 6500 2950
$Comp
L servo:Screw_Terminal_01x08 J1102
U 1 1 618A5AC1
P 5900 3400
F 0 "J1102" H 5980 3392 50  0000 L CNN
F 1 "tblock" H 5980 3301 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00293_1x08_P5.08mm_Horizontal" H 5900 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
	1    5900 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3100 6300 3100
Wire Wire Line
	6300 3100 6300 3050
Wire Wire Line
	6100 3200 6600 3200
Wire Wire Line
	6600 3300 6100 3300
Wire Wire Line
	6100 3400 6600 3400
Wire Wire Line
	6600 3500 6100 3500
$Comp
L servo:Resistor R1111
U 1 1 618A5ACE
P 6800 3600
F 0 "R1111" H 6900 3650 20  0000 C CNN
F 1 "100e" H 6700 3650 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3500 60  0001 C CNN
F 3 "" H 6400 3600 60  0001 C CNN
	1    6800 3600
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1112
U 1 1 618A5AD5
P 6800 3700
F 0 "R1112" H 6900 3750 20  0000 C CNN
F 1 "100e" H 6700 3750 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 3600 60  0001 C CNN
F 3 "" H 6400 3700 60  0001 C CNN
	1    6800 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3600 6550 3600
Wire Wire Line
	6100 3700 6350 3700
Wire Wire Line
	7000 3600 8150 3600
Wire Wire Line
	8150 3700 7000 3700
Wire Wire Line
	8000 4200 7700 4200
Wire Wire Line
	8150 3500 7100 3500
Wire Wire Line
	8150 3300 7500 3300
Wire Wire Line
	8150 3200 7700 3200
$Comp
L servo:Capacitor C1108
U 1 1 618A5AE4
P 6550 3900
F 0 "C1108" V 6500 3900 20  0000 R CNN
F 1 "1nF" V 6550 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6550 3800 60  0001 C CNN
F 3 "" H 6550 3900 60  0000 C CNN
	1    6550 3900
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1107
U 1 1 618A5AEB
P 6350 3900
F 0 "C1107" V 6300 3900 20  0000 R CNN
F 1 "1nF" V 6350 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6350 3800 60  0001 C CNN
F 3 "" H 6350 3900 60  0000 C CNN
	1    6350 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	7700 4100 7700 4200
Connection ~ 7700 4200
Wire Wire Line
	7500 4100 7500 4200
Connection ~ 7500 4200
Wire Wire Line
	7500 4200 7300 4200
Wire Wire Line
	7300 4100 7300 4200
Connection ~ 7300 4200
Wire Wire Line
	7300 4200 7100 4200
Connection ~ 7100 4200
Wire Wire Line
	7700 3800 7700 3200
Connection ~ 7700 3200
Wire Wire Line
	7700 3200 7000 3200
Wire Wire Line
	7500 3800 7500 3300
Connection ~ 7500 3300
Wire Wire Line
	7500 3300 7000 3300
Wire Wire Line
	7300 3800 7300 3400
Wire Wire Line
	8150 3400 7300 3400
Connection ~ 7300 3400
Wire Wire Line
	7300 3400 7000 3400
Wire Wire Line
	7100 3800 7100 3500
Connection ~ 7100 3500
Wire Wire Line
	7100 3500 7000 3500
Wire Wire Line
	6550 3800 6550 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 3600 6600 3600
Wire Wire Line
	6350 3800 6350 3700
Connection ~ 6350 3700
Wire Wire Line
	6350 3700 6600 3700
Wire Wire Line
	6350 4200 6350 4100
Wire Wire Line
	7100 4200 6550 4200
Wire Wire Line
	6550 4100 6550 4200
Connection ~ 6550 4200
Wire Wire Line
	6550 4200 6350 4200
Wire Wire Line
	7100 4100 7100 4200
Wire Wire Line
	7700 4200 7500 4200
Wire Wire Line
	6350 4200 6200 4200
Wire Wire Line
	6200 4200 6200 3800
Wire Wire Line
	6200 3800 6100 3800
Connection ~ 6350 4200
Wire Wire Line
	9700 2950 9700 3100
Wire Wire Line
	9700 3100 9550 3100
Text Notes 4950 1750 0    20   ~ 4
I left the input for two isolated incremental encoders.\nI left the 4 signals input plus two auxiliary output for eny porpous plus\n the ability to choose between 5 or 15vH
$EndSCHEMATC
