EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 20
Title "QEP encoder Interfase"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2050 1450 0    197  ~ 39
2x Isolated Idifferential incremental encoder  interfase\n5v input A-B-I-S\n
Text Notes 3650 1650 0    20   ~ 4
I left the input for two isolated incremental encoders.\nI left the 4 signals input plus two auxiliary output for eny porpous plus\n the ability to choose between 5 or 15vH
$Comp
L Connector_Generic:Conn_02x10_Row_Letter_Last J1101
U 1 1 6027FD06
P 5800 3750
F 0 "J1101" H 5850 4295 20  0000 C CNN
F 1 "tblock 2x10 3.81" H 5850 4252 20  0000 C CNN
F 2 "servo:tblock02x10_3.81" H 5800 3750 50  0001 C CNN
F 3 "~" H 5800 3750 50  0001 C CNN
F 4 "20 Position Terminal Block Header, Male Pins, Shrouded (4 Side) 0.150\" (3.81mm) 90°, Right Angle Through Hole " H 0   0   50  0001 C CNN "Description"
F 5 "1843156 " H 0   0   50  0001 C CNN "PartNumber"
F 6 "277-6029-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "12.49300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5800 3750
	1    0    0    -1  
$EndComp
Text Label 5400 3650 0    20   ~ 0
QEP1_B_P_H
Text Label 5400 3750 0    20   ~ 0
QEP1_B_N_H
Text GLabel 1100 3500 0    50   Input ~ 0
QEP1_A
Text GLabel 1100 3600 0    50   Input ~ 0
QEP1_B
Text GLabel 1100 3800 0    50   Input ~ 0
QEP1_S
Text GLabel 1100 3700 0    50   Input ~ 0
QEP1_I
Text GLabel 1100 3900 0    50   Input ~ 0
STEP1
Text GLabel 1100 4000 0    50   Input ~ 0
DIR1
$Comp
L servo:R_Small R1122
U 1 1 602AA37F
P 7300 2250
F 0 "R1122" H 7359 2272 20  0000 L CNN
F 1 "10k" H 7359 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 2250 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 2250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1123
U 1 1 602AA386
P 7300 2450
F 0 "R1123" H 7359 2472 20  0000 L CNN
F 1 "10k" H 7359 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 2450 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 2450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1124
U 1 1 602AA38D
P 7300 2650
F 0 "R1124" H 7359 2672 20  0000 L CNN
F 1 "10k" H 7359 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 2650 50  0001 C CNN
F 3 "~" H 7300 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 2650
	-1   0    0    -1  
$EndComp
Connection ~ 7300 2350
Connection ~ 7300 2550
Wire Wire Line
	7450 2550 7300 2550
$Comp
L servo:R_Small R1119
U 1 1 602AA3A3
P 7050 2250
F 0 "R1119" H 7109 2272 20  0000 L CNN
F 1 "10k" H 7109 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7050 2250 50  0001 C CNN
F 3 "~" H 7050 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7050 2250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1120
U 1 1 602AA3AA
P 7050 2450
F 0 "R1120" H 7109 2472 20  0000 L CNN
F 1 "10k" H 7109 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7050 2450 50  0001 C CNN
F 3 "~" H 7050 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7050 2450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1121
U 1 1 602AA3B1
P 7050 2650
F 0 "R1121" H 7109 2672 20  0000 L CNN
F 1 "10k" H 7109 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7050 2650 50  0001 C CNN
F 3 "~" H 7050 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7050 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 3750 7600 3750
Wire Wire Line
	7700 3850 7600 3850
Wire Wire Line
	7600 3850 7600 4500
Wire Wire Line
	7600 4500 8100 4500
