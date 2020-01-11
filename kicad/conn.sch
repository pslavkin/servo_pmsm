EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 19
Title "Common connections"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6500 1200 0    197  ~ 39
Common Connections
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 605AFA04
P 9650 2850
AR Path="/5DDE8C5E/605AFA04" Ref="J?"  Part="1" 
AR Path="/5EC40F3C/605AFA04" Ref="J1803"  Part="1" 
F 0 "J1803" H 9700 3467 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 9700 3376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical_SMD" H 9650 2850 50  0001 C CNN
F 3 "~" H 9650 2850 50  0001 C CNN
	1    9650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2650 9950 2650
Wire Wire Line
	9950 2750 10300 2750
Wire Wire Line
	10300 2850 9950 2850
Wire Wire Line
	9950 2950 10300 2950
Wire Wire Line
	10300 3050 9950 3050
Wire Wire Line
	10300 3250 9950 3250
Wire Wire Line
	10300 3150 9950 3150
Wire Wire Line
	9950 2550 10300 2550
Wire Wire Line
	9950 3350 10100 3350
Wire Wire Line
	9450 2750 9100 2750
Wire Wire Line
	9100 2850 9450 2850
Wire Wire Line
	9450 2950 9100 2950
Wire Wire Line
	9100 3050 9450 3050
Wire Wire Line
	9100 3150 9450 3150
Wire Wire Line
	9100 2650 9450 2650
Wire Wire Line
	9100 2550 9450 2550
$Comp
L servo:GNDH #PWR?
U 1 1 605AFA1C
P 9700 3600
AR Path="/5DDE8C5E/605AFA1C" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605AFA1C" Ref="#PWR01808"  Part="1" 
F 0 "#PWR01808" H 9700 3350 30  0001 C CNN
F 1 "GNDH" H 9700 3442 30  0000 C CNN
F 2 "" H 9700 3600 50  0001 C CNN
F 3 "" H 9700 3600 50  0001 C CNN
	1    9700 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 3350 9350 3350
$Comp
L servo:5VH #PWR?
U 1 1 605AFA23
P 9300 2250
AR Path="/5DDE8C5E/605AFA23" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605AFA23" Ref="#PWR01807"  Part="1" 
F 0 "#PWR01807" H 9300 2050 20  0001 C CNN
F 1 "5VH" H 9305 2407 28  0000 C CNN
F 2 "" H 9300 2250 50  0001 C CNN
F 3 "" H 9300 2250 50  0001 C CNN
	1    9300 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 2250 9300 2450
Wire Wire Line
	9300 2450 9450 2450
Wire Wire Line
	10050 2250 10050 2450
Wire Wire Line
	10050 2450 9950 2450
Wire Wire Line
	10100 3350 10100 3550
Wire Wire Line
	10100 3550 9700 3550
Wire Wire Line
	9700 3550 9700 3600
Wire Wire Line
	9350 3550 9700 3550
Connection ~ 9700 3550
Wire Wire Line
	9350 3350 9350 3550
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 605AFA33
P 8300 4850
AR Path="/5DDE8C5E/605AFA33" Ref="J?"  Part="1" 
AR Path="/5EC40F3C/605AFA33" Ref="J1802"  Part="1" 
F 0 "J1802" H 8350 5467 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 8350 5376 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical_SMD" H 8300 4850 50  0001 C CNN
F 3 "~" H 8300 4850 50  0001 C CNN
	1    8300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5350 8750 5350
$Comp
L servo:GNDH #PWR?
U 1 1 605AFA3B
P 8350 5600
AR Path="/5DDE8C5E/605AFA3B" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605AFA3B" Ref="#PWR01805"  Part="1" 
F 0 "#PWR01805" H 8350 5350 30  0001 C CNN
F 1 "GNDH" H 8350 5442 30  0000 C CNN
F 2 "" H 8350 5600 50  0001 C CNN
F 3 "" H 8350 5600 50  0001 C CNN
	1    8350 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 5350 7950 5350
$Comp
L servo:5VH #PWR?
U 1 1 605AFA42
P 7950 4150
AR Path="/5DDE8C5E/605AFA42" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605AFA42" Ref="#PWR01804"  Part="1" 
F 0 "#PWR01804" H 7950 3950 20  0001 C CNN
F 1 "5VH" H 7955 4307 28  0000 C CNN
F 2 "" H 7950 4150 50  0001 C CNN
F 3 "" H 7950 4150 50  0001 C CNN
	1    7950 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 4150 7950 4450
Wire Wire Line
	7950 4450 8100 4450
Wire Wire Line
	8700 4450 8600 4450
Wire Wire Line
	8750 5350 8750 5550
Wire Wire Line
	8750 5550 8350 5550
