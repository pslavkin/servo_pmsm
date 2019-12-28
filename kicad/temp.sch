EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 10 18
Title "gpio"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2700 2750 0    50   Input ~ 0
1Wire_OUT
Text GLabel 2700 2450 0    50   Input ~ 0
1Wire_IN
$Comp
L servo:ADM2483 U?
U 1 1 5E068643
P 3400 2600
F 0 "U?" H 3400 3217 50  0000 C CNN
F 1 "ADM2483" H 3400 3126 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 3400 1900 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 2650 2500 50  0001 C CNN
	1    3400 2600
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E06A702
P 3950 1600
F 0 "#PWR?" H 3950 1400 20  0001 C CNN
F 1 "5VH" H 3955 1757 28  0000 C CNN
F 2 "" H 3950 1600 50  0001 C CNN
F 3 "" H 3950 1600 50  0001 C CNN
	1    3950 1600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5E06DE54
P 3400 1650
F 0 "JP?" H 3400 1854 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 3400 1763 50  0000 C CNN
F 2 "" H 3400 1650 50  0001 C CNN
F 3 "~" H 3400 1650 50  0001 C CNN
	1    3400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1550 2650 1650
Wire Wire Line
	2650 2250 2800 2250
Wire Wire Line
	3150 1650 2650 1650
Connection ~ 2650 1650
Wire Wire Line
	2650 1650 2650 2250
Wire Wire Line
	3400 1800 4100 1800
Wire Wire Line
	4100 1800 4100 2250
Wire Wire Line
	4100 2250 4000 2250
Wire Wire Line
	3650 1650 3950 1650
Wire Wire Line
	3950 1650 3950 1600
Text Notes 2800 1350 0    50   ~ 0
Double sized jumper to respect \nair distance btw isolation PWR\n
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5E0769FB
P 3400 3400
F 0 "JP?" H 3400 3512 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 3400 3603 50  0000 C CNN
F 2 "" H 3400 3400 50  0001 C CNN
F 3 "~" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    1   
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E07A933
P 3900 3450
F 0 "#PWR?" H 3900 3200 30  0001 C CNN
F 1 "GNDH" H 3900 3292 30  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3400 3900 3400
Wire Wire Line
	3900 3400 3900 3450
Wire Wire Line
	4000 2950 4000 3250
Wire Wire Line
	4000 3250 3400 3250
Wire Wire Line
	3150 3400 2700 3400
Wire Wire Line
	2700 3400 2700 2950
Wire Wire Line
	2700 2950 2800 2950
$Comp
L servo:GND #PWR_?
U 1 1 5E083099
P 2700 3450
AR Path="/5DD4DF4C/5E083099" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E083099" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 2705 3301 20  0001 C CNN
F 1 "GND" H 2700 3292 30  0000 C CNN
F 2 "" H 2700 3450 70  0000 C CNN
F 3 "" H 2700 3450 70  0000 C CNN
	1    2700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3450 2700 3400
Connection ~ 2700 3400
Wire Wire Line
	4350 2350 4550 2350
$Comp
L servo:Resistor R?
U 1 1 5E096250
P 4550 2550
AR Path="/5DE3DF56/5E096250" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E096250" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E096250" Ref="R?"  Part="1" 
F 0 "R?" V 4497 2600 60  0000 L CNN
F 1 "120e NP" V 4603 2600 60  0000 L CNN
F 2 "" H 4550 2550 60  0000 C CNN
F 3 "" H 4550 2550 60  0000 C CNN
	1    4550 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2750 4550 2750
Connection ~ 4550 2750
Wire Wire Line
	4550 2350 4950 2350
Connection ~ 4550 2350
$Comp
L servo:Resistor R?
U 1 1 5E09625B
P 4550 2950
AR Path="/5DE3DF56/5E09625B" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E09625B" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E09625B" Ref="R?"  Part="1" 
F 0 "R?" V 4497 3000 60  0000 L CNN
F 1 "10k" V 4603 3000 60  0000 L CNN
F 2 "" H 4550 2950 60  0000 C CNN
F 3 "" H 4550 2950 60  0000 C CNN
	1    4550 2950
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E096262
P 4550 2150
AR Path="/5DE3DF56/5E096262" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E096262" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E096262" Ref="R?"  Part="1" 
F 0 "R?" V 4497 2200 60  0000 L CNN
F 1 "2k2" V 4603 2200 60  0000 L CNN
F 2 "" H 4550 2150 60  0000 C CNN
F 3 "" H 4550 2150 60  0000 C CNN
	1    4550 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2750 4550 2750