Text Notes 7650 3850 2    20   ~ 0
optional one to hi \nor/and one to low
Text Label 6500 3350 2    20   ~ 0
QEP2_A_P_H
Text Label 6500 3450 2    20   ~ 0
QEP2_A_N_H
Text Label 6300 3650 2    20   ~ 0
QEP2_B_P_H
Text Label 6300 3750 2    20   ~ 0
QEP2_B_N_H
Text Label 6300 3850 2    20   ~ 0
QEP2_I_P_H
Text Label 6300 3950 2    20   ~ 0
QEP2_I_N_H
Text Label 6500 4150 2    20   ~ 0
QEP2_S_P_H
Text Label 6500 4250 2    20   ~ 0
QEP2_S_N_H
Text GLabel 10600 3500 2    50   Input ~ 0
QEP2_A
Text GLabel 10600 3600 2    50   Input ~ 0
QEP2_B
Text GLabel 10600 3800 2    50   Input ~ 0
QEP2_S
$Comp
L servo:GND #PWR?
U 1 1 602AA3F1
P 10550 4150
AR Path="/5DDE8C5E/602AA3F1" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/602AA3F1" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 10550 3900 30  0001 C CNN
F 1 "GND" H 10550 3992 30  0000 C CNN
F 2 "" H 10550 4150 50  0001 C CNN
F 3 "" H 10550 4150 50  0001 C CNN
	1    10550 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 4100 10550 4100
Wire Wire Line
	10550 4100 10550 4150
$Comp
L servo:3V3 #PWR?
U 1 1 602AA3F9
P 10600 2850
AR Path="/5DDE8C5E/602AA3F9" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/602AA3F9" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 10500 2950 20  0001 C CNN
F 1 "3V3" H 10600 3000 28  0000 C CNN
F 2 "" H 10600 2850 50  0001 C CNN
F 3 "" H 10600 2850 50  0001 C CNN
	1    10600 2850
	-1   0    0    -1  
$EndComp
Text Notes 9250 4550 0    39   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text GLabel 10600 3700 2    50   Input ~ 0
QEP2_I
Wire Wire Line
	9050 3400 8950 3400
Wire Wire Line
	10450 3500 10600 3500
Wire Wire Line
	10600 3600 10450 3600
Wire Wire Line
	10450 3700 10600 3700
Wire Wire Line
	10600 3800 10450 3800
Text GLabel 10600 3900 2    50   Input ~ 0
STEP2
Text GLabel 10600 4000 2    50   Input ~ 0
DIR2
Wire Wire Line
	10600 2850 10600 3400
Wire Wire Line
	10600 3400 10450 3400
$Comp
L servo:SI8660BD U1104
U 1 1 602AA411
P 9750 3700
F 0 "U1104" H 9750 4243 39  0000 C CNN
F 1 "SI8660BD" H 9750 4168 39  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 9150 4000 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 9650 4300 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8660BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 336-4786-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3900 10600 3900
Wire Wire Line
	10600 4000 10450 4000
Wire Wire Line
	9050 3500 8650 3500
Wire Wire Line
	8650 3500 8650 3400
Wire Wire Line
	8650 3400 8550 3400
Wire Wire Line
	9050 3700 8650 3700
Wire Wire Line
	8650 3700 8650 4000
Wire Wire Line
	8650 4000 8550 4000
Wire Wire Line
	9050 3800 8750 3800
Wire Wire Line
	8750 3800 8750 4200
Wire Wire Line
	8750 4200 8550 4200
Wire Wire Line
	9050 3600 8550 3600
Wire Wire Line
	6200 3350 6200 3450
Wire Wire Line
	6300 3450 6300 3550
Wire Wire Line
	7700 3450 7450 3450
Wire Wire Line
	6200 4250 6200 4150
Wire Wire Line
	6200 4150 6100 4150
Wire Wire Line
	6300 4150 6300 4050
Wire Wire Line
	6400 4050 6400 3950
Wire Wire Line
	7700 4050 6900 4050
Wire Wire Line
	6500 3950 6500 3850
Wire Wire Line
	6500 3850 6100 3850
Wire Wire Line
	7700 3950 6950 3950
Wire Wire Line
	6500 3650 6500 3750
Wire Wire Line
	6500 3750 6100 3750
Wire Wire Line
	7700 3650 7150 3650
Wire Wire Line
	6400 3550 6400 3650
Wire Wire Line
	7700 3550 7200 3550
Wire Wire Line
	7450 2550 7450 3450
Connection ~ 7450 3450
Wire Wire Line
	7200 2350 7200 3550
Connection ~ 7200 3550
Wire Wire Line
	7050 2550 7150 2550
Wire Wire Line
	7150 2550 7150 3650
