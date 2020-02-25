EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 16 20
Title "Shunt isolated"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5400 2850 0    50   Input ~ 0
VBUS1_P
Text GLabel 5400 3250 0    50   Input ~ 0
VBUS1_N
Text Notes 4700 1100 0    197  ~ 39
VBUS -> R divider -> ISO ADC -> uC\n
$Comp
L servo:Capacitor C?
U 1 1 5E1AD37E
P 8450 2600
AR Path="/5DEE980E/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD37E" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD37E" Ref="C1607"  Part="1" 
AR Path="/5DE49152/5E1AD37E" Ref="C?"  Part="1" 
F 0 "C1607" V 8478 2710 20  0000 L CNN
F 1 "0.1uF" V 8521 2710 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8450 2500 60  0001 C CNN
F 3 "" H 8450 2600 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    8450 2600
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E1AD387
P 6500 2600
AR Path="/5DEE980E/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD387" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD387" Ref="#PWR01601"  Part="1" 
AR Path="/5DE49152/5E1AD387" Ref="#PWR?"  Part="1" 
F 0 "#PWR01601" H 6400 2700 20  0001 C CNN
F 1 "3V3" H 6500 2750 28  0000 C CNN
F 2 "" H 6500 2600 50  0001 C CNN
F 3 "" H 6500 2600 50  0001 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E1AD38E
P 6500 3350
AR Path="/5DEE980E/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD38E" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1AD38E" Ref="#PWR01602"  Part="1" 
AR Path="/5DE49152/5E1AD38E" Ref="#PWR?"  Part="1" 
F 0 "#PWR01602" H 6500 3100 30  0001 C CNN
F 1 "GND" H 6500 3192 30  0000 C CNN
F 2 "" H 6500 3350 50  0001 C CNN
F 3 "" H 6500 3350 50  0001 C CNN
	1    6500 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 2600 6500 2650
$Comp
L servo:Capacitor C?
U 1 1 5E1AD39C
P 6500 2750
AR Path="/5DEE980E/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD39C" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD39C" Ref="C1603"  Part="1" 
AR Path="/5DE49152/5E1AD39C" Ref="C?"  Part="1" 
F 0 "C1603" V 6528 2860 20  0000 L CNN
F 1 "0.1uF" V 6571 2860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6500 2650 60  0001 C CNN
F 3 "" H 6500 2750 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    6500 2750
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1AD3A3
P 8250 3700
AR Path="/5DEE980E/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3A3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD3A3" Ref="C1605"  Part="1" 
AR Path="/5DE49152/5E1AD3A3" Ref="C?"  Part="1" 
F 0 "C1605" V 8278 3591 20  0000 R CNN
F 1 "0.1uF" V 8321 3591 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8250 3600 60  0001 C CNN
F 3 "" H 8250 3700 60  0000 C CNN
	1    8250 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2900 7750 2900
Wire Wire Line
	7750 3200 7850 3200
Wire Wire Line
	7750 3100 7850 3100
Wire Wire Line
	7850 3100 7850 3200
Wire Wire Line
	6750 2900 6700 2900
Wire Wire Line
	6700 2900 6700 2650
Wire Wire Line
	6700 2650 6500 2650
Connection ~ 6500 2650
Wire Wire Line
	6750 3200 6500 3200
Wire Wire Line
	6500 3200 6500 2950
Wire Wire Line
	6500 3200 6500 3350
Connection ~ 6500 3200
Wire Wire Line
	6750 3100 6200 3100
Wire Wire Line
	6200 3100 6200 3250
Wire Wire Line
	6200 3250 6100 3250
$Comp
L servo:AMC1311B U?
U 1 1 5E1AD3FA
P 7250 2950
AR Path="/5DE49152/5E1AD3FA" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD3FA" Ref="U1601"  Part="1" 
F 0 "U1601" H 7250 3317 50  0000 C CNN
F 1 "AMC1311B" H 7250 3226 50  0000 C CNN
F 2 "servo:SSO-8_7.6x5.9mm_P1.27mm_Clearance9.1mm" H 7300 1950 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 7200 2450 50  0001 C CNN
	1    7250 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 3300 8250 3300
Connection ~ 8250 3300
Connection ~ 7850 3200
Wire Wire Line
	7850 2900 8800 2900
