EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 19
Title "Shunt isolated"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5750 2300 0    50   Input ~ 0
VBUS_A_P
Text GLabel 5750 2500 0    50   Input ~ 0
VBUS_A_N
Text Notes 5150 1000 0    197  ~ 39
VBUS -> R divider -> ISO ADC -> uC\n
Wire Wire Line
	10150 1700 9850 1700
$Comp
L servo:Capacitor C?
U 1 1 5E1AD366
P 10150 1800
AR Path="/5DEE980E/5E1AD366" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD366" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD366" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD366" Ref="C?"  Part="1" 
F 0 "C?" V 10147 1690 60  0000 R CNN
F 1 "100nF" V 10253 1690 60  0000 R CNN
F 2 "" H 10150 1800 60  0000 C CNN
F 3 "" H 10150 1800 60  0000 C CNN
	1    10150 1800
	0    -1   1    0   
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E1AD36D
P 10150 2050
AR Path="/5DD76B18/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5DEE980E/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD36D" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD36D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1800 30  0001 C CNN
F 1 "GNDH" H 10150 1892 30  0000 C CNN
F 2 "" H 10150 2050 50  0001 C CNN
F 3 "" H 10150 2050 50  0001 C CNN
	1    10150 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 2000 10150 2000
Wire Wire Line
	9700 1850 9850 1850
Wire Wire Line
	9850 1850 9850 1700
$Comp
L servo:RFM-0505S U?
U 1 1 5E1AD376
P 9200 1950
AR Path="/5DEE980E/5E1AD376" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD376" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD376" Ref="U?"  Part="1" 
AR Path="/5DE49152/5E1AD376" Ref="U?"  Part="1" 
F 0 "U?" H 9200 2317 50  0000 C CNN
F 1 "RFM-0505S" H 9200 2226 50  0000 C CNN
F 2 "Converter_DCDC:C" H 9350 1650 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9200 1500 50  0001 C CNN
	1    9200 1950
	-1   0    0    -1  
$EndComp
Connection ~ 10150 1700
$Comp
L servo:Capacitor C?
U 1 1 5E1AD37E
P 8250 1950
AR Path="/5DEE980E/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD37E" Ref="C?"  Part="1" 
F 0 "C?" V 8247 2059 60  0000 L CNN
F 1 "100nF" V 8353 2059 60  0000 L CNN
F 2 "" H 8250 1950 60  0000 C CNN
F 3 "" H 8250 1950 60  0000 C CNN
	1    8250 1950
	0    -1   1    0   
$EndComp
Wire Wire Line
	10150 2000 10150 2050
Connection ~ 10150 2000
$Comp
L servo:3V3 #PWR?
U 1 1 5E1AD387
P 6300 1950
AR Path="/5DEE980E/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD387" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6305 2157 20  0000 C CNN
F 1 "3V3" H 6305 2107 28  0000 C CNN
F 2 "" H 6300 1950 50  0001 C CNN
F 3 "" H 6300 1950 50  0001 C CNN
	1    6300 1950
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E1AD38E
P 6300 2700
AR Path="/5DEE980E/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E1AD38E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 2450 30  0001 C CNN
F 1 "GND" H 6300 2542 30  0000 C CNN
F 2 "" H 6300 2700 50  0001 C CNN
F 3 "" H 6300 2700 50  0001 C CNN
	1    6300 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 1950 6300 2000
$Comp
L servo:Resistor R?
U 1 1 5E1AD395
P 8600 2950
AR Path="/5DEE980E/5E1AD395" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD395" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD395" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD395" Ref="R?"  Part="1" 
F 0 "R?" V 8653 3000 60  0000 L CNN
F 1 "1k" V 8547 3000 60  0000 L CNN
F 2 "" H 8600 2950 60  0000 C CNN
F 3 "" H 8600 2950 60  0000 C CNN
	1    8600 2950
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1AD39C
P 6300 2100
AR Path="/5DEE980E/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD39C" Ref="C?"  Part="1" 
F 0 "C?" V 6297 2210 60  0000 L CNN
F 1 "100nF" V 6403 2210 60  0000 L CNN
F 2 "" H 6300 2100 60  0000 C CNN
F 3 "" H 6300 2100 60  0000 C CNN
	1    6300 2100
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1AD3A3
P 8050 3000
AR Path="/5DEE980E/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/5DE49152/5E1AD3A3" Ref="C?"  Part="1" 
F 0 "C?" V 8047 2890 60  0000 R CNN
F 1 "330p" V 8153 2890 60  0000 R CNN
F 2 "" H 8050 3000 60  0000 C CNN
F 3 "" H 8050 3000 60  0000 C CNN
	1    8050 3000
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1AD3AA
P 8300 2650
AR Path="/5DEE980E/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD3AA" Ref="R?"  Part="1" 
F 0 "R?" H 8300 2753 60  0000 C CNN
F 1 "12e" H 8300 2859 60  0000 C CNN
F 2 "" H 8300 2650 60  0000 C CNN
F 3 "" H 8300 2650 60  0000 C CNN
	1    8300 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	7650 1850 7650 2250