Wire Wire Line
	8350 5550 8350 5600
Wire Wire Line
	7950 5550 8350 5550
Connection ~ 8350 5550
Wire Wire Line
	7950 5350 7950 5550
Wire Wire Line
	8600 4550 8850 4550
Wire Wire Line
	8850 4650 8600 4650
Wire Wire Line
	8850 4750 8600 4750
Wire Wire Line
	8850 4850 8600 4850
Wire Wire Line
	8100 4550 7850 4550
Wire Wire Line
	7850 4750 8100 4750
Wire Wire Line
	7850 4850 8100 4850
Wire Wire Line
	7850 4650 8100 4650
Connection ~ 8750 5350
Wire Wire Line
	8600 5050 8750 5050
Wire Wire Line
	8750 5050 8750 5150
Wire Wire Line
	8600 5150 8750 5150
Connection ~ 8750 5150
Wire Wire Line
	8600 5250 8750 5250
Wire Wire Line
	8750 5150 8750 5250
Connection ~ 8750 5250
Wire Wire Line
	8750 5250 8750 5350
Wire Wire Line
	8100 5050 7950 5050
Wire Wire Line
	7950 5050 7950 5150
Wire Wire Line
	8100 5150 7950 5150
Connection ~ 7950 5150
Wire Wire Line
	8100 5250 7950 5250
Wire Wire Line
	7950 5150 7950 5250
Connection ~ 7950 5250
Wire Wire Line
	7950 5250 7950 5350
Connection ~ 7950 5350
Text Notes 8000 5500 0    39   ~ 0
Free to use until now
Text GLabel 10300 2550 2    50   Input ~ 0
PWM_B_1H_H
Text GLabel 10300 2650 2    50   Input ~ 0
PWM_B_1L_H
Text GLabel 10300 2750 2    50   Input ~ 0
PWM_B_2H_H
Text GLabel 10300 2850 2    50   Input ~ 0
PWM_B_2L_H
Text GLabel 10300 2950 2    50   Input ~ 0
PWM_B_3H_H
Text GLabel 10300 3050 2    50   Input ~ 0
PWM_B_3L_H
Text GLabel 10300 3150 2    50   Input ~ 0
PWM_B_BRK_RES_H
Text GLabel 10300 3250 2    50   Input ~ 0
BRK_B_MEC_H
Text GLabel 8850 4550 2    50   Input ~ 0
FREE_OUT_B1_H
Text GLabel 8850 4650 2    50   Input ~ 0
FREE_OUT_B2_H
Text GLabel 8850 4750 2    50   Input ~ 0
FREE_IN_B3_H
Text GLabel 8850 4850 2    50   Input ~ 0
FREE_IN_B4_H
Text GLabel 9100 2550 0    50   Input ~ 0
SD_B1_H
Text GLabel 9100 2650 0    50   Input ~ 0
SD_B2_H
Text GLabel 9100 2750 0    50   Input ~ 0
SD_B3_H
Text GLabel 9100 2850 0    50   Input ~ 0
SD_B4_H
Text GLabel 9100 2950 0    50   Input ~ 0
SD_B_CLK_H
Text GLabel 9100 3050 0    50   Input ~ 0
PWM4SD_B_CLK_H
Text GLabel 7850 4950 0    50   Input ~ 0
1-WIREP_H
Text GLabel 8850 4950 2    50   Input ~ 0
1-WIREN_H
Wire Wire Line
	8600 4950 8850 4950
Wire Wire Line
	7850 4950 8100 4950
$Comp
L servo:15VH #PWR?
U 1 1 605AFA8F
P 10050 2250
AR Path="/5DDE8C5E/605AFA8F" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605AFA8F" Ref="#PWR01809"  Part="1" 
F 0 "#PWR01809" H 10050 2050 20  0001 C CNN
F 1 "15VH" H 10050 2407 28  0000 C CNN
F 2 "" H 10050 2250 50  0001 C CNN
F 3 "" H 10050 2250 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 605C2571
P 6750 2750
AR Path="/5DDE8C5E/605C2571" Ref="J?"  Part="1" 
AR Path="/5EC40F3C/605C2571" Ref="J1801"  Part="1" 
F 0 "J1801" H 6800 3367 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 6800 3276 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x10_P2.54mm_Vertical_SMD" H 6750 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2550 7050 2550
Wire Wire Line
	7050 2650 7400 2650
Wire Wire Line
	7400 2750 7050 2750
Wire Wire Line
	7050 2850 7400 2850
Wire Wire Line
	7400 2950 7050 2950
Wire Wire Line
	7400 3150 7050 3150
Wire Wire Line
	7400 3050 7050 3050
Wire Wire Line
	7050 2450 7400 2450
Wire Wire Line
	7050 3250 7200 3250