Connection ~ 7850 2900
$Comp
L servo:Resistor R?
U 1 1 5E1AD42C
P 8800 3100
AR Path="/5DEE980E/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD42C" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD42C" Ref="R1607"  Part="1" 
AR Path="/5DE49152/5E1AD42C" Ref="R?"  Part="1" 
F 0 "R1607" V 8778 3150 20  0000 L CNN
F 1 "1k(dnp)" V 8821 3150 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8300 3000 60  0001 C CNN
F 3 "" H 8400 3100 60  0001 C CNN
	1    8800 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 3000 8100 3000
Wire Wire Line
	8100 3000 8100 3300
Wire Wire Line
	7850 3200 7850 4050
Wire Wire Line
	7850 4050 8250 4050
Text Notes 6700 3450 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Text GLabel 5500 5150 0    50   Input ~ 0
VBUS2_P
Text GLabel 5500 5550 0    50   Input ~ 0
VBUS2_N
Text Notes 6850 1750 0    39   ~ 0
It's intended to measure the Vbus, one per motor, but they cold be\n joined if both motor share same VBus. The Vbus informatio will be\n used by the control algorith and to drive the break resistor PWM to\n protect the rise of the Vbus more than a threshold\n\nThe input is expected not to be 220v or 380v. It's supoused to be a\n isolated low voltage to maintaint the reinforced insulation. In case\n you can't you could input 220v directly but the isolation would be\n simple
Wire Wire Line
	8250 3300 8250 3600
Connection ~ 8250 4050
Wire Wire Line
	8250 3900 8250 4050
Wire Wire Line
	8900 3300 8800 3300
Wire Wire Line
	8250 3300 8300 3300
$Comp
L servo:Resistor R?
U 1 1 5E1AD417
P 9100 3300
AR Path="/5DEE980E/5E1AD417" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD417" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD417" Ref="R1611"  Part="1" 
AR Path="/5DE49152/5E1AD417" Ref="R?"  Part="1" 
F 0 "R1611" H 9100 3415 20  0000 C CNN
F 1 "2M2" H 9100 3372 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8600 3200 60  0001 C CNN
F 3 "" H 8700 3300 60  0001 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4050 8800 4050
Wire Wire Line
	8800 3950 8800 4050
Connection ~ 8800 3300
Wire Wire Line
	8800 3300 8700 3300
$Comp
L servo:Resistor R?
U 1 1 5E1AD395
P 8800 3750
AR Path="/5DEE980E/5E1AD395" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD395" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD395" Ref="R1608"  Part="1" 
AR Path="/5DE49152/5E1AD395" Ref="R?"  Part="1" 
F 0 "R1608" V 8778 3800 20  0000 L CNN
F 1 "3k3" V 8821 3800 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8300 3650 60  0001 C CNN
F 3 "" H 8400 3750 60  0001 C CNN
	1    8800 3750
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1AD3AA
P 8500 3300
AR Path="/5DEE980E/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD3AA" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1AD3AA" Ref="R1605"  Part="1" 
AR Path="/5DE49152/5E1AD3AA" Ref="R?"  Part="1" 
F 0 "R1605" H 8500 3415 20  0000 C CNN
F 1 "100" H 8500 3372 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8000 3200 60  0001 C CNN
F 3 "" H 8100 3300 60  0001 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2500 7850 2900
Connection ~ 7850 3100
Wire Wire Line
	7850 3100 8000 3100
Wire Wire Line
	8000 2800 8000 3100
Wire Wire Line
	8450 2800 8000 2800
Wire Wire Line
	7850 2500 8450 2500
Connection ~ 8450 2800
Wire Wire Line
	8450 2800 8700 2800
Wire Wire Line
	8700 2650 8700 2800
Wire Wire Line
	8900 2500 8800 2500
Connection ~ 8450 2500
Wire Wire Line
	8450 2500 8600 2500
$Comp
L servo:L_Small L?
U 1 1 5E1AD3C1
P 8700 2500
AR Path="/5DE49152/5E1AD3C1" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3C1" Ref="L1601"  Part="1" 
F 0 "L1601" V 8594 2500 20  0000 C CNN
F 1 "50 ohm@100Mhz" V 8637 2500 20  0000 C CNN
F 2 "servo:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8630 2440 50  0001 C CNN
F 3 "~" H 8730 2540 50  0001 C CNN
F 4 "50 Ohms @ 100MHz 1 Power Line Ferrite Bead 1206 (3216 Metric) 3A 30mOhm " H 0   0   50  0001 C CNN "Description"
F 5 "PE-1206PFB500ST" H 0   0   50  0001 C CNN "PartNumber"
F 6 "553-2403-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.14900" H 0   0   50  0001 C CNN "price@10"
	1    8700 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2650 8900 2650
