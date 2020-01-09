EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 18
Title "QEP encoder Interfase"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1950 2950 0    50   Input ~ 0
QEP0_A
Text GLabel 1950 3050 0    50   Input ~ 0
QEP0_B
Text GLabel 1950 3250 0    50   Input ~ 0
QEP0_S
$Comp
L servo:SI8660BD U?
U 1 1 5E2F5F77
P 2950 3150
AR Path="/5DDE8C5E/5E2F5F77" Ref="U?"  Part="1" 
AR Path="/5E092156/5E2F5F77" Ref="U?"  Part="1" 
F 0 "U?" H 2950 3739 60  0000 C CNN
F 1 "SI8660BD" H 2950 3633 60  0000 C CNN
F 2 "" H 2350 3450 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2850 3750 60  0001 C CNN
	1    2950 3150
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E2F5F80
P 2150 3600
AR Path="/5DDE8C5E/5E2F5F80" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F80" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 3350 30  0001 C CNN
F 1 "GND" H 2150 3442 30  0000 C CNN
F 2 "" H 2150 3600 50  0001 C CNN
F 3 "" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3550 2150 3550
Wire Wire Line
	2150 3550 2150 3600
$Comp
L servo:3V3 #PWR?
U 1 1 5E2F5F88
P 2150 2850
AR Path="/5DDE8C5E/5E2F5F88" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2155 3057 20  0000 C CNN
F 1 "3V3" H 2155 3007 28  0000 C CNN
F 2 "" H 2150 2850 50  0001 C CNN
F 3 "" H 2150 2850 50  0001 C CNN
	1    2150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2850 2150 2850
$Comp
L servo:GNDH #PWR?
U 1 1 5E2F5F90
P 4250 4050
AR Path="/5DDE8C5E/5E2F5F90" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E2F5F90" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 3800 30  0001 C CNN
F 1 "GNDH" H 4250 3892 30  0000 C CNN
F 2 "" H 4250 4050 50  0001 C CNN
F 3 "" H 4250 4050 50  0001 C CNN
	1    4250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2750 4150 2850
Wire Wire Line
	3650 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3950
Text Notes 3450 3900 2    39   ~ 8
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text GLabel 1950 3150 0    50   Input ~ 0
QEP0_I
$Comp
L servo:Resistor R?
U 1 1 5E304AAA
P 5000 2950
F 0 "R?" H 5000 2741 60  0001 C CNN
F 1 "100e" H 5000 2847 60  0001 C CNN
F 2 "" H 5000 2950 60  0000 C CNN
F 3 "" H 5000 2950 60  0000 C CNN
	1    5000 2950
	-1   0    0    1   
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E311045
P 4150 2750
F 0 "#PWR?" H 4150 2550 20  0001 C CNN
F 1 "5VH" H 4155 2907 28  0000 C CNN
F 2 "" H 4150 2750 50  0001 C CNN
F 3 "" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E3114E9
P 4900 3350
F 0 "#PWR?" H 4900 3150 20  0001 C CNN
F 1 "15VH" H 4847 3393 28  0000 R CNN
F 2 "" H 4900 3350 50  0001 C CNN
F 3 "" H 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x07 J?
U 1 1 5E314097
P 5400 3150
F 0 "J?" H 5480 3146 50  0000 L CNN
F 1 "Screw_Terminal_01x07" H 5480 3101 50  0001 L CNN
F 2 "" H 5400 3150 50  0001 C CNN
F 3 "~" H 5400 3150 50  0001 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3350 4900 3350
Wire Wire Line
	4900 3450 5200 3450
$Comp
L servo:Resistor R?
U 1 1 5E31A7D3
P 5000 3050
F 0 "R?" H 5000 2841 60  0001 C CNN
F 1 "100e" H 5000 2947 60  0001 C CNN
F 2 "" H 5000 3050 60  0000 C CNN
F 3 "" H 5000 3050 60  0000 C CNN
	1    5000 3050
	-1   0    0    1   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E31A7EC