Connection ~ 7050 2550
Connection ~ 7150 3650
$Comp
L servo:R_Small R1116
U 1 1 602AA453
P 6800 2250
F 0 "R1116" H 6859 2272 20  0000 L CNN
F 1 "10k" H 6859 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6800 2250 50  0001 C CNN
F 3 "~" H 6800 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6800 2250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1117
U 1 1 602AA45A
P 6800 2450
F 0 "R1117" H 6859 2472 20  0000 L CNN
F 1 "10k" H 6859 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6800 2450 50  0001 C CNN
F 3 "~" H 6800 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6800 2450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1118
U 1 1 602AA461
P 6800 2650
F 0 "R1118" H 6859 2672 20  0000 L CNN
F 1 "10k" H 6859 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6800 2650 50  0001 C CNN
F 3 "~" H 6800 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6800 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 2550 6900 2550
Connection ~ 6800 2550
Wire Wire Line
	6900 2550 6900 4050
Connection ~ 6900 4050
Wire Wire Line
	6800 2350 6950 2350
Wire Wire Line
	6950 2350 6950 3950
Connection ~ 6800 2350
Connection ~ 6950 3950
$Comp
L servo:R_Small R1113
U 1 1 602AA47E
P 6550 2250
F 0 "R1113" H 6609 2272 20  0000 L CNN
F 1 "10k" H 6609 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6550 2250 50  0001 C CNN
F 3 "~" H 6550 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6550 2250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1114
U 1 1 602AA485
P 6550 2450
F 0 "R1114" H 6609 2472 20  0000 L CNN
F 1 "10k" H 6609 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6550 2450 50  0001 C CNN
F 3 "~" H 6550 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6550 2450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R1115
U 1 1 602AA48C
P 6550 2650
F 0 "R1115" H 6609 2672 20  0000 L CNN
F 1 "10k" H 6609 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6550 2650 50  0001 C CNN
F 3 "~" H 6550 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6550 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 2550 6650 2550
Connection ~ 6550 2550
Connection ~ 6550 2350
Wire Wire Line
	7200 2350 7050 2350
Connection ~ 7050 2350
Wire Wire Line
	5850 1950 5850 2050
Wire Wire Line
	5600 3350 5600 3100
Wire Wire Line
	8950 2150 8950 3400
Text GLabel 8350 4950 0    50   Input ~ 0
STEP2_H
Text GLabel 8350 5050 0    50   Input ~ 0
DIR2_H
Wire Wire Line
	8100 2150 8100 3000
Wire Wire Line
	7500 3350 7500 2350
Wire Wire Line
	7300 2350 7500 2350
Connection ~ 7500 3350
Wire Wire Line
	7500 3350 7700 3350
Wire Wire Line
	6400 3650 6100 3650
Wire Wire Line
	6400 3950 6100 3950
Wire Wire Line
	6300 4050 6100 4050
Wire Wire Line
	6300 3550 6100 3550
Wire Wire Line
	6200 3450 6100 3450
$Comp
L servo:am26ls32a U1103
U 1 1 63383E83
P 8100 4100
F 0 "U1103" H 7950 5150 39  0000 C CNN
F 1 "AM26LS32A" H 7900 5050 39  0000 C CNN
F 2 "servo:SOIC-16W_5.3x10.2mm_P1.27mm" H 9100 3150 50  0001 C CNN
F 3 "../doc/datasheets/am26ls32a.pdf" H 8100 3700 50  0001 C CNN
F 4 "0/4 Receiver RS422, RS423 16-SOIC " H 0   0   50  0001 C CNN "Description"
F 5 "AM26LS32ACDR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-1011-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.57800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3750 7600 3000
Wire Wire Line
	7600 3000 8100 3000
Connection ~ 8100 3000
Wire Wire Line
	8100 3000 8100 3100
Connection ~ 8100 4500
Wire Wire Line
	6100 3350 6100 3100
Wire Wire Line
	6300 3450 7450 3450
Wire Wire Line
	6400 3550 7200 3550
Wire Wire Line
	6200 4250 6650 4250
Wire Wire Line
	6500 3650 7150 3650
Wire Wire Line
	6200 3350 7500 3350
Wire Wire Line
	6500 3950 6950 3950
Wire Wire Line
	6400 4050 6900 4050
Wire Wire Line
	6300 4150 6700 4150
Wire Wire Line
	6650 2550 6650 4250
Connection ~ 6650 4250
Wire Wire Line
	6650 4250 7700 4250
Wire Wire Line
	6550 2350 6700 2350
Wire Wire Line
	6700 4150 6700 2350
