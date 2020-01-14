EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 18
Title "Shunt Sigma Delta isolated"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5000 1700 0    197  ~ 39
Isolated sigma delta ADC
Text GLabel 1900 3350 0    50   Input ~ 0
SD_A_CLK
$Comp
L servo:GND #PWR?
U 1 1 5E4779CD
P 1900 3650
AR Path="/5EC40F3C/5E4779CD" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E4779CD" Ref="#PWR01801"  Part="1" 
F 0 "#PWR01801" H 1900 3400 30  0001 C CNN
F 1 "GND" H 1900 3492 30  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	-1   0    0    -1  
$EndComp
Text GLabel 1900 3450 0    50   Input ~ 0
PWM4SD_CLK
$Comp
L servo:3V3 #PWR?
U 1 1 5ECC6BF2
P 1950 2650
AR Path="/5EC40F3C/5ECC6BF2" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5ECC6BF2" Ref="#PWR01802"  Part="1" 
F 0 "#PWR01802" H 1955 2857 20  0001 C CNN
F 1 "3V3" H 1955 2807 28  0000 C CNN
F 2 "" H 1950 2650 50  0001 C CNN
F 3 "" H 1950 2650 50  0001 C CNN
	1    1950 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 2650 1950 2850
Text GLabel 1900 2950 0    50   Input ~ 0
SD_A1
Text GLabel 1900 3050 0    50   Input ~ 0
SD_A2
Text GLabel 1900 3150 0    50   Input ~ 0
SD_A3
Text GLabel 1900 3250 0    50   Input ~ 0
SD_A4
$Comp
L servo:GNDH #PWR?
U 1 1 5ECC8031
P 3550 3650
AR Path="/5DDE8C5E/5ECC8031" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/5ECC8031" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5ECC8031" Ref="#PWR01804"  Part="1" 
F 0 "#PWR01804" H 3550 3400 30  0001 C CNN
F 1 "GNDH" H 3550 3492 30  0000 C CNN
F 2 "" H 3550 3650 50  0001 C CNN
F 3 "" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
Text Notes 2300 2550 0    20   ~ 4
Choose a package pin-to-pin compatible with\nTI ISO7761. But SIlabs cost halt the price as TI
Text Notes 6400 2200 0    20   ~ 0
It's intended for power board circuitery to supply all the signals to\n control board. The control board will use the SD filter to aquire the\n data. All the power part will be at power board.\n\nPWM clk output to powerboard and then come back again to maintain\n delays with resect to SD data channels. On power board you have to\n respect traces length between clk and data\n\nI use 5VH on power side to be less prone to noise error on the way on\n connection the two boards (and I've decided to not supply 3v3H too)\n\nI've added small filter to input/output lines to minimize noise\n
$Comp
L servo:5VH #PWR?
U 1 1 5EF378C8
P 3550 2750
AR Path="/5EC40F3C/5EF378C8" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5EF378C8" Ref="#PWR01803"  Part="1" 
F 0 "#PWR01803" H 3550 2550 20  0001 C CNN
F 1 "5VH" H 3555 2907 28  0000 C CNN
F 2 "" H 3550 2750 50  0001 C CNN
F 3 "" H 3550 2750 50  0001 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E20C447
P 5450 2950
AR Path="/5EC40F3C/5E20C447" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E20C447" Ref="R1802"  Part="1" 
F 0 "R1802" H 5300 3000 20  0000 C CNN
F 1 "10e" H 5600 3000 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 2850 60  0001 C CNN
F 3 "" H 5050 2950 60  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E20E3AA
P 4400 3800
AR Path="/5EC40F3C/5E20E3AA" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E20E3AA" Ref="C1802"  Part="1" 
F 0 "C1802" V 4550 3850 20  0000 R CNN
F 1 "100pF" V 4500 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4400 3700 60  0001 C CNN
F 3 "" H 4400 3800 60  0000 C CNN
	1    4400 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D1B