Text Notes 8950 2850 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
$Comp
L servo:L_Small L?
U 1 1 5E1AD3CB
P 10350 2200
AR Path="/5DE49152/5E1AD3CB" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1AD3CB" Ref="L1603"  Part="1" 
F 0 "L1603" H 10398 2222 20  0000 L CNN
F 1 "50 ohm@100Mhz" H 10398 2179 20  0000 L CNN
F 2 "servo:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10280 2140 50  0001 C CNN
F 3 "~" H 10380 2240 50  0001 C CNN
F 4 "50 Ohms @ 100MHz 1 Power Line Ferrite Bead 1206 (3216 Metric) 3A 30mOhm " H 0   0   50  0001 C CNN "Description"
F 5 "PE-1206PFB500ST" H 0   0   50  0001 C CNN "PartNumber"
F 6 "553-2403-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.14900" H 0   0   50  0001 C CNN "price@10"
	1    10350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2300 10350 2350
Wire Wire Line
	10350 2650 10350 2700
$Comp
L servo:RFM-0505S U?
U 1 1 5E1AD376
P 9400 2600
AR Path="/5DEE980E/5E1AD376" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD376" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1AD376" Ref="U1603"  Part="1" 
AR Path="/5DE49152/5E1AD376" Ref="U?"  Part="1" 
F 0 "U1603" H 9400 2967 50  0000 C CNN
F 1 "RFM-0505S" H 9400 2876 50  0000 C CNN
F 2 "servo:rfm0505" H 9550 2300 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9400 2150 50  0001 C CNN
	1    9400 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 2500 10050 2350
Wire Wire Line
	9900 2500 10050 2500
Wire Wire Line
	9900 2650 10350 2650
Connection ~ 10350 2650
$Comp
L servo:Capacitor C?
U 1 1 5E1AD366
P 10350 2450
AR Path="/5DEE980E/5E1AD366" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1AD366" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1AD366" Ref="C1609"  Part="1" 
AR Path="/5DE49152/5E1AD366" Ref="C?"  Part="1" 
F 0 "C1609" V 10378 2560 20  0000 L CNN
F 1 "0.1uF" V 10421 2560 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10350 2350 60  0001 C CNN
F 3 "" H 10350 2450 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    10350 2450
	0    1    1    0   
$EndComp
Connection ~ 10350 2350
Wire Wire Line
	10350 2350 10050 2350
$Comp
L power:PWR_FLAG #FLG01603
U 1 1 5EF2B12C
P 10050 2350
F 0 "#FLG01603" H 10050 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 2500 20  0000 C CNN
F 2 "" H 10050 2350 50  0001 C CNN
F 3 "~" H 10050 2350 50  0001 C CNN
	1    10050 2350
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E19AFC3
P 5600 3000
AR Path="/5DEE980E/5E19AFC3" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E19AFC3" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E19AFC3" Ref="C1601"  Part="1" 
AR Path="/5DE49152/5E19AFC3" Ref="C?"  Part="1" 
F 0 "C1601" V 5628 3110 20  0000 L CNN
F 1 "0.1uF" V 5671 3110 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5600 2900 60  0001 C CNN
F 3 "" H 5600 3000 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    5600 3000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E19B1CF
P 5900 2850
AR Path="/5DEE980E/5E19B1CF" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E19B1CF" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E19B1CF" Ref="R1601"  Part="1" 
AR Path="/5DE49152/5E19B1CF" Ref="R?"  Part="1" 
F 0 "R1601" H 5900 2965 20  0000 C CNN
F 1 "12" H 5900 2922 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 5400 2750 60  0001 C CNN
F 3 "" H 5500 2850 60  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E19B35E
P 5900 3250
AR Path="/5DEE980E/5E19B35E" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E19B35E" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E19B35E" Ref="R1602"  Part="1" 
AR Path="/5DE49152/5E19B35E" Ref="R?"  Part="1" 
F 0 "R1602" H 5900 3365 20  0000 C CNN
F 1 "12" H 5900 3322 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 5400 3150 60  0001 C CNN
F 3 "" H 5500 3250 60  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3000 6200 2850
Wire Wire Line
	6200 2850 6100 2850
