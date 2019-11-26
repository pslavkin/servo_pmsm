EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 10
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
	4750 3600 4550 3600
Wire Wire Line
	4750 3100 4550 3100
Wire Wire Line
	4750 3600 4750 3100
Wire Wire Line
	4750 2400 4550 2400
Wire Wire Line
	4750 3100 4750 2400
Wire Wire Line
	4750 1400 4550 1400
Wire Wire Line
	4750 2400 4750 1400
Wire Wire Line
	6700 3600 6700 3000
Wire Wire Line
	6300 3000 6300 3600
Wire Wire Line
	5650 2700 5650 2200
Wire Wire Line
	5150 3600 5150 3000
Text Notes 5550 1700 0    84   ~ 0
Place near U1
Connection ~ 4750 3600
Connection ~ 4750 3100
Connection ~ 4750 2400
$Comp
L servo:Capacitor C433
U 1 1 5DB391B8
P 6300 2900
F 0 "C433" V 6450 3150 60  0000 R CNN
F 1 "2.2uF" V 6250 3150 50  0000 R CNN
F 2 "" H 6300 2900 50  0001 C CNN
F 3 "" H 6300 2900 50  0001 C CNN
F 4 "2.2uF" V -4200 2000 60  0001 C CNN "ValueDisplayed"
	1    6300 2900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C436
U 1 1 5DB391B3
P 5650 2900
F 0 "C436" V 5745 2790 60  0000 R CNN
F 1 "1uF" V 5647 2790 50  0000 R CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
F 4 "1uF" V -8750 2200 60  0001 C CNN "ValueDisplayed"
	1    5650 2900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C429
U 1 1 5DB3916A
P 5150 2900
F 0 "C429" V 5245 2790 60  0000 R CNN
F 1 "22uF" V 5147 2790 50  0000 R CNN
F 2 "" H 5150 2900 50  0001 C CNN
F 3 "" H 5150 2900 50  0001 C CNN
F 4 "22uF" V -4250 -2900 60  0001 C CNN "ValueDisplayed"
	1    5150 2900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C432
U 1 1 5DB39165
P 6700 2900
F 0 "C432" V 6795 3009 60  0000 L CNN
F 1 "0.1uF" V 6697 3009 50  0000 L CNN
F 2 "" H 6700 2900 50  0001 C CNN
F 3 "" H 6700 2900 50  0001 C CNN
F 4 "0.1uF" V -3400 2000 60  0001 C CNN "ValueDisplayed"
	1    6700 2900
	0    1    -1   0   
$EndComp
$Comp
L servo:3V3A #PWR0416
U 1 1 5E5CB351
P 6700 2100
F 0 "#PWR0416" H 6705 2307 20  0001 C CNN
F 1 "3V3A" H 6705 2257 28  0000 C CNN
F 2 "" H 6700 2100 50  0001 C CNN
F 3 "" H 6700 2100 50  0001 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1200 4900 1200
Wire Wire Line
	4550 2200 4900 2200
Wire Wire Line
	4550 2900 4900 2900
Wire Wire Line
	4900 1200 4900 2200
Connection ~ 4900 2200
Wire Wire Line
	4900 2200 4900 2900
Wire Wire Line
	4550 3400 4900 3400
Wire Wire Line
	4900 3400 4900 2900
Connection ~ 4900 2900
Wire Wire Line
	5150 2700 5150 2200
$Comp
L servo:Resistor R436
U 1 1 5E88CCA6
P 5950 2200
F 0 "R436" H 5950 1991 60  0000 C CNN
F 1 "1k" H 5950 2097 60  0000 C CNN
F 2 "" H 5950 2200 50  0001 C CNN
F 3 "" H 5950 2200 50  0001 C CNN
F 4 "" V -4050 -600 60  0001 C CNN "ValueDisplayed"
	1    5950 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 3000 5650 3600
Wire Wire Line
	4900 2200 5150 2200
Connection ~ 5150 2200
Wire Wire Line
	5150 2200 5650 2200
Wire Wire Line
	6150 2200 6300 2200
Wire Wire Line
	5750 2200 5650 2200
Connection ~ 5650 2200
Wire Wire Line
	6300 2200 6300 2700
Connection ~ 6300 2200
Wire Wire Line
	6700 2200 6700 2700
Connection ~ 6700 2200
Wire Wire Line
	6700 2200 6700 2100
Wire Wire Line
	6300 2200 6700 2200
