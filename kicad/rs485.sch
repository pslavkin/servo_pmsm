EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 19
Title "RS485"
Date "2020-01-09"
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
P 4800 2650
AR Path="/5DE49152/5E1140E0" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E0" Ref="U1201"  Part="1" 
F 0 "U1201" H 4800 3267 50  0000 C CNN
F 1 "ADM2483" H 4800 3176 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4800 1950 50  0001 C CNN
F 3 "../doc/datasheets/adm2483.pdf" H 4050 2550 50  0001 C CNN
	1    4800 2650
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E1140E7
P 5500 1900
AR Path="/5DE49152/5E1140E7" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E7" Ref="#PWR01202"  Part="1" 
F 0 "#PWR01202" H 5500 1700 20  0001 C CNN
F 1 "5VH" H 5505 2057 28  0000 C CNN
F 2 "" H 5500 1900 50  0001 C CNN
F 3 "" H 5500 1900 50  0001 C CNN
	1    5500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1950 5500 2300
Wire Wire Line
	5500 2300 5400 2300
Wire Wire Line
	5500 1950 5500 1900
$Comp
L servo:GNDH #PWR?
U 1 1 5E114106
P 5950 3300
AR Path="/5DE49152/5E114106" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114106" Ref="#PWR01203"  Part="1" 
F 0 "#PWR01203" H 5950 3050 30  0001 C CNN
F 1 "GNDH" H 5950 3142 30  0000 C CNN
F 2 "" H 5950 3300 50  0001 C CNN
F 3 "" H 5950 3300 50  0001 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3250 5950 3300
Wire Wire Line
	5750 3000 5750 3250
$Comp
L servo:GND #PWR_?
U 1 1 5E114113
P 4050 3150
AR Path="/5DD4DF4C/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5E114113" Ref="#PWR_01201"  Part="1" 
F 0 "#PWR_01201" H 4055 3001 20  0001 C CNN
F 1 "GND" H 4050 2992 30  0000 C CNN
F 2 "" H 4050 3150 70  0000 C CNN
F 3 "" H 4050 3150 70  0000 C CNN
	1    4050 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E11411C
P 5950 2600
AR Path="/5DE3DF56/5E11411C" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11411C" Ref="R1202"  Part="1" 
AR Path="/5DE49152/5E11411C" Ref="R?"  Part="1" 
F 0 "R1202" V 5928 2650 20  0000 L CNN
F 1 "120e" V 5971 2650 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 2500 60  0001 C CNN
F 3 "" H 5550 2600 60  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2800 5950 2800
Connection ~ 5950 2800
$Comp
L servo:Resistor R?
U 1 1 5E114127
P 5950 3000
AR Path="/5DE3DF56/5E114127" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E114127" Ref="R1203"  Part="1" 
AR Path="/5DE49152/5E114127" Ref="R?"  Part="1" 
F 0 "R1203" V 5928 3050 20  0000 L CNN
F 1 "10k" V 5971 3050 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 2900 60  0001 C CNN
F 3 "" H 5550 3000 60  0001 C CNN
	1    5950 3000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E11412E
P 5950 2200
AR Path="/5DE3DF56/5E11412E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11412E" Ref="R1201"  Part="1" 
AR Path="/5DE49152/5E11412E" Ref="R?"  Part="1" 
F 0 "R1201" V 5928 2250 20  0000 L CNN
F 1 "10k" V 5971 2250 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 2100 60  0001 C CNN
F 3 "" H 5550 2200 60  0001 C CNN
	1    5950 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 2800 5950 2800
Wire Wire Line
	5500 1950 5950 1950
Wire Wire Line
	5950 1950 5950 2000
Wire Wire Line
	6550 2450 6900 2450
Wire Wire Line
	6550 2750 6900 2750
$Comp
L servo:3V3 #PWR?
U 1 1 5E114149
P 3950 2100
AR Path="/5DCD812E/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114149" Ref="#PWR01201"  Part="1" 
F 0 "#PWR01201" H 3967 2309 20  0001 C CNN
F 1 "3V3" H 3967 2257 30  0000 C CNN
F 2 "" H 3950 2100 70  0000 C CNN
F 3 "" H 3950 2100 70  0000 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2600 5650 2600
Wire Wire Line
	5650 2600 5650 2800
