EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 17
Title "RS485"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:ADM2483 U?
U 1 1 5E1140E0
P 2400 2250
AR Path="/5DE49152/5E1140E0" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E0" Ref="U?"  Part="1" 
F 0 "U?" H 2400 2867 50  0000 C CNN
F 1 "ADM2483" H 2400 2776 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2400 1550 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 1650 2150 50  0001 C CNN
	1    2400 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E1140E7
P 2950 1250
AR Path="/5DE49152/5E1140E7" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2950 1050 20  0001 C CNN
F 1 "5VH" H 2955 1407 28  0000 C CNN
F 2 "" H 2950 1250 50  0001 C CNN
F 3 "" H 2950 1250 50  0001 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5E1140ED
P 2400 1300
AR Path="/5DE49152/5E1140ED" Ref="JP?"  Part="1" 
AR Path="/5E1BAEAA/5E1140ED" Ref="JP?"  Part="1" 
F 0 "JP?" H 2400 1504 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 2400 1413 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1200 1650 1300
Wire Wire Line
	1650 1900 1800 1900
Wire Wire Line
	2150 1300 1650 1300
Connection ~ 1650 1300
Wire Wire Line
	1650 1300 1650 1900
Wire Wire Line
	2400 1450 3100 1450
Wire Wire Line
	3100 1450 3100 1900
Wire Wire Line
	3100 1900 3000 1900
Wire Wire Line
	2650 1300 2950 1300
Wire Wire Line
	2950 1300 2950 1250
Text Notes 1800 1000 0    50   ~ 0
Double sized jumper to respect \nair distance btw isolation PWR\n
$Comp
L Jumper:Jumper_3_Bridged12 JP?
U 1 1 5E1140FF
P 2400 3050
AR Path="/5DE49152/5E1140FF" Ref="JP?"  Part="1" 
AR Path="/5E1BAEAA/5E1140FF" Ref="JP?"  Part="1" 
F 0 "JP?" H 2400 3162 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 2400 3253 50  0000 C CNN
F 2 "" H 2400 3050 50  0001 C CNN
F 3 "~" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    1   
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E114106
P 2900 3100
AR Path="/5DE49152/5E114106" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114106" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 2850 30  0001 C CNN
F 1 "GNDH" H 2900 2942 30  0000 C CNN
F 2 "" H 2900 3100 50  0001 C CNN
F 3 "" H 2900 3100 50  0001 C CNN
	1    2900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2900 3050
Wire Wire Line
	2900 3050 2900 3100
Wire Wire Line
	3000 2600 3000 2900
Wire Wire Line
	3000 2900 2400 2900
Wire Wire Line
	2150 3050 1700 3050
Wire Wire Line
	1700 3050 1700 2600
Wire Wire Line
	1700 2600 1800 2600
$Comp
L servo:GND #PWR_?
U 1 1 5E114113
P 1700 3100
AR Path="/5DD4DF4C/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5E114113" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 1705 2951 20  0001 C CNN
F 1 "GND" H 1700 2942 30  0000 C CNN
F 2 "" H 1700 3100 70  0000 C CNN
F 3 "" H 1700 3100 70  0000 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3100 1700 3050
Connection ~ 1700 3050
Wire Wire Line
	3350 2000 3550 2000
$Comp
L servo:Resistor R?
U 1 1 5E11411C
P 3550 2200
AR Path="/5DE3DF56/5E11411C" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11411C" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E11411C" Ref="R?"  Part="1" 
F 0 "R?" V 3497 2250 60  0000 L CNN
F 1 "120e" V 3603 2250 60  0000 L CNN
F 2 "" H 3550 2200 60  0000 C CNN
F 3 "" H 3550 2200 60  0000 C CNN
	1    3550 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2400 3550 2400
Connection ~ 3550 2400
Wire Wire Line
	3550 2000 3950 2000
Connection ~ 3550 2000
$Comp
L servo:Resistor R?
U 1 1 5E114127
P 3550 2600
AR Path="/5DE3DF56/5E114127" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E114127" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E114127" Ref="R?"  Part="1" 
F 0 "R?" V 3497 2650 60  0000 L CNN
F 1 "10k" V 3603 2650 60  0000 L CNN
F 2 "" H 3550 2600 60  0000 C CNN
F 3 "" H 3550 2600 60  0000 C CNN
	1    3550 2600
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E11412E
P 3550 1800
AR Path="/5DE3DF56/5E11412E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11412E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E11412E" Ref="R?"  Part="1" 
F 0 "R?" V 3497 1850 60  0000 L CNN
F 1 "10k" V 3603 1850 60  0000 L CNN
F 2 "" H 3550 1800 60  0000 C CNN
F 3 "" H 3550 1800 60  0000 C CNN
	1    3550 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2400 3550 2400
Wire Wire Line
	3100 1450 3550 1450
Wire Wire Line
	3550 1450 3550 1600
Connection ~ 3100 1450
Wire Wire Line
	4400 2050 4500 2050
Wire Wire Line
	4400 2350 4500 2350
$Comp
L servo:3V3 #PWR?
U 1 1 5E114149
P 1650 1200
AR Path="/5DCD812E/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114149" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1667 1409 20  0000 C CNN
F 1 "3V3" H 1667 1357 30  0000 C CNN
F 2 "" H 1650 1200 70  0000 C CNN
F 3 "" H 1650 1200 70  0000 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2200 3250 2200
Wire Wire Line
	3250 2200 3250 2400
Wire Wire Line
	3000 2300 3350 2300
Wire Wire Line
	3350 2300 3350 2000
Wire Wire Line
	3950 2000 3950 2150
Wire Wire Line
	3950 2400 3950 2250
Wire Wire Line
	3950 2250 4500 2250
Wire Wire Line
	3000 2900 3550 2900
Wire Wire Line
	3550 2900 3550 2800
Connection ~ 3000 2900
Wire Wire Line
	4400 1450 3550 1450
Wire Wire Line
	4400 1450 4400 2050
Connection ~ 3550 1450
Wire Wire Line
	4400 2350 4400 2900
Wire Wire Line
	4400 2900 3550 2900
Connection ~ 3550 2900
Wire Wire Line
	3950 2150 4500 2150
Text Notes 1750 3500 0    50   ~ 0
Double sized jumper to respect \nair distance btw isolation PWR\n
Wire Wire Line
	1700 2400 1800 2400
Wire Wire Line
	1800 2100 1700 2100
Wire Wire Line
	1800 2200 1750 2200
Wire Wire Line
	1750 2200 1750 2250
Wire Wire Line
	1750 2300 1800 2300
Wire Wire Line
	1700 2250 1750 2250
Connection ~ 1750 2250
Wire Wire Line
	1750 2250 1750 2300
Text Notes 4600 1850 0    50   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
Text GLabel 1700 2250 0    50   Input ~ 0
RS485_EN
Text GLabel 1700 2400 0    50   Input ~ 0
RS485_TX
Text GLabel 1700 2100 0    50   Input ~ 0
RS485_RX
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5E120B11
P 4700 2150
F 0 "J?" H 4780 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 4780 2051 50  0000 L CNN
F 2 "" H 4700 2150 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
