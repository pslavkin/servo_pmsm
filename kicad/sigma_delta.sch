EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 20
Title "Shunt Sigma Delta isolated"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6950 1800 0    197  ~ 39
Isolated sigma delta ADC
Text GLabel 2700 3350 0    50   Input ~ 0
SD_CLK_IN1
$Comp
L servo:GND #PWR?
U 1 1 5E4779CD
P 2700 3650
AR Path="/5EC40F3C/5E4779CD" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E4779CD" Ref="#PWR01801"  Part="1" 
F 0 "#PWR01801" H 2700 3400 30  0001 C CNN
F 1 "GND" H 2700 3492 30  0000 C CNN
F 2 "" H 2700 3650 50  0001 C CNN
F 3 "" H 2700 3650 50  0001 C CNN
	1    2700 3650
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5ECC6BF2
P 2750 2650
AR Path="/5EC40F3C/5ECC6BF2" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5ECC6BF2" Ref="#PWR01802"  Part="1" 
F 0 "#PWR01802" H 2755 2857 20  0001 C CNN
F 1 "3V3" H 2755 2807 28  0000 C CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "" H 2750 2650 50  0001 C CNN
	1    2750 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 2650 2750 2850
Text GLabel 2700 2950 0    50   Input ~ 0
SD1_U
Text GLabel 2700 3050 0    50   Input ~ 0
SD1_V
Text GLabel 2700 3150 0    50   Input ~ 0
SD1_W
Text GLabel 2700 3250 0    50   Input ~ 0
SD1_A
Text Notes 3200 2400 0    20   ~ 4
Choose a package pin-to-pin compatible with\nTI ISO7761. But SIlabs cost halt the price as TI
Text Notes 8350 2300 0    20   ~ 0
It's intended for power board circuitery to supply all the signals to\n control board. The control board will use the SD filter to aquire the\n data. All the power part will be at power board.\n\nPWM clk output to powerboard and then come back again to maintain\n delays with resect to SD data channels. On power board you have to\n respect traces length between clk and data\n\nI use 5VH on power side to be less prone to noise error on the way on\n connection the two boards (and I've decided to not supply 3v3H too)\n\nI've added small filter to input/output lines to minimize noise\n
$Comp
L servo:Resistor R?
U 1 1 5E20C447
P 7250 2950
AR Path="/5EC40F3C/5E20C447" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E20C447" Ref="R1802"  Part="1" 
F 0 "R1802" H 7100 3000 20  0000 C CNN
F 1 "10" H 7400 3000 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 2850 60  0001 C CNN
F 3 "" H 6850 2950 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E20E3AA
P 6200 3900
AR Path="/5EC40F3C/5E20E3AA" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E20E3AA" Ref="C1802"  Part="1" 
F 0 "C1802" V 6272 3790 20  0000 R CNN
F 1 "10pF" V 6229 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6200 3800 60  0001 C CNN
F 3 "" H 6200 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6200 3900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D1B
P 7250 3050
AR Path="/5EC40F3C/5E219D1B" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D1B" Ref="R1803"  Part="1" 
F 0 "R1803" H 7100 3100 20  0000 C CNN
F 1 "10" H 7400 3100 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 2950 60  0001 C CNN
F 3 "" H 6850 3050 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D39
P 7250 3150
AR Path="/5EC40F3C/5E219D39" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D39" Ref="R1804"  Part="1" 
F 0 "R1804" H 7100 3200 20  0000 C CNN
F 1 "10" H 7400 3200 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 3050 60  0001 C CNN
F 3 "" H 6850 3150 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D59
P 7250 3250
AR Path="/5EC40F3C/5E219D59" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D59" Ref="R1805"  Part="1" 
F 0 "R1805" H 7100 3300 20  0000 C CNN
F 1 "10" H 7400 3300 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 3150 60  0001 C CNN
F 3 "" H 6850 3250 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D7B
P 7250 3350
AR Path="/5EC40F3C/5E219D7B" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D7B" Ref="R1806"  Part="1" 
F 0 "R1806" H 7100 3400 20  0000 C CNN
F 1 "10" H 7400 3400 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 3250 60  0001 C CNN
F 3 "" H 6850 3350 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3350
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E219DFD
P 6000 3900
AR Path="/5EC40F3C/5E219DFD" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E219DFD" Ref="C1801"  Part="1" 
F 0 "C1801" V 6072 3790 20  0000 R CNN
F 1 "10pF" V 6029 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6000 3800 60  0001 C CNN
F 3 "" H 6000 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6000 3900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E219E27
P 6400 3900
AR Path="/5EC40F3C/5E219E27" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E219E27" Ref="C1803"  Part="1" 
F 0 "C1803" V 6472 3790 20  0000 R CNN
F 1 "10pF" V 6429 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6400 3800 60  0001 C CNN
F 3 "" H 6400 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6400 3900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21BB94
P 6600 3900
AR Path="/5EC40F3C/5E21BB94" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E21BB94" Ref="C1804"  Part="1" 
F 0 "C1804" V 6672 3790 20  0000 R CNN
F 1 "10pF" V 6629 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6600 3800 60  0001 C CNN
F 3 "" H 6600 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6600 3900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21BBF0
P 6800 3900
AR Path="/5EC40F3C/5E21BBF0" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E21BBF0" Ref="C1805"  Part="1" 
F 0 "C1805" V 6872 3790 20  0000 R CNN
F 1 "10pF" V 6829 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6800 3800 60  0001 C CNN
F 3 "" H 6800 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6800 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3700 6000 2950
Wire Wire Line
	6200 3700 6200 3050