Wire Wire Line
	6550 2650 6200 2650
Wire Wire Line
	6200 2750 6550 2750
Wire Wire Line
	6550 2850 6200 2850
Wire Wire Line
	6200 2950 6550 2950
Wire Wire Line
	6200 3050 6550 3050
Wire Wire Line
	6200 2550 6550 2550
Wire Wire Line
	6200 2450 6550 2450
$Comp
L servo:GNDH #PWR?
U 1 1 605C2589
P 6800 3500
AR Path="/5DDE8C5E/605C2589" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605C2589" Ref="#PWR01802"  Part="1" 
F 0 "#PWR01802" H 6800 3250 30  0001 C CNN
F 1 "GNDH" H 6800 3342 30  0000 C CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 3250 6450 3250
$Comp
L servo:5VH #PWR?
U 1 1 605C2590
P 6400 2150
AR Path="/5DDE8C5E/605C2590" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605C2590" Ref="#PWR01801"  Part="1" 
F 0 "#PWR01801" H 6400 1950 20  0001 C CNN
F 1 "5VH" H 6405 2307 28  0000 C CNN
F 2 "" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 2150 6400 2350
Wire Wire Line
	6400 2350 6550 2350
Wire Wire Line
	7150 2150 7150 2350
Wire Wire Line
	7150 2350 7050 2350
Wire Wire Line
	7200 3250 7200 3450
Wire Wire Line
	7200 3450 6800 3450
Wire Wire Line
	6800 3450 6800 3500
Wire Wire Line
	6450 3450 6800 3450
Connection ~ 6800 3450
Wire Wire Line
	6450 3250 6450 3450
$Comp
L servo:15VH #PWR?
U 1 1 605C25AF
P 7150 2150
AR Path="/5DDE8C5E/605C25AF" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/605C25AF" Ref="#PWR01803"  Part="1" 
F 0 "#PWR01803" H 7150 1950 20  0001 C CNN
F 1 "15VH" H 7150 2307 28  0000 C CNN
F 2 "" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Text GLabel 6200 2450 0    50   Input ~ 0
SD_A1_H
Text GLabel 6200 2550 0    50   Input ~ 0
SD_A2_H
Text GLabel 6200 2650 0    50   Input ~ 0
SD_A3_H
Text GLabel 6200 2750 0    50   Input ~ 0
SD_A4_H
Text GLabel 6200 2850 0    50   Input ~ 0
SD_A_CLK_H
Text GLabel 6200 2950 0    50   Input ~ 0
PWM4SD_A_CLK_H
Text GLabel 7400 2450 2    50   Input ~ 0
PWM_A_1H_H
Text GLabel 7400 2550 2    50   Input ~ 0
PWM_A_1L_H
Text GLabel 7400 2650 2    50   Input ~ 0
PWM_A_2H_H
Text GLabel 7400 2750 2    50   Input ~ 0
PWM_A_2L_H
Text GLabel 7400 2850 2    50   Input ~ 0
PWM_A_3H_H
Text GLabel 7400 2950 2    50   Input ~ 0
PWM_A_3L_H
Text GLabel 7400 3050 2    50   Input ~ 0
PWM_A_BRK_RES_H
Text GLabel 7400 3150 2    50   Input ~ 0
BRK_A_MEC_H
Text GLabel 7850 4550 0    50   Input ~ 0
FREE_OUT_A1_H
Text GLabel 7850 4650 0    50   Input ~ 0
FREE_OUT_A2_H
Text GLabel 7850 4750 0    50   Input ~ 0
FREE_IN_A3_H
Text GLabel 7850 4850 0    50   Input ~ 0
FREE_IN_A4_H
$Comp
L servo:15VH #PWR?
U 1 1 60686BCE
P 8700 4150
AR Path="/5DDE8C5E/60686BCE" Ref="#PWR?"  Part="1" 
AR Path="/5EC40F3C/60686BCE" Ref="#PWR01806"  Part="1" 
F 0 "#PWR01806" H 8700 3950 20  0001 C CNN
F 1 "15VH" H 8700 4307 28  0000 C CNN
F 2 "" H 8700 4150 50  0001 C CNN
F 3 "" H 8700 4150 50  0001 C CNN
	1    8700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4150 8700 4450
Text GLabel 6200 3050 0    50   Input ~ 0
NTCA1_H
Text GLabel 9100 3150 0    50   Input ~ 0
NTCB1_H
Text GLabel 6200 3150 0    50   Input ~ 0
NTCA2_H
Text GLabel 9100 3250 0    50   Input ~ 0
NTCB2_H
Wire Wire Line
	6200 3150 6550 3150
Wire Wire Line
	9100 3250 9450 3250
$EndSCHEMATC
