EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 18
Title "Shunt isolated"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5550 2850 0    50   Input ~ 0
VBUS_A_P
Text GLabel 5550 3050 0    50   Input ~ 0
VBUS_A_N
Text Notes 5100 1200 0    197  ~ 39
VBUS -> R divider -> ISO ADC -> uC\n
$Comp
L servo:Capacitor C?
U 1 1 5E1AD37E
P 8050 2500
AR Path="/5DEE980E/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD37E" Ref="C?"  Part="1" 
F 0 "C?" V 8047 2609 60  0000 L CNN
F 1 "100nF" V 8153 2609 60  0000 L CNN
F 2 "" H 8050 2500 60  0000 C CNN
F 3 "" H 8050 2500 60  0000 C CNN
	1    8050 2500
	0    -1   1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E1AD387
P 6100 2500
AR Path="/5DEE980E/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD387" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6105 2707 20  0000 C CNN
F 1 "3V3" H 6105 2657 28  0000 C CNN
F 2 "" H 6100 2500 50  0001 C CNN
F 3 "" H 6100 2500 50  0001 C CNN
	1    6100 2500
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E1AD38E
P 6100 3250
AR Path="/5DEE980E/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD38E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 3000 30  0001 C CNN
F 1 "GND" H 6100 3092 30  0000 C CNN
F 2 "" H 6100 3250 50  0001 C CNN
F 3 "" H 6100 3250 50  0001 C CNN
	1    6100 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 2500 6100 2550
$Comp
L servo:Capacitor C?
U 1 1 5E1AD39C
P 6100 2650
AR Path="/5DEE980E/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD39C" Ref="C?"  Part="1" 
F 0 "C?" V 6097 2760 60  0000 L CNN
F 1 "100nF" V 6203 2760 60  0000 L CNN
F 2 "" H 6100 2650 60  0000 C CNN
F 3 "" H 6100 2650 60  0000 C CNN
	1    6100 2650
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1AD3A3
P 7850 3550
AR Path="/5DEE980E/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD3A3" Ref="C?"  Part="1" 
F 0 "C?" V 7847 3440 60  0000 R CNN
F 1 "330p" V 7953 3440 60  0000 R CNN
F 2 "" H 7850 3550 60  0000 C CNN
F 3 "" H 7850 3550 60  0000 C CNN
	1    7850 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	7450 2800 7350 2800
Wire Wire Line
	7350 3100 7450 3100
Wire Wire Line
	7350 3000 7450 3000
Wire Wire Line
	7450 3000 7450 3100
Wire Wire Line
	6350 2800 6300 2800
Wire Wire Line
	6300 2800 6300 2550
Wire Wire Line
	6300 2550 6100 2550
Connection ~ 6100 2550
Wire Wire Line
	6350 3100 6100 3100
Wire Wire Line
	6100 3100 6100 2850
Wire Wire Line
	6100 3100 6100 3250
Connection ~ 6100 3100
$Comp
L servo:5VH #PWR?
U 1 1 5E1AD3D2
P 9950 2000
AR Path="/5DE49152/5E1AD3D2" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD3D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9950 1800 20  0001 C CNN
F 1 "5VH" H 9955 2157 28  0000 C CNN
F 2 "" H 9950 2000 50  0001 C CNN
F 3 "" H 9950 2000 50  0001 C CNN
	1    9950 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E1AD3D8
P 5900 2850
AR Path="/5DE49152/5E1AD3D8" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3D8" Ref="R?"  Part="1" 
F 0 "R?" V 5800 2850 50  0000 C CNN
F 1 "1k" V 5900 2850 50  0000 C CNN
F 2 "" H 5900 2850 50  0001 C CNN
F 3 "~" H 5900 2850 50  0001 C CNN
	1    5900 2850
	0    1    1    0   
$EndComp
$Comp
L servo:C_Small C?
U 1 1 5E1AD3DF
P 5700 2950
AR Path="/5DE49152/5E1AD3DF" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD3DF" Ref="C?"  Part="1" 
F 0 "C?" H 5600 3000 50  0000 L CNN
F 1 "100n" H 5400 2950 50  0000 L CNN
F 2 "" H 5700 2950 50  0001 C CNN
F 3 "~" H 5700 2950 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2850 5700 2850
$Comp
L Device:R_Small R?
U 1 1 5E1AD3E7
P 5900 3050
AR Path="/5DE49152/5E1AD3E7" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3E7" Ref="R?"  Part="1" 
F 0 "R?" V 5850 3050 50  0000 C CNN
F 1 "1k" V 5900 3050 50  0000 C CNN
F 2 "" H 5900 3050 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3050 5700 3050
Wire Wire Line
	5700 3050 5550 3050
