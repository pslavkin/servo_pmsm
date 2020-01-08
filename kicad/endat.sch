EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 10 19
Title "ENDAT/BISS Interface"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2900 5850 0    50   Input ~ 0
ENDAT1_CLK
Text GLabel 3950 3650 0    50   Input ~ 0
ENDAT1_CS
Text GLabel 3950 3800 0    50   Input ~ 0
ENDAT1_MOSI
Text GLabel 3950 3500 0    50   Input ~ 0
ENDAT1_MISO
$Comp
L servo:Capacitor C?
U 1 1 5FDC21B3
P 12550 2900
F 0 "C?" V 12547 2791 60  0000 R CNN
F 1 "100nF" V 12653 2791 60  0000 R CNN
F 2 "" H 12550 2900 60  0000 C CNN
F 3 "" H 12550 2900 60  0000 C CNN
	1    12550 2900
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FDC21BA
P 12550 3150
F 0 "#PWR?" H 12550 2900 30  0001 C CNN
F 1 "GND" H 12550 2992 30  0000 C CNN
F 2 "" H 12550 3150 50  0001 C CNN
F 3 "" H 12550 3150 50  0001 C CNN
	1    12550 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:ADM2483 U?
U 1 1 5FDC21C1
P 11600 3650
AR Path="/5DE49152/5FDC21C1" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21C1" Ref="U?"  Part="1" 
AR Path="/5DE3DF56/5FDC21C1" Ref="U?"  Part="1" 
F 0 "U?" H 11600 4267 50  0000 C CNN
F 1 "ADM2483" H 11600 4176 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 11600 2950 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 10850 3550 50  0001 C CNN
	1    11600 3650
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FDC21C8
P 10900 2650
AR Path="/5DE49152/5FDC21C8" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21C8" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC21C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10900 2450 20  0001 C CNN
F 1 "5VH" H 10905 2807 28  0000 C CNN
F 2 "" H 10900 2650 50  0001 C CNN
F 3 "" H 10900 2650 50  0001 C CNN
	1    10900 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12350 3300 12200 3300
Wire Wire Line
	10900 3300 11000 3300
Wire Wire Line
	10900 2700 10900 2650
$Comp
L servo:GNDH #PWR?
U 1 1 5FDC21D1
P 10300 4300
AR Path="/5DE49152/5FDC21D1" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21D1" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC21D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 4050 30  0001 C CNN
F 1 "GNDH" H 10300 4142 30  0000 C CNN
F 2 "" H 10300 4300 50  0001 C CNN
F 3 "" H 10300 4300 50  0001 C CNN
	1    10300 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 4250 10300 4300
Wire Wire Line
	10500 4000 10500 4250
Wire Wire Line
	12300 4000 12200 4000
$Comp
L servo:GND #PWR_?
U 1 1 5FDC21DA
P 12300 4150
AR Path="/5DD4DF4C/5FDC21DA" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5FDC21DA" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21DA" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5FDC21DA" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 12305 4001 20  0001 C CNN
F 1 "GND" H 12300 3992 30  0000 C CNN
F 2 "" H 12300 4150 70  0000 C CNN
F 3 "" H 12300 4150 70  0000 C CNN
	1    12300 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 3400 10300 3400
$Comp
L servo:Resistor R?
U 1 1 5FDC21E1
P 10300 3600
AR Path="/5DE3DF56/5FDC21E1" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21E1" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC21E1" Ref="R?"  Part="1" 
F 0 "R?" V 10247 3650 60  0000 L CNN
F 1 "120e" V 10353 3650 60  0000 L CNN
F 2 "" H 10300 3600 60  0000 C CNN
F 3 "" H 10300 3600 60  0000 C CNN
	1    10300 3600
	0    -1   1    0   
$EndComp
Wire Wire Line
	10800 3800 10300 3800
Connection ~ 10300 3800
Wire Wire Line
	10300 3400 9900 3400
Connection ~ 10300 3400
$Comp
L servo:Resistor R?
U 1 1 5FDC21EC
P 10300 4000
AR Path="/5DE3DF56/5FDC21EC" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21EC" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC21EC" Ref="R?"  Part="1" 
F 0 "R?" V 10247 4050 60  0000 L CNN
F 1 "100k" V 10353 4050 60  0000 L CNN
F 2 "" H 10300 4000 60  0000 C CNN
F 3 "" H 10300 4000 60  0000 C CNN
	1    10300 4000
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FDC21F3
P 10300 3200
AR Path="/5DE3DF56/5FDC21F3" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21F3" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC21F3" Ref="R?"  Part="1" 
F 0 "R?" V 10247 3250 60  0000 L CNN
F 1 "100k" V 10353 3250 60  0000 L CNN
F 2 "" H 10300 3200 60  0000 C CNN
F 3 "" H 10300 3200 60  0000 C CNN
	1    10300 3200
	0    -1   1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5FDC21FA