Wire Wire Line
	6200 3000 6750 3000
Wire Wire Line
	5700 2850 5600 2850
Wire Wire Line
	5600 2850 5600 2900
Wire Wire Line
	5600 3200 5600 3250
Wire Wire Line
	5600 3250 5700 3250
Wire Wire Line
	5600 3250 5400 3250
Connection ~ 5600 3250
Wire Wire Line
	5600 2850 5400 2850
Connection ~ 5600 2850
$Comp
L servo:Capacitor C?
U 1 1 5E1B9A69
P 8550 4900
AR Path="/5DEE980E/5E1B9A69" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9A69" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1B9A69" Ref="C1608"  Part="1" 
AR Path="/5DE49152/5E1B9A69" Ref="C?"  Part="1" 
F 0 "C1608" V 8578 5010 20  0000 L CNN
F 1 "0.1uF" V 8621 5010 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8550 4800 60  0001 C CNN
F 3 "" H 8550 4900 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    8550 4900
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E1B9A70
P 6600 4900
AR Path="/5DEE980E/5E1B9A70" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9A70" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1B9A70" Ref="#PWR01603"  Part="1" 
AR Path="/5DE49152/5E1B9A70" Ref="#PWR?"  Part="1" 
F 0 "#PWR01603" H 6500 5000 20  0001 C CNN
F 1 "3V3" H 6600 5050 28  0000 C CNN
F 2 "" H 6600 4900 50  0001 C CNN
F 3 "" H 6600 4900 50  0001 C CNN
	1    6600 4900
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E1B9A77
P 6600 5650
AR Path="/5DEE980E/5E1B9A77" Ref="#PWR?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9A77" Ref="#PWR?"  Part="1" 
AR Path="/605BEC04/5E1B9A77" Ref="#PWR01604"  Part="1" 
AR Path="/5DE49152/5E1B9A77" Ref="#PWR?"  Part="1" 
F 0 "#PWR01604" H 6600 5400 30  0001 C CNN
F 1 "GND" H 6600 5492 30  0000 C CNN
F 2 "" H 6600 5650 50  0001 C CNN
F 3 "" H 6600 5650 50  0001 C CNN
	1    6600 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 4900 6600 4950
$Comp
L servo:Capacitor C?
U 1 1 5E1B9A7E
P 6600 5050
AR Path="/5DEE980E/5E1B9A7E" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9A7E" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1B9A7E" Ref="C1604"  Part="1" 
AR Path="/5DE49152/5E1B9A7E" Ref="C?"  Part="1" 
F 0 "C1604" V 6628 5160 20  0000 L CNN
F 1 "0.1uF" V 6671 5160 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6600 4950 60  0001 C CNN
F 3 "" H 6600 5050 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    6600 5050
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1B9A85
P 8350 6000
AR Path="/5DEE980E/5E1B9A85" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9A85" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1B9A85" Ref="C1606"  Part="1" 
AR Path="/5DE49152/5E1B9A85" Ref="C?"  Part="1" 
F 0 "C1606" V 8378 5891 20  0000 R CNN
F 1 "0.1uF" V 8421 5891 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8350 5900 60  0001 C CNN
F 3 "" H 8350 6000 60  0000 C CNN
	1    8350 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 5200 7850 5200
Wire Wire Line
	7850 5500 7950 5500
Wire Wire Line
	7850 5400 7950 5400
Wire Wire Line
	7950 5400 7950 5500
Wire Wire Line
	6850 5200 6800 5200
Wire Wire Line
	6800 5200 6800 4950
Wire Wire Line
	6800 4950 6600 4950
Connection ~ 6600 4950
Wire Wire Line
	6850 5500 6600 5500
Wire Wire Line
	6600 5500 6600 5250
Wire Wire Line
	6600 5500 6600 5650
Connection ~ 6600 5500
Wire Wire Line
	6850 5400 6300 5400
Wire Wire Line
	6300 5400 6300 5550
Wire Wire Line
	6300 5550 6200 5550