P 5000 3150
F 0 "R?" H 5000 2941 60  0001 C CNN
F 1 "100e" H 5000 3047 60  0001 C CNN
F 2 "" H 5000 3150 60  0000 C CNN
F 3 "" H 5000 3150 60  0000 C CNN
	1    5000 3150
	-1   0    0    1   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E31A805
P 5000 3250
F 0 "R?" H 5000 3041 60  0001 C CNN
F 1 "100e" H 5000 3147 60  0001 C CNN
F 2 "" H 5000 3250 60  0000 C CNN
F 3 "" H 5000 3250 60  0000 C CNN
	1    5000 3250
	-1   0    0    1   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E31A9A1
P 4050 3750
F 0 "C?" V 4047 3860 60  0001 L CNN
F 1 "1nF" V 4153 3860 60  0001 L CNN
F 2 "" H 4050 3750 60  0000 C CNN
F 3 "" H 4050 3750 60  0000 C CNN
	1    4050 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3250 4550 3250
Wire Wire Line
	4550 3250 4550 3650
Wire Wire Line
	4400 3650 4400 3150
Wire Wire Line
	4400 3150 4800 3150
Wire Wire Line
	4800 3050 4250 3050
Wire Wire Line
	4250 3050 4250 3650
Wire Wire Line
	4800 2950 4050 2950
Wire Wire Line
	4050 2950 4050 3650
Wire Wire Line
	3650 2950 4050 2950
Connection ~ 4050 2950
Wire Wire Line
	3650 3050 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	3650 3150 4400 3150
Connection ~ 4400 3150
Wire Wire Line
	3650 3250 4550 3250
Connection ~ 4550 3250
Wire Wire Line
	4250 3950 4250 4050
Connection ~ 4050 3950
Wire Wire Line
	4050 3950 3800 3950
Wire Wire Line
	4900 3450 4900 3950
Wire Wire Line
	4050 3950 4250 3950
$Comp
L servo:Capacitor C?
U 1 1 5E31DD5E
P 4250 3750
F 0 "C?" V 4247 3860 60  0001 L CNN
F 1 "1nF" V 4353 3860 60  0001 L CNN
F 2 "" H 4250 3750 60  0000 C CNN
F 3 "" H 4250 3750 60  0000 C CNN
	1    4250 3750
	0    1    1    0   
$EndComp
Connection ~ 4250 3950
Wire Wire Line
	4250 3950 4400 3950
$Comp
L servo:Capacitor C?
U 1 1 5E31DD79
P 4400 3750
F 0 "C?" V 4397 3860 60  0001 L CNN
F 1 "1nF" V 4503 3860 60  0001 L CNN
F 2 "" H 4400 3750 60  0000 C CNN
F 3 "" H 4400 3750 60  0000 C CNN
	1    4400 3750
	0    1    1    0   
$EndComp
Connection ~ 4400 3950
Wire Wire Line
	4400 3950 4550 3950
$Comp
L servo:Capacitor C?
U 1 1 5E31DD94
P 4550 3750
F 0 "C?" V 4547 3860 60  0001 L CNN
F 1 "1nF" V 4653 3860 60  0001 L CNN
F 2 "" H 4550 3750 60  0000 C CNN
F 3 "" H 4550 3750 60  0000 C CNN
	1    4550 3750
	0    1    1    0   
$EndComp
Connection ~ 4550 3950
Wire Wire Line
	4550 3950 4900 3950
Connection ~ 4150 2850
Wire Wire Line
	4150 2850 5200 2850
Wire Wire Line
	3650 2850 4150 2850
Wire Wire Line
	2250 2950 1950 2950
Wire Wire Line
	1950 3050 2250 3050
Wire Wire Line
	2250 3150 1950 3150
Wire Wire Line
	1950 3250 2250 3250