Wire Wire Line
	4100 1800 4550 1800
Wire Wire Line
	4550 1800 4550 1950
Connection ~ 4100 1800
Wire Wire Line
	5400 2400 5500 2400
Wire Wire Line
	5400 2700 5500 2700
$Comp
L servo:15VC #PWR?
U 1 1 5E09BA8A
P 5200 2800
AR Path="/5DE3DF56/5E09BA8A" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E09BA8A" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E09BA8A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 2600 20  0001 C CNN
F 1 "15VC" H 5205 2957 28  0000 C CNN
F 2 "" H 5200 2800 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2800 5500 2800
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 5E09BA91
P 5700 2600
AR Path="/5E1BAEAA/5E09BA91" Ref="J?"  Part="1" 
AR Path="/5DE49152/5E09BA91" Ref="J?"  Part="1" 
F 0 "J?" H 5780 2642 50  0000 L CNN
F 1 "Screw_Terminal_01x05" V 5900 2250 50  0000 L CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "~" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E0A4BCB
P 2650 1550
AR Path="/5DCD812E/5E0A4BCB" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E0A4BCB" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E0A4BCB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2667 1759 20  0000 C CNN
F 1 "3V3" H 2667 1707 30  0000 C CNN
F 2 "" H 2650 1550 70  0000 C CNN
F 3 "" H 2650 1550 70  0000 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2550 4250 2550
Wire Wire Line
	4250 2550 4250 2750
Wire Wire Line
	4000 2650 4350 2650
Wire Wire Line
	4350 2650 4350 2350
Wire Wire Line
	4950 2350 4950 2500
Wire Wire Line
	4950 2750 4950 2600
Wire Wire Line
	4950 2600 5500 2600
Wire Wire Line
	4000 3250 4550 3250
Wire Wire Line
	4550 3250 4550 3150
Connection ~ 4000 3250
Wire Wire Line
	5400 1800 4550 1800
Wire Wire Line
	5400 1800 5400 2400
Connection ~ 4550 1800
Wire Wire Line
	5400 2700 5400 3250
Wire Wire Line
	5400 3250 4550 3250
Connection ~ 4550 3250
$Comp
L servo:DS18B20 U?
U 1 1 5E0C077C
P 6400 2600
F 0 "U?" H 6170 2646 50  0000 R CNN
F 1 "MAX31820" H 6170 2555 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 2350 50  0001 C CNN
F 3 "../doc/datasheets/DS18B20.pdf" H 6250 2850 50  0001 C CNN
	1    6400 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 3250 6400 3250
Wire Wire Line
	6400 3250 6400 2900
Connection ~ 5400 3250
Wire Wire Line
	5400 1800 6400 1800
Wire Wire Line
	6400 1800 6400 2300
Connection ~ 5400 1800
Wire Wire Line
	6050 2500 6050 2600
Wire Wire Line
	6050 2600 6100 2600
Wire Wire Line
	4950 2500 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5500 2500 6050 2500
Text Notes 2750 3850 0    50   ~ 0
Double sized jumper to respect \nair distance btw isolation PWR\n
Wire Wire Line
	2700 2750 2800 2750
Wire Wire Line
	2800 2450 2700 2450
Text GLabel 2700 2600 0    50   Input ~ 0
1Wire_EN
Wire Wire Line
	2800 2550 2750 2550
Wire Wire Line
	2750 2550 2750 2600
Wire Wire Line
	2750 2650 2800 2650
Wire Wire Line
	2700 2600 2750 2600
Connection ~ 2750 2600
Wire Wire Line
	2750 2600 2750 2650
Text Notes 6550 2200 0    50   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
$EndSCHEMATC
