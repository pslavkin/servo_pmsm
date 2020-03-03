EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 10 20
Title "ENDAT/BISS Interface"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6350 1250 0    197  ~ 39
Differential STEP-DIR input HOT
$Comp
L servo:R_Small R?
U 1 1 6322E14E
P 7150 2900
AR Path="/5E092156/6322E14E" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E14E" Ref="R1001"  Part="1" 
F 0 "R1001" H 7209 2922 20  0000 L CNN
F 1 "10k" H 7209 2879 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7150 2900 50  0001 C CNN
F 3 "~" H 7150 2900 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7150 2900
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E155
P 7150 3100
AR Path="/5E092156/6322E155" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E155" Ref="R1002"  Part="1" 
F 0 "R1002" H 7209 3122 20  0000 L CNN
F 1 "1k" H 7209 3079 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7150 3100 50  0001 C CNN
F 3 "~" H 7150 3100 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7150 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E15C
P 7150 3300
AR Path="/5E092156/6322E15C" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E15C" Ref="R1003"  Part="1" 
F 0 "R1003" H 7209 3322 20  0000 L CNN
F 1 "10k" H 7209 3279 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7150 3300 50  0001 C CNN
F 3 "~" H 7150 3300 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7150 3300
	1    0    0    -1  
$EndComp
Connection ~ 7150 3000
Connection ~ 7150 3200
Wire Wire Line
	7000 3200 7150 3200
$Comp
L servo:R_Small R?
U 1 1 6322E172
P 7500 2900
AR Path="/5E092156/6322E172" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E172" Ref="R1004"  Part="1" 
F 0 "R1004" H 7559 2922 20  0000 L CNN
F 1 "10k" H 7559 2879 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7500 2900 50  0001 C CNN
F 3 "~" H 7500 2900 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7500 2900
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E179
P 7500 3100
AR Path="/5E092156/6322E179" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E179" Ref="R1005"  Part="1" 
F 0 "R1005" H 7559 3122 20  0000 L CNN
F 1 "1k" H 7559 3079 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7500 3100 50  0001 C CNN
F 3 "~" H 7500 3100 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7500 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E180
P 7500 3300
AR Path="/5E092156/6322E180" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E180" Ref="R1006"  Part="1" 
F 0 "R1006" H 7559 3322 20  0000 L CNN
F 1 "10k" H 7559 3279 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7500 3300 50  0001 C CNN
F 3 "~" H 7500 3300 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    7500 3300
	1    0    0    -1  
$EndComp
Text Label 8150 3950 0    20   ~ 0
DIR1_A_P_H
Text Label 8150 3750 0    20   ~ 0
STEP1_P_H
Text Label 8150 3850 0    20   ~ 0
STEP1_N_H
Wire Wire Line
	7000 3200 7000 3850
Wire Wire Line
	6900 3000 6900 3750
Wire Wire Line
	6900 3000 7150 3000
Wire Wire Line
	7500 3200 7400 3200
Wire Wire Line
	7400 3200 7400 4050
Connection ~ 7500 3200
Wire Wire Line
	7300 3000 7500 3000
Connection ~ 7500 3000
Wire Wire Line
	8400 3650 8300 3650
Wire Wire Line
	8300 3650 8300 3550
Wire Wire Line
	8400 4150 8300 4150
$Comp
L servo:tblock2x6 J1001
U 1 1 6322E1B9
P 8600 3850
AR Path="/5DE3DF56/6322E1B9" Ref="J1001"  Part="1" 
AR Path="/5F8D42C2/6322E1B9" Ref="J?"  Part="1" 
F 0 "J1001" H 8650 4243 39  0000 C CNN
F 1 "tblock 2x6 3.81" H 8650 4168 39  0000 C CNN
F 2 "servo:tblock02x6_3.81" H 8550 4050 50  0001 C CNN
F 3 "" H 8650 4150 50  0001 C CNN
F 4 "12 Position Terminal Block Header, Male Pins, Shrouded (4 Side) 0.150\" (3.81mm) 90°, Right Angle Through Hole " H 0   0   50  0001 C CNN "Description"
F 5 "1843114 " H 0   0   50  0001 C CNN "PartNumber"
F 6 "277-6009-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "7.50500" H 0   0   50  0001 C CNN "price@10"
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3650 9050 3650
Wire Wire Line
	9050 3650 9050 3550