Connection ~ 5700 3050
Wire Wire Line
	5550 2850 5700 2850
Connection ~ 5700 2850
Wire Wire Line
	6000 2850 6050 2850
Wire Wire Line
	6050 2850 6050 2900
Wire Wire Line
	6050 2900 6350 2900
Wire Wire Line
	6350 3000 6050 3000
Wire Wire Line
	6050 3000 6050 3050
Wire Wire Line
	6050 3050 6000 3050
$Comp
L servo:AMC1311B U?
U 1 1 5E1AD3FA
P 6850 2850
AR Path="/5DE49152/5E1AD3FA" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD3FA" Ref="U?"  Part="1" 
F 0 "U?" H 6850 3217 50  0000 C CNN
F 1 "AMC1311B" H 6850 3126 50  0000 C CNN
F 2 "" H 6900 1850 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 6800 2350 50  0001 C CNN
	1    6850 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 3200 7850 3200
Connection ~ 7850 3200
Connection ~ 7450 3100
Wire Wire Line
	8950 3300 9050 3300
Wire Wire Line
	7450 2800 8400 2800
Connection ~ 7450 2800
$Comp
L servo:Resistor R?
U 1 1 5E1AD42C
P 8400 3000
AR Path="/5DEE980E/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD42C" Ref="R?"  Part="1" 
F 0 "R?" V 8453 3050 60  0000 L CNN
F 1 "1k" V 8347 3050 60  0000 L CNN
F 2 "" H 8400 3000 60  0000 C CNN
F 3 "" H 8400 3000 60  0000 C CNN
	1    8400 3000
	0    1    -1   0   
$EndComp
Wire Wire Line
	7350 2900 7700 2900
Wire Wire Line
	7700 2900 7700 3200
Wire Wire Line
	7450 3100 7450 3800
Wire Wire Line
	7450 3800 7850 3800
Text Notes 6300 3350 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Text GLabel 5550 4750 0    50   Input ~ 0
VBUS_B_P
Text GLabel 5550 4950 0    50   Input ~ 0
VBUS_B_N
Wire Wire Line
	9950 4150 9650 4150
$Comp
L servo:Capacitor C?
U 1 1 5FA848BB
P 9950 4250
AR Path="/5DEE980E/5FA848BB" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848BB" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848BB" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848BB" Ref="C?"  Part="1" 
F 0 "C?" V 9947 4140 60  0000 R CNN
F 1 "100nF" V 10053 4140 60  0000 R CNN
F 2 "" H 9950 4250 60  0000 C CNN
F 3 "" H 9950 4250 60  0000 C CNN
	1    9950 4250
	0    -1   1    0   
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5FA848C2
P 9950 4500
AR Path="/5DD76B18/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5DEE980E/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9950 4250 30  0001 C CNN
F 1 "GNDH" H 9950 4342 30  0000 C CNN
F 2 "" H 9950 4500 50  0001 C CNN
F 3 "" H 9950 4500 50  0001 C CNN
	1    9950 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 4450 9950 4450
Wire Wire Line
	9500 4300 9650 4300
Wire Wire Line
	9650 4300 9650 4150
$Comp
L servo:RFM-0505S U?
U 1 1 5FA848CB
P 9000 4400
AR Path="/5DEE980E/5FA848CB" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5FA848CB" Ref="U?"  Part="1" 
AR Path="/605BEC04/5FA848CB" Ref="U?"  Part="1" 
AR Path="/5DE49152/5FA848CB" Ref="U?"  Part="1" 
F 0 "U?" H 9000 4767 50  0000 C CNN
F 1 "RFM-0505S" H 9000 4676 50  0000 C CNN
F 2 "Converter_DCDC:C" H 9150 4100 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9000 3950 50  0001 C CNN
	1    9000 4400
	-1   0    0    -1  
$EndComp
Connection ~ 9950 4150
$Comp
L servo:Capacitor C?
U 1 1 5FA848D3
P 8050 4400
AR Path="/5DEE980E/5FA848D3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848D3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848D3" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848D3" Ref="C?"  Part="1" 
F 0 "C?" V 8047 4509 60  0000 L CNN
F 1 "100nF" V 8153 4509 60  0000 L CNN
F 2 "" H 8050 4400 60  0000 C CNN
F 3 "" H 8050 4400 60  0000 C CNN
	1    8050 4400
	0    -1   1    0   