Wire Wire Line
	7650 2250 7550 2250
Wire Wire Line
	7550 2550 7650 2550
Wire Wire Line
	7550 2450 7650 2450
Wire Wire Line
	7650 2450 7650 2550
Wire Wire Line
	6550 2250 6500 2250
Wire Wire Line
	6500 2250 6500 2000
Wire Wire Line
	6500 2000 6300 2000
Connection ~ 6300 2000
Wire Wire Line
	6550 2550 6300 2550
Wire Wire Line
	6300 2550 6300 2300
Wire Wire Line
	6300 2550 6300 2700
Connection ~ 6300 2550
Wire Wire Line
	8500 2000 8700 2000
$Comp
L servo:L_Small L?
U 1 1 5E1AD3C1
P 8500 1850
AR Path="/5DE49152/5E1AD3C1" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3C1" Ref="L?"  Part="1" 
F 0 "L?" V 8685 1850 50  0000 C CNN
F 1 "L_Small" V 8594 1850 50  0000 C CNN
F 2 "" H 8500 1850 50  0001 C CNN
F 3 "~" H 8500 1850 50  0001 C CNN
	1    8500 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 1850 8400 1850
Wire Wire Line
	8700 1850 8600 1850
Wire Wire Line
	10150 1650 10150 1700
$Comp
L servo:L_Small L?
U 1 1 5E1AD3CB
P 10150 1550
AR Path="/5DE49152/5E1AD3CB" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3CB" Ref="L?"  Part="1" 
F 0 "L?" H 10197 1596 50  0000 L CNN
F 1 "L_Small" H 10197 1505 50  0000 L CNN
F 2 "" H 10150 1550 50  0001 C CNN
F 3 "~" H 10150 1550 50  0001 C CNN
	1    10150 1550
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E1AD3D2
P 10150 1450
AR Path="/5DE49152/5E1AD3D2" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD3D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1250 20  0001 C CNN
F 1 "5VH" H 10155 1607 28  0000 C CNN
F 2 "" H 10150 1450 50  0001 C CNN
F 3 "" H 10150 1450 50  0001 C CNN
	1    10150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E1AD3D8
P 6100 2300
AR Path="/5DE49152/5E1AD3D8" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3D8" Ref="R?"  Part="1" 
F 0 "R?" V 6000 2300 50  0000 C CNN
F 1 "1k" V 6100 2300 50  0000 C CNN
F 2 "" H 6100 2300 50  0001 C CNN
F 3 "~" H 6100 2300 50  0001 C CNN
	1    6100 2300
	0    1    1    0   
$EndComp
$Comp
L servo:C_Small C?
U 1 1 5E1AD3DF
P 5900 2400
AR Path="/5DE49152/5E1AD3DF" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD3DF" Ref="C?"  Part="1" 
F 0 "C?" H 5800 2450 50  0000 L CNN
F 1 "100n" H 5600 2400 50  0000 L CNN
F 2 "" H 5900 2400 50  0001 C CNN
F 3 "~" H 5900 2400 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2300 5900 2300
$Comp
L Device:R_Small R?
U 1 1 5E1AD3E7
P 6100 2500
AR Path="/5DE49152/5E1AD3E7" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3E7" Ref="R?"  Part="1" 
F 0 "R?" V 6050 2500 50  0000 C CNN
F 1 "1k" V 6100 2500 50  0000 C CNN
F 2 "" H 6100 2500 50  0001 C CNN
F 3 "~" H 6100 2500 50  0001 C CNN
	1    6100 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2500 5900 2500
Wire Wire Line
	5900 2500 5750 2500
Connection ~ 5900 2500
Wire Wire Line
	5750 2300 5900 2300
Connection ~ 5900 2300
Wire Wire Line
	6200 2300 6250 2300
Wire Wire Line
	6250 2300 6250 2350