$Comp
L servo:AMC1311B U?
U 1 1 5E1B9AA1
P 7350 5250
AR Path="/5DE49152/5E1B9AA1" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1B9AA1" Ref="U1602"  Part="1" 
F 0 "U1602" H 7350 5617 50  0000 C CNN
F 1 "AMC1311B" H 7350 5526 50  0000 C CNN
F 2 "servo:SSO-8_7.6x5.9mm_P1.27mm_Clearance9.1mm" H 7400 4250 50  0001 C CIN
F 3 "../doc/datasheets/amc1311.pdf" H 7300 4750 50  0001 C CNN
	1    7350 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 5600 8350 5600
Connection ~ 8350 5600
Wire Wire Line
	7950 5200 8900 5200
Connection ~ 7950 5200
$Comp
L servo:Resistor R?
U 1 1 5E1B9AAE
P 8900 5400
AR Path="/5DEE980E/5E1B9AAE" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9AAE" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1B9AAE" Ref="R1609"  Part="1" 
AR Path="/5DE49152/5E1B9AAE" Ref="R?"  Part="1" 
F 0 "R1609" V 8878 5450 20  0000 L CNN
F 1 "1k(dnp)" V 8921 5450 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8400 5300 60  0001 C CNN
F 3 "" H 8500 5400 60  0001 C CNN
	1    8900 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5300 8200 5300
Wire Wire Line
	8200 5300 8200 5600
Wire Wire Line
	7950 5500 7950 6350
Wire Wire Line
	7950 6350 8350 6350
Text Notes 6800 5750 0    20   ~ 0
It's an isolated specialized IC for volttage measurement that acept\n unipolar signal until 2V, so it has more dynamic range than AMC1301\n for example 
Wire Wire Line
	8350 5600 8350 5900
Connection ~ 8350 6350
Wire Wire Line
	8350 6200 8350 6350
Wire Wire Line
	9000 5600 8900 5600
Wire Wire Line
	8350 5600 8400 5600
Wire Wire Line
	8350 6350 8900 6350
Connection ~ 8900 6350
Wire Wire Line
	8900 6250 8900 6350
Connection ~ 8900 5600
Wire Wire Line
	8900 5850 8900 5750
Wire Wire Line
	8900 5600 8800 5600
$Comp
L servo:Resistor R?
U 1 1 5E1B9AD0
P 8900 6050
AR Path="/5DEE980E/5E1B9AD0" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9AD0" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1B9AD0" Ref="R1610"  Part="1" 
AR Path="/5DE49152/5E1B9AD0" Ref="R?"  Part="1" 
F 0 "R1610" V 8878 6100 20  0000 L CNN
F 1 "3k3" V 8921 6100 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8400 5950 60  0001 C CNN
F 3 "" H 8500 6050 60  0001 C CNN
	1    8900 6050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1B9AD7
P 8600 5600
AR Path="/5DEE980E/5E1B9AD7" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9AD7" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1B9AD7" Ref="R1606"  Part="1" 
AR Path="/5DE49152/5E1B9AD7" Ref="R?"  Part="1" 
F 0 "R1606" H 8600 5715 20  0000 C CNN
F 1 "100" H 8600 5672 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8100 5500 60  0001 C CNN
F 3 "" H 8200 5600 60  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4800 7950 5200
Connection ~ 7950 5400
Wire Wire Line
	7950 5400 8100 5400
Wire Wire Line
	8100 5100 8100 5400
Wire Wire Line
	8550 5100 8100 5100
Wire Wire Line
	7950 4800 8550 4800
Connection ~ 8550 5100
Wire Wire Line
	8550 5100 8800 5100
Wire Wire Line
	8800 4950 8800 5100
Wire Wire Line
	9000 4800 8900 4800
Connection ~ 8550 4800
Wire Wire Line
	8550 4800 8700 4800
$Comp
L servo:L_Small L?
U 1 1 5E1B9AEA
P 8800 4800
AR Path="/5DE49152/5E1B9AEA" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1B9AEA" Ref="L1602"  Part="1" 
F 0 "L1602" V 8694 4800 20  0000 C CNN
F 1 "50 ohm@100Mhz" V 8737 4800 20  0000 C CNN
F 2 "servo:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8730 4740 50  0001 C CNN
F 3 "~" H 8830 4840 50  0001 C CNN
F 4 "50 Ohms @ 100MHz 1 Power Line Ferrite Bead 1206 (3216 Metric) 3A 30mOhm " H 0   0   50  0001 C CNN "Description"
F 5 "PE-1206PFB500ST" H 0   0   50  0001 C CNN "PartNumber"
F 6 "553-2403-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.14900" H 0   0   50  0001 C CNN "price@10"
	1    8800 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 4950 9000 4950