P 12550 2650
AR Path="/5DCD812E/5FDC21FA" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5FDC21FA" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FDC21FA" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC21FA" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC21FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12567 2859 20  0000 C CNN
F 1 "3V3" H 12567 2807 30  0000 C CNN
F 2 "" H 12550 2650 70  0000 C CNN
F 3 "" H 12550 2650 70  0000 C CNN
	1    12550 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11000 3600 10800 3600
Wire Wire Line
	10800 3600 10800 3800
Wire Wire Line
	11000 3700 10650 3700
Wire Wire Line
	10650 3700 10650 3400
Wire Wire Line
	9900 3400 9900 3700
Wire Wire Line
	10300 4250 10300 4200
Connection ~ 10300 4250
Wire Wire Line
	12200 3600 12250 3600
Wire Wire Line
	12250 3600 12250 3650
Wire Wire Line
	12250 3700 12200 3700
Connection ~ 12250 3650
Wire Wire Line
	12250 3650 12250 3700
Wire Wire Line
	12300 4000 12300 4150
Wire Wire Line
	10500 4250 10300 4250
Wire Wire Line
	12550 2650 12550 2700
Connection ~ 10900 2700
$Comp
L servo:Capacitor C?
U 1 1 5FDC2211
P 10700 2900
F 0 "C?" V 10697 3010 60  0000 L CNN
F 1 "100nF" V 10803 3010 60  0000 L CNN
F 2 "" H 10700 2900 60  0000 C CNN
F 3 "" H 10700 2900 60  0000 C CNN
	1    10700 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	10900 2700 10700 2700
Wire Wire Line
	10700 2800 10700 2700
Connection ~ 10700 2700
Wire Wire Line
	10700 2700 10300 2700
Wire Wire Line
	12550 2700 12350 2700
Wire Wire Line
	12350 2700 12350 3300
Connection ~ 12550 2700
Wire Wire Line
	12550 2700 12550 2800
Wire Wire Line
	12700 3500 12200 3500
Wire Wire Line
	12700 3800 12200 3800
Wire Wire Line
	12700 3650 12250 3650
Wire Wire Line
	11000 4000 10500 4000
Wire Wire Line
	10900 2700 10900 3300
$Comp
L servo:GNDH #PWR?
U 1 1 5FDC2225
P 10700 3100
AR Path="/5DE49152/5FDC2225" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2225" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC2225" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 2850 30  0001 C CNN
F 1 "GNDH" H 10700 2942 30  0000 C CNN
F 2 "" H 10700 3100 50  0001 C CNN
F 3 "" H 10700 3100 50  0001 C CNN
	1    10700 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 2700 10300 3000
Wire Wire Line
	12550 3150 12550 3100
Text GLabel 12700 3650 2    50   Input ~ 0
ENDAT2_CS
Text GLabel 12700 3800 2    50   Input ~ 0
ENDAT2_MOSI
Text GLabel 12700 3500 2    50   Input ~ 0
ENDAT2_MISO
Wire Wire Line
	8900 3550 8900 3600
Wire Wire Line
	8900 3600 8800 3600
$Comp
L Connector:Screw_Terminal_01x07 J?
U 1 1 5FDC2238
P 8600 3900
F 0 "J?" H 8550 4350 50  0000 L CNN
F 1 "Screw_Terminal_01x07" V 8750 3550 50  0000 L CNN
F 2 "" H 8600 3900 50  0001 C CNN
F 3 "~" H 8600 3900 50  0001 C CNN
	1    8600 3900
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FDC2247
P 8900 3550
AR Path="/5DE49152/5FDC2247" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2247" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC2247" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 3350 20  0001 C CNN
F 1 "5VH" H 8905 3707 28  0000 C CNN
F 2 "" H 8900 3550 50  0001 C CNN
F 3 "" H 8900 3550 50  0001 C CNN
	1    8900 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 3800 8800 3800
Wire Wire Line
	9900 3700 8800 3700
$Comp
L servo:Capacitor C?
U 1 1 5FDC224F
P 12550 4950
F 0 "C?" V 12547 4841 60  0000 R CNN
F 1 "100nF" V 12653 4841 60  0000 R CNN
F 2 "" H 12550 4950 60  0000 C CNN
F 3 "" H 12550 4950 60  0000 C CNN
	1    12550 4950
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FDC2256
P 12550 5200
F 0 "#PWR?" H 12550 4950 30  0001 C CNN
F 1 "GND" H 12550 5042 30  0000 C CNN
F 2 "" H 12550 5200 50  0001 C CNN
F 3 "" H 12550 5200 50  0001 C CNN
	1    12550 5200
	-1   0    0    -1  