Connection ~ 6700 4150
Wire Wire Line
	6700 4150 7700 4150
Wire Wire Line
	8950 4000 8950 5050
Wire Wire Line
	8950 5050 8350 5050
Wire Wire Line
	8950 4000 9050 4000
Wire Wire Line
	8850 3900 8850 4950
Wire Wire Line
	8850 4950 8350 4950
Wire Wire Line
	8850 3900 9050 3900
$Comp
L servo:R_Small R1101
U 1 1 634575F7
P 4400 2250
F 0 "R1101" H 4459 2272 20  0000 L CNN
F 1 "10k" H 4459 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4400 2250 50  0001 C CNN
F 3 "~" H 4400 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1102
U 1 1 634575FE
P 4400 2450
F 0 "R1102" H 4459 2472 20  0000 L CNN
F 1 "10k" H 4459 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4400 2450 50  0001 C CNN
F 3 "~" H 4400 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 2450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1103
U 1 1 63457605
P 4400 2650
F 0 "R1103" H 4459 2672 20  0000 L CNN
F 1 "10k" H 4459 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4400 2650 50  0001 C CNN
F 3 "~" H 4400 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 2650
	1    0    0    -1  
$EndComp
Connection ~ 4400 2350
Connection ~ 4400 2550
Wire Wire Line
	4250 2550 4400 2550
$Comp
L servo:R_Small R1104
U 1 1 6345761B
P 4650 2250
F 0 "R1104" H 4709 2272 20  0000 L CNN
F 1 "10k" H 4709 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4650 2250 50  0001 C CNN
F 3 "~" H 4650 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1105
U 1 1 63457622
P 4650 2450
F 0 "R1105" H 4709 2472 20  0000 L CNN
F 1 "10k" H 4709 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4650 2450 50  0001 C CNN
F 3 "~" H 4650 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4650 2450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1106
U 1 1 63457629
P 4650 2650
F 0 "R1106" H 4709 2672 20  0000 L CNN
F 1 "10k" H 4709 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4650 2650 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3750 4100 3750
Wire Wire Line
	4000 3850 4100 3850
Wire Wire Line
	4100 3850 4100 4500
Wire Wire Line
	4100 4500 3600 4500
Text Notes 4000 3850 0    20   ~ 0
optional one to hi \nor/and one to low
Text Label 5200 3350 0    20   ~ 0
QEP1_A_P_H
Text Label 5200 3450 0    20   ~ 0
QEP1_A_N_H
Text Label 5400 3850 0    20   ~ 0
QEP1_I_P_H
Text Label 5400 3950 0    20   ~ 0
QEP1_I_N_H
Text Label 5200 4150 0    20   ~ 0
QEP1_S_P_H
Text Label 5200 4250 0    20   ~ 0
QEP1_S_N_H
$Comp
L servo:GND #PWR?
U 1 1 63457659
P 1150 4150
AR Path="/5DDE8C5E/63457659" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/63457659" Ref="#PWR0177"  Part="1" 
F 0 "#PWR0177" H 1150 3900 30  0001 C CNN
F 1 "GND" H 1150 3992 30  0000 C CNN
F 2 "" H 1150 4150 50  0001 C CNN
F 3 "" H 1150 4150 50  0001 C CNN
	1    1150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4100 1150 4100
Wire Wire Line
	1150 4100 1150 4150
$Comp
L servo:3V3 #PWR?
U 1 1 63457661
P 1100 2800
AR Path="/5DDE8C5E/63457661" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/63457661" Ref="#PWR0178"  Part="1" 
F 0 "#PWR0178" H 1000 2900 20  0001 C CNN
F 1 "3V3" H 1100 2950 28  0000 C CNN
F 2 "" H 1100 2800 50  0001 C CNN
F 3 "" H 1100 2800 50  0001 C CNN
	1    1100 2800
	1    0    0    -1  
$EndComp
Text Notes 2450 4550 2    39   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Wire Wire Line
	2650 3400 2750 3400
Wire Wire Line
	1250 3500 1100 3500
Wire Wire Line
	1100 3600 1250 3600
Wire Wire Line
	1250 3700 1100 3700
Wire Wire Line
	1100 3800 1250 3800
Wire Wire Line
	1100 2800 1100 3400
Wire Wire Line
	1100 3400 1250 3400