Text Notes 9050 5150 0    20   ~ 0
if uou remove the isolated power supply, you loose the reinforced\n isolation. So it's bettar use that little and cheaper power supply\n
$Comp
L servo:L_Small L?
U 1 1 5E1B9AF3
P 10450 4500
AR Path="/5DE49152/5E1B9AF3" Ref="L?"  Part="1" 
AR Path="/605BEC04/5E1B9AF3" Ref="L1604"  Part="1" 
F 0 "L1604" H 10498 4522 20  0000 L CNN
F 1 "50 ohm@100Mhz" H 10498 4479 20  0000 L CNN
F 2 "servo:L_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10380 4440 50  0001 C CNN
F 3 "~" H 10480 4540 50  0001 C CNN
F 4 "50 Ohms @ 100MHz 1 Power Line Ferrite Bead 1206 (3216 Metric) 3A 30mOhm " H 0   0   50  0001 C CNN "Description"
F 5 "PE-1206PFB500ST" H 0   0   50  0001 C CNN "PartNumber"
F 6 "553-2403-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.14900" H 0   0   50  0001 C CNN "price@10"
	1    10450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 4600 10450 4650
Wire Wire Line
	10450 4950 10450 5000
$Comp
L servo:RFM-0505S U?
U 1 1 5E1B9AFC
P 9500 4900
AR Path="/5DEE980E/5E1B9AFC" Ref="U?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9AFC" Ref="U?"  Part="1" 
AR Path="/605BEC04/5E1B9AFC" Ref="U1604"  Part="1" 
AR Path="/5DE49152/5E1B9AFC" Ref="U?"  Part="1" 
F 0 "U1604" H 9500 5267 50  0000 C CNN
F 1 "RFM-0505S" H 9500 5176 50  0000 C CNN
F 2 "servo:rfm0505" H 9650 4600 50  0001 C CIN
F 3 "../doc/datasheets/rfm0505s.pdf" H 9500 4450 50  0001 C CNN
	1    9500 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10150 4800 10150 4650
Wire Wire Line
	10000 4800 10150 4800
Wire Wire Line
	10000 4950 10450 4950
Connection ~ 10450 4950
$Comp
L servo:Capacitor C?
U 1 1 5E1B9B0D
P 10450 4750
AR Path="/5DEE980E/5E1B9B0D" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9B0D" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1B9B0D" Ref="C1610"  Part="1" 
AR Path="/5DE49152/5E1B9B0D" Ref="C?"  Part="1" 
F 0 "C1610" V 10478 4860 20  0000 L CNN
F 1 "0.1uF" V 10521 4860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10450 4650 60  0001 C CNN
F 3 "" H 10450 4750 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    10450 4750
	0    1    1    0   
$EndComp
Connection ~ 10450 4650
Wire Wire Line
	10450 4650 10150 4650
$Comp
L power:PWR_FLAG #FLG01602
U 1 1 5E1B9B21
P 7950 4800
F 0 "#FLG01602" H 7950 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 7950 4950 20  0000 C CNN
F 2 "" H 7950 4800 50  0001 C CNN
F 3 "~" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
Connection ~ 7950 4800
$Comp
L power:PWR_FLAG #FLG01604
U 1 1 5E1B9B28
P 10150 4650
F 0 "#FLG01604" H 10150 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 10150 4800 20  0000 C CNN
F 2 "" H 10150 4650 50  0001 C CNN
F 3 "~" H 10150 4650 50  0001 C CNN
	1    10150 4650
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1B9B2E
P 5700 5300
AR Path="/5DEE980E/5E1B9B2E" Ref="C?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9B2E" Ref="C?"  Part="1" 
AR Path="/605BEC04/5E1B9B2E" Ref="C1602"  Part="1" 
AR Path="/5DE49152/5E1B9B2E" Ref="C?"  Part="1" 
F 0 "C1602" V 5728 5410 20  0000 L CNN
F 1 "0.1uF" V 5771 5410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5700 5200 60  0001 C CNN
F 3 "" H 5700 5300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
	1    5700 5300
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1B9B35
P 6000 5150
AR Path="/5DEE980E/5E1B9B35" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9B35" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1B9B35" Ref="R1603"  Part="1" 
AR Path="/5DE49152/5E1B9B35" Ref="R?"  Part="1" 
F 0 "R1603" H 6000 5265 20  0000 C CNN
F 1 "12" H 6000 5222 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 5500 5050 60  0001 C CNN
F 3 "" H 5600 5150 60  0001 C CNN
	1    6000 5150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E1B9B3C