$EndComp
$Comp
L servo:ADM2483 U?
U 1 1 5FDC225C
P 11600 5700
AR Path="/5DE49152/5FDC225C" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5FDC225C" Ref="U?"  Part="1" 
AR Path="/5DE3DF56/5FDC225C" Ref="U?"  Part="1" 
F 0 "U?" H 11600 6317 50  0000 C CNN
F 1 "ADM2483" H 11600 6226 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 11600 5000 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 10850 5600 50  0001 C CNN
	1    11600 5700
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FDC2263
P 10900 4700
AR Path="/5DE49152/5FDC2263" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2263" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC2263" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10900 4500 20  0001 C CNN
F 1 "5VH" H 10905 4857 28  0000 C CNN
F 2 "" H 10900 4700 50  0001 C CNN
F 3 "" H 10900 4700 50  0001 C CNN
	1    10900 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12350 5350 12200 5350
Wire Wire Line
	10900 5350 11000 5350
Wire Wire Line
	10900 4750 10900 4700
$Comp
L servo:GNDH #PWR?
U 1 1 5FDC226C
P 10300 6350
AR Path="/5DE49152/5FDC226C" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC226C" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC226C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 6100 30  0001 C CNN
F 1 "GNDH" H 10300 6192 30  0000 C CNN
F 2 "" H 10300 6350 50  0001 C CNN
F 3 "" H 10300 6350 50  0001 C CNN
	1    10300 6350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 6300 10300 6350
Wire Wire Line
	10500 6050 10500 6300
Wire Wire Line
	12300 6050 12200 6050
$Comp
L servo:GND #PWR_?
U 1 1 5FDC2275
P 12300 6200
AR Path="/5DD4DF4C/5FDC2275" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5FDC2275" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2275" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5FDC2275" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 12305 6051 20  0001 C CNN
F 1 "GND" H 12300 6042 30  0000 C CNN
F 2 "" H 12300 6200 70  0000 C CNN
F 3 "" H 12300 6200 70  0000 C CNN
	1    12300 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 5450 10300 5450
$Comp
L servo:Resistor R?
U 1 1 5FDC227C
P 10300 5650
AR Path="/5DE3DF56/5FDC227C" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC227C" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC227C" Ref="R?"  Part="1" 
F 0 "R?" V 10247 5700 60  0000 L CNN
F 1 "120e" V 10353 5700 60  0000 L CNN
F 2 "" H 10300 5650 60  0000 C CNN
F 3 "" H 10300 5650 60  0000 C CNN
	1    10300 5650
	0    -1   1    0   
$EndComp
Wire Wire Line
	10800 5850 10300 5850
Connection ~ 10300 5850
Wire Wire Line
	10300 5450 9900 5450
Connection ~ 10300 5450
$Comp
L servo:Resistor R?
U 1 1 5FDC2287
P 10300 6050
AR Path="/5DE3DF56/5FDC2287" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2287" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC2287" Ref="R?"  Part="1" 
F 0 "R?" V 10247 6100 60  0000 L CNN
F 1 "100k" V 10353 6100 60  0000 L CNN
F 2 "" H 10300 6050 60  0000 C CNN
F 3 "" H 10300 6050 60  0000 C CNN
	1    10300 6050
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FDC228E
P 10300 5250
AR Path="/5DE3DF56/5FDC228E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FDC228E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FDC228E" Ref="R?"  Part="1" 
F 0 "R?" V 10247 5300 60  0000 L CNN
F 1 "100k" V 10353 5300 60  0000 L CNN
F 2 "" H 10300 5250 60  0000 C CNN
F 3 "" H 10300 5250 60  0000 C CNN
	1    10300 5250
	0    -1   1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5FDC2295
P 12550 4700
AR Path="/5DCD812E/5FDC2295" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5FDC2295" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FDC2295" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC2295" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC2295" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12567 4909 20  0000 C CNN
F 1 "3V3" H 12567 4857 30  0000 C CNN
F 2 "" H 12550 4700 70  0000 C CNN
F 3 "" H 12550 4700 70  0000 C CNN
	1    12550 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11000 5650 10800 5650
Wire Wire Line
	10800 5650 10800 5850
Wire Wire Line
	11000 5750 10650 5750
Wire Wire Line
	10650 5750 10650 5450
Wire Wire Line
	10300 6300 10300 6250
Connection ~ 10300 6300
Wire Wire Line
	12200 5650 12250 5650
Wire Wire Line
	12250 5650 12250 5700
Wire Wire Line
	12250 5750 12200 5750
Connection ~ 12250 5700
Wire Wire Line
	12250 5700 12250 5750
Wire Wire Line
	12300 6050 12300 6200
Wire Wire Line
	10500 6300 10300 6300
Wire Wire Line
	12550 4700 12550 4750