Text GLabel 9350 2950 2    50   Input ~ 0
QEP0_A
Text GLabel 9350 3050 2    50   Input ~ 0
QEP0_B
Text GLabel 9350 3250 2    50   Input ~ 0
QEP0_S
$Comp
L servo:SI8660BD U?
U 1 1 5E324E9C
P 8350 3150
AR Path="/5DDE8C5E/5E324E9C" Ref="U?"  Part="1" 
AR Path="/5E092156/5E324E9C" Ref="U?"  Part="1" 
F 0 "U?" H 8350 3739 60  0000 C CNN
F 1 "SI8660BD" H 8350 3633 60  0000 C CNN
F 2 "" H 7750 3450 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 8250 3750 60  0001 C CNN
	1    8350 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E324EA3
P 9150 3600
AR Path="/5DDE8C5E/5E324EA3" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E324EA3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9150 3350 30  0001 C CNN
F 1 "GND" H 9150 3442 30  0000 C CNN
F 2 "" H 9150 3600 50  0001 C CNN
F 3 "" H 9150 3600 50  0001 C CNN
	1    9150 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 3550 9150 3550
Wire Wire Line
	9150 3550 9150 3600
$Comp
L servo:3V3 #PWR?
U 1 1 5E324EAB
P 9150 2850
AR Path="/5DDE8C5E/5E324EAB" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E324EAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9155 3057 20  0000 C CNN
F 1 "3V3" H 9155 3007 28  0000 C CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "" H 9150 2850 50  0001 C CNN
	1    9150 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 2850 9150 2850
$Comp
L servo:GNDH #PWR?
U 1 1 5E324EB3
P 7050 4050
AR Path="/5DDE8C5E/5E324EB3" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E324EB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3800 30  0001 C CNN
F 1 "GNDH" H 7050 3892 30  0000 C CNN
F 2 "" H 7050 4050 50  0001 C CNN
F 3 "" H 7050 4050 50  0001 C CNN
	1    7050 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 2750 7150 2850
Wire Wire Line
	7650 3550 7500 3550
Wire Wire Line
	7500 3550 7500 3950
Text Notes 7850 3900 0    39   ~ 8
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text GLabel 9350 3150 2    50   Input ~ 0
QEP0_I
$Comp
L servo:Resistor R?
U 1 1 5E324EBE
P 6300 2950
F 0 "R?" H 6300 2741 60  0001 C CNN
F 1 "100e" H 6300 2847 60  0001 C CNN
F 2 "" H 6300 2950 60  0000 C CNN
F 3 "" H 6300 2950 60  0000 C CNN
	1    6300 2950
	1    0    0    1   
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E324EC4
P 7150 2750
F 0 "#PWR?" H 7150 2550 20  0001 C CNN
F 1 "5VH" H 7155 2907 28  0000 C CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	-1   0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E324ECA
P 6400 3350
F 0 "#PWR?" H 6400 3150 20  0001 C CNN
F 1 "15VH" H 6347 3393 28  0000 R CNN
F 2 "" H 6400 3350 50  0001 C CNN
F 3 "" H 6400 3350 50  0001 C CNN
	1    6400 3350
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x07 J?
U 1 1 5E324ED0
P 5900 3150
F 0 "J?" H 5980 3146 50  0000 L CNN
F 1 "Screw_Terminal_01x07" H 5980 3101 50  0001 L CNN
F 2 "" H 5900 3150 50  0001 C CNN
F 3 "~" H 5900 3150 50  0001 C CNN
	1    5900 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3350 6400 3350
Wire Wire Line
	6400 3450 6100 3450
$Comp
L servo:Resistor R?
U 1 1 5E324ED9
P 6300 3050
F 0 "R?" H 6300 2841 60  0001 C CNN
F 1 "100e" H 6300 2947 60  0001 C CNN
F 2 "" H 6300 3050 60  0000 C CNN
F 3 "" H 6300 3050 60  0000 C CNN
	1    6300 3050
	1    0    0    1   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E324EDF