Wire Wire Line
	6400 3700 6400 3150
Wire Wire Line
	6600 3700 6600 3250
Wire Wire Line
	6800 3700 6800 3350
Wire Wire Line
	6400 4150 6400 4000
$Comp
L servo:SI8661BD U?
U 1 1 5E238EAA
P 3500 3150
AR Path="/5EC40F3C/5E238EAA" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E238EAA" Ref="U1801"  Part="1" 
F 0 "U1801" H 3356 3693 39  0000 L BNN
F 1 "SI8661BD" H 3356 3618 39  0000 L BNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 2900 3450 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 3400 3750 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8661BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-4411-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    3500 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E245FFB
P 7650 3900
AR Path="/5EC40F3C/5E245FFB" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E245FFB" Ref="C1806"  Part="1" 
F 0 "C1806" V 7722 3790 20  0000 R CNN
F 1 "10pF" V 7679 3790 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7650 3800 60  0001 C CNN
F 3 "" H 7650 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 3700 7650 3450
Wire Wire Line
	7050 3350 6800 3350
Wire Wire Line
	7050 3250 6600 3250
Wire Wire Line
	7050 3150 6400 3150
Wire Wire Line
	6200 3050 7050 3050
Wire Wire Line
	7050 2950 6000 2950
Wire Wire Line
	2800 3450 2700 3450
Wire Wire Line
	2700 3350 2800 3350
Wire Wire Line
	2800 3250 2700 3250
Wire Wire Line
	2700 3150 2800 3150
Wire Wire Line
	2800 3050 2700 3050
Wire Wire Line
	2700 2950 2800 2950
Wire Wire Line
	2800 2850 2750 2850
Wire Wire Line
	4200 2850 4350 2850
Wire Wire Line
	4200 3550 4350 3550
Connection ~ 6800 3350
Wire Wire Line
	6600 3250 4200 3250
Connection ~ 6600 3250
Wire Wire Line
	6400 3150 4200 3150
Connection ~ 6400 3150
Wire Wire Line
	4200 3050 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6000 2950 4200 2950
Connection ~ 6000 2950
Wire Wire Line
	2800 3550 2700 3550
Wire Wire Line
	2700 3550 2700 3650
Wire Wire Line
	7450 2950 7900 2950
Wire Wire Line
	7900 3050 7450 3050
Wire Wire Line
	7450 3150 7900 3150
Wire Wire Line
	7900 3250 7450 3250
Wire Wire Line
	7450 3350 7900 3350
$Comp
L servo:GND #PWR?
U 1 1 5E2A4858
P 15100 3650
AR Path="/5EC40F3C/5E2A4858" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A4858" Ref="#PWR01810"  Part="1" 
F 0 "#PWR01810" H 15100 3400 30  0001 C CNN
F 1 "GND" H 15100 3492 30  0000 C CNN
F 2 "" H 15100 3650 50  0001 C CNN
F 3 "" H 15100 3650 50  0001 C CNN
	1    15100 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E2A485F