P 5450 3050
AR Path="/5EC40F3C/5E219D1B" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D1B" Ref="R1803"  Part="1" 
F 0 "R1803" H 5300 3100 20  0000 C CNN
F 1 "10e" H 5600 3100 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 2950 60  0001 C CNN
F 3 "" H 5050 3050 60  0001 C CNN
	1    5450 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D39
P 5450 3150
AR Path="/5EC40F3C/5E219D39" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D39" Ref="R1804"  Part="1" 
F 0 "R1804" H 5300 3200 20  0000 C CNN
F 1 "10e" H 5600 3200 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 3050 60  0001 C CNN
F 3 "" H 5050 3150 60  0001 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D59
P 5450 3250
AR Path="/5EC40F3C/5E219D59" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D59" Ref="R1805"  Part="1" 
F 0 "R1805" H 5300 3300 20  0000 C CNN
F 1 "10e" H 5600 3300 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 3150 60  0001 C CNN
F 3 "" H 5050 3250 60  0001 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219D7B
P 5450 3350
AR Path="/5EC40F3C/5E219D7B" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219D7B" Ref="R1806"  Part="1" 
F 0 "R1806" H 5300 3400 20  0000 C CNN
F 1 "10e" H 5600 3400 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 3250 60  0001 C CNN
F 3 "" H 5050 3350 60  0001 C CNN
	1    5450 3350
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E219DA7
P 3850 3450
AR Path="/5EC40F3C/5E219DA7" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E219DA7" Ref="R1801"  Part="1" 
F 0 "R1801" H 3700 3500 20  0000 C CNN
F 1 "10e" H 4000 3500 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 3350 60  0001 C CNN
F 3 "" H 3450 3450 60  0001 C CNN
	1    3850 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E219DFD
P 4200 3800
AR Path="/5EC40F3C/5E219DFD" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E219DFD" Ref="C1801"  Part="1" 
F 0 "C1801" V 4350 3850 20  0000 L CNN
F 1 "100pF" V 4300 3800 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 4200 3700 60  0001 C CNN
F 3 "" H 4200 3800 60  0000 C CNN
	1    4200 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E219E27
P 4600 3800
AR Path="/5EC40F3C/5E219E27" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E219E27" Ref="C1803"  Part="1" 
F 0 "C1803" V 4750 3850 20  0000 R CNN
F 1 "100pF" V 4700 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4600 3700 60  0001 C CNN
F 3 "" H 4600 3800 60  0000 C CNN
	1    4600 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21BB94
P 4800 3800
AR Path="/5EC40F3C/5E21BB94" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E21BB94" Ref="C1804"  Part="1" 
F 0 "C1804" V 4950 3850 20  0000 R CNN
F 1 "100pF" V 4900 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4800 3700 60  0001 C CNN
F 3 "" H 4800 3800 60  0000 C CNN
	1    4800 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21BBF0
P 5000 3800
AR Path="/5EC40F3C/5E21BBF0" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E21BBF0" Ref="C1805"  Part="1" 
F 0 "C1805" V 5150 3850 20  0000 R CNN
F 1 "100pF" V 5100 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 5000 3700 60  0001 C CNN
F 3 "" H 5000 3800 60  0000 C CNN
	1    5000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3600 4200 2950
Wire Wire Line
	4400 3600 4400 3050
Wire Wire Line
	4600 3600 4600 3150
Wire Wire Line
	4800 3600 4800 3250
Wire Wire Line
	5000 3600 5000 3350
$Comp
L servo:GNDH #PWR?
U 1 1 5E224BD0
P 4600 4150
AR Path="/5DDE8C5E/5E224BD0" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/5E224BD0" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E224BD0" Ref="#PWR01805"  Part="1" 
F 0 "#PWR01805" H 4600 3900 30  0001 C CNN
F 1 "GNDH" H 4600 3992 30  0000 C CNN
F 2 "" H 4600 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4050 4600 3900
$Comp
L servo:SI8661BD U?
U 1 1 5E238EAA
P 2700 3150
AR Path="/5EC40F3C/5E238EAA" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E238EAA" Ref="U1801"  Part="1" 
F 0 "U1801" H 2556 3693 39  0000 L BNN
F 1 "SI8661BD" H 2556 3618 39  0000 L BNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2100 3450 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2600 3750 60  0001 C CNN
	1    2700 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E245FFB