Wire Wire Line
	5400 2700 5750 2700
Wire Wire Line
	5750 2700 5750 2400
Wire Wire Line
	6350 2400 6350 2550
Wire Wire Line
	6350 2800 6350 2650
Wire Wire Line
	6350 2650 6900 2650
Wire Wire Line
	5950 3250 5950 3200
Wire Wire Line
	6550 2750 6550 3250
Wire Wire Line
	6550 3250 5950 3250
Connection ~ 5950 3250
Wire Wire Line
	6350 2550 6900 2550
Wire Wire Line
	3550 2800 4200 2800
Wire Wire Line
	4200 2500 3550 2500
Wire Wire Line
	4200 2600 4150 2600
Wire Wire Line
	4150 2600 4150 2650
Wire Wire Line
	4150 2700 4200 2700
Wire Wire Line
	3550 2650 4150 2650
Connection ~ 4150 2650
Wire Wire Line
	4150 2650 4150 2700
Text Notes 6650 2300 0    20   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
Text GLabel 3550 2650 0    50   Input ~ 0
RS485_EN
Text GLabel 3550 2800 0    50   Input ~ 0
RS485_TX
Text GLabel 3550 2500 0    50   Input ~ 0
RS485_RX
Wire Wire Line
	4050 3000 4050 3150
Wire Wire Line
	5750 3250 5950 3250
Wire Wire Line
	5400 3000 5550 3000
Wire Wire Line
	3950 2100 3950 2300
Connection ~ 5500 1950
Text Notes 3950 1200 0    197  ~ 39
Isolated RS485
Wire Wire Line
	5400 2400 5550 2400
Wire Wire Line
	5550 2400 5550 3000
Connection ~ 5550 3000
Wire Wire Line
	5550 3000 5750 3000
Wire Wire Line
	4200 2400 4050 2400
Wire Wire Line
	4050 2400 4050 3000
Wire Wire Line
	4200 2900 3950 2900
Wire Wire Line
	3950 2900 3950 2300
Connection ~ 3950 2300
Wire Wire Line
	3950 2300 4200 2300
Connection ~ 4050 3000
Wire Wire Line
	4050 3000 4200 3000
Wire Wire Line
	5750 2400 5950 2400
Connection ~ 5950 2400
Wire Wire Line
	5950 2400 6350 2400
$Comp
L servo:Jumper_3_Bridged12 JP1201
U 1 1 60711082
P 6550 1950
F 0 "JP1201" H 6550 2119 39  0000 C CNN
F 1 "Jumper_3_Bridged12" H 6550 2044 39  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6350 1750 50  0001 C CNN
F 3 "~" H 6450 1850 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2050 6550 2450
Wire Wire Line
	5950 1950 6350 1950
Connection ~ 5950 1950
$Comp
L servo:15VH #PWR01204
U 1 1 60712FCC
P 6950 1900
F 0 "#PWR01204" H 6950 1700 20  0001 C CNN
F 1 "15VH" H 6950 2057 28  0000 C CNN
F 2 "" H 6950 1900 50  0001 C CNN
F 3 "" H 6950 1900 50  0001 C CNN
	1    6950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1950 6950 1900
Wire Wire Line
	6750 1950 6950 1950
$Comp
L Connector:Screw_Terminal_01x04 J1201
U 1 1 60714683
P 7100 2550
F 0 "J1201" H 7180 2542 50  0000 L CNN
F 1 "tblock" H 7180 2451 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00289_1x04_P5.08mm_Horizontal" H 7100 2550 50  0001 C CNN
F 3 "~" H 7100 2550 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
Text Notes 4650 1350 0    20   ~ 0
With these interfase you could manage isolated RS485 or isolated \n GPIO or isolated 1-Wire, using 5H or 15H as a supply
$EndSCHEMATC
