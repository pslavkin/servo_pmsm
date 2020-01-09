EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 18
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
P 4500 2850
AR Path="/5DE49152/5E1140E0" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E0" Ref="U?"  Part="1" 
F 0 "U?" H 4500 3467 50  0000 C CNN
F 1 "ADM2483" H 4500 3376 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4500 2150 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 3750 2750 50  0001 C CNN
	1    4500 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E1140E7
P 5200 2100
AR Path="/5DE49152/5E1140E7" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E1140E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 1900 20  0001 C CNN
F 1 "5VH" H 5205 2257 28  0000 C CNN
F 2 "" H 5200 2100 50  0001 C CNN
F 3 "" H 5200 2100 50  0001 C CNN
	1    5200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2500 3900 2500
Wire Wire Line
	5200 2150 5200 2500
Wire Wire Line
	5200 2500 5100 2500
Wire Wire Line
	5200 2150 5200 2100
$Comp
L servo:GNDH #PWR?
U 1 1 5E114106
P 5650 3500
AR Path="/5DE49152/5E114106" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114106" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 3250 30  0001 C CNN
F 1 "GNDH" H 5650 3342 30  0000 C CNN
F 2 "" H 5650 3500 50  0001 C CNN
F 3 "" H 5650 3500 50  0001 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3450 5650 3500
Wire Wire Line
	5450 3200 5450 3450
Wire Wire Line
	3800 3200 3900 3200
$Comp
L servo:GND #PWR_?
U 1 1 5E114113
P 3800 3350
AR Path="/5DD4DF4C/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E114113" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5E114113" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 3805 3201 20  0001 C CNN
F 1 "GND" H 3800 3192 30  0000 C CNN
F 2 "" H 3800 3350 70  0000 C CNN
F 3 "" H 3800 3350 70  0000 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2600 5650 2600
$Comp
L servo:Resistor R?
U 1 1 5E11411C
P 5650 2800
AR Path="/5DE3DF56/5E11411C" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11411C" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E11411C" Ref="R?"  Part="1" 
F 0 "R?" V 5597 2850 60  0000 L CNN
F 1 "120e" V 5703 2850 60  0000 L CNN
F 2 "" H 5650 2800 60  0000 C CNN
F 3 "" H 5650 2800 60  0000 C CNN
	1    5650 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3000 5650 3000
Connection ~ 5650 3000
Wire Wire Line
	5650 2600 6050 2600
Connection ~ 5650 2600
$Comp
L servo:Resistor R?
U 1 1 5E114127
P 5650 3200
AR Path="/5DE3DF56/5E114127" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E114127" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E114127" Ref="R?"  Part="1" 
F 0 "R?" V 5597 3250 60  0000 L CNN
F 1 "10k" V 5703 3250 60  0000 L CNN
F 2 "" H 5650 3200 60  0000 C CNN
F 3 "" H 5650 3200 60  0000 C CNN
	1    5650 3200
	0    1    -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E11412E
P 5650 2400
AR Path="/5DE3DF56/5E11412E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E11412E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E11412E" Ref="R?"  Part="1" 
F 0 "R?" V 5597 2450 60  0000 L CNN
F 1 "10k" V 5703 2450 60  0000 L CNN
F 2 "" H 5650 2400 60  0000 C CNN
F 3 "" H 5650 2400 60  0000 C CNN
	1    5650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3000 5650 3000
Wire Wire Line
	5200 2150 5650 2150
Wire Wire Line
	5650 2150 5650 2200
Wire Wire Line
	6250 2650 7000 2650
Wire Wire Line
	6250 2950 7000 2950
$Comp
L servo:3V3 #PWR?
U 1 1 5E114149
P 3750 2300
AR Path="/5DCD812E/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E114149" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E114149" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3767 2509 20  0000 C CNN
F 1 "3V3" H 3767 2457 30  0000 C CNN
F 2 "" H 3750 2300 70  0000 C CNN
F 3 "" H 3750 2300 70  0000 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2800 5350 2800
Wire Wire Line
	5350 2800 5350 3000
Wire Wire Line
	5100 2900 5450 2900
Wire Wire Line
	5450 2900 5450 2600
Wire Wire Line
	6050 2600 6050 2750
Wire Wire Line
	6050 3000 6050 2850
Wire Wire Line
	6050 2850 7000 2850
Wire Wire Line
	5650 3450 5650 3400
Wire Wire Line
	6250 2150 5650 2150
Wire Wire Line
	6250 2150 6250 2650