Wire Wire Line
	8900 4150 9000 4150
Wire Wire Line
	8650 2150 8650 2100
Wire Wire Line
	7400 4050 8400 4050
Wire Wire Line
	7300 3950 8400 3950
Wire Wire Line
	6900 3750 8400 3750
Wire Wire Line
	7000 3850 8400 3850
$Comp
L servo:R_Small R?
U 1 1 6322E1D0
P 10150 2900
AR Path="/5E092156/6322E1D0" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E1D0" Ref="R1010"  Part="1" 
F 0 "R1010" H 10209 2922 20  0000 L CNN
F 1 "10k" H 10209 2879 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10150 2900 50  0001 C CNN
F 3 "~" H 10150 2900 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    10150 2900
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E1D7
P 10150 3100
AR Path="/5E092156/6322E1D7" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E1D7" Ref="R1011"  Part="1" 
F 0 "R1011" H 10209 3122 20  0000 L CNN
F 1 "1k" H 10209 3079 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10150 3100 50  0001 C CNN
F 3 "~" H 10150 3100 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    10150 3100
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E1DE
P 10150 3300
AR Path="/5E092156/6322E1DE" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E1DE" Ref="R1012"  Part="1" 
F 0 "R1012" H 10209 3322 20  0000 L CNN
F 1 "10k" H 10209 3279 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10150 3300 50  0001 C CNN
F 3 "~" H 10150 3300 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    10150 3300
	-1   0    0    -1  
$EndComp
Connection ~ 10150 3000
Connection ~ 10150 3200
Wire Wire Line
	10300 3200 10150 3200
$Comp
L servo:R_Small R?
U 1 1 6322E1F4
P 9800 2900
AR Path="/5E092156/6322E1F4" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E1F4" Ref="R1007"  Part="1" 
F 0 "R1007" H 9859 2922 20  0000 L CNN
F 1 "10k" H 9859 2879 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9800 2900 50  0001 C CNN
F 3 "~" H 9800 2900 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    9800 2900
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E1FB
P 9800 3100
AR Path="/5E092156/6322E1FB" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E1FB" Ref="R1008"  Part="1" 
F 0 "R1008" H 9859 3122 20  0000 L CNN
F 1 "1k" H 9859 3079 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9800 3100 50  0001 C CNN
F 3 "~" H 9800 3100 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    9800 3100
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6322E202
P 9800 3300
AR Path="/5E092156/6322E202" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6322E202" Ref="R1009"  Part="1" 
F 0 "R1009" H 9859 3322 20  0000 L CNN
F 1 "10k" H 9859 3279 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9800 3300 50  0001 C CNN
F 3 "~" H 9800 3300 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    9800 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 3200 10300 3850
Connection ~ 10300 3850
Wire Wire Line
	10400 3000 10400 3750
Wire Wire Line
	10400 3000 10150 3000
Connection ~ 10400 3750
Wire Wire Line
	10000 3000 10000 3950
Connection ~ 10000 3950
Wire Wire Line
	9800 3200 9900 3200
Wire Wire Line
	9900 3200 9900 4050
Connection ~ 9800 3200
Connection ~ 9900 4050
Wire Wire Line
	10000 3000 9800 3000
Connection ~ 9800 3000
Wire Wire Line
	9900 4050 8900 4050
Wire Wire Line
	10000 3950 8900 3950
Wire Wire Line
	10400 3750 8900 3750
Wire Wire Line
	10300 3850 8900 3850
Wire Wire Line
	9900 4050 9900 4800
Wire Wire Line
	8300 4150 8300 4250
Wire Wire Line
	9000 4250 9000 4150