$EndComp
Wire Wire Line
	9950 4450 9950 4500
Connection ~ 9950 4450
$Comp
L servo:3V3 #PWR?
U 1 1 5FA848DC
P 6100 4400
AR Path="/5DEE980E/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6105 4607 20  0000 C CNN
F 1 "3V3" H 6105 4557 28  0000 C CNN
F 2 "" H 6100 4400 50  0001 C CNN
F 3 "" H 6100 4400 50  0001 C CNN
	1    6100 4400
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FA848E3
P 6100 5150
AR Path="/5DEE980E/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 4900 30  0001 C CNN
F 1 "GND" H 6100 4992 30  0000 C CNN
F 2 "" H 6100 5150 50  0001 C CNN
F 3 "" H 6100 5150 50  0001 C CNN
	1    6100 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 4400 6100 4450
$Comp
L servo:Resistor R?
U 1 1 5FA848EA
P 8400 5400
AR Path="/5DEE980E/5FA848EA" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA848EA" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA848EA" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA848EA" Ref="R?"  Part="1" 
F 0 "R?" V 8453 5450 60  0000 L CNN
F 1 "1k" V 8347 5450 60  0000 L CNN
F 2 "" H 8400 5400 60  0000 C CNN
F 3 "" H 8400 5400 60  0000 C CNN
	1    8400 5400
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5FA848F1
P 6100 4550
AR Path="/5DEE980E/5FA848F1" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848F1" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848F1" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848F1" Ref="C?"  Part="1" 
F 0 "C?" V 6097 4660 60  0000 L CNN
F 1 "100nF" V 6203 4660 60  0000 L CNN
F 2 "" H 6100 4550 60  0000 C CNN
F 3 "" H 6100 4550 60  0000 C CNN
	1    6100 4550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5FA848F8
P 7850 5450
AR Path="/5DEE980E/5FA848F8" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848F8" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848F8" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848F8" Ref="C?"  Part="1" 
F 0 "C?" V 7847 5340 60  0000 R CNN
F 1 "330p" V 7953 5340 60  0000 R CNN
F 2 "" H 7850 5450 60  0000 C CNN
F 3 "" H 7850 5450 60  0000 C CNN
	1    7850 5450
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FA848FF
P 8100 5100
AR Path="/5DEE980E/5FA848FF" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA848FF" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA848FF" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA848FF" Ref="R?"  Part="1" 
F 0 "R?" H 8100 5203 60  0000 C CNN
F 1 "12e" H 8100 5309 60  0000 C CNN
F 2 "" H 8100 5100 60  0000 C CNN
F 3 "" H 8100 5100 60  0000 C CNN
	1    8100 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	7450 4300 7450 4700
Wire Wire Line
	7450 4700 7350 4700
Wire Wire Line
	7350 5000 7450 5000
Wire Wire Line
	7350 4900 7450 4900
Wire Wire Line
	7450 4900 7450 5000
Wire Wire Line
	6350 4700 6300 4700
Wire Wire Line
	6300 4700 6300 4450
Wire Wire Line
	6300 4450 6100 4450
Connection ~ 6100 4450
Wire Wire Line
	6350 5000 6100 5000
Wire Wire Line
	6100 5000 6100 4750
Wire Wire Line
	6100 5000 6100 5150
Connection ~ 6100 5000
Wire Wire Line
	8300 4450 8500 4450
$Comp
L servo:L_Small L?
U 1 1 5FA84914
P 8300 4300
AR Path="/5DE49152/5FA84914" Ref="L?"  Part="1" 
AR Path="/605BEC04/5FA84914" Ref="L?"  Part="1" 
F 0 "L?" V 8485 4300 50  0000 C CNN
F 1 "L_Small" V 8394 4300 50  0000 C CNN
F 2 "" H 8300 4300 50  0001 C CNN
F 3 "~" H 8300 4300 50  0001 C CNN
	1    8300 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 4300 8200 4300
Wire Wire Line
	8500 4300 8400 4300
Wire Wire Line
	9950 4100 9950 4150