P 15050 2650
AR Path="/5EC40F3C/5E2A485F" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A485F" Ref="#PWR01809"  Part="1" 
F 0 "#PWR01809" H 15055 2857 20  0001 C CNN
F 1 "3V3" H 15055 2807 28  0000 C CNN
F 2 "" H 15050 2650 50  0001 C CNN
F 3 "" H 15050 2650 50  0001 C CNN
	1    15050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 2650 15050 2850
Text Notes 14550 2250 2    20   ~ 4
Choose a package pin-to-pin compatible with\nTI ISO7761. But SIlabs cost halt the price as TI
$Comp
L servo:Resistor R?
U 1 1 5E2A487E
P 10600 2950
AR Path="/5EC40F3C/5E2A487E" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A487E" Ref="R1807"  Part="1" 
F 0 "R1807" H 10450 3000 20  0000 C CNN
F 1 "10" H 10750 3000 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 2850 60  0001 C CNN
F 3 "" H 10200 2950 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 2950
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A4885
P 11650 3900
AR Path="/5EC40F3C/5E2A4885" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A4885" Ref="C1811"  Part="1" 
F 0 "C1811" V 11800 3950 20  0000 R CNN
F 1 "10pF" V 11750 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11650 3800 60  0001 C CNN
F 3 "" H 11650 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11650 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A488C
P 10600 3050
AR Path="/5EC40F3C/5E2A488C" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A488C" Ref="R1808"  Part="1" 
F 0 "R1808" H 10450 3100 20  0000 C CNN
F 1 "10" H 10750 3100 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 2950 60  0001 C CNN
F 3 "" H 10200 3050 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 3050
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A4893
P 10600 3150
AR Path="/5EC40F3C/5E2A4893" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A4893" Ref="R1809"  Part="1" 
F 0 "R1809" H 10450 3200 20  0000 C CNN
F 1 "10" H 10750 3200 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 3050 60  0001 C CNN
F 3 "" H 10200 3150 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A489A
P 10600 3250
AR Path="/5EC40F3C/5E2A489A" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A489A" Ref="R1810"  Part="1" 
F 0 "R1810" H 10450 3300 20  0000 C CNN
F 1 "10" H 10750 3300 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 3150 60  0001 C CNN
F 3 "" H 10200 3250 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 3250
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A48A1
P 10600 3350
AR Path="/5EC40F3C/5E2A48A1" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A48A1" Ref="R1811"  Part="1" 
F 0 "R1811" H 10450 3400 20  0000 C CNN
F 1 "10" H 10750 3400 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 3250 60  0001 C CNN
F 3 "" H 10200 3350 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 3350
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48AF
P 11850 3900
AR Path="/5EC40F3C/5E2A48AF" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48AF" Ref="C1812"  Part="1" 
F 0 "C1812" V 12000 3950 20  0000 L CNN
F 1 "10pF" V 11950 3900 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 11850 3800 60  0001 C CNN
F 3 "" H 11850 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11850 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48B6
P 11450 3900
AR Path="/5EC40F3C/5E2A48B6" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48B6" Ref="C1810"  Part="1" 
F 0 "C1810" V 11600 3950 20  0000 R CNN
F 1 "10pF" V 11550 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11450 3800 60  0001 C CNN
F 3 "" H 11450 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11450 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48BD
P 11250 3900
AR Path="/5EC40F3C/5E2A48BD" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48BD" Ref="C1809"  Part="1" 
F 0 "C1809" V 11400 3950 20  0000 R CNN
F 1 "10pF" V 11350 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11250 3800 60  0001 C CNN
F 3 "" H 11250 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11250 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48C4
P 11050 3900
AR Path="/5EC40F3C/5E2A48C4" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48C4" Ref="C1808"  Part="1" 
F 0 "C1808" V 11200 3950 20  0000 R CNN
F 1 "10pF" V 11150 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11050 3800 60  0001 C CNN
F 3 "" H 11050 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11050 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	11850 3700 11850 2950
Wire Wire Line
	11650 3700 11650 3050
Wire Wire Line
	11450 3700 11450 3150
Wire Wire Line
	11250 3700 11250 3250