Connection ~ 10900 4750
$Comp
L servo:Capacitor C?
U 1 1 5FDC22AB
P 10700 4950
F 0 "C?" V 10697 5060 60  0000 L CNN
F 1 "100nF" V 10803 5060 60  0000 L CNN
F 2 "" H 10700 4950 60  0000 C CNN
F 3 "" H 10700 4950 60  0000 C CNN
	1    10700 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	10900 4750 10700 4750
Wire Wire Line
	10700 4850 10700 4750
Connection ~ 10700 4750
Wire Wire Line
	10700 4750 10300 4750
Wire Wire Line
	12550 4750 12350 4750
Wire Wire Line
	12350 4750 12350 5350
Connection ~ 12550 4750
Wire Wire Line
	12550 4750 12550 4850
Wire Wire Line
	12500 5700 12250 5700
Wire Wire Line
	11000 6050 10500 6050
Wire Wire Line
	10900 4750 10900 5350
$Comp
L servo:GNDH #PWR?
U 1 1 5FDC22BE
P 10700 5150
AR Path="/5DE49152/5FDC22BE" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FDC22BE" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FDC22BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 4900 30  0001 C CNN
F 1 "GNDH" H 10700 4992 30  0000 C CNN
F 2 "" H 10700 5150 50  0001 C CNN
F 3 "" H 10700 5150 50  0001 C CNN
	1    10700 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 4750 10300 5050
Wire Wire Line
	12550 5200 12550 5150
Wire Wire Line
	9900 5450 9900 3900
Wire Wire Line
	9900 3900 8800 3900
Wire Wire Line
	8800 4000 9750 4000
Wire Wire Line
	9750 4000 9750 5850
Wire Wire Line
	9750 5850 10300 5850
$Comp
L servo:3V3 #PWR?
U 1 1 5FDC22CB
P 12500 5700
F 0 "#PWR?" H 12447 5772 20  0000 R CNN
F 1 "3V3" H 12447 5722 28  0000 R CNN
F 2 "" H 12500 5700 50  0001 C CNN
F 3 "" H 12500 5700 50  0001 C CNN
	1    12500 5700
	-1   0    0    -1  
$EndComp
Text Notes 6100 1650 0    197  ~ 39
2X Isolated ENDAT interface
$Comp
L servo:Capacitor C?
U 1 1 5FF891F6
P 4100 2900
F 0 "C?" V 4097 2791 60  0000 R CNN
F 1 "100nF" V 4203 2791 60  0000 R CNN
F 2 "" H 4100 2900 60  0000 C CNN
F 3 "" H 4100 2900 60  0000 C CNN
	1    4100 2900
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FF891FD
P 4100 3150
F 0 "#PWR?" H 4100 2900 30  0001 C CNN
F 1 "GND" H 4100 2992 30  0000 C CNN
F 2 "" H 4100 3150 50  0001 C CNN
F 3 "" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:ADM2483 U?
U 1 1 5FF89203
P 5050 3650
AR Path="/5DE49152/5FF89203" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5FF89203" Ref="U?"  Part="1" 
AR Path="/5DE3DF56/5FF89203" Ref="U?"  Part="1" 
F 0 "U?" H 5050 4267 50  0000 C CNN
F 1 "ADM2483" H 5050 4176 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 5050 2950 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 4300 3550 50  0001 C CNN
	1    5050 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FF8920A
P 5750 2650
AR Path="/5DE49152/5FF8920A" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF8920A" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF8920A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 2450 20  0001 C CNN
F 1 "5VH" H 5755 2807 28  0000 C CNN
F 2 "" H 5750 2650 50  0001 C CNN
F 3 "" H 5750 2650 50  0001 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3300 4450 3300
Wire Wire Line
	5750 3300 5650 3300
Wire Wire Line
	5750 2700 5750 2650
$Comp
L servo:GNDH #PWR?
U 1 1 5FF89213
P 6350 4300
AR Path="/5DE49152/5FF89213" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF89213" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF89213" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 4050 30  0001 C CNN
F 1 "GNDH" H 6350 4142 30  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4250 6350 4300
Wire Wire Line
	6150 4000 6150 4250
Wire Wire Line
	4350 4000 4450 4000
$Comp
L servo:GND #PWR_?
U 1 1 5FF8921C
P 4350 4150
AR Path="/5DD4DF4C/5FF8921C" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5FF8921C" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5FF8921C" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5FF8921C" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 4355 4001 20  0001 C CNN
F 1 "GND" H 4350 3992 30  0000 C CNN
F 2 "" H 4350 4150 70  0000 C CNN
F 3 "" H 4350 4150 70  0000 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3400 6350 3400
$Comp
L servo:Resistor R?
U 1 1 5FF89223
P 6350 3600
AR Path="/5DE3DF56/5FF89223" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF89223" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF89223" Ref="R?"  Part="1" 
F 0 "R?" V 6297 3650 60  0000 L CNN
F 1 "120e" V 6403 3650 60  0000 L CNN
F 2 "" H 6350 3600 60  0000 C CNN
F 3 "" H 6350 3600 60  0000 C CNN
	1    6350 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3800 6350 3800