$Comp
L servo:GNDA #PWR?
U 1 1 5EF6D6BF
P 5350 3800
F 0 "#PWR?" H 5350 3550 50  0001 C CNN
F 1 "GNDA" H 5355 3627 50  0000 C CNN
F 2 "" H 5350 3800 50  0001 C CNN
F 3 "" H 5350 3800 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3600 6300 3600
Connection ~ 5350 3600
Wire Wire Line
	5350 3600 5150 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5350 3600
Connection ~ 6300 3600
Wire Wire Line
	6300 3600 5650 3600
Wire Wire Line
	4750 3600 5150 3600
Connection ~ 5150 3600
Wire Wire Line
	5350 3800 5350 3600
$Comp
L servo:TMS320F28388 U401
U 1 1 5DB3916E
P 3450 2500
F 0 "U401" H 3450 917 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 3450 819 50  0000 C CNN
F 2 "" H 3450 2500 50  0001 C CNN
F 3 "../doc/datasheets/tms320f28388d_datasheet.pdf" H 3450 2500 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V -3350 -1600 60  0001 C CNN "PartNumber"
	1    3450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3900 2350 3900
Wire Wire Line
	2000 3800 2350 3800
Wire Wire Line
	2000 3700 2350 3700
Wire Wire Line
	2000 3600 2350 3600
Wire Wire Line
	2000 3500 2350 3500
Wire Wire Line
	2000 3400 2350 3400
Wire Wire Line
	2000 3200 2350 3200
Wire Wire Line
	2000 3100 2350 3100
Wire Wire Line
	2000 3000 2350 3000
Wire Wire Line
	2000 2900 2350 2900
Wire Wire Line
	2000 2700 2350 2700
Wire Wire Line
	2000 2600 2350 2600
Wire Wire Line
	2000 2500 2350 2500
Wire Wire Line
	2000 2400 2350 2400
Wire Wire Line
	2000 2300 2350 2300
Wire Wire Line
	2000 2200 2350 2200
Wire Wire Line
	2000 2000 2350 2000
Wire Wire Line
	2000 1900 2350 1900
Wire Wire Line
	2000 1700 2350 1700
Wire Wire Line
	2000 1600 2350 1600
Wire Wire Line
	2000 1500 2350 1500
Wire Wire Line
	2000 1400 2350 1400
Wire Wire Line
	2000 1300 2350 1300
Wire Wire Line
	2000 1200 2350 1200
Text GLabel 2000 1200 0    50   Input ~ 0
ADC_A0
Text GLabel 2000 1300 0    50   Input ~ 0
ADC_A1
Text GLabel 2000 1400 0    50   Input ~ 0
ADC_A2
Text GLabel 2000 1500 0    50   Input ~ 0
ADC_A3
Text GLabel 2000 1600 0    50   Input ~ 0
ADC_A4
Text GLabel 2000 1700 0    50   Input ~ 0
ADC_A5
Text GLabel 2000 1900 0    50   Input ~ 0
ADC_ALL_14
Text GLabel 2000 2000 0    50   Input ~ 0
ADC_ALL_15
Text GLabel 2000 2200 0    50   Input ~ 0
ADC_B0
Text GLabel 2000 2300 0    50   Input ~ 0
ADC_B1
Text GLabel 2000 2400 0    50   Input ~ 0
ADC_B2
Text GLabel 2000 2500 0    50   Input ~ 0
ADC_B3
Text GLabel 2000 2600 0    50   Input ~ 0
ADC_B4
Text GLabel 2000 2700 0    50   Input ~ 0
ADC_B5
Text GLabel 2000 2900 0    50   Input ~ 0
ADC_C2
Text GLabel 2000 3000 0    50   Input ~ 0
ADC_C3
Text GLabel 2000 3100 0    50   Input ~ 0
ADC_C4
Text GLabel 2000 3200 0    50   Input ~ 0
ADC_C5
Text GLabel 2000 3400 0    50   Input ~ 0
ADC_D0
Text GLabel 2000 3500 0    50   Input ~ 0
ADC_D1
Text GLabel 2000 3600 0    50   Input ~ 0
ADC_D2
Text GLabel 2000 3700 0    50   Input ~ 0
ADC_D3
Text GLabel 2000 3800 0    50   Input ~ 0
ADC_D4
Text GLabel 2000 3900 0    50   Input ~ 0
ADC_D5
$EndSCHEMATC