$Comp
L servo:am26ls32a U1001
U 1 1 6322E22C
P 8950 5950
AR Path="/5E092156/6322E22C" Ref="U1001"  Part="1" 
AR Path="/5DE3DF56/6322E22C" Ref="U1001"  Part="1" 
F 0 "U1001" V 8937 5509 39  0000 R CNN
F 1 "AM26LS32A" V 9012 5509 39  0000 R CNN
F 2 "servo:SOIC-16W_5.3x10.2mm_P1.27mm" H 9950 5000 50  0001 C CNN
F 3 "../doc/datasheets/am26ls32a.pdf" H 8950 5550 50  0001 C CNN
F 4 "0/4 Receiver RS422, RS423 16-SOIC " H 0   0   50  0001 C CNN "Description"
F 5 "AM26LS32ACDR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-1011-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.57800" H 0   0   50  0001 C CNN "price@10"
	1    8950 5950
	0    -1   1    0   
$EndComp
Wire Wire Line
	8600 5550 8600 5450
Wire Wire Line
	8700 5550 8700 5450
Wire Wire Line
	8700 5450 9350 5450
Wire Wire Line
	9350 5450 9350 5950
Connection ~ 9350 5950
Text Notes 8650 5250 1    20   ~ 0
optional one to hi \nor/and one to low
Wire Wire Line
	7800 5450 8600 5450
Wire Wire Line
	7950 5950 7800 5950
Wire Wire Line
	7800 5950 7800 5450
Wire Wire Line
	6900 5000 6900 3750
Connection ~ 6900 3750
Wire Wire Line
	7000 3850 7000 4900
Connection ~ 7000 3850
Wire Wire Line
	7300 3000 7300 3950
Connection ~ 7300 3950
Wire Wire Line
	7300 3950 7300 4800
Wire Wire Line
	7400 4050 7400 4700
Connection ~ 7400 4050
Wire Wire Line
	8800 5550 8800 4700
Wire Wire Line
	8800 4700 10000 4700
Wire Wire Line
	10000 3950 10000 4700
Wire Wire Line
	9900 4800 8900 4800
Wire Wire Line
	8900 4800 8900 5550
Wire Wire Line
	10400 3750 10400 4900
Wire Wire Line
	10300 3850 10300 5000
Wire Wire Line
	8250 6550 8250 6400
Wire Wire Line
	8850 6650 8850 6400
Text GLabel 8000 6550 0    50   Input ~ 0
STEP1_H
Text GLabel 8000 6750 0    50   Input ~ 0
DIR1_H
Wire Wire Line
	8250 6550 8000 6550
Text GLabel 9300 6550 2    50   Input ~ 0
STEP2_H
Text GLabel 9300 6650 2    50   Input ~ 0
DIR2_H
Wire Wire Line
	8850 6650 9300 6650
Text Notes 8400 1350 0    20   ~ 0
The isolation part is shared with QEP
$Comp
L servo:Capacitor C?
U 1 1 5F04EFB4
P 7500 5600
AR Path="/605B70F2/5F04EFB4" Ref="C?"  Part="1" 
AR Path="/5E092156/5F04EFB4" Ref="C?"  Part="1" 
AR Path="/5DE3DF56/5F04EFB4" Ref="C1001"  Part="1" 
F 0 "C1001" V 7528 5710 20  0000 L CNN
F 1 "0.1uF" V 7571 5710 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7500 5500 60  0001 C CNN
F 3 "" H 7500 5600 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
	1    7500 5600
	0    1    1    0   
$EndComp
Text Label 8150 4050 0    20   ~ 0
DIR1_A_N_H
Text Label 9000 3950 0    20   ~ 0
DIR2_A_P_H
Text Label 9000 4050 0    20   ~ 0
DIR2_A_N_H
Text Label 9000 3750 0    20   ~ 0
STEP2_P_H
Text Label 9000 3850 0    20   ~ 0
STEP2_N_H
Wire Wire Line
	8300 5550 8300 4900