Connection ~ 6350 3800
Wire Wire Line
	6350 3400 6750 3400
Connection ~ 6350 3400
$Comp
L servo:Resistor R?
U 1 1 5FF8922E
P 6350 4000
AR Path="/5DE3DF56/5FF8922E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF8922E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF8922E" Ref="R?"  Part="1" 
F 0 "R?" V 6297 4050 60  0000 L CNN
F 1 "100k" V 6403 4050 60  0000 L CNN
F 2 "" H 6350 4000 60  0000 C CNN
F 3 "" H 6350 4000 60  0000 C CNN
	1    6350 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FF89235
P 6350 3200
AR Path="/5DE3DF56/5FF89235" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF89235" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF89235" Ref="R?"  Part="1" 
F 0 "R?" V 6297 3250 60  0000 L CNN
F 1 "100k" V 6403 3250 60  0000 L CNN
F 2 "" H 6350 3200 60  0000 C CNN
F 3 "" H 6350 3200 60  0000 C CNN
	1    6350 3200
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5FF8923C
P 4100 2650
AR Path="/5DCD812E/5FF8923C" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5FF8923C" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FF8923C" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF8923C" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF8923C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4117 2859 20  0000 C CNN
F 1 "3V3" H 4117 2807 30  0000 C CNN
F 2 "" H 4100 2650 70  0000 C CNN
F 3 "" H 4100 2650 70  0000 C CNN
	1    4100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3600 5850 3600
Wire Wire Line
	5850 3600 5850 3800
Wire Wire Line
	5650 3700 6000 3700
Wire Wire Line
	6000 3700 6000 3400
Wire Wire Line
	6750 3400 6750 3700
Wire Wire Line
	6350 4250 6350 4200
Connection ~ 6350 4250
Wire Wire Line
	4450 3600 4400 3600
Wire Wire Line
	4400 3600 4400 3650
Wire Wire Line
	4400 3700 4450 3700
Connection ~ 4400 3650
Wire Wire Line
	4400 3650 4400 3700
Wire Wire Line
	4350 4000 4350 4150
Wire Wire Line
	6150 4250 6350 4250
Wire Wire Line
	4100 2650 4100 2700
Connection ~ 5750 2700
$Comp
L servo:Capacitor C?
U 1 1 5FF89253
P 5950 2900
F 0 "C?" V 5947 3010 60  0000 L CNN
F 1 "100nF" V 6053 3010 60  0000 L CNN
F 2 "" H 5950 2900 60  0000 C CNN
F 3 "" H 5950 2900 60  0000 C CNN
	1    5950 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2700 5950 2700
Wire Wire Line
	5950 2800 5950 2700
Connection ~ 5950 2700
Wire Wire Line
	5950 2700 6350 2700
Wire Wire Line
	4100 2700 4300 2700
Wire Wire Line
	4300 2700 4300 3300
Connection ~ 4100 2700
Wire Wire Line
	4100 2700 4100 2800
Wire Wire Line
	3950 3500 4450 3500
Wire Wire Line
	3950 3800 4450 3800
Wire Wire Line
	3950 3650 4400 3650
Wire Wire Line
	5650 4000 6150 4000
Wire Wire Line
	5750 2700 5750 3300
$Comp
L servo:GNDH #PWR?
U 1 1 5FF89267
P 5950 3100
AR Path="/5DE49152/5FF89267" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF89267" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF89267" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 2850 30  0001 C CNN
F 1 "GNDH" H 5950 2942 30  0000 C CNN
F 2 "" H 5950 3100 50  0001 C CNN
F 3 "" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2700 6350 3000
Wire Wire Line
	4100 3150 4100 3100
Wire Wire Line
	7750 3550 7750 3600
Wire Wire Line
	7750 3600 7850 3600
$Comp
L Connector:Screw_Terminal_01x07 J?
U 1 1 5FF89271
P 8050 3900
F 0 "J?" H 8000 4350 50  0000 L CNN
F 1 "Screw_Terminal_01x07" V 8200 3550 50  0000 L CNN
F 2 "" H 8050 3900 50  0001 C CNN
F 3 "~" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FF89280
P 7750 3550
AR Path="/5DE49152/5FF89280" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF89280" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF89280" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 3350 20  0001 C CNN
F 1 "5VH" H 7755 3707 28  0000 C CNN
F 2 "" H 7750 3550 50  0001 C CNN
F 3 "" H 7750 3550 50  0001 C CNN
	1    7750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 7850 3800