P 6000 5550
AR Path="/5DEE980E/5E1B9B3C" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E1B9B3C" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E1B9B3C" Ref="R1604"  Part="1" 
AR Path="/5DE49152/5E1B9B3C" Ref="R?"  Part="1" 
F 0 "R1604" H 6000 5665 20  0000 C CNN
F 1 "12" H 6000 5622 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 5500 5450 60  0001 C CNN
F 3 "" H 5600 5550 60  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5300 6300 5150
Wire Wire Line
	6300 5150 6200 5150
Wire Wire Line
	6300 5300 6850 5300
Wire Wire Line
	5800 5150 5700 5150
Wire Wire Line
	5700 5150 5700 5200
Wire Wire Line
	5700 5500 5700 5550
Wire Wire Line
	5700 5550 5800 5550
Wire Wire Line
	5700 5550 5500 5550
Connection ~ 5700 5550
Wire Wire Line
	5700 5150 5500 5150
Connection ~ 5700 5150
Connection ~ 10150 4650
Connection ~ 10050 2350
$Comp
L servo:PWR_FLAG #FLG01601
U 1 1 5E4C48A6
P 7850 2500
F 0 "#FLG01601" H 7850 2575 20  0001 C CNN
F 1 "PWR_FLAG" H 7850 2650 20  0000 C CNN
F 2 "" H 7850 2500 50  0001 C CNN
F 3 "~" H 7850 2500 50  0001 C CNN
	1    7850 2500
	1    0    0    -1  
$EndComp
Connection ~ 7850 2500
$Comp
L servo:Resistor R?
U 1 1 5E26C457
P 9500 3300
AR Path="/5DEE980E/5E26C457" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E26C457" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E26C457" Ref="R1613"  Part="1" 
AR Path="/5DE49152/5E26C457" Ref="R?"  Part="1" 
F 0 "R1613" H 9500 3415 20  0000 C CNN
F 1 "2M2" H 9500 3372 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9000 3200 60  0001 C CNN
F 3 "" H 9100 3300 60  0001 C CNN
	1    9500 3300
	1    0    0    -1  
$EndComp
Connection ~ 8800 4050
Text GLabel 9900 6350 2    50   Input ~ 0
VBUS2_N_H
Text GLabel 9850 4050 2    50   Input ~ 0
VBUS1_N_H
Text GLabel 9900 5600 2    50   Input ~ 0
VBUS2_P_H
Text GLabel 9850 3300 2    50   Input ~ 0
VBUS1_P_H
Wire Wire Line
	8900 6350 9900 6350
Wire Wire Line
	9900 5600 9800 5600
Wire Wire Line
	8800 4050 9850 4050
Wire Wire Line
	9700 3300 9850 3300
$Comp
L servo:Resistor R?
U 1 1 5E256879
P 9100 3450
AR Path="/5DEE980E/5E256879" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E256879" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E256879" Ref="R1612"  Part="1" 
AR Path="/5DE49152/5E256879" Ref="R?"  Part="1" 
F 0 "R1612" H 9100 3565 20  0000 C CNN
F 1 "2M2" H 9100 3522 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8600 3350 60  0001 C CNN
F 3 "" H 8700 3450 60  0001 C CNN
	1    9100 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E256880
P 9500 3450
AR Path="/5DEE980E/5E256880" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E256880" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E256880" Ref="R1616"  Part="1" 
AR Path="/5DE49152/5E256880" Ref="R?"  Part="1" 
F 0 "R1616" H 9500 3565 20  0000 C CNN
F 1 "2M2" H 9500 3522 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9000 3350 60  0001 C CNN
F 3 "" H 9100 3450 60  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3450 8800 3450
Wire Wire Line
	8800 3300 8800 3450
Connection ~ 8800 3450
Wire Wire Line
	8800 3450 8800 3550
Wire Wire Line
	9700 3450 9700 3300