Connection ~ 5650 2150
Wire Wire Line
	6250 2950 6250 3450
Wire Wire Line
	6250 3450 5650 3450
Connection ~ 5650 3450
Wire Wire Line
	6050 2750 7000 2750
Wire Wire Line
	3800 3000 3900 3000
Wire Wire Line
	3900 2700 3800 2700
Wire Wire Line
	3900 2800 3850 2800
Wire Wire Line
	3850 2800 3850 2850
Wire Wire Line
	3850 2900 3900 2900
Wire Wire Line
	3800 2850 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	3850 2850 3850 2900
Text Notes 6400 2500 0    50   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
Text GLabel 3800 2850 0    50   Input ~ 0
RS485_EN
Text GLabel 3800 3000 0    50   Input ~ 0
RS485_TX
Text GLabel 3800 2700 0    50   Input ~ 0
RS485_RX
Wire Wire Line
	3800 3200 3800 3350
Wire Wire Line
	5450 3450 5650 3450
Wire Wire Line
	5100 3200 5450 3200
Wire Wire Line
	3750 2300 3750 2500
Connection ~ 5200 2150
Text Notes 4300 1550 0    197  ~ 39
Isolated RS485
Wire Wire Line
	9100 2650 9100 2700
Wire Wire Line
	9100 2700 9200 2700
$Comp
L Connector:Screw_Terminal_01x07 J?
U 1 1 5E3395AE
P 9400 3000
AR Path="/5DE3DF56/5E3395AE" Ref="J?"  Part="1" 
AR Path="/5E1BAEAA/5E3395AE" Ref="J?"  Part="1" 
F 0 "J?" H 9350 3450 50  0000 L CNN
F 1 "Screw_Terminal_01x07" V 9550 2650 50  0000 L CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "~" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E3395B5
P 9100 2650
AR Path="/5DE49152/5E3395B5" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E3395B5" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5E3395B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9100 2450 20  0001 C CNN
F 1 "5VH" H 9105 2807 28  0000 C CNN
F 2 "" H 9100 2650 50  0001 C CNN
F 3 "" H 9100 2650 50  0001 C CNN
	1    9100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2900 9200 2900
Wire Wire Line
	8100 2800 9200 2800
Wire Wire Line
	8100 3000 9200 3000
Wire Wire Line
	9200 3100 8250 3100
$Comp
L servo:GNDH #PWR?
U 1 1 5E3395BF
P 9100 3350
AR Path="/5DE49152/5E3395BF" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E3395BF" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5E3395BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9100 3100 30  0001 C CNN
F 1 "GNDH" H 9100 3192 30  0000 C CNN
F 2 "" H 9100 3350 50  0001 C CNN
F 3 "" H 9100 3350 50  0001 C CNN
	1    9100 3350
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E3395C5
P 6800 3050
AR Path="/5DE3DF56/5E3395C5" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E3395C5" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E3395C5" Ref="R?"  Part="1" 
F 0 "R?" H 6800 2850 60  0000 C CNN
F 1 "1e" H 6800 2950 60  0000 C CNN
F 2 "" H 6800 3050 60  0000 C CNN
F 3 "" H 6800 3050 60  0000 C CNN
	1    6800 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 3300 9100 3300
Wire Wire Line
	9200 3200 9100 3200
Wire Wire Line
	9100 3350 9100 3300
Text Notes 6500 3150 0    20   ~ 4
to use as a fuse \nor protection
$Comp
L servo:15VH #PWR?
U 1 1 5E3395D0
P 8700 3200
AR Path="/5DE3DF56/5E3395D0" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E3395D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8700 3000 20  0001 C CNN
F 1 "15VH" H 8705 3357 28  0000 C CNN
F 2 "" H 8700 3200 50  0001 C CNN
F 3 "" H 8700 3200 50  0001 C CNN
	1    8700 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 5E339F97
P 7200 2850
F 0 "J?" H 7280 2846 50  0000 L CNN
F 1 "Screw_Terminal_01x05" H 7280 2801 50  0001 L CNN
F 2 "" H 7200 2850 50  0001 C CNN
F 3 "~" H 7200 2850 50  0001 C CNN
	1    7200 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E33A99A
P 6600 3050
AR Path="/5DE3DF56/5E33A99A" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E33A99A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6600 2850 20  0001 C CNN
F 1 "15VH" H 6605 3207 28  0000 C CNN
F 2 "" H 6600 3050 50  0001 C CNN
F 3 "" H 6600 3050 50  0001 C CNN
	1    6600 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