Wire Wire Line
	11050 3700 11050 3350
$Comp
L servo:SI8661BD U?
U 1 1 5E2A48DE
P 14300 3150
AR Path="/5EC40F3C/5E2A48DE" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E2A48DE" Ref="U1802"  Part="1" 
F 0 "U1802" H 14156 3693 39  0000 L BNN
F 1 "SI8661BD" H 14156 3618 39  0000 L BNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 13700 3450 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 14200 3750 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8661BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-4411-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    14300 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48E5
P 10150 3900
AR Path="/5EC40F3C/5E2A48E5" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48E5" Ref="C1807"  Part="1" 
F 0 "C1807" V 10300 3950 20  0000 R CNN
F 1 "10pF" V 10250 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10150 3800 60  0001 C CNN
F 3 "" H 10150 3900 60  0000 C CNN
F 4 "CAP CER 10PF 16V C0G/NP0 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012006017" H 0   0   50  0001 C CNN "PartNumber"
F 6 "732-7760-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.02500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10150 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	10150 3700 10150 3450
Wire Wire Line
	10800 3350 11050 3350
Wire Wire Line
	10800 3250 11250 3250
Wire Wire Line
	10800 3150 11450 3150
Wire Wire Line
	11650 3050 10800 3050
Wire Wire Line
	10800 2950 11850 2950
Wire Wire Line
	15000 3450 15100 3450
Wire Wire Line
	15100 3350 15000 3350
Wire Wire Line
	15000 3250 15100 3250
Wire Wire Line
	15100 3150 15000 3150
Wire Wire Line
	15000 3050 15100 3050
Wire Wire Line
	15100 2950 15000 2950
Wire Wire Line
	15000 2850 15050 2850
Wire Wire Line
	13600 2850 13450 2850
Wire Wire Line
	13600 3550 13450 3550
Wire Wire Line
	11250 3250 13600 3250
Connection ~ 11250 3250
Wire Wire Line
	11450 3150 13600 3150
Connection ~ 11450 3150
Wire Wire Line
	13600 3050 11650 3050
Connection ~ 11650 3050
Wire Wire Line
	11850 2950 13600 2950
Connection ~ 11850 2950
Wire Wire Line
	15000 3550 15100 3550
Wire Wire Line
	15100 3550 15100 3650
Wire Wire Line
	10400 2950 9950 2950
Wire Wire Line
	9950 3050 10400 3050
Wire Wire Line
	10400 3150 9950 3150
Wire Wire Line
	9950 3250 10400 3250
Wire Wire Line
	10400 3350 9950 3350
Wire Wire Line
	6000 4150 6000 4000
Wire Wire Line
	6200 4150 6200 4000
Wire Wire Line
	6600 4150 6600 4000
Wire Wire Line
	6800 4150 6800 4000
Wire Wire Line
	7650 4150 7650 4000
Wire Wire Line
	6000 4150 6200 4150
Connection ~ 6200 4150
Wire Wire Line
	6200 4150 6400 4150
Connection ~ 6400 4150
Wire Wire Line
	6400 4150 6600 4150
Connection ~ 6600 4150
Wire Wire Line
	6600 4150 6800 4150
Wire Wire Line
	11250 4150 11250 4000
Wire Wire Line
	10150 4150 10150 4000
Wire Wire Line
	11050 4150 11050 4000
Wire Wire Line
	11450 4150 11450 4000
Wire Wire Line
	11650 4150 11650 4000
Wire Wire Line
	11850 4150 11850 4000
Connection ~ 11050 4150
Wire Wire Line
	11050 4150 11250 4150
Connection ~ 11250 4150
Wire Wire Line
	11250 4150 11450 4150
Connection ~ 11450 4150
Wire Wire Line
	11450 4150 11650 4150
Connection ~ 11650 4150
Wire Wire Line
	11650 4150 11850 4150
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E51FE73
P 5200 3900
AR Path="/5DDE8C5E/5E51FE73" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E51FE73" Ref="U1803"  Part="1" 
F 0 "U1803" H 5075 3733 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 5075 3674 20  0000 C CNN
F 2 "servo:SOT-23-6" H 4700 4100 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4900 4350 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3800 4550 3800
Wire Wire Line
	4550 3450 4550 3700