Connection ~ 9700 3300
Text Notes 9100 3600 0    20   ~ 0
I've leave 2 for disipation \nporpouses and also for \nachive better precision
$Comp
L servo:Resistor R?
U 1 1 5E2642A2
P 9200 5600
AR Path="/5DEE980E/5E2642A2" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E2642A2" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E2642A2" Ref="R1614"  Part="1" 
AR Path="/5DE49152/5E2642A2" Ref="R?"  Part="1" 
F 0 "R1614" H 9200 5715 20  0000 C CNN
F 1 "2M2" H 9200 5672 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8700 5500 60  0001 C CNN
F 3 "" H 8800 5600 60  0001 C CNN
	1    9200 5600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2642A9
P 9600 5600
AR Path="/5DEE980E/5E2642A9" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E2642A9" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E2642A9" Ref="R1617"  Part="1" 
AR Path="/5DE49152/5E2642A9" Ref="R?"  Part="1" 
F 0 "R1617" H 9600 5715 20  0000 C CNN
F 1 "2M2" H 9600 5672 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 5500 60  0001 C CNN
F 3 "" H 9200 5600 60  0001 C CNN
	1    9600 5600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2642B0
P 9200 5750
AR Path="/5DEE980E/5E2642B0" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E2642B0" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E2642B0" Ref="R1615"  Part="1" 
AR Path="/5DE49152/5E2642B0" Ref="R?"  Part="1" 
F 0 "R1615" H 9200 5865 20  0000 C CNN
F 1 "2M2" H 9200 5822 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8700 5650 60  0001 C CNN
F 3 "" H 8800 5750 60  0001 C CNN
	1    9200 5750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2642B7
P 9600 5750
AR Path="/5DEE980E/5E2642B7" Ref="R?"  Part="1" 
AR Path="/5E2F3BE3/5E2642B7" Ref="R?"  Part="1" 
AR Path="/605BEC04/5E2642B7" Ref="R1618"  Part="1" 
AR Path="/5DE49152/5E2642B7" Ref="R?"  Part="1" 
F 0 "R1618" H 9600 5865 20  0000 C CNN
F 1 "2M2" H 9600 5822 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9100 5650 60  0001 C CNN
F 3 "" H 9200 5750 60  0001 C CNN
	1    9600 5750
	1    0    0    -1  
$EndComp
Text Notes 9200 5900 0    20   ~ 0
I've leave 2 for disipation \nporpouses and also for \nachive better precision
Connection ~ 7950 5500
Wire Wire Line
	9000 5750 8900 5750
Connection ~ 8900 5750
Wire Wire Line
	8900 5750 8900 5600
Wire Wire Line
	9800 5750 9800 5600
Connection ~ 9800 5600
Wire Wire Line
	9400 5750 9400 5600
Connection ~ 9400 5750
Connection ~ 9400 5600
Wire Wire Line
	9300 3450 9300 3300
Connection ~ 9300 3450
Connection ~ 9300 3300
$Comp
L servo:5VB #PWR0158
U 1 1 5E3C1E64
P 10350 1800
F 0 "#PWR0158" H 10350 1600 20  0001 C CNN
F 1 "5VB" H 10350 1957 28  0000 C CNN
F 2 "" H 10350 1800 50  0001 C CNN
F 3 "" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2100 10350 1950
Wire Wire Line
	10450 4400 10450 4250
Wire Wire Line
	10450 4250 11150 4250
Wire Wire Line
	11150 4250 11150 1950
Wire Wire Line
	11150 1950 10350 1950
Connection ~ 10350 1950
Wire Wire Line
	10350 1950 10350 1800
$Comp
L servo:GNDB #PWR0159
U 1 1 5E3D9428
P 10850 5200
F 0 "#PWR0159" H 10850 4950 30  0001 C CNN
F 1 "GNDB" H 10850 5051 20  0000 C CNN
F 2 "" H 10850 5200 50  0001 C CNN
F 3 "" H 10850 5200 50  0001 C CNN
	1    10850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5000 10850 5000
Wire Wire Line
	10850 5000 10850 5200
Wire Wire Line
	10850 5000 10850 2700
Wire Wire Line
	10850 2700 10350 2700
Connection ~ 10850 5000
Text Notes 10050 3700 0    20   ~ 0
No more than 600v
Text Notes 10050 6000 0    20   ~ 0
No more than 600V
$EndSCHEMATC