Wire Wire Line
	6750 3700 7850 3700
$Comp
L servo:Capacitor C?
U 1 1 5FF89288
P 4100 4950
F 0 "C?" V 4097 4841 60  0000 R CNN
F 1 "100nF" V 4203 4841 60  0000 R CNN
F 2 "" H 4100 4950 60  0000 C CNN
F 3 "" H 4100 4950 60  0000 C CNN
	1    4100 4950
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FF8928F
P 4100 5200
F 0 "#PWR?" H 4100 4950 30  0001 C CNN
F 1 "GND" H 4100 5042 30  0000 C CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L servo:ADM2483 U?
U 1 1 5FF89295
P 5050 5700
AR Path="/5DE49152/5FF89295" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5FF89295" Ref="U?"  Part="1" 
AR Path="/5DE3DF56/5FF89295" Ref="U?"  Part="1" 
F 0 "U?" H 5050 6317 50  0000 C CNN
F 1 "ADM2483" H 5050 6226 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 5050 5000 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 4300 5600 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FF8929C
P 5750 4700
AR Path="/5DE49152/5FF8929C" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF8929C" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF8929C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 4500 20  0001 C CNN
F 1 "5VH" H 5755 4857 28  0000 C CNN
F 2 "" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5350 4450 5350
Wire Wire Line
	5750 5350 5650 5350
Wire Wire Line
	5750 4750 5750 4700
$Comp
L servo:GNDH #PWR?
U 1 1 5FF892A5
P 6350 6350
AR Path="/5DE49152/5FF892A5" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF892A5" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF892A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 6100 30  0001 C CNN
F 1 "GNDH" H 6350 6192 30  0000 C CNN
F 2 "" H 6350 6350 50  0001 C CNN
F 3 "" H 6350 6350 50  0001 C CNN
	1    6350 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6300 6350 6350
Wire Wire Line
	6150 6050 6150 6300
Wire Wire Line
	4350 6050 4450 6050
$Comp
L servo:GND #PWR_?
U 1 1 5FF892AE
P 4350 6200
AR Path="/5DD4DF4C/5FF892AE" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5FF892AE" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5FF892AE" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5FF892AE" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 4355 6051 20  0001 C CNN
F 1 "GND" H 4350 6042 30  0000 C CNN
F 2 "" H 4350 6200 70  0000 C CNN
F 3 "" H 4350 6200 70  0000 C CNN
	1    4350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5450 6350 5450
$Comp
L servo:Resistor R?
U 1 1 5FF892B5
P 6350 5650
AR Path="/5DE3DF56/5FF892B5" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF892B5" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF892B5" Ref="R?"  Part="1" 
F 0 "R?" V 6297 5700 60  0000 L CNN
F 1 "120e" V 6403 5700 60  0000 L CNN
F 2 "" H 6350 5650 60  0000 C CNN
F 3 "" H 6350 5650 60  0000 C CNN
	1    6350 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 5850 6350 5850
Connection ~ 6350 5850
Wire Wire Line
	6350 5450 6750 5450
Connection ~ 6350 5450
$Comp
L servo:Resistor R?
U 1 1 5FF892C0
P 6350 6050
AR Path="/5DE3DF56/5FF892C0" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF892C0" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF892C0" Ref="R?"  Part="1" 
F 0 "R?" V 6297 6100 60  0000 L CNN
F 1 "100k" V 6403 6100 60  0000 L CNN
F 2 "" H 6350 6050 60  0000 C CNN
F 3 "" H 6350 6050 60  0000 C CNN
	1    6350 6050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FF892C7
P 6350 5250
AR Path="/5DE3DF56/5FF892C7" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FF892C7" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FF892C7" Ref="R?"  Part="1" 
F 0 "R?" V 6297 5300 60  0000 L CNN
F 1 "100k" V 6403 5300 60  0000 L CNN
F 2 "" H 6350 5250 60  0000 C CNN
F 3 "" H 6350 5250 60  0000 C CNN
	1    6350 5250
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5FF892CE
P 4100 4700
AR Path="/5DCD812E/5FF892CE" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5FF892CE" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FF892CE" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF892CE" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF892CE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4117 4909 20  0000 C CNN
F 1 "3V3" H 4117 4857 30  0000 C CNN
F 2 "" H 4100 4700 70  0000 C CNN
F 3 "" H 4100 4700 70  0000 C CNN
	1    4100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5650 5850 5650
Wire Wire Line
	5850 5650 5850 5850
Wire Wire Line
	5650 5750 6000 5750
Wire Wire Line
	6000 5750 6000 5450
Wire Wire Line
	6350 6300 6350 6250
Connection ~ 6350 6300
Wire Wire Line
	4450 5650 4400 5650
Wire Wire Line
	4400 5650 4400 5700
Wire Wire Line
	4400 5750 4450 5750