Wire Wire Line
	4550 3700 4700 3700
Wire Wire Line
	4200 3450 4550 3450
Wire Wire Line
	5450 3700 5650 3700
Wire Wire Line
	5650 3700 5650 3450
Wire Wire Line
	4700 3900 4650 3900
Wire Wire Line
	5450 3900 5550 3900
Wire Wire Line
	5550 3900 5550 3450
Wire Wire Line
	5550 3450 5250 3450
Wire Wire Line
	5250 3450 5250 3350
Wire Wire Line
	4200 3350 5250 3350
Wire Wire Line
	4650 3900 4650 3550
Wire Wire Line
	4650 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3350
Wire Wire Line
	5350 3350 6800 3350
Wire Wire Line
	5450 3800 5750 3800
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E553628
P 12600 3700
AR Path="/5DDE8C5E/5E553628" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E553628" Ref="U1804"  Part="1" 
F 0 "U1804" H 12475 3533 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 12475 3474 20  0000 C CNN
F 2 "servo:SOT-23-6" H 12100 3900 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 12300 4150 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   -200 50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   -200 50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   -200 50  0001 C CNN "digikey"
F 7 "0.30200" H 0   -200 50  0001 C CNN "price@10"
F 8 "0" H 0   -200 50  0001 C CNN "bom_1"
F 9 "1" H 0   -200 50  0001 C CNN "bom_2"
F 10 "1" H 0   -200 50  0001 C CNN "bom_3"
	1    12600 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	13100 3800 13250 3800
Wire Wire Line
	13250 3800 13250 4150
Wire Wire Line
	13250 3450 13250 3700
Wire Wire Line
	13250 3700 13100 3700
Wire Wire Line
	12350 3700 12150 3700
Wire Wire Line
	12150 3700 12150 3450
Wire Wire Line
	13100 3900 13150 3900
Wire Wire Line
	12350 3900 12250 3900
Wire Wire Line
	12250 3900 12250 3450
Wire Wire Line
	12250 3450 12550 3450
Wire Wire Line
	12550 3450 12550 3350
Wire Wire Line
	13150 3900 13150 3550
Wire Wire Line
	13150 3550 12450 3550
Wire Wire Line
	12450 3550 12450 3350
Wire Wire Line
	13250 3450 13600 3450
Wire Wire Line
	13600 3350 12550 3350
Wire Wire Line
	11050 3350 12450 3350
Connection ~ 11050 3350
Wire Wire Line
	10150 3450 9950 3450
$Comp
L servo:Resistor R?
U 1 1 5E389E6E
P 10600 3450
AR Path="/5EC40F3C/5E389E6E" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E389E6E" Ref="R1812"  Part="1" 
F 0 "R1812" H 10450 3500 20  0000 C CNN
F 1 "10" H 10750 3500 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10100 3350 60  0001 C CNN
F 3 "" H 10200 3450 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10150 3450 10400 3450
Connection ~ 10150 3450
Wire Wire Line
	12150 3450 10800 3450
Wire Wire Line
	10150 4150 11050 4150
$Comp
L servo:Resistor R?
U 1 1 5E39D55F
P 7250 3450
AR Path="/5EC40F3C/5E39D55F" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E39D55F" Ref="R1801"  Part="1" 
F 0 "R1801" H 7100 3500 20  0000 C CNN
F 1 "10" H 7400 3500 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6750 3350 60  0001 C CNN
F 3 "" H 6850 3450 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3450 7900 3450
Wire Wire Line
	6800 4150 7650 4150
Connection ~ 6800 4150
Wire Wire Line
	7650 3450 7450 3450
Connection ~ 7650 3450
Wire Wire Line
	7050 3450 5650 3450
$Comp
L servo:Capacitor C?
U 1 1 5E3C0294
P 4450 2700
AR Path="/5EC40F3C/5E3C0294" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3C0294" Ref="C1814"  Part="1" 
F 0 "C1814" V 4522 2590 20  0000 R CNN
F 1 "0.1uF" V 4479 2590 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4450 2600 60  0001 C CNN
F 3 "" H 4450 2700 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4450 2700
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3C05B9
P 2300 2700
AR Path="/5EC40F3C/5E3C05B9" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3C05B9" Ref="C1813"  Part="1" 
F 0 "C1813" V 2450 2750 20  0000 R CNN
F 1 "0.1uF" V 2400 2800 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 2300 2600 60  0001 C CNN
F 3 "" H 2300 2700 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2300 2700
	0    -1   -1   0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E3C565E
