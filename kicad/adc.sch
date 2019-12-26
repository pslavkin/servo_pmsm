EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 16
Title "ADC"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4650 11000 4650 10700
Wire Wire Line
	7550 4150 7350 4150
Wire Wire Line
	7550 3650 7350 3650
Wire Wire Line
	7550 4150 7550 3650
Wire Wire Line
	7550 2950 7350 2950
Wire Wire Line
	7550 3650 7550 2950
Wire Wire Line
	7550 1950 7350 1950
Wire Wire Line
	7550 2950 7550 1950
Wire Wire Line
	9500 4150 9500 3550
Wire Wire Line
	9100 3550 9100 4150
Wire Wire Line
	8450 3250 8450 2750
Wire Wire Line
	7950 4150 7950 3550
Text Notes 8350 2250 0    84   ~ 0
Place near U1
Connection ~ 7550 4150
Connection ~ 7550 3650
Connection ~ 7550 2950
$Comp
L servo:Capacitor C433
U 1 1 5DB391B8
P 9100 3450
F 0 "C433" V 9250 3700 60  0000 R CNN
F 1 "2.2uF" V 9050 3700 50  0000 R CNN
F 2 "" H 9100 3450 50  0001 C CNN
F 3 "" H 9100 3450 50  0001 C CNN
F 4 "2.2uF" V -1400 2550 60  0001 C CNN "ValueDisplayed"
	1    9100 3450
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C436
U 1 1 5DB391B3
P 8450 3450
F 0 "C436" V 8545 3340 60  0000 R CNN
F 1 "1uF" V 8447 3340 50  0000 R CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "" H 8450 3450 50  0001 C CNN
F 4 "1uF" V -5950 2750 60  0001 C CNN "ValueDisplayed"
	1    8450 3450
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C429
U 1 1 5DB3916A
P 7950 3450
F 0 "C429" V 8045 3340 60  0000 R CNN
F 1 "22uF" V 7947 3340 50  0000 R CNN
F 2 "" H 7950 3450 50  0001 C CNN
F 3 "" H 7950 3450 50  0001 C CNN
F 4 "22uF" V -1450 -2350 60  0001 C CNN "ValueDisplayed"
	1    7950 3450
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C432
U 1 1 5DB39165
P 9500 3450
F 0 "C432" V 9595 3559 60  0000 L CNN
F 1 "0.1uF" V 9497 3559 50  0000 L CNN
F 2 "" H 9500 3450 50  0001 C CNN
F 3 "" H 9500 3450 50  0001 C CNN
F 4 "0.1uF" V -600 2550 60  0001 C CNN "ValueDisplayed"
	1    9500 3450
	0    1    -1   0   
$EndComp
$Comp
L servo:3V3A #PWR0416
U 1 1 5E5CB351
P 9500 2650
F 0 "#PWR0416" H 9505 2857 20  0001 C CNN
F 1 "3V3A" H 9505 2807 28  0000 C CNN
F 2 "" H 9500 2650 50  0001 C CNN
F 3 "" H 9500 2650 50  0001 C CNN
	1    9500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7700 1750
Wire Wire Line
	7350 2750 7700 2750
Wire Wire Line
	7350 3450 7700 3450
Wire Wire Line
	7700 1750 7700 2750
Connection ~ 7700 2750
Wire Wire Line
	7700 2750 7700 3450
Wire Wire Line
	7350 3950 7700 3950
Wire Wire Line
	7700 3950 7700 3450
Connection ~ 7700 3450
Wire Wire Line
	7950 3250 7950 2750
$Comp
L servo:Resistor R436
U 1 1 5E88CCA6
P 8750 2750
F 0 "R436" H 8750 2541 60  0000 C CNN
F 1 "1k" H 8750 2647 60  0000 C CNN
F 2 "" H 8750 2750 50  0001 C CNN
F 3 "" H 8750 2750 50  0001 C CNN
F 4 "" V -1250 -50 60  0001 C CNN "ValueDisplayed"
	1    8750 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 3550 8450 4150
Wire Wire Line
	7700 2750 7950 2750
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 8450 2750
Wire Wire Line
	8950 2750 9100 2750
Wire Wire Line
	8550 2750 8450 2750
Connection ~ 8450 2750
Wire Wire Line
	9100 2750 9100 3250
Connection ~ 9100 2750
Wire Wire Line
	9500 2750 9500 3250
Connection ~ 9500 2750
Wire Wire Line
	9500 2750 9500 2650
Wire Wire Line
	9100 2750 9500 2750
$Comp
L servo:GNDA #PWR?
U 1 1 5EF6D6BF
P 8150 4350
F 0 "#PWR?" H 8150 4100 50  0001 C CNN
F 1 "GNDA" H 8155 4177 50  0000 C CNN
F 2 "" H 8150 4350 50  0001 C CNN
F 3 "" H 8150 4350 50  0001 C CNN
	1    8150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4150 9100 4150
Connection ~ 8150 4150
Wire Wire Line
	8150 4150 7950 4150
Connection ~ 8450 4150
Wire Wire Line
	8450 4150 8150 4150
Connection ~ 9100 4150
Wire Wire Line
	9100 4150 8450 4150
Wire Wire Line
	7550 4150 7950 4150
Connection ~ 7950 4150
Wire Wire Line
	8150 4350 8150 4150