$Comp
L servo:SI8660BD U1101
U 1 1 63457678
P 1950 3700
F 0 "U1101" H 1950 4243 39  0000 C CNN
F 1 "SI8660BD" H 1950 4168 39  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 1350 4000 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 1850 4300 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8660BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 336-4786-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    1950 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 3900 1100 3900
Wire Wire Line
	1100 4000 1250 4000
Wire Wire Line
	2650 3500 3050 3500
Wire Wire Line
	3050 3500 3050 3400
Wire Wire Line
	3050 3400 3150 3400
Wire Wire Line
	2650 3700 3050 3700
Wire Wire Line
	3050 3700 3050 4000
Wire Wire Line
	3050 4000 3150 4000
Wire Wire Line
	2650 3800 2950 3800
Wire Wire Line
	2950 3800 2950 4200
Wire Wire Line
	2950 4200 3150 4200
Wire Wire Line
	2650 3600 3150 3600
Wire Wire Line
	5500 3350 5500 3450
Wire Wire Line
	5400 3450 5400 3550
Wire Wire Line
	4000 3450 4250 3450
Wire Wire Line
	5500 4250 5500 4150
Wire Wire Line
	5500 4150 5600 4150
Wire Wire Line
	5400 4150 5400 4050
Wire Wire Line
	5300 4050 5300 3950
Wire Wire Line
	4000 4050 4800 4050
Wire Wire Line
	5200 3950 5200 3850
Wire Wire Line
	4000 3950 4750 3950
Wire Wire Line
	5200 3650 5200 3750
Wire Wire Line
	5200 3750 5600 3750
Wire Wire Line
	4000 3650 4550 3650
Wire Wire Line
	5300 3550 5300 3650
Wire Wire Line
	4000 3550 4500 3550
Wire Wire Line
	4250 2550 4250 3450
Connection ~ 4250 3450
Wire Wire Line
	4500 2350 4500 3550
Connection ~ 4500 3550
Wire Wire Line
	4650 2550 4550 2550
Wire Wire Line
	4550 2550 4550 3650
Connection ~ 4650 2550
Connection ~ 4550 3650
$Comp
L servo:R_Small R1107
U 1 1 634576A3
P 4900 2250
F 0 "R1107" H 4959 2272 20  0000 L CNN
F 1 "10k" H 4959 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4900 2250 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1108
U 1 1 634576AA
P 4900 2450
F 0 "R1108" H 4959 2472 20  0000 L CNN
F 1 "10k" H 4959 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4900 2450 50  0001 C CNN
F 3 "~" H 4900 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4900 2450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1109
U 1 1 634576B1
P 4900 2650
F 0 "R1109" H 4959 2672 20  0000 L CNN
F 1 "10k" H 4959 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4900 2650 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2550 4800 2550
Connection ~ 4900 2550
Wire Wire Line
	4800 2550 4800 4050
Connection ~ 4800 4050
Wire Wire Line
	4900 2350 4750 2350
Wire Wire Line
	4750 2350 4750 3950
Connection ~ 4900 2350
Connection ~ 4750 3950
$Comp
L servo:R_Small R1110
U 1 1 634576CC
P 5150 2250
F 0 "R1110" H 5209 2272 20  0000 L CNN
F 1 "10k" H 5209 2229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5150 2250 50  0001 C CNN
F 3 "~" H 5150 2250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5150 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1111
U 1 1 634576D3
P 5150 2450
F 0 "R1111" H 5209 2472 20  0000 L CNN
F 1 "10k" H 5209 2429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5150 2450 50  0001 C CNN
F 3 "~" H 5150 2450 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R1112
U 1 1 634576DA
P 5150 2650
F 0 "R1112" H 5209 2672 20  0000 L CNN
F 1 "10k" H 5209 2629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5150 2650 50  0001 C CNN
F 3 "~" H 5150 2650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2550 5050 2550
Connection ~ 5150 2550
Connection ~ 5150 2350
Wire Wire Line
	4500 2350 4650 2350
Connection ~ 4650 2350
Text GLabel 3350 4950 2    50   Input ~ 0
STEP1_H
Text GLabel 3350 5050 2    50   Input ~ 0
DIR1_H
Wire Wire Line
	4200 3350 4200 2350
Wire Wire Line
	4400 2350 4200 2350