P 2300 2500
AR Path="/5EC40F3C/5E3C565E" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E3C565E" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 2305 2707 20  0001 C CNN
F 1 "3V3" H 2305 2657 28  0000 C CNN
F 2 "" H 2300 2500 50  0001 C CNN
F 3 "" H 2300 2500 50  0001 C CNN
	1    2300 2500
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E3C5723
P 2300 2800
AR Path="/5EC40F3C/5E3C5723" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E3C5723" Ref="#PWR0217"  Part="1" 
F 0 "#PWR0217" H 2300 2550 30  0001 C CNN
F 1 "GND" H 2300 2642 30  0000 C CNN
F 2 "" H 2300 2800 50  0001 C CNN
F 3 "" H 2300 2800 50  0001 C CNN
	1    2300 2800
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3C59FB
P 13350 2700
AR Path="/5EC40F3C/5E3C59FB" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3C59FB" Ref="C1817"  Part="1" 
F 0 "C1817" V 13422 2809 20  0000 L CNN
F 1 "0.1uF" V 13379 2809 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 13350 2600 60  0001 C CNN
F 3 "" H 13350 2700 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13350 2700
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3CAD23
P 15250 2650
AR Path="/5EC40F3C/5E3CAD23" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3CAD23" Ref="C1818"  Part="1" 
F 0 "C1818" V 15322 2540 20  0000 R CNN
F 1 "0.1uF" V 15279 2540 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 15250 2550 60  0001 C CNN
F 3 "" H 15250 2650 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    15250 2650
	0    -1   -1   0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E3CAD2A
P 15250 2450
AR Path="/5EC40F3C/5E3CAD2A" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E3CAD2A" Ref="#PWR0234"  Part="1" 
F 0 "#PWR0234" H 15255 2657 20  0001 C CNN
F 1 "3V3" H 15255 2607 28  0000 C CNN
F 2 "" H 15250 2450 50  0001 C CNN
F 3 "" H 15250 2450 50  0001 C CNN
	1    15250 2450
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E3CAD30
P 15250 2750
AR Path="/5EC40F3C/5E3CAD30" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E3CAD30" Ref="#PWR0245"  Part="1" 
F 0 "#PWR0245" H 15250 2500 30  0001 C CNN
F 1 "GND" H 15150 2700 30  0000 C CNN
F 2 "" H 15250 2750 50  0001 C CNN
F 3 "" H 15250 2750 50  0001 C CNN
	1    15250 2750
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3D00EA
P 12050 4050
AR Path="/5EC40F3C/5E3D00EA" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3D00EA" Ref="C1816"  Part="1" 
F 0 "C1816" V 12200 4100 20  0000 R CNN
F 1 "0.1uF" V 12150 4150 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 12050 3950 60  0001 C CNN
F 3 "" H 12050 4050 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    12050 4050
	0    -1   -1   0   
$EndComp
Text GLabel 2700 3450 0    50   Input ~ 0
SD_CLK_OUT
Text GLabel 15100 3350 2    50   Input ~ 0
SD_CLK_IN2
Text GLabel 15100 2950 2    50   Input ~ 0
SD2_U
Text GLabel 15100 3050 2    50   Input ~ 0
SD2_V
Text GLabel 15100 3150 2    50   Input ~ 0
SD2_W
Text GLabel 15100 3250 2    50   Input ~ 0
SD2_A
Text GLabel 15100 3450 2    50   Input ~ 0
SD_CLK_OUT
Text GLabel 9950 3350 0    50   Input ~ 0
SD_CLK_IN2_H
Text GLabel 9950 2950 0    50   Input ~ 0
SD2_U_H
Text GLabel 9950 3050 0    50   Input ~ 0
SD2_V_H
Text GLabel 9950 3150 0    50   Input ~ 0
SD2_W_H
Text GLabel 9950 3250 0    50   Input ~ 0
SD2_A_H
Text GLabel 9950 3450 0    50   Input ~ 0
SD_CLK_OUT2_H
Text GLabel 7900 3350 2    50   Input ~ 0
SD_CLK_IN1_H
Text GLabel 7900 2950 2    50   Input ~ 0
SD1_U_H
Text GLabel 7900 3050 2    50   Input ~ 0
SD1_V_H
Text GLabel 7900 3150 2    50   Input ~ 0
SD1_W_H
Text GLabel 7900 3250 2    50   Input ~ 0
SD1_A_H
Text GLabel 7900 3450 2    50   Input ~ 0
SD_CLK_OUT1_H
$Comp
L servo:5VP #PWR?
U 1 1 5E5CF89A
P 9000 2400
AR Path="/5DDE8C5E/5E5CF89A" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E5CF89A" Ref="#PWR0215"  Part="1" 
F 0 "#PWR0215" H 9000 2200 20  0001 C CNN
F 1 "5VP" H 9000 2557 28  0000 C CNN
F 2 "" H 9000 2400 50  0001 C CNN
F 3 "" H 9000 2400 50  0001 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2400 9000 2450
Wire Wire Line
	9000 2450 5750 2450