Wire Wire Line
	6250 2350 6550 2350
Wire Wire Line
	6550 2450 6250 2450
Wire Wire Line
	6250 2450 6250 2500
Wire Wire Line
	6250 2500 6200 2500
$Comp
L servo:AMC1311B U?
U 1 1 5E1AD3FA
P 7050 2300
AR Path="/5DE49152/5E1AD3FA" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD3FA" Ref="U?"  Part="1" 
F 0 "U?" H 7050 2667 50  0000 C CNN
F 1 "AMC1311B" H 7050 2576 50  0000 C CNN
F 2 "" H 7100 1300 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 7000 1800 50  0001 C CNN
	1    7050 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 2650 8100 2650
Wire Wire Line
	8250 2150 8500 2150
Wire Wire Line
	8500 2000 8500 2150
Connection ~ 8250 1850
Wire Wire Line
	7650 1850 8250 1850
Wire Wire Line
	7650 2450 7800 2450
Connection ~ 7650 2450
Connection ~ 8250 2150
Wire Wire Line
	8250 2150 7800 2150
Wire Wire Line
	7800 2150 7800 2450
Wire Wire Line
	7900 2650 8050 2650
Connection ~ 8050 2650
Connection ~ 7650 2550
Wire Wire Line
	8050 2650 8050 2900
Wire Wire Line
	8050 3200 8050 3250
Connection ~ 8050 3250
Wire Wire Line
	8050 3250 8600 3250
Wire Wire Line
	9100 2650 9250 2650
Wire Wire Line
	8600 2750 8600 2650
Wire Wire Line
	8600 2650 8500 2650
Wire Wire Line
	8600 3150 8600 3250
Connection ~ 8600 3250
$Comp
L servo:Resistor R?
U 1 1 5E1AD417
P 8900 2650
AR Path="/5DEE980E/5E1AD417" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD417" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD417" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD417" Ref="R?"  Part="1" 
F 0 "R?" H 8750 2750 60  0000 C CNN
F 1 "1M" H 8950 2750 60  0000 C CNN
F 2 "" H 8900 2650 60  0000 C CNN
F 3 "" H 8900 2650 60  0000 C CNN
	1    8900 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 2650 8600 2650
Connection ~ 8600 2650
Wire Wire Line
	9150 3250 9150 2750
Wire Wire Line
	9150 2750 9250 2750
Wire Wire Line
	8600 3250 9150 3250
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5E1AD423
P 9450 2650
AR Path="/5DE49152/5E1AD423" Ref="J?"  Part="1" 
AR Path="/605BEC04/5E1AD423" Ref="J?"  Part="1" 
F 0 "J?" H 9530 2646 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9530 2601 50  0001 L CNN
F 2 "" H 9450 2650 50  0001 C CNN
F 3 "~" H 9450 2650 50  0001 C CNN
	1    9450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2250 8600 2250
Connection ~ 7650 2250
$Comp
L servo:Resistor R?
U 1 1 5E1AD42C
P 8600 2450
AR Path="/5DEE980E/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/5DE49152/5E1AD42C" Ref="R?"  Part="1" 
F 0 "R?" V 8653 2500 60  0000 L CNN
F 1 "1k" V 8547 2500 60  0000 L CNN
F 2 "" H 8600 2450 60  0000 C CNN
F 3 "" H 8600 2450 60  0000 C CNN
	1    8600 2450
	0    1    -1   0   
$EndComp
Connection ~ 8600 2250
Wire Wire Line
	7550 2350 7900 2350
Wire Wire Line
	7900 2350 7900 2650
Wire Wire Line
	7650 2550 7650 3250
Wire Wire Line
	7650 3250 8050 3250
Wire Wire Line
	9150 2250 9150 2550
Wire Wire Line
	9150 2550 9250 2550
Wire Wire Line
	8600 2250 9150 2250
Text Notes 8800 2900 0    20   ~ 0
divider to measure Vbus, be shure it has the \npower range and sized needed
Text Notes 6500 2800 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Text Notes 8750 2200 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
Text GLabel 5750 4200 0    50   Input ~ 0
VBUS_B_P
Text GLabel 5750 4400 0    50   Input ~ 0
VBUS_B_N
Wire Wire Line
	10150 3600 9850 3600