$Comp
L servo:L_Small L?
U 1 1 5FA8491E
P 9950 4000
AR Path="/5DE49152/5FA8491E" Ref="L?"  Part="1" 
AR Path="/605BEC04/5FA8491E" Ref="L?"  Part="1" 
F 0 "L?" H 9997 4046 50  0000 L CNN
F 1 "L_Small" H 9997 3955 50  0000 L CNN
F 2 "" H 9950 4000 50  0001 C CNN
F 3 "~" H 9950 4000 50  0001 C CNN
	1    9950 4000
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FA84925
P 9950 3900
AR Path="/5DE49152/5FA84925" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA84925" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9950 3700 20  0001 C CNN
F 1 "5VH" H 9955 4057 28  0000 C CNN
F 2 "" H 9950 3900 50  0001 C CNN
F 3 "" H 9950 3900 50  0001 C CNN
	1    9950 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FA8492B
P 5900 4750
AR Path="/5DE49152/5FA8492B" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8492B" Ref="R?"  Part="1" 
F 0 "R?" V 5800 4750 50  0000 C CNN
F 1 "1k" V 5900 4750 50  0000 C CNN
F 2 "" H 5900 4750 50  0001 C CNN
F 3 "~" H 5900 4750 50  0001 C CNN
	1    5900 4750
	0    1    1    0   
$EndComp
$Comp
L servo:C_Small C?
U 1 1 5FA84932
P 5700 4850
AR Path="/5DE49152/5FA84932" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA84932" Ref="C?"  Part="1" 
F 0 "C?" H 5600 4900 50  0000 L CNN
F 1 "100n" H 5400 4850 50  0000 L CNN
F 2 "" H 5700 4850 50  0001 C CNN
F 3 "~" H 5700 4850 50  0001 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4750 5700 4750
$Comp
L Device:R_Small R?
U 1 1 5FA8493A
P 5900 4950
AR Path="/5DE49152/5FA8493A" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8493A" Ref="R?"  Part="1" 
F 0 "R?" V 5850 4950 50  0000 C CNN
F 1 "1k" V 5900 4950 50  0000 C CNN
F 2 "" H 5900 4950 50  0001 C CNN
F 3 "~" H 5900 4950 50  0001 C CNN
	1    5900 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4950 5700 4950
Wire Wire Line
	5700 4950 5550 4950
Connection ~ 5700 4950
Wire Wire Line
	5550 4750 5700 4750
Connection ~ 5700 4750
Wire Wire Line
	6000 4750 6050 4750
Wire Wire Line
	6050 4750 6050 4800
Wire Wire Line
	6050 4800 6350 4800
Wire Wire Line
	6350 4900 6050 4900
Wire Wire Line
	6050 4900 6050 4950
Wire Wire Line
	6050 4950 6000 4950
$Comp
L servo:AMC1311B U?
U 1 1 5FA8494C
P 6850 4750
AR Path="/5DE49152/5FA8494C" Ref="U?"  Part="1" 
AR Path="/605BEC04/5FA8494C" Ref="U?"  Part="1" 
F 0 "U?" H 6850 5117 50  0000 C CNN
F 1 "AMC1311B" H 6850 5026 50  0000 C CNN
F 2 "" H 6900 3750 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 6800 4250 50  0001 C CNN
	1    6850 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 5100 7900 5100
Wire Wire Line
	8050 4600 8300 4600
Wire Wire Line
	8300 4450 8300 4600
Connection ~ 8050 4300
Wire Wire Line
	7450 4300 8050 4300
Wire Wire Line
	7450 4900 7600 4900
Connection ~ 7450 4900
Connection ~ 8050 4600
Wire Wire Line
	8050 4600 7600 4600
Wire Wire Line
	7600 4600 7600 4900
Wire Wire Line
	7700 5100 7850 5100
Connection ~ 7850 5100
Connection ~ 7450 5000
Wire Wire Line
	7850 5100 7850 5350
Wire Wire Line
	7850 5650 7850 5700
Connection ~ 7850 5700
Wire Wire Line
	7850 5700 8400 5700
Wire Wire Line
	8900 5100 9050 5100
Wire Wire Line
	8400 5200 8400 5100
Wire Wire Line
	8400 5100 8300 5100
Wire Wire Line
	8400 5600 8400 5700
Connection ~ 8400 5700
$Comp
L servo:Resistor R?
U 1 1 5FA84969
P 8700 5100
AR Path="/5DEE980E/5FA84969" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA84969" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA84969" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA84969" Ref="R?"  Part="1" 
F 0 "R?" H 8550 5200 60  0000 C CNN
F 1 "1M" H 8750 5200 60  0000 C CNN
F 2 "" H 8700 5100 60  0000 C CNN
F 3 "" H 8700 5100 60  0000 C CNN
	1    8700 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	8500 5100 8400 5100