Connection ~ 4400 5700
Wire Wire Line
	4400 5700 4400 5750
Wire Wire Line
	4350 6050 4350 6200
Wire Wire Line
	6150 6300 6350 6300
Wire Wire Line
	4100 4700 4100 4750
Connection ~ 5750 4750
$Comp
L servo:Capacitor C?
U 1 1 5FF892E4
P 5950 4950
F 0 "C?" V 5947 5060 60  0000 L CNN
F 1 "100nF" V 6053 5060 60  0000 L CNN
F 2 "" H 5950 4950 60  0000 C CNN
F 3 "" H 5950 4950 60  0000 C CNN
	1    5950 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4750 5950 4750
Wire Wire Line
	5950 4850 5950 4750
Connection ~ 5950 4750
Wire Wire Line
	5950 4750 6350 4750
Wire Wire Line
	4100 4750 4300 4750
Wire Wire Line
	4300 4750 4300 5350
Connection ~ 4100 4750
Wire Wire Line
	4100 4750 4100 4850
Wire Wire Line
	4150 5700 4400 5700
Wire Wire Line
	5650 6050 6150 6050
Wire Wire Line
	5750 4750 5750 5350
$Comp
L servo:GNDH #PWR?
U 1 1 5FF892F7
P 5950 5150
AR Path="/5DE49152/5FF892F7" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF892F7" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF892F7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 4900 30  0001 C CNN
F 1 "GNDH" H 5950 4992 30  0000 C CNN
F 2 "" H 5950 5150 50  0001 C CNN
F 3 "" H 5950 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4750 6350 5050
Wire Wire Line
	4100 5200 4100 5150
Wire Wire Line
	6750 5450 6750 3900
Wire Wire Line
	6750 3900 7850 3900
Wire Wire Line
	7850 4000 6900 4000
Wire Wire Line
	6900 4000 6900 5850
Wire Wire Line
	6900 5850 6350 5850
$Comp
L servo:3V3 #PWR?
U 1 1 5FF89304
P 4150 5700
F 0 "#PWR?" H 4097 5772 20  0000 R CNN
F 1 "3V3" H 4097 5722 28  0000 R CNN
F 2 "" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5FF8930B
P 7750 4250
AR Path="/5DE49152/5FF8930B" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5FF8930B" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5FF8930B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 4000 30  0001 C CNN
F 1 "GNDH" H 7750 4092 30  0000 C CNN
F 2 "" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0001 C CNN
	1    7750 4250
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FFAA3A6
P 7550 4100
AR Path="/5DE3DF56/5FFAA3A6" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5FFAA3A6" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FFAA3A6" Ref="R?"  Part="1" 
F 0 "R?" H 7550 4203 60  0000 C CNN
F 1 "1e" H 7550 4309 60  0000 C CNN
F 2 "" H 7550 4100 60  0000 C CNN
F 3 "" H 7550 4100 60  0000 C CNN
	1    7550 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 4200 7750 4200
Wire Wire Line
	7850 4100 7750 4100
Wire Wire Line
	7750 4250 7750 4200
$Comp
L servo:GNDH #PWR?
U 1 1 600383D6
P 8900 4250
AR Path="/5DE49152/600383D6" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/600383D6" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/600383D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 4000 30  0001 C CNN
F 1 "GNDH" H 8900 4092 30  0000 C CNN
F 2 "" H 8900 4250 50  0001 C CNN
F 3 "" H 8900 4250 50  0001 C CNN
	1    8900 4250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 600383DC
P 9100 4100
AR Path="/5DE3DF56/600383DC" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/600383DC" Ref="R?"  Part="1" 
AR Path="/5DE49152/600383DC" Ref="R?"  Part="1" 
F 0 "R?" H 9100 4203 60  0000 C CNN
F 1 "1e" H 9100 4309 60  0000 C CNN
F 2 "" H 9100 4100 60  0000 C CNN
F 3 "" H 9100 4100 60  0000 C CNN
	1    9100 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	8800 4200 8900 4200
Wire Wire Line
	8800 4100 8900 4100
Wire Wire Line
	8900 4250 8900 4200
Text Notes 9200 4250 0    20   ~ 4
to use as a fuse \nor protection
Text Notes 7250 4200 0    20   ~ 4
to use as a fuse \nor protection
Text GLabel 2950 5500 0    50   Output ~ 0
ENDAT1_N_SKEW_CLK
Text GLabel 2900 5650 0    50   Output ~ 0
ENDAT1_Y_SKEW_CLK
Wire Wire Line
	2950 5500 3700 5500
Wire Wire Line
	3700 5500 3700 5850
Wire Wire Line
	3700 5850 4450 5850