$Comp
L servo:Capacitor C?
U 1 1 5FA848BB
P 10150 3700
AR Path="/5DEE980E/5FA848BB" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848BB" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848BB" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848BB" Ref="C?"  Part="1" 
F 0 "C?" V 10147 3590 60  0000 R CNN
F 1 "100nF" V 10253 3590 60  0000 R CNN
F 2 "" H 10150 3700 60  0000 C CNN
F 3 "" H 10150 3700 60  0000 C CNN
	1    10150 3700
	0    -1   1    0   
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5FA848C2
P 10150 3950
AR Path="/5DD76B18/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5DEE980E/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848C2" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 3700 30  0001 C CNN
F 1 "GNDH" H 10150 3792 30  0000 C CNN
F 2 "" H 10150 3950 50  0001 C CNN
F 3 "" H 10150 3950 50  0001 C CNN
	1    10150 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 3900 10150 3900
Wire Wire Line
	9700 3750 9850 3750
Wire Wire Line
	9850 3750 9850 3600
$Comp
L servo:RFM-0505S U?
U 1 1 5FA848CB
P 9200 3850
AR Path="/5DEE980E/5FA848CB" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5FA848CB" Ref="U?"  Part="1" 
AR Path="/605BEC04/5FA848CB" Ref="U?"  Part="1" 
AR Path="/5DE49152/5FA848CB" Ref="U?"  Part="1" 
F 0 "U?" H 9200 4217 50  0000 C CNN
F 1 "RFM-0505S" H 9200 4126 50  0000 C CNN
F 2 "Converter_DCDC:C" H 9350 3550 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9200 3400 50  0001 C CNN
	1    9200 3850
	-1   0    0    -1  
$EndComp
Connection ~ 10150 3600
$Comp
L servo:Capacitor C?
U 1 1 5FA848D3
P 8250 3850
AR Path="/5DEE980E/5FA848D3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848D3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848D3" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848D3" Ref="C?"  Part="1" 
F 0 "C?" V 8247 3959 60  0000 L CNN
F 1 "100nF" V 8353 3959 60  0000 L CNN
F 2 "" H 8250 3850 60  0000 C CNN
F 3 "" H 8250 3850 60  0000 C CNN
	1    8250 3850
	0    -1   1    0   
$EndComp
Wire Wire Line
	10150 3900 10150 3950
Connection ~ 10150 3900
$Comp
L servo:3V3 #PWR?
U 1 1 5FA848DC
P 6300 3850
AR Path="/5DEE980E/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848DC" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6305 4057 20  0000 C CNN
F 1 "3V3" H 6305 4007 28  0000 C CNN
F 2 "" H 6300 3850 50  0001 C CNN
F 3 "" H 6300 3850 50  0001 C CNN
	1    6300 3850
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5FA848E3
P 6300 4600
AR Path="/5DEE980E/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA848E3" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5FA848E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6300 4350 30  0001 C CNN
F 1 "GND" H 6300 4442 30  0000 C CNN
F 2 "" H 6300 4600 50  0001 C CNN
F 3 "" H 6300 4600 50  0001 C CNN
	1    6300 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 3850 6300 3900
$Comp
L servo:Resistor R?
U 1 1 5FA848EA
P 8600 4850
AR Path="/5DEE980E/5FA848EA" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA848EA" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA848EA" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA848EA" Ref="R?"  Part="1" 
F 0 "R?" V 8653 4900 60  0000 L CNN
F 1 "1k" V 8547 4900 60  0000 L CNN
F 2 "" H 8600 4850 60  0000 C CNN
F 3 "" H 8600 4850 60  0000 C CNN
	1    8600 4850
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5FA848F1
P 6300 4000
AR Path="/5DEE980E/5FA848F1" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848F1" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848F1" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848F1" Ref="C?"  Part="1" 
F 0 "C?" V 6297 4110 60  0000 L CNN
F 1 "100nF" V 6403 4110 60  0000 L CNN
F 2 "" H 6300 4000 60  0000 C CNN
F 3 "" H 6300 4000 60  0000 C CNN
	1    6300 4000
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5FA848F8
P 8050 4900
AR Path="/5DEE980E/5FA848F8" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5FA848F8" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA848F8" Ref="C?"  Part="1" 
AR Path="/5DE49152/5FA848F8" Ref="C?"  Part="1" 
F 0 "C?" V 8047 4790 60  0000 R CNN
F 1 "330p" V 8153 4790 60  0000 R CNN
F 2 "" H 8050 4900 60  0000 C CNN
F 3 "" H 8050 4900 60  0000 C CNN
	1    8050 4900
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5FA848FF
P 8300 4550
AR Path="/5DEE980E/5FA848FF" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA848FF" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA848FF" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA848FF" Ref="R?"  Part="1" 
F 0 "R?" H 8300 4653 60  0000 C CNN
F 1 "12e" H 8300 4759 60  0000 C CNN
F 2 "" H 8300 4550 60  0000 C CNN
F 3 "" H 8300 4550 60  0000 C CNN
	1    8300 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	7650 3750 7650 4150