P 5200 3800
AR Path="/5EC40F3C/5E245FFB" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E245FFB" Ref="C1806"  Part="1" 
F 0 "C1806" V 5350 3850 20  0000 R CNN
F 1 "100pF" V 5300 3900 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 5200 3700 60  0001 C CNN
F 3 "" H 5200 3800 60  0000 C CNN
	1    5200 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3600 5200 3450
Wire Wire Line
	5200 3450 4050 3450
Wire Wire Line
	5250 3350 5000 3350
Wire Wire Line
	5250 3250 4800 3250
Wire Wire Line
	5250 3150 4600 3150
Wire Wire Line
	4400 3050 5250 3050
Wire Wire Line
	5250 2950 4200 2950
Wire Wire Line
	5200 3450 6100 3450
Connection ~ 5200 3450
Wire Wire Line
	2000 3450 1900 3450
Wire Wire Line
	1900 3350 2000 3350
Wire Wire Line
	2000 3250 1900 3250
Wire Wire Line
	1900 3150 2000 3150
Wire Wire Line
	2000 3050 1900 3050
Wire Wire Line
	1900 2950 2000 2950
Wire Wire Line
	2000 2850 1950 2850
Wire Wire Line
	3400 2850 3550 2850
Wire Wire Line
	3400 3550 3550 3550
Wire Wire Line
	3550 3550 3550 3650
Wire Wire Line
	3400 3450 3650 3450
Wire Wire Line
	3400 3350 5000 3350
Connection ~ 5000 3350
Wire Wire Line
	4800 3250 3400 3250
Connection ~ 4800 3250
Wire Wire Line
	4600 3150 3400 3150
Connection ~ 4600 3150
Wire Wire Line
	3400 3050 4400 3050
Connection ~ 4400 3050
Wire Wire Line
	4200 2950 3400 2950
Connection ~ 4200 2950
Wire Wire Line
	2000 3550 1900 3550
Wire Wire Line
	1900 3550 1900 3650
Wire Wire Line
	3550 2750 3550 2850
Wire Wire Line
	5650 2950 6100 2950
Wire Wire Line
	6100 3050 5650 3050
Wire Wire Line
	5650 3150 6100 3150
Wire Wire Line
	6100 3250 5650 3250
Wire Wire Line
	5650 3350 6100 3350
Text GLabel 12150 3350 2    50   Input ~ 0
SD_B_CLK
$Comp
L servo:GND #PWR?
U 1 1 5E2A4858
P 12150 3650
AR Path="/5EC40F3C/5E2A4858" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A4858" Ref="#PWR01810"  Part="1" 
F 0 "#PWR01810" H 12150 3400 30  0001 C CNN
F 1 "GND" H 12150 3492 30  0000 C CNN
F 2 "" H 12150 3650 50  0001 C CNN
F 3 "" H 12150 3650 50  0001 C CNN
	1    12150 3650
	1    0    0    -1  
$EndComp
Text GLabel 12150 3450 2    50   Input ~ 0
PWM4SD_CLK
$Comp
L servo:3V3 #PWR?
U 1 1 5E2A485F
P 12100 2650
AR Path="/5EC40F3C/5E2A485F" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A485F" Ref="#PWR01809"  Part="1" 
F 0 "#PWR01809" H 12105 2857 20  0001 C CNN
F 1 "3V3" H 12105 2807 28  0000 C CNN
F 2 "" H 12100 2650 50  0001 C CNN
F 3 "" H 12100 2650 50  0001 C CNN
	1    12100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 2650 12100 2850