Wire Wire Line
	4350 2450 4350 2850
Wire Wire Line
	4450 2500 4450 2450
Connection ~ 4450 2450
Wire Wire Line
	4450 2450 4350 2450
Connection ~ 9000 2450
Wire Wire Line
	13450 2450 13450 2850
Wire Wire Line
	9000 2450 12050 2450
Wire Wire Line
	5750 2450 5750 3800
Connection ~ 5750 2450
Wire Wire Line
	5750 2450 4450 2450
Connection ~ 12050 2450
Wire Wire Line
	12050 2450 12050 3800
Wire Wire Line
	12350 3800 12050 3800
Connection ~ 12050 3800
Wire Wire Line
	12050 3800 12050 3850
$Comp
L servo:GNDP #PWR?
U 1 1 5EC2E148
P 8900 4250
AR Path="/5DDE8C5E/5EC2E148" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/5EC2E148" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5EC2E148" Ref="#PWR0246"  Part="1" 
F 0 "#PWR0246" H 8900 4000 30  0001 C CNN
F 1 "GNDP" H 8900 4101 20  0000 C CNN
F 2 "" H 8900 4250 50  0001 C CNN
F 3 "" H 8900 4250 50  0001 C CNN
	1    8900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4150 8900 4250
Connection ~ 5750 3800
$Comp
L servo:Capacitor C?
U 1 1 5E3C004E
P 5750 4000
AR Path="/5EC40F3C/5E3C004E" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E3C004E" Ref="C1815"  Part="1" 
F 0 "C1815" V 5822 3890 20  0000 R CNN
F 1 "0.1uF" V 5779 3890 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 5750 3900 60  0001 C CNN
F 3 "" H 5750 4000 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5750 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 4150 8900 4150
Connection ~ 10150 4150
Connection ~ 7650 4150
Connection ~ 8900 4150
Wire Wire Line
	8900 4150 7650 4150
Wire Wire Line
	11850 4150 12050 4150
Connection ~ 11850 4150
Wire Wire Line
	6000 4150 5750 4150
Wire Wire Line
	5750 4150 5750 4100
Connection ~ 6000 4150
Connection ~ 12050 4150
Wire Wire Line
	13450 3550 13450 4150
Wire Wire Line
	12050 4150 13250 4150
Connection ~ 13250 4150
Wire Wire Line
	13250 4150 13350 4150
Wire Wire Line
	5750 4150 4550 4150
Wire Wire Line
	4550 3800 4550 4150
Connection ~ 5750 4150
Wire Wire Line
	4350 4150 4450 4150
Wire Wire Line
	4350 3550 4350 4150
Connection ~ 4550 4150
Wire Wire Line
	4450 2800 4450 4150
Connection ~ 4450 4150
Wire Wire Line
	4450 4150 4550 4150
Wire Wire Line
	13350 2800 13350 4150
Connection ~ 13350 4150
Wire Wire Line
	13350 4150 13450 4150
Wire Wire Line
	13350 2500 13350 2450
Connection ~ 13350 2450
Wire Wire Line
	13350 2450 13450 2450
Wire Wire Line
	12050 2450 13350 2450
$EndSCHEMATC