Wire Wire Line
	7650 4150 7550 4150
Wire Wire Line
	7550 4450 7650 4450
Wire Wire Line
	7550 4350 7650 4350
Wire Wire Line
	7650 4350 7650 4450
Wire Wire Line
	6550 4150 6500 4150
Wire Wire Line
	6500 4150 6500 3900
Wire Wire Line
	6500 3900 6300 3900
Connection ~ 6300 3900
Wire Wire Line
	6550 4450 6300 4450
Wire Wire Line
	6300 4450 6300 4200
Wire Wire Line
	6300 4450 6300 4600
Connection ~ 6300 4450
Wire Wire Line
	8500 3900 8700 3900
$Comp
L servo:L_Small L?
U 1 1 5FA84914
P 8500 3750
AR Path="/5DE49152/5FA84914" Ref="L?"  Part="1" 
AR Path="/605BEC04/5FA84914" Ref="L?"  Part="1" 
F 0 "L?" V 8685 3750 50  0000 C CNN
F 1 "L_Small" V 8594 3750 50  0000 C CNN
F 2 "" H 8500 3750 50  0001 C CNN
F 3 "~" H 8500 3750 50  0001 C CNN
	1    8500 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 3750 8400 3750
Wire Wire Line
	8700 3750 8600 3750
Wire Wire Line
	10150 3550 10150 3600
$Comp
L servo:L_Small L?
U 1 1 5FA8491E
P 10150 3450
AR Path="/5DE49152/5FA8491E" Ref="L?"  Part="1" 
AR Path="/605BEC04/5FA8491E" Ref="L?"  Part="1" 
F 0 "L?" H 10197 3496 50  0000 L CNN
F 1 "L_Small" H 10197 3405 50  0000 L CNN
F 2 "" H 10150 3450 50  0001 C CNN
F 3 "~" H 10150 3450 50  0001 C CNN
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5FA84925
P 10150 3350
AR Path="/5DE49152/5FA84925" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5FA84925" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 3150 20  0001 C CNN
F 1 "5VH" H 10155 3507 28  0000 C CNN
F 2 "" H 10150 3350 50  0001 C CNN
F 3 "" H 10150 3350 50  0001 C CNN
	1    10150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FA8492B
P 6100 4200
AR Path="/5DE49152/5FA8492B" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8492B" Ref="R?"  Part="1" 
F 0 "R?" V 6000 4200 50  0000 C CNN
F 1 "1k" V 6100 4200 50  0000 C CNN
F 2 "" H 6100 4200 50  0001 C CNN
F 3 "~" H 6100 4200 50  0001 C CNN
	1    6100 4200
	0    1    1    0   
$EndComp
$Comp
L servo:C_Small C?
U 1 1 5FA84932
P 5900 4300
AR Path="/5DE49152/5FA84932" Ref="C?"  Part="1" 
AR Path="/605BEC04/5FA84932" Ref="C?"  Part="1" 
F 0 "C?" H 5800 4350 50  0000 L CNN
F 1 "100n" H 5600 4300 50  0000 L CNN
F 2 "" H 5900 4300 50  0001 C CNN
F 3 "~" H 5900 4300 50  0001 C CNN
	1    5900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4200 5900 4200
$Comp
L Device:R_Small R?
U 1 1 5FA8493A
P 6100 4400
AR Path="/5DE49152/5FA8493A" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8493A" Ref="R?"  Part="1" 
F 0 "R?" V 6050 4400 50  0000 C CNN
F 1 "1k" V 6100 4400 50  0000 C CNN
F 2 "" H 6100 4400 50  0001 C CNN
F 3 "~" H 6100 4400 50  0001 C CNN
	1    6100 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4400 5900 4400
Wire Wire Line
	5900 4400 5750 4400
Connection ~ 5900 4400
Wire Wire Line
	5750 4200 5900 4200
Connection ~ 5900 4200
Wire Wire Line
	6200 4200 6250 4200
Wire Wire Line
	6250 4200 6250 4250
Wire Wire Line
	6250 4250 6550 4250
Wire Wire Line
	6550 4350 6250 4350