Text GLabel 12150 2950 2    50   Input ~ 0
SD_B1
Text GLabel 12150 3050 2    50   Input ~ 0
SD_B2
Text GLabel 12150 3150 2    50   Input ~ 0
SD_B3
Text GLabel 12150 3250 2    50   Input ~ 0
SD_B4
$Comp
L servo:GNDH #PWR?
U 1 1 5E2A486A
P 10500 3650
AR Path="/5DDE8C5E/5E2A486A" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/5E2A486A" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A486A" Ref="#PWR01808"  Part="1" 
F 0 "#PWR01808" H 10500 3400 30  0001 C CNN
F 1 "GNDH" H 10500 3492 30  0000 C CNN
F 2 "" H 10500 3650 50  0001 C CNN
F 3 "" H 10500 3650 50  0001 C CNN
	1    10500 3650
	-1   0    0    -1  
$EndComp
Text Notes 11750 2550 2    20   ~ 4
Choose a package pin-to-pin compatible with\nTI ISO7761. But SIlabs cost halt the price as TI
$Comp
L servo:5VH #PWR?
U 1 1 5E2A4878
P 10500 2750
AR Path="/5EC40F3C/5E2A4878" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5E2A4878" Ref="#PWR01807"  Part="1" 
F 0 "#PWR01807" H 10500 2550 20  0001 C CNN
F 1 "5VH" H 10505 2907 28  0000 C CNN
F 2 "" H 10500 2750 50  0001 C CNN
F 3 "" H 10500 2750 50  0001 C CNN
	1    10500 2750
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A487E
P 8600 2950
AR Path="/5EC40F3C/5E2A487E" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A487E" Ref="R1807"  Part="1" 
F 0 "R1807" H 8450 3000 20  0000 C CNN
F 1 "10e" H 8750 3000 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 2850 60  0001 C CNN
F 3 "" H 8200 2950 60  0001 C CNN
	1    8600 2950
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A4885
P 9650 3900
AR Path="/5EC40F3C/5E2A4885" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A4885" Ref="C1811"  Part="1" 
F 0 "C1811" V 9800 3950 20  0000 R CNN
F 1 "100pF" V 9750 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9650 3800 60  0001 C CNN
F 3 "" H 9650 3900 60  0000 C CNN
	1    9650 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A488C
P 8600 3050
AR Path="/5EC40F3C/5E2A488C" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A488C" Ref="R1808"  Part="1" 
F 0 "R1808" H 8450 3100 20  0000 C CNN
F 1 "10e" H 8750 3100 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 2950 60  0001 C CNN
F 3 "" H 8200 3050 60  0001 C CNN
	1    8600 3050
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A4893
P 8600 3150
AR Path="/5EC40F3C/5E2A4893" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A4893" Ref="R1809"  Part="1" 
F 0 "R1809" H 8450 3200 20  0000 C CNN
F 1 "10e" H 8750 3200 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 3050 60  0001 C CNN
F 3 "" H 8200 3150 60  0001 C CNN
	1    8600 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A489A
P 8600 3250
AR Path="/5EC40F3C/5E2A489A" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A489A" Ref="R1810"  Part="1" 
F 0 "R1810" H 8450 3300 20  0000 C CNN
F 1 "10e" H 8750 3300 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 3150 60  0001 C CNN
F 3 "" H 8200 3250 60  0001 C CNN
	1    8600 3250
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A48A1
P 8600 3350
AR Path="/5EC40F3C/5E2A48A1" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A48A1" Ref="R1811"  Part="1" 
F 0 "R1811" H 8450 3400 20  0000 C CNN
F 1 "10e" H 8750 3400 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 3250 60  0001 C CNN
F 3 "" H 8200 3350 60  0001 C CNN
	1    8600 3350
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E2A48A8
P 10200 3450
AR Path="/5EC40F3C/5E2A48A8" Ref="R?"  Part="1" 
AR Path="/6056AA11/5E2A48A8" Ref="R1812"  Part="1" 
F 0 "R1812" H 10050 3500 20  0000 C CNN
F 1 "10e" H 10350 3500 20  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9700 3350 60  0001 C CNN
F 3 "" H 9800 3450 60  0001 C CNN
	1    10200 3450
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48AF
P 9850 3900
AR Path="/5EC40F3C/5E2A48AF" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48AF" Ref="C1812"  Part="1" 
F 0 "C1812" V 10000 3950 20  0000 L CNN
F 1 "100pF" V 9950 3900 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9850 3800 60  0001 C CNN
F 3 "" H 9850 3900 60  0000 C CNN
	1    9850 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48B6