Connection ~ 8400 5100
Wire Wire Line
	8950 5700 8950 5200
Wire Wire Line
	8950 5200 9050 5200
Wire Wire Line
	8400 5700 8950 5700
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5FA84975
P 9250 5100
AR Path="/5DE49152/5FA84975" Ref="J?"  Part="1" 
AR Path="/605BEC04/5FA84975" Ref="J?"  Part="1" 
F 0 "J?" H 9330 5096 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9330 5051 50  0001 L CNN
F 2 "" H 9250 5100 50  0001 C CNN
F 3 "~" H 9250 5100 50  0001 C CNN
	1    9250 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4700 8400 4700
Connection ~ 7450 4700
$Comp
L servo:Resistor R?
U 1 1 5FA8497E
P 8400 4900
AR Path="/5DEE980E/5FA8497E" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA8497E" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8497E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA8497E" Ref="R?"  Part="1" 
F 0 "R?" V 8453 4950 60  0000 L CNN
F 1 "1k" V 8347 4950 60  0000 L CNN
F 2 "" H 8400 4900 60  0000 C CNN
F 3 "" H 8400 4900 60  0000 C CNN
	1    8400 4900
	0    1    -1   0   
$EndComp
Connection ~ 8400 4700
Wire Wire Line
	7350 4800 7700 4800
Wire Wire Line
	7700 4800 7700 5100
Wire Wire Line
	7450 5000 7450 5700
Wire Wire Line
	7450 5700 7850 5700
Wire Wire Line
	8950 4700 8950 5000
Wire Wire Line
	8950 5000 9050 5000
Wire Wire Line
	8400 4700 8950 4700
Text Notes 8600 5350 0    20   ~ 0
divider to measure Vbus, be shure it has the \npower range and sized needed
Text Notes 6300 5250 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Text Notes 8550 4650 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
Text Notes 7250 1850 0    39   ~ 0
It's intended to measure the Vbus, one per motor, but they cold be\n joined if both motor share same VBus. The Vbus informatio will be\n used by the control algorith and to drive the break resistor PWM to\n protect the rise of the Vbus more than a threshold\n\nThe input is expected not to be 220v or 380v. It's supoused to be a\n isolated low voltage to maintaint the reinforced insulation. In case\n you can't you could input 220v directly but the isolation would be\n simple
Wire Wire Line
	7850 3200 7850 3450
Connection ~ 7850 3800
Wire Wire Line
	7850 3750 7850 3800
Text Notes 8600 3450 0    20   ~ 0
divider to measure Vbus, be shure it has the \npower range and sized needed
Wire Wire Line
	8900 3200 9050 3200
Wire Wire Line
	8950 3800 8950 3300
Wire Wire Line
	8500 3200 8400 3200
Wire Wire Line
	7850 3200 7900 3200
$Comp
L servo:Resistor R?
U 1 1 5E1AD417
P 8700 3200
AR Path="/5DEE980E/5E1AD417" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD417" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD417" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD417" Ref="R?"  Part="1" 
F 0 "R?" H 8550 3300 60  0000 C CNN
F 1 "1M" H 8750 3300 60  0000 C CNN
F 2 "" H 8700 3200 60  0000 C CNN
F 3 "" H 8700 3200 60  0000 C CNN
	1    8700 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	8400 3800 8950 3800
Wire Wire Line
	7850 3800 8400 3800
Connection ~ 8400 3800
Wire Wire Line
	8400 3700 8400 3800
Connection ~ 8400 3200
Wire Wire Line
	8400 3300 8400 3200
Wire Wire Line
	8400 3200 8300 3200
$Comp
L servo:Resistor R?
U 1 1 5E1AD395
P 8400 3500
AR Path="/5DEE980E/5E1AD395" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD395" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD395" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD395" Ref="R?"  Part="1" 
F 0 "R?" V 8453 3550 60  0000 L CNN
F 1 "1k" V 8347 3550 60  0000 L CNN
F 2 "" H 8400 3500 60  0000 C CNN
F 3 "" H 8400 3500 60  0000 C CNN
	1    8400 3500
	0    1    -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1AD3AA
