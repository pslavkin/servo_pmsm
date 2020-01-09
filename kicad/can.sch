EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 13 18
Title ""
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:ISO1050 U1301
U 1 1 5E217E51
P 4850 3050
F 0 "U1301" H 4850 3817 50  0000 C CNN
F 1 "ISO1050" H 4850 3726 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4850 2350 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 4100 3100 50  0001 C CNN
	1    4850 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1301
U 1 1 5E21D81F
P 6300 2850
F 0 "R1301" V 6353 2800 60  0000 R CNN
F 1 "1k" V 6247 2800 60  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6300 2850 60  0000 C CNN
F 3 "" H 6300 2850 60  0000 C CNN
	1    6300 2850
	0    -1   -1   0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E21DD67
P 4150 2150
AR Path="/5DE3DF56/5E21DD67" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD67" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E21DD67" Ref="#PWR0239"  Part="1" 
F 0 "#PWR0239" H 4155 2357 20  0001 C CNN
F 1 "3V3" H 4155 2307 28  0000 C CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21DD6E
P 5850 2300
AR Path="/5DE3DF56/5E21DD6E" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD6E" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E21DD6E" Ref="C1302"  Part="1" 
F 0 "C1302" V 5847 2410 60  0000 L CNN
F 1 "100nF" V 5953 2410 60  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 2300 60  0000 C CNN
F 3 "" H 5850 2300 60  0000 C CNN
	1    5850 2300
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21DD7B
P 3850 2300
AR Path="/5DE3DF56/5E21DD7B" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD7B" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E21DD7B" Ref="C1301"  Part="1" 
F 0 "C1301" V 3847 2191 60  0000 R CNN
F 1 "100nF" V 3953 2191 60  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3850 2300 60  0000 C CNN
F 3 "" H 3850 2300 60  0000 C CNN
	1    3850 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2150 4150 2200
Wire Wire Line
	3850 2200 4150 2200
Connection ~ 4150 2200
Wire Wire Line
	5550 2150 5550 2200
Wire Wire Line
	5850 2200 5550 2200
Connection ~ 5550 2200
Wire Wire Line
	3450 3050 4300 3050
Wire Wire Line
	3450 2800 4300 2800
Text GLabel 3450 3050 0    50   Input ~ 0
CAN_TX
Text GLabel 3450 2800 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	4150 2600 4300 2600
Wire Wire Line
	4150 2200 4150 2600
Wire Wire Line
	5550 2600 5450 2600
Wire Wire Line
	5550 2200 5550 2600
$Comp
L servo:GND #PWR?
U 1 1 5E221639
P 4100 3300
AR Path="/5DE3DF56/5E221639" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E221639" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E221639" Ref="#PWR0240"  Part="1" 
F 0 "#PWR0240" H 4100 3050 30  0001 C CNN
F 1 "GND" H 4100 3142 30  0000 C CNN
F 2 "" H 4100 3300 50  0001 C CNN
F 3 "" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3250 4100 3250
Wire Wire Line
	4100 3250 4100 3300
Wire Wire Line
	6600 2900 6600 3050
Wire Wire Line
	6600 3050 6300 3050
Wire Wire Line
	6300 2650 6600 2650
Wire Wire Line
	6600 2650 6600 2800
Wire Wire Line
	5450 2750 6100 2750
Wire Wire Line
	6100 2750 6100 2650
Wire Wire Line
	6100 2650 6300 2650
Connection ~ 6300 2650
Wire Wire Line
	5450 2850 6100 2850
Wire Wire Line
	6100 2850 6100 3050
Wire Wire Line
	6100 3050 6300 3050
Connection ~ 6300 3050
Text Notes 3800 1400 0    197  ~ 39
Isolated CAN interfase
$Comp
L servo:5VH #PWR?
U 1 1 5E32E6BC
P 5550 2150
AR Path="/5DE49152/5E32E6BC" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E32E6BC" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E32E6BC" Ref="#PWR0241"  Part="1" 
F 0 "#PWR0241" H 5550 1950 20  0001 C CNN
F 1 "5VH" H 5555 2307 28  0000 C CNN
F 2 "" H 5550 2150 50  0001 C CNN
F 3 "" H 5550 2150 50  0001 C CNN
	1    5550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2700 7550 2700
Wire Wire Line
	6800 3000 7550 3000
Wire Wire Line
	6600 2900 7550 2900
Wire Wire Line
	6600 2800 7550 2800
Text Notes 6950 2550 0    50   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
$Comp
L servo:Resistor R?
U 1 1 5E33F739
P 7350 3100
AR Path="/5DE3DF56/5E33F739" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E33F739" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E33F739" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E33F739" Ref="R1302"  Part="1" 
F 0 "R1302" H 7350 2900 60  0000 C CNN
F 1 "1e" H 7350 3000 60  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 3100 60  0000 C CNN
F 3 "" H 7350 3100 60  0000 C CNN
	1    7350 3100
	-1   0    0    1   
$EndComp
Text Notes 7050 3200 0    20   ~ 4
to use as a fuse \nor protection
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 5E33F741
P 7750 2900
AR Path="/5E1BAEAA/5E33F741" Ref="J?"  Part="1" 
AR Path="/5E21534F/5E33F741" Ref="J1301"  Part="1" 
F 0 "J1301" H 7830 2896 50  0000 L CNN
F 1 "Screw_Terminal_01x05" H 7830 2851 50  0001 L CNN
F 2 "" H 7750 2900 50  0001 C CNN
F 3 "~" H 7750 2900 50  0001 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E33F748
P 7150 3100
AR Path="/5DE3DF56/5E33F748" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E33F748" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E33F748" Ref="#PWR0242"  Part="1" 
F 0 "#PWR0242" H 7150 2900 20  0001 C CNN
F 1 "15VH" H 7155 3257 28  0000 C CNN
F 2 "" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E3402F1
P 5850 3350
AR Path="/5DE49152/5E3402F1" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E3402F1" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E3402F1" Ref="#PWR0243"  Part="1" 
F 0 "#PWR0243" H 5850 3100 30  0001 C CNN
F 1 "GNDH" H 5850 3192 30  0000 C CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "" H 5850 3350 50  0001 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3250 6800 3000
Wire Wire Line
	5450 3250 5850 3250
Wire Wire Line
	5850 3350 5850 3250
Wire Wire Line
	5850 2200 6800 2200
Wire Wire Line
	6800 2200 6800 2700
Connection ~ 5850 2200
Wire Wire Line
	5850 2500 5850 3250
Connection ~ 5850 3250
Wire Wire Line
	5850 3250 6800 3250
Wire Wire Line
	3850 2500 3850 3250
Wire Wire Line
	3850 3250 4100 3250
Connection ~ 4100 3250
$EndSCHEMATC