$Comp
L servo:Resistor R?
U 1 1 5E1E4C97
P 3500 5850
AR Path="/5DE3DF56/5E1E4C97" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E1E4C97" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1E4C97" Ref="R?"  Part="1" 
F 0 "R?" H 3500 5953 60  0000 C CNN
F 1 "0e(dnp)" H 3500 6059 60  0000 C CNN
F 2 "" H 3500 5850 60  0000 C CNN
F 3 "" H 3500 5850 60  0000 C CNN
	1    3500 5850
	-1   0    0    1   
$EndComp
Connection ~ 3700 5850
Text Notes 1600 5550 0    20   ~ 0
for usa as a master clk without\n skew from a dedicated PWM\n\n
Text Notes 1550 5750 0    20   ~ 0
it comes from the pair of the no_\nskew pwm clk but delayed to \natch the data delay from encoder.\nIt connect to the SPI clk and the \nSPI act as a slave
$Comp
L servo:Resistor R?
U 1 1 5E1FE557
P 3100 5850
AR Path="/5DE3DF56/5E1FE557" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E1FE557" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1FE557" Ref="R?"  Part="1" 
F 0 "R?" H 3100 5953 60  0000 C CNN
F 1 "0e" H 3100 6059 60  0000 C CNN
F 2 "" H 3100 5850 60  0000 C CNN
F 3 "" H 3100 5850 60  0000 C CNN
	1    3100 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 5650 3300 5650
Wire Wire Line
	3300 5650 3300 5850
Connection ~ 3300 5850
Text Notes 3050 6350 0    20   ~ 0
to choose between the spi clk out \ndirectly (useless for endat) or to \nsend a PWM clk and hes pair acting\n as skewed spi clk input to the spi uC\n delayed and the SPI playing as a slave...\nvery strange, but it's a way to manage \nthe badly designed endat...\n
Text GLabel 14250 5850 2    50   Input ~ 0
ENDAT2_CLK
Text GLabel 14200 5500 2    50   Output ~ 0
ENDAT2_N_SKEW_CLK
Text GLabel 14250 5650 2    50   Output ~ 0
ENDAT2_Y_SKEW_CLK
Wire Wire Line
	14200 5500 13450 5500
Wire Wire Line
	13450 5500 13450 5850
$Comp
L servo:Resistor R?
U 1 1 5E22385E
P 13650 5850
AR Path="/5DE3DF56/5E22385E" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E22385E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E22385E" Ref="R?"  Part="1" 
F 0 "R?" H 13650 5953 60  0000 C CNN
F 1 "0e(dnp)" H 13650 6059 60  0000 C CNN
F 2 "" H 13650 5850 60  0000 C CNN
F 3 "" H 13650 5850 60  0000 C CNN
	1    13650 5850
	1    0    0    1   
$EndComp
Connection ~ 13450 5850
Text Notes 15550 5550 2    20   ~ 0
for usa as a master clk without\n skew from a dedicated PWM\n\n
Text Notes 15600 5750 2    20   ~ 0
it comes from the pair of the no_\nskew pwm clk but delayed to \natch the data delay from encoder.\nIt connect to the SPI clk and the \nSPI act as a slave
$Comp
L servo:Resistor R?
U 1 1 5E223868
P 14050 5850
AR Path="/5DE3DF56/5E223868" Ref="R?"  Part="1" 
AR Path="/5E1BAEAA/5E223868" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E223868" Ref="R?"  Part="1" 
F 0 "R?" H 14050 5953 60  0000 C CNN
F 1 "0e" H 14050 6059 60  0000 C CNN
F 2 "" H 14050 5850 60  0000 C CNN
F 3 "" H 14050 5850 60  0000 C CNN
	1    14050 5850
	1    0    0    1   
$EndComp
Wire Wire Line
	14250 5650 13850 5650
Wire Wire Line
	13850 5650 13850 5850
Connection ~ 13850 5850
Text Notes 14100 6350 2    20   ~ 0
to choose between the spi clk out \ndirectly (useless for endat) or to \nsend a PWM clk and hes pair acting\n as skewed spi clk input to the spi uC\n delayed and the SPI playing as a slave...\nvery strange, but it's a way to manage \nthe badly designed endat...\n
Wire Wire Line
	12200 5850 13450 5850
$Comp
L servo:15VH #PWR?
U 1 1 5E3301AC
P 7350 4100
F 0 "#PWR?" H 7350 3900 20  0001 C CNN
F 1 "15VH" H 7355 4257 28  0000 C CNN
F 2 "" H 7350 4100 50  0001 C CNN
F 3 "" H 7350 4100 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E3390D7
P 9300 4100
F 0 "#PWR?" H 9300 3900 20  0001 C CNN
F 1 "15VH" H 9305 4257 28  0000 C CNN
F 2 "" H 9300 4100 50  0001 C CNN
F 3 "" H 9300 4100 50  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