Wire Wire Line
	8300 4900 7000 4900
Wire Wire Line
	6900 5000 8200 5000
Wire Wire Line
	8200 5000 8200 5550
Wire Wire Line
	9050 6750 9050 6400
Wire Wire Line
	8000 6750 9050 6750
Wire Wire Line
	8450 6400 8450 6550
Wire Wire Line
	8450 6550 9300 6550
Wire Wire Line
	8400 4900 8400 5550
Wire Wire Line
	8400 4900 10400 4900
Wire Wire Line
	8500 5550 8500 5000
Wire Wire Line
	8500 5000 10300 5000
Wire Wire Line
	8600 4800 8600 5200
Wire Wire Line
	8600 5200 9000 5200
Wire Wire Line
	9000 5200 9000 5550
Wire Wire Line
	7300 4800 8600 4800
Wire Wire Line
	8700 4700 8700 5100
Wire Wire Line
	8700 5100 9100 5100
Wire Wire Line
	9100 5100 9100 5550
Wire Wire Line
	7400 4700 8700 4700
Connection ~ 8650 2150
Text Label 8800 4250 0    20   ~ 0
STEP_DiR_GND
$Comp
L servo:5VI #PWR?
U 1 1 5E388B36
P 8650 2100
AR Path="/5DD76B18/5E388B36" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5E388B36" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 8650 1900 20  0001 C CNN
F 1 "5VI" H 8650 2257 28  0000 C CNN
F 2 "" H 8650 2100 50  0001 C CNN
F 3 "" H 8650 2100 50  0001 C CNN
	1    8650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2800 7150 2150
Wire Wire Line
	7150 2150 7500 2150
Wire Wire Line
	7500 2800 7500 2150
Connection ~ 7500 2150
Wire Wire Line
	9800 2150 9800 2800
Wire Wire Line
	9800 2150 10150 2150
Wire Wire Line
	10150 2150 10150 2800
Connection ~ 9800 2150
$Comp
L servo:GNDI #PWR0142
U 1 1 5E39F025
P 8600 7100
F 0 "#PWR0142" H 8600 6850 30  0001 C CNN
F 1 "GNDI" H 8600 6951 20  0000 C CNN
F 2 "" H 8600 7100 50  0001 C CNN
F 3 "" H 8600 7100 50  0001 C CNN
	1    8600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5950 10100 7100
Wire Wire Line
	7800 5450 7500 5450
Wire Wire Line
	6750 5450 6750 2150
Wire Wire Line
	6750 2150 7150 2150
Connection ~ 7800 5450
Connection ~ 7150 2150
Wire Wire Line
	7500 5500 7500 5450
Connection ~ 7500 5450
Wire Wire Line
	7500 5450 6750 5450
Wire Wire Line
	7500 7100 8600 7100
Wire Wire Line
	7500 5800 7500 7100
Wire Wire Line
	7150 3400 7500 3400
Connection ~ 7500 3400
Connection ~ 9800 3400
Wire Wire Line
	9800 3400 10150 3400
Wire Wire Line
	7500 3400 9400 3400
Wire Wire Line
	9400 3400 9400 4250
Wire Wire Line
	9400 4250 9000 4250
Connection ~ 9400 3400
Wire Wire Line
	9400 3400 9800 3400
Connection ~ 9000 4250
Wire Wire Line
	9350 5950 10100 5950
Wire Wire Line
	9400 4250 9400 5450
Wire Wire Line
	9400 5450 9350 5450
Connection ~ 9400 4250
Connection ~ 9350 5450
Wire Wire Line
	8650 2150 9800 2150
Wire Wire Line
	7500 2150 8650 2150
Wire Wire Line
	8300 3550 8650 3550
Wire Wire Line
	8650 2150 8650 3550
Connection ~ 8650 3550
Wire Wire Line
	8650 3550 9050 3550
Wire Wire Line
	8300 4250 9000 4250
Connection ~ 8600 7100
Wire Wire Line
	8600 7100 10100 7100
$EndSCHEMATC