Connection ~ 4200 3350
Wire Wire Line
	4200 3350 4000 3350
Wire Wire Line
	5300 3650 5600 3650
Wire Wire Line
	5300 3950 5600 3950
Wire Wire Line
	5400 4050 5600 4050
Wire Wire Line
	5400 3550 5600 3550
Wire Wire Line
	5500 3450 5600 3450
$Comp
L servo:am26ls32a U1102
U 1 1 63457709
P 3600 4100
F 0 "U1102" H 3450 5150 39  0000 C CNN
F 1 "AM26LS32A" H 3400 5050 39  0000 C CNN
F 2 "servo:SOIC-16W_5.3x10.2mm_P1.27mm" H 4600 3150 50  0001 C CNN
F 3 "../doc/datasheets/am26ls32a.pdf" H 3600 3700 50  0001 C CNN
F 4 "0/4 Receiver RS422, RS423 16-SOIC " H 0   0   50  0001 C CNN "Description"
F 5 "AM26LS32ACDR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-1011-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.57800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3600 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 3750 4100 3000
Wire Wire Line
	4100 3000 3600 3000
Connection ~ 3600 3000
Wire Wire Line
	3600 3000 3600 3100
Connection ~ 3600 4500
Wire Wire Line
	5400 3450 4250 3450
Wire Wire Line
	5300 3550 4500 3550
Wire Wire Line
	5500 4250 5050 4250
Wire Wire Line
	5200 3650 4550 3650
Wire Wire Line
	5500 3350 4200 3350
Wire Wire Line
	5200 3950 4750 3950
Wire Wire Line
	5300 4050 4800 4050
Wire Wire Line
	5400 4150 5000 4150
Wire Wire Line
	5050 2550 5050 4250
Connection ~ 5050 4250
Wire Wire Line
	5050 4250 4000 4250
Wire Wire Line
	5150 2350 5000 2350
Wire Wire Line
	5000 4150 5000 2350
Connection ~ 5000 4150
Wire Wire Line
	5000 4150 4000 4150
Wire Wire Line
	2750 4000 2750 5050
Wire Wire Line
	2750 5050 3350 5050
Wire Wire Line
	2750 4000 2650 4000
Wire Wire Line
	2850 3900 2850 4950
Wire Wire Line
	2850 4950 3350 4950
Wire Wire Line
	2850 3900 2650 3900
Wire Wire Line
	5600 4250 5600 4400
Wire Wire Line
	6100 4400 6100 4250
Wire Wire Line
	5200 3850 5600 3850
Wire Wire Line
	3250 2500 3250 2750
Wire Wire Line
	3250 2200 3250 2150
$Comp
L servo:Capacitor C?
U 1 1 5E3EEFDC
P 3250 2300
AR Path="/605B70F2/5E3EEFDC" Ref="C?"  Part="1" 
AR Path="/5E092156/5E3EEFDC" Ref="C1103"  Part="1" 
F 0 "C1103" V 3278 2410 20  0000 L CNN
F 1 "0.1uF" V 3321 2410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3250 2200 60  0001 C CNN
F 3 "" H 3250 2300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2500 2950 2750
Wire Wire Line
	2950 2200 2950 2150
$Comp
L servo:Capacitor C?
U 1 1 5E413474
P 2950 2300
AR Path="/605B70F2/5E413474" Ref="C?"  Part="1" 
AR Path="/5E092156/5E413474" Ref="C1102"  Part="1" 
F 0 "C1102" V 2978 2410 20  0000 L CNN
F 1 "0.1uF" V 3021 2410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 2950 2200 60  0001 C CNN
F 3 "" H 2950 2300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2950 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 2200 8750 2150
$Comp
L servo:Capacitor C?
U 1 1 5E41F89C
P 8750 2300
AR Path="/605B70F2/5E41F89C" Ref="C?"  Part="1" 
AR Path="/5E092156/5E41F89C" Ref="C1105"  Part="1" 
F 0 "C1105" V 8778 2410 20  0000 L CNN
F 1 "0.1uF" V 8821 2410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8750 2200 60  0001 C CNN
F 3 "" H 8750 2300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 2200 8450 2150
$Comp
L servo:Capacitor C?
U 1 1 5E41F8B1
P 8450 2300
AR Path="/605B70F2/5E41F8B1" Ref="C?"  Part="1" 
AR Path="/5E092156/5E41F8B1" Ref="C1104"  Part="1" 
F 0 "C1104" V 8478 2410 20  0000 L CNN
F 1 "0.1uF" V 8521 2410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8450 2200 60  0001 C CNN
F 3 "" H 8450 2300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8450 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	10900 3200 10900 3250
Wire Wire Line
	10900 2900 10900 2850