P 6300 3150
F 0 "R?" H 6300 2941 60  0001 C CNN
F 1 "100e" H 6300 3047 60  0001 C CNN
F 2 "" H 6300 3150 60  0000 C CNN
F 3 "" H 6300 3150 60  0000 C CNN
	1    6300 3150
	1    0    0    1   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E324EE5
P 6300 3250
F 0 "R?" H 6300 3041 60  0001 C CNN
F 1 "100e" H 6300 3147 60  0001 C CNN
F 2 "" H 6300 3250 60  0000 C CNN
F 3 "" H 6300 3250 60  0000 C CNN
	1    6300 3250
	1    0    0    1   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E324EEB
P 7250 3750
F 0 "C?" V 7247 3860 60  0001 L CNN
F 1 "1nF" V 7353 3860 60  0001 L CNN
F 2 "" H 7250 3750 60  0000 C CNN
F 3 "" H 7250 3750 60  0000 C CNN
	1    7250 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	6500 3250 6750 3250
Wire Wire Line
	6750 3250 6750 3650
Wire Wire Line
	6900 3650 6900 3150
Wire Wire Line
	6900 3150 6500 3150
Wire Wire Line
	6500 3050 7050 3050
Wire Wire Line
	7050 3050 7050 3650
Wire Wire Line
	6500 2950 7250 2950
Wire Wire Line
	7250 2950 7250 3650
Wire Wire Line
	7650 2950 7250 2950
Connection ~ 7250 2950
Wire Wire Line
	7650 3050 7050 3050
Connection ~ 7050 3050
Wire Wire Line
	7650 3150 6900 3150
Connection ~ 6900 3150
Wire Wire Line
	7650 3250 6750 3250
Connection ~ 6750 3250
Wire Wire Line
	7050 3950 7050 4050
Connection ~ 7250 3950
Wire Wire Line
	7250 3950 7500 3950
Wire Wire Line
	6400 3450 6400 3950
Wire Wire Line
	7250 3950 7050 3950
$Comp
L servo:Capacitor C?
U 1 1 5E324F06
P 7050 3750
F 0 "C?" V 7047 3860 60  0001 L CNN
F 1 "1nF" V 7153 3860 60  0001 L CNN
F 2 "" H 7050 3750 60  0000 C CNN
F 3 "" H 7050 3750 60  0000 C CNN
	1    7050 3750
	0    -1   1    0   
$EndComp
Connection ~ 7050 3950
Wire Wire Line
	7050 3950 6900 3950
$Comp
L servo:Capacitor C?
U 1 1 5E324F0E
P 6900 3750
F 0 "C?" V 6897 3860 60  0001 L CNN
F 1 "1nF" V 7003 3860 60  0001 L CNN
F 2 "" H 6900 3750 60  0000 C CNN
F 3 "" H 6900 3750 60  0000 C CNN
	1    6900 3750
	0    -1   1    0   
$EndComp
Connection ~ 6900 3950
Wire Wire Line
	6900 3950 6750 3950
$Comp
L servo:Capacitor C?
U 1 1 5E324F16
P 6750 3750
F 0 "C?" V 6747 3860 60  0001 L CNN
F 1 "1nF" V 6853 3860 60  0001 L CNN
F 2 "" H 6750 3750 60  0000 C CNN
F 3 "" H 6750 3750 60  0000 C CNN
	1    6750 3750
	0    -1   1    0   
$EndComp
Connection ~ 6750 3950
Wire Wire Line
	6750 3950 6400 3950
Connection ~ 7150 2850
Wire Wire Line
	7150 2850 6100 2850
Wire Wire Line
	7650 2850 7150 2850
Wire Wire Line
	9050 2950 9350 2950
Wire Wire Line
	9350 3050 9050 3050
Wire Wire Line
	9050 3150 9350 3150
Wire Wire Line
	9350 3250 9050 3250
Text Notes 3350 1550 0    197  ~ 39
2x Isolated Incremental encoder \n5v input A-B-I-S
$EndSCHEMATC