P 8100 3200
AR Path="/5DEE980E/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD3AA" Ref="R?"  Part="1" 
F 0 "R?" H 8100 3303 60  0000 C CNN
F 1 "12e" H 8100 3409 60  0000 C CNN
F 2 "" H 8100 3200 60  0000 C CNN
F 3 "" H 8100 3200 60  0000 C CNN
	1    8100 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	7450 2400 7450 2800
Connection ~ 7450 3000
Wire Wire Line
	7450 3000 7600 3000
Wire Wire Line
	7600 2700 7600 3000
Wire Wire Line
	8050 2700 7600 2700
Wire Wire Line
	7450 2400 8050 2400
Connection ~ 8050 2700
Wire Wire Line
	8050 2700 8300 2700
Wire Wire Line
	8300 2550 8300 2700
Wire Wire Line
	8500 2400 8400 2400
Connection ~ 8050 2400
Wire Wire Line
	8050 2400 8200 2400
$Comp
L servo:L_Small L?
U 1 1 5E1AD3C1
P 8300 2400
AR Path="/5DE49152/5E1AD3C1" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3C1" Ref="L?"  Part="1" 
F 0 "L?" V 8485 2400 50  0000 C CNN
F 1 "L_Small" V 8394 2400 50  0000 C CNN
F 2 "" H 8300 2400 50  0001 C CNN
F 3 "~" H 8300 2400 50  0001 C CNN
	1    8300 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 2550 8500 2550
Text Notes 8550 2750 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
$Comp
L servo:L_Small L?
U 1 1 5E1AD3CB
P 9950 2100
AR Path="/5DE49152/5E1AD3CB" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3CB" Ref="L?"  Part="1" 
F 0 "L?" H 9997 2146 50  0000 L CNN
F 1 "L_Small" H 9997 2055 50  0000 L CNN
F 2 "" H 9950 2100 50  0001 C CNN
F 3 "~" H 9950 2100 50  0001 C CNN
	1    9950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2200 9950 2250
Wire Wire Line
	9950 2550 9950 2600
$Comp
L servo:RFM-0505S U?
U 1 1 5E1AD376
P 9000 2500
AR Path="/5DEE980E/5E1AD376" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD376" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD376" Ref="U?"  Part="1" 
AR Path="/5DE49152/5E1AD376" Ref="U?"  Part="1" 
F 0 "U?" H 9000 2867 50  0000 C CNN
F 1 "RFM-0505S" H 9000 2776 50  0000 C CNN
F 2 "Converter_DCDC:C" H 9150 2200 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9000 2050 50  0001 C CNN
	1    9000 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 2400 9650 2250
Wire Wire Line
	9500 2400 9650 2400
Wire Wire Line
	9500 2550 9950 2550
$Comp
L servo:GNDH #PWR?
U 1 1 5E1AD36D
P 9950 2600
AR Path="/5DD76B18/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5DEE980E/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD36D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9950 2350 30  0001 C CNN
F 1 "GNDH" H 9950 2442 30  0000 C CNN
F 2 "" H 9950 2600 50  0001 C CNN
F 3 "" H 9950 2600 50  0001 C CNN
	1    9950 2600
	-1   0    0    -1  
$EndComp
Connection ~ 9950 2550
$Comp
L servo:Capacitor C?
U 1 1 5E1AD366
P 9950 2350
AR Path="/5DEE980E/5E1AD366" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD366" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD366" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD366" Ref="C?"  Part="1" 
F 0 "C?" V 9947 2240 60  0000 R CNN
F 1 "100nF" V 10053 2240 60  0000 R CNN
F 2 "" H 9950 2350 60  0000 C CNN
F 3 "" H 9950 2350 60  0000 C CNN
	1    9950 2350
	0    -1   1    0   
$EndComp
Connection ~ 9950 2250
Wire Wire Line
	9950 2250 9650 2250
Connection ~ 8400 2800
Wire Wire Line
	8400 2800 8950 2800
Wire Wire Line
	8950 2800 8950 3100
Wire Wire Line
	8950 3100 9050 3100
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E1AD423
P 9250 3200
AR Path="/5DE49152/5E1AD423" Ref="J?"  Part="1" 
AR Path="/605BEC04/5E1AD423" Ref="J?"  Part="1" 
F 0 "J?" H 9330 3196 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9330 3151 50  0001 L CNN
F 2 "" H 9250 3200 50  0001 C CNN
F 3 "~" H 9250 3200 50  0001 C CNN
	1    9250 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
