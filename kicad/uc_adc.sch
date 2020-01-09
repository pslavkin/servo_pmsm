EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 18
Title "ADC"
Date "2020-01-09"
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
	6650 4850 6450 4850
Wire Wire Line
	6650 4350 6450 4350
Wire Wire Line
	6650 4850 6650 4350
Wire Wire Line
	6650 3650 6450 3650
Wire Wire Line
	6650 4350 6650 3650
Wire Wire Line
	6650 2650 6450 2650
Wire Wire Line
	6650 3650 6650 2650
Wire Wire Line
	8600 4850 8600 4250
Wire Wire Line
	8200 4250 8200 4850
Wire Wire Line
	7550 3950 7550 3450
Wire Wire Line
	7050 4850 7050 4250
Connection ~ 6650 4850
Connection ~ 6650 4350
Connection ~ 6650 3650
$Comp
L servo:Capacitor C433
U 1 1 5DB391B8
P 8200 4150
F 0 "C433" V 8350 4400 60  0000 R CNN
F 1 "2.2uF" V 8150 4400 50  0000 R CNN
F 2 "" H 8200 4150 50  0001 C CNN
F 3 "" H 8200 4150 50  0001 C CNN
F 4 "2.2uF" V -2300 3250 60  0001 C CNN "ValueDisplayed"
	1    8200 4150
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C436
U 1 1 5DB391B3
P 7550 4150
F 0 "C436" V 7645 4040 60  0000 R CNN
F 1 "1uF" V 7547 4040 50  0000 R CNN
F 2 "" H 7550 4150 50  0001 C CNN
F 3 "" H 7550 4150 50  0001 C CNN
F 4 "1uF" V -6850 3450 60  0001 C CNN "ValueDisplayed"
	1    7550 4150
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C429
U 1 1 5DB3916A
P 7050 4150
F 0 "C429" V 7145 4040 60  0000 R CNN
F 1 "22uF" V 7047 4040 50  0000 R CNN
F 2 "" H 7050 4150 50  0001 C CNN
F 3 "" H 7050 4150 50  0001 C CNN
F 4 "22uF" V -2350 -1650 60  0001 C CNN "ValueDisplayed"
	1    7050 4150
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C432
U 1 1 5DB39165
P 8600 4150
F 0 "C432" V 8695 4259 60  0000 L CNN
F 1 "0.1uF" V 8597 4259 50  0000 L CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
F 4 "0.1uF" V -1500 3250 60  0001 C CNN "ValueDisplayed"
	1    8600 4150
	0    1    -1   0   
$EndComp
$Comp
L servo:3V3A #PWR0416
U 1 1 5E5CB351
P 8600 3350
F 0 "#PWR0416" H 8605 3557 20  0001 C CNN
F 1 "3V3A" H 8605 3507 28  0000 C CNN
F 2 "" H 8600 3350 50  0001 C CNN
F 3 "" H 8600 3350 50  0001 C CNN
	1    8600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2450 6800 2450
Wire Wire Line
	6450 3450 6800 3450
Wire Wire Line
	6450 4150 6800 4150
Wire Wire Line
	6800 2450 6800 3450
Connection ~ 6800 3450
Wire Wire Line
	6800 3450 6800 4150
Wire Wire Line
	6450 4650 6800 4650
Wire Wire Line
	6800 4650 6800 4150
Connection ~ 6800 4150
Wire Wire Line
	7050 3950 7050 3450
$Comp
L servo:Resistor R436
U 1 1 5E88CCA6
P 7850 3450
F 0 "R436" H 7850 3241 60  0000 C CNN
F 1 "1k" H 7850 3347 60  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
F 4 "" V -2150 650 60  0001 C CNN "ValueDisplayed"
	1    7850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 4250 7550 4850
Wire Wire Line
	6800 3450 7050 3450
Connection ~ 7050 3450
Wire Wire Line
	7050 3450 7550 3450
Wire Wire Line
	8050 3450 8200 3450
Wire Wire Line
	7650 3450 7550 3450
Connection ~ 7550 3450
Wire Wire Line
	8200 3450 8200 3950
Connection ~ 8200 3450
Wire Wire Line
	8600 3450 8600 3950
Connection ~ 8600 3450
Wire Wire Line
	8600 3450 8600 3350
Wire Wire Line
	8200 3450 8600 3450
Wire Wire Line
	8600 4850 8200 4850
Connection ~ 7250 4850
Wire Wire Line
	7250 4850 7050 4850