Wire Wire Line
	6250 4350 6250 4400
Wire Wire Line
	6250 4400 6200 4400
$Comp
L servo:AMC1311B U?
U 1 1 5FA8494C
P 7050 4200
AR Path="/5DE49152/5FA8494C" Ref="U?"  Part="1" 
AR Path="/605BEC04/5FA8494C" Ref="U?"  Part="1" 
F 0 "U?" H 7050 4567 50  0000 C CNN
F 1 "AMC1311B" H 7050 4476 50  0000 C CNN
F 2 "" H 7100 3200 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 7000 3700 50  0001 C CNN
	1    7050 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 4550 8100 4550
Wire Wire Line
	8250 4050 8500 4050
Wire Wire Line
	8500 3900 8500 4050
Connection ~ 8250 3750
Wire Wire Line
	7650 3750 8250 3750
Wire Wire Line
	7650 4350 7800 4350
Connection ~ 7650 4350
Connection ~ 8250 4050
Wire Wire Line
	8250 4050 7800 4050
Wire Wire Line
	7800 4050 7800 4350
Wire Wire Line
	7900 4550 8050 4550
Connection ~ 8050 4550
Connection ~ 7650 4450
Wire Wire Line
	8050 4550 8050 4800
Wire Wire Line
	8050 5100 8050 5150
Connection ~ 8050 5150
Wire Wire Line
	8050 5150 8600 5150
Wire Wire Line
	9100 4550 9250 4550
Wire Wire Line
	8600 4650 8600 4550
Wire Wire Line
	8600 4550 8500 4550
Wire Wire Line
	8600 5050 8600 5150
Connection ~ 8600 5150
$Comp
L servo:Resistor R?
U 1 1 5FA84969
P 8900 4550
AR Path="/5DEE980E/5FA84969" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA84969" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA84969" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA84969" Ref="R?"  Part="1" 
F 0 "R?" H 8750 4650 60  0000 C CNN
F 1 "1M" H 8950 4650 60  0000 C CNN
F 2 "" H 8900 4550 60  0000 C CNN
F 3 "" H 8900 4550 60  0000 C CNN
	1    8900 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 4550 8600 4550
Connection ~ 8600 4550
Wire Wire Line
	9150 5150 9150 4650
Wire Wire Line
	9150 4650 9250 4650
Wire Wire Line
	8600 5150 9150 5150
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5FA84975
P 9450 4550
AR Path="/5DE49152/5FA84975" Ref="J?"  Part="1" 
AR Path="/605BEC04/5FA84975" Ref="J?"  Part="1" 
F 0 "J?" H 9530 4546 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9530 4501 50  0001 L CNN
F 2 "" H 9450 4550 50  0001 C CNN
F 3 "~" H 9450 4550 50  0001 C CNN
	1    9450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4150 8600 4150
Connection ~ 7650 4150
$Comp
L servo:Resistor R?
U 1 1 5FA8497E
P 8600 4350
AR Path="/5DEE980E/5FA8497E" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5FA8497E" Ref="R?"  Part="1" 
AR Path="/605BEC04/5FA8497E" Ref="R?"  Part="1" 
AR Path="/5DE49152/5FA8497E" Ref="R?"  Part="1" 
F 0 "R?" V 8653 4400 60  0000 L CNN
F 1 "1k" V 8547 4400 60  0000 L CNN
F 2 "" H 8600 4350 60  0000 C CNN
F 3 "" H 8600 4350 60  0000 C CNN
	1    8600 4350
	0    1    -1   0   
$EndComp
Connection ~ 8600 4150
Wire Wire Line
	7550 4250 7900 4250
Wire Wire Line
	7900 4250 7900 4550
Wire Wire Line
	7650 4450 7650 5150
Wire Wire Line
	7650 5150 8050 5150
Wire Wire Line
	9150 4150 9150 4450
Wire Wire Line
	9150 4450 9250 4450
Wire Wire Line
	8600 4150 9150 4150
Text Notes 8800 4800 0    20   ~ 0
divider to measure Vbus, be shure it has the \npower range and sized needed
Text Notes 6500 4700 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Text Notes 8750 4100 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
Text Notes 7250 1350 0    39   ~ 0
It's intended to measure the Vbus, one per motor, but they cold be\n joined if both motor share same VBus. The Vbus informatio will be\n used by the control algorith and to drive the break resistor PWM to\n protect the rise of the Vbus more than a threshold
$EndSCHEMATC