P 9450 3900
AR Path="/5EC40F3C/5E2A48B6" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48B6" Ref="C1810"  Part="1" 
F 0 "C1810" V 9600 3950 20  0000 R CNN
F 1 "100pF" V 9550 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9450 3800 60  0001 C CNN
F 3 "" H 9450 3900 60  0000 C CNN
	1    9450 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48BD
P 9250 3900
AR Path="/5EC40F3C/5E2A48BD" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48BD" Ref="C1809"  Part="1" 
F 0 "C1809" V 9400 3950 20  0000 R CNN
F 1 "100pF" V 9350 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9250 3800 60  0001 C CNN
F 3 "" H 9250 3900 60  0000 C CNN
	1    9250 3900
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48C4
P 9050 3900
AR Path="/5EC40F3C/5E2A48C4" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48C4" Ref="C1808"  Part="1" 
F 0 "C1808" V 9200 3950 20  0000 R CNN
F 1 "100pF" V 9150 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9050 3800 60  0001 C CNN
F 3 "" H 9050 3900 60  0000 C CNN
	1    9050 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	9850 3700 9850 2950
Wire Wire Line
	9650 3700 9650 3050
Wire Wire Line
	9450 3700 9450 3150
Wire Wire Line
	9250 3700 9250 3250
Wire Wire Line
	9050 3700 9050 3350
$Comp
L servo:SI8661BD U?
U 1 1 5E2A48DE
P 11350 3150
AR Path="/5EC40F3C/5E2A48DE" Ref="U?"  Part="1" 
AR Path="/6056AA11/5E2A48DE" Ref="U1802"  Part="1" 
F 0 "U1802" H 11206 3693 39  0000 L BNN
F 1 "SI8661BD" H 11206 3618 39  0000 L BNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 10750 3450 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 11250 3750 60  0001 C CNN
	1    11350 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2A48E5
P 8850 3900
AR Path="/5EC40F3C/5E2A48E5" Ref="C?"  Part="1" 
AR Path="/6056AA11/5E2A48E5" Ref="C1807"  Part="1" 
F 0 "C1807" V 9000 3950 20  0000 R CNN
F 1 "100pF" V 8950 4000 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8850 3800 60  0001 C CNN
F 3 "" H 8850 3900 60  0000 C CNN
	1    8850 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	8850 3700 8850 3450
Wire Wire Line
	8850 3450 10000 3450
Wire Wire Line
	8800 3350 9050 3350
Wire Wire Line
	8800 3250 9250 3250
Wire Wire Line
	8800 3150 9450 3150
Wire Wire Line
	9650 3050 8800 3050
Wire Wire Line
	8800 2950 9850 2950
Wire Wire Line
	8850 3450 7950 3450
Connection ~ 8850 3450
Wire Wire Line
	12050 3450 12150 3450
Wire Wire Line
	12150 3350 12050 3350
Wire Wire Line
	12050 3250 12150 3250
Wire Wire Line
	12150 3150 12050 3150
Wire Wire Line
	12050 3050 12150 3050
Wire Wire Line
	12150 2950 12050 2950
Wire Wire Line
	12050 2850 12100 2850
Wire Wire Line
	10650 2850 10500 2850
Wire Wire Line
	10650 3550 10500 3550
Wire Wire Line
	10500 3550 10500 3650
Wire Wire Line
	10650 3450 10400 3450
Wire Wire Line
	10650 3350 9050 3350