$Comp
L servo:Capacitor C?
U 1 1 5E47665D
P 10900 3000
AR Path="/605B70F2/5E47665D" Ref="C?"  Part="1" 
AR Path="/5E092156/5E47665D" Ref="C1106"  Part="1" 
F 0 "C1106" V 10928 3110 20  0000 L CNN
F 1 "0.1uF" V 10971 3110 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10900 2900 60  0001 C CNN
F 3 "" H 10900 3000 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10900 3000
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E48F5E3
P 10900 2850
AR Path="/5DDE8C5E/5E48F5E3" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E48F5E3" Ref="#PWR0200"  Part="1" 
F 0 "#PWR0200" H 10800 2950 20  0001 C CNN
F 1 "3V3" H 10900 3000 28  0000 C CNN
F 2 "" H 10900 2850 50  0001 C CNN
F 3 "" H 10900 2850 50  0001 C CNN
	1    10900 2850
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E49C09B
P 10900 3250
AR Path="/5DDE8C5E/5E49C09B" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E49C09B" Ref="#PWR0210"  Part="1" 
F 0 "#PWR0210" H 10900 3000 30  0001 C CNN
F 1 "GND" H 10900 3092 30  0000 C CNN
F 2 "" H 10900 3250 50  0001 C CNN
F 3 "" H 10900 3250 50  0001 C CNN
	1    10900 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	850  3150 850  3200
Wire Wire Line
	850  2850 850  2800
$Comp
L servo:Capacitor C?
U 1 1 5E49C63F
P 850 2950
AR Path="/605B70F2/5E49C63F" Ref="C?"  Part="1" 
AR Path="/5E092156/5E49C63F" Ref="C1101"  Part="1" 
F 0 "C1101" V 878 3060 20  0000 L CNN
F 1 "0.1uF" V 921 3060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 850 2850 60  0001 C CNN
F 3 "" H 850 2950 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    850  2950
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E49C646
P 850 2800
AR Path="/5DDE8C5E/5E49C646" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E49C646" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 750 2900 20  0001 C CNN
F 1 "3V3" H 850 2950 28  0000 C CNN
F 2 "" H 850 2800 50  0001 C CNN
F 3 "" H 850 2800 50  0001 C CNN
	1    850  2800
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E49C64C
P 850 3200
AR Path="/5DDE8C5E/5E49C64C" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E49C64C" Ref="#PWR0212"  Part="1" 
F 0 "#PWR0212" H 850 2950 30  0001 C CNN
F 1 "GND" H 850 3042 30  0000 C CNN
F 2 "" H 850 3200 50  0001 C CNN
F 3 "" H 850 3200 50  0001 C CNN
	1    850  3200
	-1   0    0    -1  
$EndComp
Text Label 8900 3800 2    20   ~ 0
QEP2_S_H
Text Label 8900 3700 2    20   ~ 0
QEP2_I_H
Text Label 8900 3600 2    20   ~ 0
QEP2_B_H
Text Label 8900 3500 2    20   ~ 0
QEP2_A_H
Text Label 2700 3500 0    20   ~ 0
QEP1_A_H
Text Label 2700 3600 0    20   ~ 0
QEP1_B_H
Text Label 2700 3700 0    20   ~ 0
QEP1_I_H
Text Label 2700 3800 0    20   ~ 0
QEP1_S_H
Text Label 5650 3100 0    20   ~ 0
QEP_5VH
$Comp
L servo:5VI #PWR?
U 1 1 5E3B5024
P 5850 1950
AR Path="/5DD76B18/5E3B5024" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E3B5024" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 5850 1750 20  0001 C CNN
F 1 "5VI" H 5850 2107 28  0000 C CNN
F 2 "" H 5850 1950 50  0001 C CNN
F 3 "" H 5850 1950 50  0001 C CNN
	1    5850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2150 2950 2150
Connection ~ 2950 2150
Wire Wire Line
	2950 2150 3250 2150
Connection ~ 3250 2150
Wire Wire Line
	3250 2150 3600 2150