Connection ~ 7550 4850
Wire Wire Line
	7550 4850 7250 4850
Connection ~ 8200 4850
Wire Wire Line
	8200 4850 7550 4850
Wire Wire Line
	6650 4850 7050 4850
Connection ~ 7050 4850
Wire Wire Line
	7250 5050 7250 4850
$Comp
L servo:TMS320F28388 U401
U 1 1 5DB3916E
P 5350 3750
F 0 "U401" H 5350 2167 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 5350 2069 50  0000 C CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "../doc/datasheets/tms320f28388d_datasheet.pdf" H 5350 3750 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V -1450 -350 60  0001 C CNN "PartNumber"
	1    5350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5050 3900 5050
Wire Wire Line
	4250 5150 3900 5150
Wire Wire Line
	4250 4650 3900 4650
Wire Wire Line
	4250 4750 3900 4750
Wire Wire Line
	4250 4850 3900 4850
Wire Wire Line
	4250 4950 3900 4950
Text GLabel 3900 4650 0    50   Input ~ 0
LEM_A_U
Text GLabel 3900 3450 0    50   Input ~ 0
LEM_B_U
Text GLabel 3900 4750 0    50   Input ~ 0
LEM_A_V
Text GLabel 3900 3550 0    50   Input ~ 0
LEM_B_V
Text GLabel 3900 4950 0    50   Input ~ 0
LEM_A_W
Text GLabel 3900 3750 0    50   Input ~ 0
LEM_B_W
Text GLabel 3900 4850 0    50   Input ~ 0
LEM_A_ALL
Text GLabel 3900 3650 0    50   Input ~ 0
LEM_B_ALL
Wire Wire Line
	4250 3450 3900 3450
Wire Wire Line
	3900 3750 4250 3750
Wire Wire Line
	3900 3650 4250 3650
Wire Wire Line
	3900 3550 4250 3550
Text GLabel 3900 3850 0    50   Input ~ 0
VBUS_B_P
Text GLabel 3900 3950 0    50   Input ~ 0
VBUS_B_N
Text GLabel 3900 5050 0    50   Input ~ 0
VBUS_A_P
Text GLabel 3900 5150 0    50   Input ~ 0
VBUS_A_N
Wire Wire Line
	4250 3850 3900 3850
Wire Wire Line
	3900 3950 4250 3950
Text GLabel 3900 4150 0    50   Input ~ 0
NTC1_P
Text GLabel 3900 4250 0    50   Input ~ 0
NTC1_N
Text GLabel 3900 4350 0    50   Input ~ 0
NTC2_P
Text GLabel 3900 4450 0    50   Input ~ 0
NTC2_N
Wire Wire Line
	3900 4150 4250 4150
Wire Wire Line
	3900 4350 4250 4350
Wire Wire Line
	3900 4250 4250 4250
Wire Wire Line
	3900 4450 4250 4450
Text Notes 2650 4950 0    20   ~ 0
lem all hast to be connected on positive pin\n of comparator CMPINxP, becose the internal\n DAC reference work on the negative side only.\n 
Text Notes 4350 1600 0    197  ~ 39
uC ADC PINS
Text Notes 4900 1850 0    20   ~ 0
Every interfase to the ADC has the responsability to filter it's output\n before enter ADC pin, for that reason these page just connect to the uC\n without nothin in the middle
Text GLabel 3900 2450 0    50   Input ~ 0
LCD_AUDIO
Wire Wire Line
	4250 2450 3900 2450
Text Notes 3550 2350 0    20   ~ 0
using the DAC out to manage audio \nor other multiporpouse signals
Text GLabel 3900 2550 0    50   Input ~ 0
DACB_DBG_OUT
Wire Wire Line
	4250 2550 3900 2550
$Comp
L servo:GND #PWR?
U 1 1 5E9C32E8
P 7250 5050
AR Path="/5DCD812E/5E9C32E8" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E9C32E8" Ref="#PWR?"  Part="1" 
AR Path="/5DD0E9D6/5E9C32E8" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7255 4901 20  0001 C CNN
F 1 "GND" H 7255 4849 30  0000 C CNN
F 2 "" H 7250 5050 70  0000 C CNN
F 3 "" H 7250 5050 70  0000 C CNN
	1    7250 5050
	1    0    0    -1  
$EndComp
NoConn ~ 4250 2650
NoConn ~ 4250 2750
NoConn ~ 4250 2850
NoConn ~ 4250 2950
NoConn ~ 4250 3150
NoConn ~ 4250 3250
$EndSCHEMATC