Connection ~ 9050 3350
Wire Wire Line
	9250 3250 10650 3250
Connection ~ 9250 3250
Wire Wire Line
	9450 3150 10650 3150
Connection ~ 9450 3150
Wire Wire Line
	10650 3050 9650 3050
Connection ~ 9650 3050
Wire Wire Line
	9850 2950 10650 2950
Connection ~ 9850 2950
Wire Wire Line
	12050 3550 12150 3550
Wire Wire Line
	12150 3550 12150 3650
Wire Wire Line
	10500 2750 10500 2850
Wire Wire Line
	8400 2950 7950 2950
Wire Wire Line
	7950 3050 8400 3050
Wire Wire Line
	8400 3150 7950 3150
Wire Wire Line
	7950 3250 8400 3250
Wire Wire Line
	8400 3350 7950 3350
Wire Wire Line
	4200 4050 4200 3900
Wire Wire Line
	4400 4050 4400 3900
Wire Wire Line
	4800 4050 4800 3900
Wire Wire Line
	5000 4050 5000 3900
Wire Wire Line
	5200 4050 5200 3900
Wire Wire Line
	4200 4050 4400 4050
Connection ~ 4400 4050
Wire Wire Line
	4400 4050 4600 4050
Connection ~ 4600 4050
Wire Wire Line
	4600 4050 4800 4050
Connection ~ 4800 4050
Wire Wire Line
	4800 4050 5000 4050
Connection ~ 5000 4050
Wire Wire Line
	5000 4050 5200 4050
Wire Wire Line
	4600 4150 4600 4050
$Comp
L servo:GNDH #PWR?
U 1 1 5F12D180
P 9250 4250
AR Path="/5DDE8C5E/5F12D180" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/5F12D180" Ref="#PWR?"  Part="1" 
AR Path="/6056AA11/5F12D180" Ref="#PWR01806"  Part="1" 
F 0 "#PWR01806" H 9250 4000 30  0001 C CNN
F 1 "GNDH" H 9250 4092 30  0000 C CNN
F 2 "" H 9250 4250 50  0001 C CNN
F 3 "" H 9250 4250 50  0001 C CNN
	1    9250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4150 9250 4000
Wire Wire Line
	8850 4150 8850 4000
Wire Wire Line
	9050 4150 9050 4000
Wire Wire Line
	9450 4150 9450 4000
Wire Wire Line
	9650 4150 9650 4000
Wire Wire Line
	9850 4150 9850 4000
Wire Wire Line
	8850 4150 9050 4150
Connection ~ 9050 4150
Wire Wire Line
	9050 4150 9250 4150
Connection ~ 9250 4150
Wire Wire Line
	9250 4150 9450 4150
Connection ~ 9450 4150
Wire Wire Line
	9450 4150 9650 4150
Connection ~ 9650 4150
Wire Wire Line
	9650 4150 9850 4150
Wire Wire Line
	9250 4250 9250 4150
Text GLabel 6100 2950 2    50   Input ~ 0
SD_A1_H
Text GLabel 6100 3050 2    50   Input ~ 0
SD_A2_H
Text GLabel 6100 3150 2    50   Input ~ 0
SD_A3_H
Text GLabel 6100 3250 2    50   Input ~ 0
SD_A4_H
Text GLabel 6100 3350 2    50   Input ~ 0
SD_A_CLK_H
Text GLabel 6100 3450 2    50   Input ~ 0
PWM4SD_A_CLK_H
Text GLabel 7950 2950 0    50   Input ~ 0
SD_B1_H
Text GLabel 7950 3050 0    50   Input ~ 0
SD_B2_H
Text GLabel 7950 3150 0    50   Input ~ 0
SD_B3_H
Text GLabel 7950 3250 0    50   Input ~ 0
SD_B4_H
Text GLabel 7950 3350 0    50   Input ~ 0
SD_B_CLK_H
Text GLabel 7950 3450 0    50   Input ~ 0
PWM4SD_B_CLK_H
$EndSCHEMATC