Text GLabel 4800 1750 0    50   Input ~ 0
ADC_A0
Text GLabel 4800 1850 0    50   Input ~ 0
ADC_A1
Text GLabel 4800 1950 0    50   Input ~ 0
ADC_A2
Text GLabel 4800 2050 0    50   Input ~ 0
ADC_A3
Text GLabel 4800 2150 0    50   Input ~ 0
ADC_A4
Text GLabel 4800 2250 0    50   Input ~ 0
ADC_A5
Text GLabel 4800 2450 0    50   Input ~ 0
ADC_ALL_14
Text GLabel 4800 2550 0    50   Input ~ 0
ADC_ALL_15
Text GLabel 4800 2750 0    50   Input ~ 0
ADC_B0
Text GLabel 4800 2850 0    50   Input ~ 0
ADC_B1
Text GLabel 4800 2950 0    50   Input ~ 0
ADC_B2
Text GLabel 4800 3050 0    50   Input ~ 0
ADC_B3
Text GLabel 4800 3150 0    50   Input ~ 0
ADC_B4
Text GLabel 4800 3250 0    50   Input ~ 0
ADC_B5
Text GLabel 4800 3450 0    50   Input ~ 0
ADC_C2
Text GLabel 4800 3550 0    50   Input ~ 0
ADC_C3
Text GLabel 4800 3650 0    50   Input ~ 0
ADC_C4
Text GLabel 4800 3750 0    50   Input ~ 0
ADC_C5
Text GLabel 4800 3950 0    50   Input ~ 0
ADC_D0
Text GLabel 4800 4050 0    50   Input ~ 0
ADC_D1
Text GLabel 4800 4150 0    50   Input ~ 0
ADC_D2
Text GLabel 4800 4250 0    50   Input ~ 0
ADC_D3
Text GLabel 4800 4350 0    50   Input ~ 0
ADC_D4
Text GLabel 4800 4450 0    50   Input ~ 0
ADC_D5
Text GLabel 4150 1850 0    50   Input ~ 0
LEM_A_2
Text GLabel 4150 1750 0    50   Input ~ 0
LEM_A_1
Wire Wire Line
	4150 1750 5150 1750
Wire Wire Line
	4150 1850 5150 1850
Text GLabel 4150 1950 0    50   Input ~ 0
LEM_B_1
Text GLabel 4150 2050 0    50   Input ~ 0
LEM_B_2
Text GLabel 4150 2750 0    50   Input ~ 0
SHUNT_ISOA_UP
Text GLabel 4150 2850 0    50   Input ~ 0
SHUNT_ISOA_UN
Text GLabel 4150 2950 0    50   Input ~ 0
SHUNT_ISOA_VP
Text GLabel 4150 3050 0    50   Input ~ 0
SHUNT_ISOA_VN
Text GLabel 4150 3150 0    50   Input ~ 0
SHUNT_ISOA_WP
Text GLabel 4150 3250 0    50   Input ~ 0
SHUNT_ISOA_WN
Text GLabel 4150 2450 0    50   Input ~ 0
SHUNT_ISO_BUSP
Text GLabel 4150 2550 0    50   Input ~ 0
SHUNT_ISO_BUSN
Text GLabel 4200 3950 0    50   Input ~ 0
SHUNT_ISOB_UP
Text GLabel 4200 4050 0    50   Input ~ 0
SHUNT_ISOB_UN
Text GLabel 4200 4150 0    50   Input ~ 0
SHUNT_ISOB_VP
Text GLabel 4200 4250 0    50   Input ~ 0
SHUNT_ISOB_VN
Text GLabel 4200 4350 0    50   Input ~ 0
SHUNT_ISOB_WP
Text GLabel 4200 4450 0    50   Input ~ 0
SHUNT_ISOB_WN
Wire Wire Line
	4150 2050 5150 2050
Wire Wire Line
	4200 4050 5150 4050
Wire Wire Line
	4200 3950 5150 3950
Wire Wire Line
	4200 4250 5150 4250
Wire Wire Line
	4200 4150 5150 4150
Wire Wire Line
	4200 4450 5150 4450
Wire Wire Line
	4200 4350 5150 4350
$Comp
L servo:TMS320F28388 U401
U 1 1 5DB3916E
P 6250 3050
F 0 "U401" H 6250 1467 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 6250 1369 50  0000 C CNN
F 2 "" H 6250 3050 50  0001 C CNN
F 3 "../doc/datasheets/tms320f28388d_datasheet.pdf" H 6250 3050 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V -550 -1050 60  0001 C CNN "PartNumber"
	1    6250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1950 5150 1950
Wire Wire Line
	5150 2150 4800 2150
Wire Wire Line
	5150 2250 4800 2250
Wire Wire Line
	4150 2750 5150 2750
Wire Wire Line
	4150 2850 5150 2850
Wire Wire Line
	4150 2950 5150 2950
Wire Wire Line
	4150 3050 5150 3050
Wire Wire Line
	4150 3150 5150 3150
Wire Wire Line
	4150 3250 5150 3250
Text GLabel 4150 3450 0    50   Input ~ 0
SHUNT_ISOA_ALLP
Text GLabel 4150 3550 0    50   Input ~ 0
SHUNT_ISOA_ALLN
Text GLabel 4150 3650 0    50   Input ~ 0
SHUNT_ISOB_ALLP
Text GLabel 4150 3750 0    50   Input ~ 0
SHUNT_ISOB_ALLN
Wire Wire Line
	4150 3650 5150 3650
Wire Wire Line
	4150 3750 5150 3750
Wire Wire Line
	4150 3550 5150 3550
Wire Wire Line
	4150 3450 5150 3450
Wire Wire Line
	4150 2450 5150 2450
Wire Wire Line
	4150 2550 5150 2550
$EndSCHEMATC