Wire Wire Line
	3600 2150 4400 2150
Connection ~ 4400 2150
Wire Wire Line
	4400 2150 4650 2150
Connection ~ 4650 2150
Wire Wire Line
	4650 2150 4900 2150
Connection ~ 4900 2150
Wire Wire Line
	4900 2150 5150 2150
Wire Wire Line
	5150 2150 5150 2050
Wire Wire Line
	5150 2050 5850 2050
Connection ~ 5150 2150
Wire Wire Line
	7300 2150 7050 2150
Connection ~ 6800 2150
Wire Wire Line
	6800 2150 6550 2150
Connection ~ 7050 2150
Wire Wire Line
	7050 2150 6800 2150
Wire Wire Line
	6550 2050 6550 2150
Connection ~ 6550 2150
Wire Wire Line
	8950 2150 8750 2150
Wire Wire Line
	8100 2150 7300 2150
Connection ~ 8100 2150
Connection ~ 8450 2150
Wire Wire Line
	8450 2150 8100 2150
Connection ~ 8750 2150
Wire Wire Line
	8750 2150 8450 2150
Connection ~ 7300 2150
$Comp
L servo:GNDI #PWR0144
U 1 1 5E46C528
P 5850 5000
F 0 "#PWR0144" H 5850 4750 30  0001 C CNN
F 1 "GNDI" H 5850 4851 20  0000 C CNN
F 2 "" H 5850 5000 50  0001 C CNN
F 3 "" H 5850 5000 50  0001 C CNN
	1    5850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4850 7300 4850
Wire Wire Line
	8100 4500 8100 4850
Wire Wire Line
	3600 4850 4400 4850
Wire Wire Line
	3600 4500 3600 4850
Wire Wire Line
	5850 4850 5850 5000
Wire Wire Line
	2650 4850 3600 4850
Wire Wire Line
	2650 4100 2650 4850
Connection ~ 3600 4850
Wire Wire Line
	9050 4850 8100 4850
Wire Wire Line
	9050 4100 9050 4850
Connection ~ 8100 4850
Wire Wire Line
	5150 2750 4900 2750
Connection ~ 4650 2750
Wire Wire Line
	4650 2750 4400 2750
Connection ~ 4900 2750
Wire Wire Line
	4900 2750 4650 2750
Wire Wire Line
	4400 2750 4400 4850
Connection ~ 4400 2750
Connection ~ 4400 4850
Wire Wire Line
	4400 4850 5850 4850
Wire Wire Line
	6550 2750 6800 2750
Connection ~ 6800 2750
Wire Wire Line
	6800 2750 7050 2750
Connection ~ 7050 2750
Wire Wire Line
	7050 2750 7300 2750
Wire Wire Line
	7300 2750 7300 4850
Connection ~ 7300 2750
Connection ~ 7300 4850
Connection ~ 3600 2150
Wire Wire Line
	3600 2150 3600 3000
Wire Wire Line
	2750 2150 2750 3400
Wire Wire Line
	2950 2750 3250 2750
Wire Wire Line
	4400 2750 3250 2750
Connection ~ 3250 2750
Wire Wire Line
	7300 2750 8450 2750
Wire Wire Line
	8750 2500 8750 2750
Wire Wire Line
	8450 2500 8450 2750
Connection ~ 8450 2750
Wire Wire Line
	8450 2750 8750 2750
Wire Wire Line
	5600 4400 5850 4400
Wire Wire Line
	5850 4400 5850 4850
Connection ~ 5850 4400
Wire Wire Line
	5850 4400 6100 4400
Connection ~ 5850 4850
Wire Wire Line
	5850 4850 7300 4850
Wire Wire Line
	5600 3100 5850 3100
Connection ~ 5850 2050
Wire Wire Line
	5850 2050 5850 3100
Connection ~ 5850 3100
Wire Wire Line
	5850 3100 6100 3100
Wire Wire Line
	5850 2050 6550 2050
Text Notes 3250 4650 0    20   ~ 0
I've chossen so16w but the landpattern is compatible\n with soic16 also 'cause soic has more available \npieces and are cheaper
Text Notes 5650 2400 0    20   ~ 0
for final release, remove pull-up \nand pull-down from bus, and \nreplace 10k to 120 as the Z
$EndSCHEMATC
