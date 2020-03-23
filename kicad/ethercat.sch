EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 20
Title "ethercat"
Date "2020-03-23"
Rev "0.2"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:GND #GND_0414
U 1 1 5DB390E3
P 9500 1450
F 0 "#GND_0414" H 9505 1301 20  0001 C CNN
F 1 "GND" H 9500 1293 30  0000 C CNN
F 2 "" H 9500 1450 70  0000 C CNN
F 3 "" H 9500 1450 70  0000 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0416
U 1 1 5DB390E2
P 10750 1450
F 0 "#GND_0416" H 10750 1200 30  0001 C CNN
F 1 "GND" H 10672 1407 30  0000 R CNN
F 2 "" H 10750 1450 50  0001 C CNN
F 3 "" H 10750 1450 50  0001 C CNN
	1    10750 1450
	1    0    0    -1  
$EndComp
Text Label 9850 1650 0    39   ~ 0
P0_TD_P
Text Label 9850 1750 0    39   ~ 0
P0_TD_N
Text Label 8850 1950 0    39   ~ 0
P0_RD_P
Text Label 8850 2050 0    39   ~ 0
P0_RD_N
$Comp
L servo:GND #GND_0412
U 1 1 5DB390DE
P 9150 2250
F 0 "#GND_0412" H 9155 2101 20  0001 C CNN
F 1 "GND" H 9228 2208 30  0000 L CNN
F 2 "" H 9150 2250 70  0000 C CNN
F 3 "" H 9150 2250 70  0000 C CNN
	1    9150 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0408
U 1 1 5DB390DD
P 8050 4300
F 0 "#GND_0408" H 8055 4151 20  0001 C CNN
F 1 "GND" H 8050 4142 30  0000 C CNN
F 2 "" H 8050 4300 70  0000 C CNN
F 3 "" H 8050 4300 70  0000 C CNN
	1    8050 4300
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0405
U 1 1 5DB390D2
P 3650 4400
F 0 "#GND_0405" H 3738 4393 20  0001 L CNN
F 1 "GND" H 3650 4242 30  0000 C CNN
F 2 "" H 3650 4400 70  0000 C CNN
F 3 "" H 3650 4400 70  0000 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0407
U 1 1 5DB390CF
P 4250 10650
F 0 "#GND_0407" H 4255 10501 20  0001 C CNN
F 1 "GND" H 4250 10492 30  0000 C CNN
F 2 "" H 4250 10650 70  0000 C CNN
F 3 "" H 4250 10650 70  0000 C CNN
	1    4250 10650
	1    0    0    -1  
$EndComp
Text Notes 5850 5100 0    197  ~ 39
EtherCAT P1
Text Notes 3900 9500 0    39   ~ 0
EtherCAT EEPROM
Text Notes 7000 9750 0    39   ~ 0
Run and Error LEDs
NoConn ~ 5150 4050
NoConn ~ 5150 4150
$Comp
L servo:GND #GND_0403
U 1 1 5DB390BD
P 3850 2400
F 0 "#GND_0403" H 3850 2150 30  0001 C CNN
F 1 "GND" H 3850 2243 30  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0401
U 1 1 5DB390BC
P 3250 2000
F 0 "#GND_0401" H 3338 1993 20  0001 L CNN
F 1 "GND" H 3338 1941 30  0000 L CNN
F 2 "" H 3250 2000 70  0000 C CNN
F 3 "" H 3250 2000 70  0000 C CNN
	1    3250 2000
	1    0    0    -1  
$EndComp
Text Notes 5650 950  0    197  ~ 39
EtherCAT P0
Wire Wire Line
	8200 2650 8050 2650
Wire Wire Line
	9600 2950 8550 2950
Wire Wire Line
	9150 3150 8050 3150
Wire Wire Line
	8050 4300 8050 4150
Wire Wire Line
	3450 2850 5250 2850
Wire Wire Line
	3100 2850 3450 2850
Wire Wire Line
	3100 3050 5250 3050
Wire Wire Line
	3550 3250 5250 3250
Wire Wire Line
	3100 3250 3550 3250
Wire Wire Line
	3650 3350 5250 3350
Wire Wire Line
	3100 3350 3650 3350
Wire Wire Line
	3750 3450 5250 3450
Wire Wire Line
	3100 3450 3750 3450
Wire Wire Line
	3850 3550 5250 3550
Wire Wire Line
	3100 3550 3850 3550
Wire Wire Line
	5300 10250 5100 10250
Wire Wire Line
	5300 10350 4900 10350
Wire Wire Line
	3450 4300 3450 4200
Wire Wire Line
	3550 4300 3450 4300
Wire Wire Line
	3650 4300 3550 4300
Wire Wire Line
	3750 4300 3650 4300
Wire Wire Line
	3850 4300 3750 4300
Wire Wire Line
	3850 4200 3850 4300
Wire Wire Line
	3650 4300 3650 4200
Wire Wire Line
	3550 4300 3550 4200
Wire Wire Line
	3750 4300 3750 4200
Wire Wire Line
	3950 3750 3950 3800
Wire Wire Line
	5250 3750 3950 3750
Wire Wire Line
	3850 3550 3850 3800
Wire Wire Line
	3750 3450 3750 3800
Wire Wire Line
	3650 3350 3650 3800
Wire Wire Line
	3550 3250 3550 3800
Wire Wire Line
	3450 2850 3450 3800
Wire Wire Line
	3950 4300 3950 4200
Wire Wire Line
	3850 4300 3950 4300
Wire Wire Line
	4350 1850 4250 1850
Wire Wire Line
	4450 1850 4350 1850
Wire Wire Line
	4350 1850 4350 1800
Wire Wire Line
	3650 4300 3650 4400
Wire Wire Line
	7500 10500 7600 10500
Wire Wire Line
	7600 10250 7500 10250
Wire Wire Line
	8050 2950 8150 2950
Wire Wire Line
	8050 2250 8150 2250
Wire Wire Line
	10750 1450 10750 1350
Wire Wire Line
	5100 9750 5100 9650
Wire Wire Line
	5100 10250 5100 10150
Wire Wire Line
	5150 4050 5250 4050
Wire Wire Line
	5150 4150 5250 4150
Wire Wire Line
	3700 1850 3700 1950
Wire Wire Line
	3950 1850 3700 1850
Wire Wire Line
	3950 1950 3950 1850
Wire Wire Line
	3700 2350 3850 2350
Wire Wire Line
	3700 2250 3700 2350
Wire Wire Line
	3950 2350 3950 2250
Wire Wire Line
	9500 1450 9500 1350
Wire Wire Line
	9500 950  9500 1050
Wire Wire Line
	10750 950  10750 1050
Wire Wire Line
	8200 10250 8000 10250
Wire Wire Line
	8200 10500 8000 10500
Wire Wire Line
	8200 10250 8200 10500
Wire Wire Line
	8200 10250 8200 10150
Connection ~ 5100 10250
Connection ~ 8200 10250
Connection ~ 3450 2850
Connection ~ 3550 4300
Connection ~ 3550 3250
Connection ~ 3650 4300
Connection ~ 3650 3350
Connection ~ 3750 4300
Connection ~ 3750 3450
Connection ~ 3950 1850
Connection ~ 3850 4300
Connection ~ 3850 3550
Connection ~ 4350 1850
$Comp
L servo:DP83822 U402
U 1 1 5DB390B6
P 6650 2850
F 0 "U402" H 6650 4423 60  0000 C CNN
F 1 "DP83822" H 6650 4325 50  0000 C CNN
F 2 "servo:QFN-32-1EP_5x5mm_P0.5mm_EP2.9x2.9mm_ThermalVias" H 6650 2850 50  0001 C CNN
F 3 "../doc/datasheets/dp83822i.pdf" H 6650 2850 50  0001 C CNN
F 4 "DP83822IRHBR" V -650 1750 60  0001 C CNN "PartNumber"
F 5 "Ethernet Interface 32-VQFN (5x5) " H 0   0   50  0001 C CNN "Description"
F 6 "296-47256-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.37700" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    6650 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C418
U 1 1 5DB390AB
P 9500 1250
F 0 "C418" V 9572 1140 20  0000 R CNN
F 1 "0.1uF" V 9529 1140 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9500 1150 60  0001 C CNN
F 3 "" H 9500 1250 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9500 1250
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R420
U 1 1 5DB390AA
P 7800 10500
F 0 "R420" H 7800 10615 20  0000 C CNN
F 1 "680" H 7800 10572 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 7300 10400 60  0001 C CNN
F 3 "" H 7400 10500 60  0001 C CNN
F 4 "680 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film" H 0   0   50  0001 C CNN "Description"
F 5 "RMCF0603JT680R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "RMCF0603JT680RCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7800 10500
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R427
U 1 1 5DB390A5
P 1600 4900
F 0 "R427" V 1578 4950 20  0000 L CNN
F 1 "2.2k" V 1621 4950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 1100 4800 60  0001 C CNN
F 3 "" H 1200 4900 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    1600 4900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C422
U 1 1 5DB390A0
P 10750 1250
F 0 "C422" V 10822 1140 20  0000 R CNN
F 1 "0.1uF" V 10779 1140 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10750 1150 60  0001 C CNN
F 3 "" H 10750 1250 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10750 1250
	0    -1   -1   0   
$EndComp
$Comp
L servo:CAT24C16WI U401
U 1 1 5DB3909E
P 4200 10200
F 0 "U401" H 4200 10543 39  0000 C CNN
F 1 "CAT24C16WI" H 4200 10468 39  0000 C CNN
F 2 "servo:SOIC-8_3.9x4.9mm_P1.27mm" H 3700 10500 60  0001 C CNN
F 3 "../doc/datasheets/CAT24C01-D.PDF" H 3800 10600 60  0001 C CNN
F 4 "CAT24C16WI-GT3" H 4200 10200 50  0001 C CNN "Fieldname"
F 5 "EEPROM Memory IC 16Kb (2K x 8) I²C 400kHz 900ns 8-SOIC" H 0   0   50  0001 C CNN "Description"
F 6 "CAT24C16WI-GT3" H 0   0   50  0001 C CNN "PartNumber"
F 7 "CAT24C16WI-GT3CT-ND " H 0   0   50  0001 C CNN "digikey"
F 8 "0.16300" H 0   0   50  0001 C CNN "price@10"
F 9 "0" H 0   0   50  0001 C CNN "bom_1"
F 10 "1" H 0   0   50  0001 C CNN "bom_2"
F 11 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4200 10200
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R419
U 1 1 5DB39094
P 7800 10250
F 0 "R419" H 7800 10365 20  0000 C CNN
F 1 "680" H 7800 10322 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 7300 10150 60  0001 C CNN
F 3 "" H 7400 10250 60  0001 C CNN
F 4 "680 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film" H 0   0   50  0001 C CNN "Description"
F 5 "RMCF0603JT680R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "RMCF0603JT680RCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7800 10250
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C414
U 1 1 5DB39093
P 3550 10100
F 0 "C414" V 3622 10210 20  0000 L CNN
F 1 "0.1uF" V 3579 10210 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3550 10000 60  0001 C CNN
F 3 "" H 3550 10100 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3550 10100
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R410
U 1 1 5DB39092
P 3950 4000
F 0 "R410" V 3928 4050 20  0000 L CNN
F 1 "2.2k" V 3971 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3450 3900 60  0001 C CNN
F 3 "" H 3550 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3950 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R408
U 1 1 5DB39091
P 3850 4000
F 0 "R408" V 3828 4050 20  0000 L CNN
F 1 "2.2k" V 3871 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3350 3900 60  0001 C CNN
F 3 "" H 3450 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3850 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R406
U 1 1 5DB39090
P 3750 4000
F 0 "R406" V 3728 4050 20  0000 L CNN
F 1 "2.2k" V 3771 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3250 3900 60  0001 C CNN
F 3 "" H 3350 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3750 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R404
U 1 1 5DB3908F
P 3650 4000
F 0 "R404" V 3628 4050 20  0000 L CNN
F 1 "2.2k" V 3671 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3150 3900 60  0001 C CNN
F 3 "" H 3250 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3650 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R402
U 1 1 5DB3908E
P 3550 4000
F 0 "R402" V 3528 4050 20  0000 L CNN
F 1 "2.2k" V 3571 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3050 3900 60  0001 C CNN
F 3 "" H 3150 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3550 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R401
U 1 1 5DB3908D
P 3450 4000
F 0 "R401" V 3428 3950 20  0000 R CNN
F 1 "2.2k" V 3471 3950 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 2950 3900 60  0001 C CNN
F 3 "" H 3050 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3450 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R421
U 1 1 5DB3908A
P 8350 2250
F 0 "R421" H 8350 2365 20  0000 C CNN
F 1 "4.87k" H 8350 2322 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 7850 2150 60  0001 C CNN
F 3 "" H 7950 2250 60  0001 C CNN
F 4 "4.87 kOhms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film" H 0   0   50  0001 C CNN "Description"
F 5 "RMCF0603FT4K87" H 0   0   50  0001 C CNN "PartNumber"
F 6 " RMCF0603FT4K87CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8350 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R413
U 1 1 5DB39083
P 4250 2200
F 0 "R413" V 4228 2250 20  0000 L CNN
F 1 "2.2k" V 4271 2250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3750 2100 60  0001 C CNN
F 3 "" H 3850 2200 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4250 2200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R415
U 1 1 5DB39082
P 4450 2200
F 0 "R415" V 4428 2250 20  0000 L CNN
F 1 "2.2k" V 4471 2250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3950 2100 60  0001 C CNN
F 3 "" H 4050 2200 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4450 2200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R418
U 1 1 5DB39080
P 5100 9950
F 0 "R418" V 5078 10000 20  0000 L CNN
F 1 "4.7k" V 5121 10000 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4600 9850 60  0001 C CNN
F 3 "" H 4700 9950 60  0001 C CNN
F 4 "4.7 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-074K7L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-4.7KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5100 9950
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R422
U 1 1 5DB3907F
P 8350 2950
F 0 "R422" H 8350 2879 20  0000 C CNN
F 1 "10k" H 8350 2836 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 7850 2850 60  0001 C CNN
F 3 "" H 7950 2950 60  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8350 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R429
U 1 1 5DB3907E
P 9050 1150
F 0 "R429" V 9028 1100 20  0000 R CNN
F 1 "49.9" V 9071 1100 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 8550 1050 60  0001 C CNN
F 3 "" H 8650 1150 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9050 1150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R431
U 1 1 5DB3907D
P 9250 1150
F 0 "R431" V 9228 1100 20  0000 R CNN
F 1 "49.9" V 9271 1100 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 8750 1050 60  0001 C CNN
F 3 "" H 8850 1150 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9250 1150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R435
U 1 1 5DB3907C
P 10300 1200
F 0 "R435" V 10278 1150 20  0000 R CNN
F 1 "49.9" V 10321 1150 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 9800 1100 60  0001 C CNN
F 3 "" H 9900 1200 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10300 1200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R437
U 1 1 5DB3907B
P 10450 1200
F 0 "R437" V 10428 1250 20  0000 L CNN
F 1 "49.9" V 10471 1250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9950 1100 60  0001 C CNN
F 3 "" H 10050 1200 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10450 1200
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C409
U 1 1 5DB3906D
P 3700 2150
F 0 "C409" V 3772 2260 20  0000 L CNN
F 1 "10uF" V 3729 2260 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3700 2050 60  0001 C CNN
F 3 "" H 3700 2150 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3700 2150
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C407
U 1 1 5DB3906C
P 3350 1850
F 0 "C407" V 3350 1850 20  0000 R CNN
F 1 "10uF" V 3450 1850 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3350 1750 60  0001 C CNN
F 3 "" H 3350 1850 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3350 1850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C411
U 1 1 5DB39068
P 3950 2150
F 0 "C411" V 4022 2040 20  0000 R CNN
F 1 "0.1uF" V 3979 2040 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3950 2050 60  0001 C CNN
F 3 "" H 3950 2150 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3950 2150
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C405
U 1 1 5DB39067
P 3150 1850
F 0 "C405" V 3150 1850 20  0000 R CNN
F 1 "0.1uF" V 3250 1850 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3150 1750 60  0001 C CNN
F 3 "" H 3150 1850 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3150 1850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R433
U 1 1 5DB3905E
P 10100 2750
F 0 "R433" V 10078 2800 20  0000 L CNN
F 1 "2.2k" V 10121 2800 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9600 2650 60  0001 C CNN
F 3 "" H 9700 2750 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2750 8200 2750
Wire Wire Line
	4250 1850 4250 2000
Wire Wire Line
	4450 1850 4450 2000
$Comp
L servo:3V3 #PWR0403
U 1 1 5DD89835
P 4350 1800
F 0 "#PWR0403" H 4355 2007 20  0001 C CNN
F 1 "3V3" H 4355 1957 28  0000 C CNN
F 2 "" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0405
U 1 1 5DD89D57
P 4700 9550
F 0 "#PWR0405" H 4705 9757 20  0001 C CNN
F 1 "3V3" H 4705 9707 28  0000 C CNN
F 2 "" H 4700 9550 50  0001 C CNN
F 3 "" H 4700 9550 50  0001 C CNN
	1    4700 9550
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0401
U 1 1 5DD8AEAB
P 3250 1550
F 0 "#PWR0401" H 3150 1650 20  0001 C CNN
F 1 "3V3" H 3250 1707 28  0000 C CNN
F 2 "" H 3250 1550 50  0001 C CNN
F 3 "" H 3250 1550 50  0001 C CNN
	1    3250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1550 3250 1650
Connection ~ 3350 1650
$Comp
L servo:3V3 #PWR0409
U 1 1 5DDC55D2
P 9350 800
F 0 "#PWR0409" H 9355 1007 20  0001 C CNN
F 1 "3V3" H 9355 957 28  0000 C CNN
F 2 "" H 9350 800 50  0001 C CNN
F 3 "" H 9350 800 50  0001 C CNN
	1    9350 800 
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0413
U 1 1 5DDC7891
P 10100 2450
F 0 "#PWR0413" H 10105 2657 20  0001 C CNN
F 1 "3V3" H 10105 2607 28  0000 C CNN
F 2 "" H 10100 2450 50  0001 C CNN
F 3 "" H 10100 2450 50  0001 C CNN
	1    10100 2450
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0415
U 1 1 5DDC83D2
P 10600 850
F 0 "#PWR0415" H 10500 950 20  0001 C CNN
F 1 "3V3" H 10600 1000 28  0000 C CNN
F 2 "" H 10600 850 50  0001 C CNN
F 3 "" H 10600 850 50  0001 C CNN
	1    10600 850 
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0406
U 1 1 5DDCD913
P 8200 10150
F 0 "#PWR0406" H 8205 10357 20  0001 C CNN
F 1 "3V3" H 8205 10307 28  0000 C CNN
F 2 "" H 8200 10150 50  0001 C CNN
F 3 "" H 8200 10150 50  0001 C CNN
	1    8200 10150
	1    0    0    -1  
$EndComp
$Comp
L servo:LED_A2_K1 D402
U 1 1 5DB390A9
P 7400 10500
F 0 "D402" H 7425 10651 20  0000 C CNN
F 1 "red@2mA" H 7425 10691 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 7200 10300 60  0001 C CNN
F 3 "../doc/datasheets/LS L29K.pdf" H 7200 10300 60  0001 C CNN
F 4 "475-3124-1-ND" H 7400 10500 50  0001 C CNN "digikey"
F 5 "LS L29K-G1H2-1-Z" H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED RED DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.33900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7400 10500
	-1   0    0    1   
$EndComp
$Comp
L servo:LED_A2_K1 D401
U 1 1 5DB390AC
P 7400 10250
F 0 "D401" H 7425 10113 20  0000 C CNN
F 1 "green@2mA" H 7425 10153 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 7200 10050 60  0001 C CNN
F 3 "../doc/datasheets/LG L29K.pdf" H 7200 10050 60  0001 C CNN
F 4 "475-2709-1-ND" H 7400 10250 50  0001 C CNN "digikey"
F 5 "LG L29K-G2J1-24-Z" H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED GREEN DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.31900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7400 10250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 10500 7250 10500
Wire Wire Line
	7050 10250 7250 10250
Wire Wire Line
	4450 2950 4450 2400
Wire Wire Line
	4250 3850 5250 3850
Wire Wire Line
	4250 2400 4250 3850
$Comp
L servo:3V3 #PWR0411
U 1 1 5E312132
P 9600 2750
F 0 "#PWR0411" H 9605 2957 20  0001 C CNN
F 1 "3V3" H 9605 2907 28  0000 C CNN
F 2 "" H 9600 2750 50  0001 C CNN
F 3 "" H 9600 2750 50  0001 C CNN
	1    9600 2750
	1    0    0    -1  
$EndComp
Text GLabel 5400 6200 0    50   Input ~ 0
ECAT1_TX_EN
Text GLabel 5400 6300 0    50   Input ~ 0
ECAT1_TX_CLK
Text GLabel 5400 6500 0    50   Input ~ 0
ECAT1_TX_D0
Text GLabel 5400 6600 0    50   Input ~ 0
ECAT1_TX_D1
Text GLabel 5400 6700 0    50   Input ~ 0
ECAT1_TX_D2
Text GLabel 5400 6800 0    50   Input ~ 0
ECAT1_TX_D3
Text GLabel 3250 7100 0    50   Input ~ 0
ECAT1_RX_ER
Text GLabel 3250 7000 0    50   Input ~ 0
ECAT1_RX_DV
Text GLabel 3250 7200 0    50   Input ~ 0
ECAT1_RX_CLK
Text GLabel 3250 7400 0    50   Input ~ 0
ECAT1_RX_D0
Text GLabel 3250 7500 0    50   Input ~ 0
ECAT1_RX_D1
Text GLabel 3250 7600 0    50   Input ~ 0
ECAT1_RX_D2
Text GLabel 3250 7700 0    50   Input ~ 0
ECAT1_RX_D3
Text GLabel 8350 6900 2    50   Input ~ 0
ECAT_MDIO
Text GLabel 10600 7600 0    50   Input ~ 0
ECAT1_RJ_LED1
Text GLabel 10600 7700 0    50   Input ~ 0
ECAT1_RJ_LED0
Text GLabel 3100 2950 0    50   Input ~ 0
ECAT0_RX_ER
Text GLabel 3100 2850 0    50   Input ~ 0
ECAT0_RX_DV
Text GLabel 3100 3050 0    50   Input ~ 0
ECAT0_RX_CLK
Text GLabel 3100 3250 0    50   Input ~ 0
ECAT0_RX_D0
Text GLabel 3100 3350 0    50   Input ~ 0
ECAT0_RX_D1
Text GLabel 3100 3450 0    50   Input ~ 0
ECAT0_RX_D2
Text GLabel 3100 3550 0    50   Input ~ 0
ECAT0_RX_D3
Wire Wire Line
	3100 2950 4450 2950
Connection ~ 4450 2950
Wire Wire Line
	4450 2950 5250 2950
Text GLabel 5250 2050 0    50   Input ~ 0
ECAT0_TX_EN
Text GLabel 5250 2150 0    50   Input ~ 0
ECAT0_TX_CLK
Text GLabel 5250 2350 0    50   Input ~ 0
ECAT0_TX_D0
Text GLabel 5250 2450 0    50   Input ~ 0
ECAT0_TX_D1
Text GLabel 5250 2550 0    50   Input ~ 0
ECAT0_TX_D2
Text GLabel 5250 2650 0    50   Input ~ 0
ECAT0_TX_D3
Text GLabel 8200 2750 2    50   Input ~ 0
ECAT_MDIO
Text GLabel 8200 2650 2    50   Input ~ 0
ECAT_MDCLK
Text GLabel 9150 3150 2    50   Input ~ 0
ECAT_RST
Text GLabel 10450 3450 0    50   Input ~ 0
ECAT0_RJ_LED0
Text GLabel 10450 3550 0    50   Input ~ 0
ECAT0_RJ_LED1
Text GLabel 5300 10250 2    50   Input ~ 0
ECAT_EEPROM_SCL
Text GLabel 5300 10350 2    50   Input ~ 0
ECAT_EEPROM_SDA
Text Notes 4300 3700 0    20   ~ 0
Address select. Be shure \nyou select two distinct\n
Text GLabel 9050 3350 2    50   Input ~ 0
ENET_CAT_XI
Wire Wire Line
	9050 3350 8650 3350
Text Notes 3950 9600 0    20   ~ 0
these IC is a 'must'. \nEspecified on the ethercat slave
Text Notes 750  1000 0    197  ~ 39
EtherCAT
$Comp
L servo:OSC_4P_1_TRI-STATE Y?
U 1 1 5F22F490
P 8750 3950
AR Path="/5DD4DF4C/5F22F490" Ref="Y?"  Part="1" 
AR Path="/5DC3DC9E/5F22F490" Ref="Y?"  Part="1" 
AR Path="/5DC4A59D/5F22F490" Ref="Y401"  Part="1" 
F 0 "Y401" H 8750 4273 60  0000 C CNN
F 1 "osc 25Mhz" H 8750 4175 50  0000 C CNN
F 2 "servo:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 8750 3950 50  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 8750 3950 50  0001 C CNN
F 4 "25MHz XO (Standard) HCMOS Oscillator 3.3V Enable/Disable 4-SMD, No Lead " H 0   0   50  0001 C CNN "Description"
F 5 "ECS-2520S33-250-FN-TR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "XC2198CT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "1.41900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8750 3950
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5F22F498
P 9100 3850
AR Path="/5EAA846A/5F22F498" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5F22F498" Ref="#PWR?"  Part="1" 
AR Path="/5DC4A59D/5F22F498" Ref="#PWR0407"  Part="1" 
F 0 "#PWR0407" H 9105 4060 20  0001 C CNN
F 1 "3V3" H 9105 4008 30  0000 C CNN
F 2 "" H 9100 3850 70  0000 C CNN
F 3 "" H 9100 3850 70  0000 C CNN
	1    9100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3850 9100 3850
Wire Wire Line
	9000 4050 9100 4050
Wire Wire Line
	9100 4050 9100 3850
Connection ~ 9100 3850
Wire Wire Line
	8500 4050 8450 4050
Wire Wire Line
	8450 4050 8450 4300
Wire Wire Line
	8050 3350 8250 3350
Wire Wire Line
	8250 3850 8500 3850
$Comp
L servo:GND #GND_0410
U 1 1 5F3AC06F
P 8450 4300
F 0 "#GND_0410" H 8455 4151 20  0001 C CNN
F 1 "GND" H 8450 4142 30  0000 C CNN
F 2 "" H 8450 4300 70  0000 C CNN
F 3 "" H 8450 4300 70  0000 C CNN
	1    8450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2250 9150 2250
Text Notes 8750 4300 0    20   ~ 0
you could choose between\n uC out clk, oscilator for ecah PHY\n or share oscilator to many PHY's using uC\n out clk path
Wire Wire Line
	10100 2950 10100 3250
Wire Wire Line
	10450 3450 10650 3450
Wire Wire Line
	10550 3250 10650 3250
Wire Wire Line
	10650 3250 10650 3450
Text Notes 10300 3000 0    20   ~ 0
the pullup of led_0 is mandatory, but to\n drive the led you could choose between \nPHY or uC populating/unpopulating the jumper
Text Notes 10450 3550 0    20   ~ 0
It'd be optionall\n
Text Notes 800  1400 0    20   ~ 0
I choose transfeormer spare part instead of the embedded shielded RJ45\n plus leds, cause noy I can choose any format connector  RJ45 and\n maybe add PoE then. And are halt the price\n\nThe eeprom is mandatory in order to ESC read save some internal\n configuration.\n\nLeds are optional, but the PHY's has som pins used as a boostrap, so you\n have to respet that
Connection ~ 4250 1850
Wire Wire Line
	4450 1850 5250 1850
Connection ~ 4450 1850
Wire Wire Line
	3350 1650 5250 1650
Wire Wire Line
	8050 1750 9250 1750
Wire Wire Line
	8050 1650 9050 1650
Wire Wire Line
	9250 1350 9250 1750
Connection ~ 9250 1750
Wire Wire Line
	9050 1350 9050 1650
Connection ~ 9050 1650
Wire Wire Line
	9350 800  9350 950 
Connection ~ 9350 950 
Wire Wire Line
	9350 950  9500 950 
Wire Wire Line
	10300 1400 10300 1950
Connection ~ 10300 1950
Wire Wire Line
	10450 1400 10450 2050
Connection ~ 10450 2050
Wire Wire Line
	8050 1950 10300 1950
Wire Wire Line
	8050 2050 10450 2050
Wire Wire Line
	10750 950  10600 950 
Wire Wire Line
	10300 950  10300 1000
Wire Wire Line
	10450 1000 10450 950 
Connection ~ 10450 950 
Wire Wire Line
	10450 950  10300 950 
Connection ~ 10600 950 
Wire Wire Line
	10600 950  10450 950 
Wire Wire Line
	9850 2450 9850 3250
Wire Wire Line
	9850 3250 10100 3250
Wire Wire Line
	8050 2450 9850 2450
Connection ~ 10100 3250
$Comp
L servo:GND #GND_0415
U 1 1 6322EEF3
P 9650 5550
F 0 "#GND_0415" H 9655 5401 20  0001 C CNN
F 1 "GND" H 9650 5400 30  0000 C CNN
F 2 "" H 9650 5550 70  0000 C CNN
F 3 "" H 9650 5550 70  0000 C CNN
	1    9650 5550
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0417
U 1 1 6322EEF9
P 10900 5600
F 0 "#GND_0417" H 10900 5350 30  0001 C CNN
F 1 "GND" H 10822 5557 30  0000 R CNN
F 2 "" H 10900 5600 50  0001 C CNN
F 3 "" H 10900 5600 50  0001 C CNN
	1    10900 5600
	1    0    0    -1  
$EndComp
Text Label 10050 5800 0    39   ~ 0
P1_TD_P
Text Label 10050 5900 0    39   ~ 0
P1_TD_N
Text Label 9000 6100 0    39   ~ 0
P1_RD_P
Text Label 9000 6200 0    39   ~ 0
P1_RD_N
$Comp
L servo:GND #GND_0413
U 1 1 6322EF07
P 9300 6400
F 0 "#GND_0413" H 9305 6251 20  0001 C CNN
F 1 "GND" H 9378 6358 30  0000 L CNN
F 2 "" H 9300 6400 70  0000 C CNN
F 3 "" H 9300 6400 70  0000 C CNN
	1    9300 6400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0409
U 1 1 6322EF0D
P 8200 8450
F 0 "#GND_0409" H 8205 8301 20  0001 C CNN
F 1 "GND" H 8200 8292 30  0000 C CNN
F 2 "" H 8200 8450 70  0000 C CNN
F 3 "" H 8200 8450 70  0000 C CNN
	1    8200 8450
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0406
U 1 1 6322EF13
P 3800 8550
F 0 "#GND_0406" H 3888 8543 20  0001 L CNN
F 1 "GND" H 3800 8392 30  0000 C CNN
F 2 "" H 3800 8550 70  0000 C CNN
F 3 "" H 3800 8550 70  0000 C CNN
	1    3800 8550
	1    0    0    -1  
$EndComp
NoConn ~ 5300 8200
NoConn ~ 5300 8300
$Comp
L servo:GND #GND_0419
U 1 1 6322EF1B
P 12250 7100
F 0 "#GND_0419" H 12255 6951 20  0001 C CNN
F 1 "GND" H 12250 6943 30  0000 C CNN
F 2 "" H 12250 7100 70  0000 C CNN
F 3 "" H 12250 7100 70  0000 C CNN
	1    12250 7100
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0404
U 1 1 6322EF21
P 3850 6550
F 0 "#GND_0404" H 3850 6300 30  0001 C CNN
F 1 "GND" H 3850 6393 30  0000 C CNN
F 2 "" H 3850 6550 50  0001 C CNN
F 3 "" H 3850 6550 50  0001 C CNN
	1    3850 6550
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0402
U 1 1 6322EF27
P 3350 6200
F 0 "#GND_0402" H 3438 6193 20  0001 L CNN
F 1 "GND" H 3438 6141 30  0000 L CNN
F 2 "" H 3350 6200 70  0000 C CNN
F 3 "" H 3350 6200 70  0000 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 6800 8200 6800
Wire Wire Line
	9750 7100 9050 7100
Wire Wire Line
	9300 7300 8200 7300
Wire Wire Line
	8200 8450 8200 8300
Wire Wire Line
	3600 7000 5400 7000
Wire Wire Line
	3250 7000 3600 7000
Wire Wire Line
	3250 7200 5400 7200
Wire Wire Line
	3700 7400 5400 7400
Wire Wire Line
	3250 7400 3700 7400
Wire Wire Line
	3800 7500 5400 7500
Wire Wire Line
	3250 7500 3800 7500
Wire Wire Line
	3900 7600 5400 7600
Wire Wire Line
	3250 7600 3900 7600
Wire Wire Line
	4000 7700 5400 7700
Wire Wire Line
	3250 7700 4000 7700
Wire Wire Line
	3600 8450 3600 8350
Wire Wire Line
	3700 8450 3600 8450
Wire Wire Line
	3800 8450 3700 8450
Wire Wire Line
	3900 8450 3800 8450
Wire Wire Line
	4000 8450 3900 8450
Wire Wire Line
	4000 8350 4000 8450
Wire Wire Line
	3800 8450 3800 8350
Wire Wire Line
	3700 8450 3700 8350
Wire Wire Line
	3900 8450 3900 8350
Wire Wire Line
	5400 7900 4200 7900
Wire Wire Line
	4000 7700 4000 7950
Wire Wire Line
	3900 7600 3900 7950
Wire Wire Line
	3800 7500 3800 7950
Wire Wire Line
	3700 7400 3700 7950
Wire Wire Line
	3600 7000 3600 7950
Wire Wire Line
	4500 6000 4400 6000
Wire Wire Line
	4600 6000 4500 6000
Wire Wire Line
	4500 6000 4500 5950
Wire Wire Line
	3800 8450 3800 8550
Wire Wire Line
	8200 7100 8650 7100
Wire Wire Line
	8200 6400 8300 6400
Wire Wire Line
	10900 5600 10900 5500
Wire Wire Line
	5300 8200 5400 8200
Wire Wire Line
	5300 8300 5400 8300
Wire Wire Line
	3700 6000 3700 6100
Wire Wire Line
	3950 6000 3700 6000
Wire Wire Line
	3950 6100 3950 6000
Wire Wire Line
	3700 6500 3850 6500
Wire Wire Line
	3700 6400 3700 6500
Wire Wire Line
	3950 6500 3950 6400
Wire Wire Line
	9650 5550 9650 5500
Wire Wire Line
	9650 5100 9650 5200
Wire Wire Line
	10900 5100 10900 5200
Connection ~ 3600 7000
Connection ~ 3700 8450
Connection ~ 3700 7400
Connection ~ 3800 8450
Connection ~ 3800 7500
Connection ~ 3900 8450
Connection ~ 3900 7600
Connection ~ 3950 6000
Connection ~ 4000 7700
Connection ~ 4500 6000
$Comp
L servo:DP83822 U403
U 1 1 6322EF94
P 6800 7000
F 0 "U403" H 6800 8573 60  0000 C CNN
F 1 "DP83822" H 6800 8475 50  0000 C CNN
F 2 "servo:QFN-32-1EP_5x5mm_P0.5mm_EP2.9x2.9mm_ThermalVias" H 6800 7000 50  0001 C CNN
F 3 "../doc/datasheets/dp83822i.pdf" H 6800 7000 50  0001 C CNN
F 4 "DP83822IRHBR" V -500 5900 60  0001 C CNN "PartNumber"
F 5 "Ethernet Interface 32-VQFN (5x5) " H 0   0   50  0001 C CNN "Description"
F 6 "296-47256-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.37700" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    6800 7000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C419
U 1 1 6322EF9C
P 9650 5400
F 0 "C419" V 9722 5510 20  0000 L CNN
F 1 "0.1uF" V 9679 5510 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9650 5300 60  0001 C CNN
F 3 "" H 9650 5400 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9650 5400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C423
U 1 1 6322EFBC
P 10900 5400
F 0 "C423" V 10972 5290 20  0000 R CNN
F 1 "0.1uF" V 10929 5290 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10900 5300 60  0001 C CNN
F 3 "" H 10900 5400 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10900 5400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R412
U 1 1 6322EFE0
P 4200 6350
F 0 "R412" V 4178 6400 20  0000 L CNN
F 1 "2.2k" V 4221 6400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3700 6250 60  0001 C CNN
F 3 "" H 3800 6350 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4200 6350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R411
U 1 1 6322EFE7
P 4000 8150
F 0 "R411" V 3978 8200 20  0000 L CNN
F 1 "2.2k" V 4021 8200 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3500 8050 60  0001 C CNN
F 3 "" H 3600 8150 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4000 8150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R409
U 1 1 6322EFEE
P 3900 8150
F 0 "R409" V 3878 8200 20  0000 L CNN
F 1 "2.2k" V 3921 8200 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3400 8050 60  0001 C CNN
F 3 "" H 3500 8150 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3900 8150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R407
U 1 1 6322EFF5
P 3800 8150
F 0 "R407" V 3778 8200 20  0000 L CNN
F 1 "2.2k" V 3821 8200 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3300 8050 60  0001 C CNN
F 3 "" H 3400 8150 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3800 8150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R405
U 1 1 6322EFFC
P 3700 8150
F 0 "R405" V 3678 8200 20  0000 L CNN
F 1 "2.2k" V 3721 8200 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3200 8050 60  0001 C CNN
F 3 "" H 3300 8150 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3700 8150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R403
U 1 1 6322F003
P 3600 8150
F 0 "R403" V 3578 8100 20  0000 R CNN
F 1 "2.2k" V 3621 8100 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 3100 8050 60  0001 C CNN
F 3 "" H 3200 8150 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3600 8150
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R424
U 1 1 6322F00A
P 8500 6400
F 0 "R424" H 8500 6515 20  0000 C CNN
F 1 "4.87k" H 8500 6472 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8000 6300 60  0001 C CNN
F 3 "" H 8100 6400 60  0001 C CNN
F 4 "4.87 kOhms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film" H 0   0   50  0001 C CNN "Description"
F 5 "RMCF0603FT4K87" H 0   0   50  0001 C CNN "PartNumber"
F 6 " RMCF0603FT4K87CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8500 6400
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R414
U 1 1 6322F012
P 4400 6350
F 0 "R414" V 4378 6400 20  0000 L CNN
F 1 "2.2k" V 4421 6400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3900 6250 60  0001 C CNN
F 3 "" H 4000 6350 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 6350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R416
U 1 1 6322F01A
P 4600 6350
F 0 "R416" V 4578 6400 20  0000 L CNN
F 1 "2.2k" V 4621 6400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4100 6250 60  0001 C CNN
F 3 "" H 4200 6350 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4600 6350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R425
U 1 1 6322F022
P 8850 7100
F 0 "R425" H 8850 7029 20  0000 C CNN
F 1 "10k" H 8850 6986 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8350 7000 60  0001 C CNN
F 3 "" H 8450 7100 60  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8850 7100
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R430
U 1 1 6322F02A
P 9200 5300
F 0 "R430" V 9178 5250 20  0000 R CNN
F 1 "49.9" V 9221 5250 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 8700 5200 60  0001 C CNN
F 3 "" H 8800 5300 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9200 5300
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R432
U 1 1 6322F032
P 9400 5300
F 0 "R432" V 9378 5250 20  0000 R CNN
F 1 "49.9" V 9421 5250 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 8900 5200 60  0001 C CNN
F 3 "" H 9000 5300 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9400 5300
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R438
U 1 1 6322F03A
P 10450 5350
F 0 "R438" V 10428 5300 20  0000 R CNN
F 1 "49.9" V 10471 5300 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 9950 5250 60  0001 C CNN
F 3 "" H 10050 5350 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10450 5350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R440
U 1 1 6322F042
P 10600 5350
F 0 "R440" V 10578 5400 20  0000 L CNN
F 1 "49.9" V 10621 5400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10100 5250 60  0001 C CNN
F 3 "" H 10200 5350 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10600 5350
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C427
U 1 1 6322F05A
P 11900 6900
F 0 "C427" V 11850 6850 20  0000 R CNN
F 1 "1uF" V 11900 6850 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11900 6800 60  0001 C CNN
F 3 "" H 11900 6900 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11900 6900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C410
U 1 1 6322F06A
P 3700 6300
F 0 "C410" V 3800 6200 20  0000 L CNN
F 1 "10uF" V 3700 6200 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3700 6200 60  0001 C CNN
F 3 "" H 3700 6300 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3700 6300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C408
U 1 1 6322F071
P 3450 6050
F 0 "C408" V 3450 6050 20  0000 R CNN
F 1 "10uF" V 3550 6050 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3450 5950 60  0001 C CNN
F 3 "" H 3450 6050 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3450 6050
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C412
U 1 1 6322F078
P 3950 6300
F 0 "C412" V 4050 6300 20  0000 R CNN
F 1 "0.1uF" V 3950 6300 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3950 6200 60  0001 C CNN
F 3 "" H 3950 6300 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3950 6300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R434
U 1 1 6322F086
P 10250 6900
F 0 "R434" V 10228 6950 20  0000 L CNN
F 1 "2.2k" V 10271 6950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9750 6800 60  0001 C CNN
F 3 "" H 9850 6900 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10250 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 6900 8350 6900
Wire Wire Line
	4400 6000 4400 6150
Wire Wire Line
	4600 6000 4600 6150
$Comp
L servo:3V3 #PWR0404
U 1 1 6322F092
P 4500 5950
F 0 "#PWR0404" H 4505 6157 20  0001 C CNN
F 1 "3V3" H 4505 6107 28  0000 C CNN
F 2 "" H 4500 5950 50  0001 C CNN
F 3 "" H 4500 5950 50  0001 C CNN
	1    4500 5950
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0402
U 1 1 6322F098
P 3450 5700
F 0 "#PWR0402" H 3455 5907 20  0001 C CNN
F 1 "3V3" H 3455 5857 28  0000 C CNN
F 2 "" H 3450 5700 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5700 3450 5800
Connection ~ 3450 5800
$Comp
L servo:3V3 #PWR0410
U 1 1 6322F0A0
P 9500 4950
F 0 "#PWR0410" H 9505 5157 20  0001 C CNN
F 1 "3V3" H 9505 5107 28  0000 C CNN
F 2 "" H 9500 4950 50  0001 C CNN
F 3 "" H 9500 4950 50  0001 C CNN
	1    9500 4950
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0418
U 1 1 6322F0A6
P 12250 6700
F 0 "#PWR0418" H 12255 6907 20  0000 C CNN
F 1 "3V3" H 12255 6857 28  0000 C CNN
F 2 "" H 12250 6700 50  0001 C CNN
F 3 "" H 12250 6700 50  0001 C CNN
	1    12250 6700
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0414
U 1 1 6322F0AD
P 10250 6550
F 0 "#PWR0414" H 10255 6757 20  0001 C CNN
F 1 "3V3" H 10255 6707 28  0000 C CNN
F 2 "" H 10250 6550 50  0001 C CNN
F 3 "" H 10250 6550 50  0001 C CNN
	1    10250 6550
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0416
U 1 1 6322F0B3
P 10750 5000
F 0 "#PWR0416" H 10755 5207 20  0001 C CNN
F 1 "3V3" H 10755 5157 28  0000 C CNN
F 2 "" H 10750 5000 50  0001 C CNN
F 3 "" H 10750 5000 50  0001 C CNN
	1    10750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7100 4600 6550
Wire Wire Line
	4400 8000 5400 8000
Wire Wire Line
	4400 6550 4400 8000
$Comp
L servo:3V3 #PWR0412
U 1 1 6322F0BC
P 9750 6900
F 0 "#PWR0412" H 9755 7107 20  0001 C CNN
F 1 "3V3" H 9755 7057 28  0000 C CNN
F 2 "" H 9750 6900 50  0001 C CNN
F 3 "" H 9750 6900 50  0001 C CNN
	1    9750 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7100 4600 7100
Connection ~ 4600 7100
Wire Wire Line
	4600 7100 5400 7100
Text GLabel 9300 7300 2    50   Input ~ 0
ECAT_RST
Text Notes 4450 7850 0    20   ~ 0
Address select. Be shure \nyou select two distinct\n
Text GLabel 9200 7500 2    50   Input ~ 0
ENET_CAT_XI
Wire Wire Line
	9200 7500 8800 7500
$Comp
L servo:OSC_4P_1_TRI-STATE Y?
U 1 1 6322F0E3
P 8900 8100
AR Path="/5DD4DF4C/6322F0E3" Ref="Y?"  Part="1" 
AR Path="/5DC3DC9E/6322F0E3" Ref="Y?"  Part="1" 
AR Path="/5DC4A59D/6322F0E3" Ref="Y402"  Part="1" 
F 0 "Y402" H 8900 8393 39  0000 C CNN
F 1 "osc 25Mhz" H 8900 8318 39  0000 C CNN
F 2 "servo:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 8950 8050 60  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 8800 8650 60  0001 C CNN
F 4 "25MHz XO (Standard) HCMOS Oscillator 3.3V Enable/Disable 4-SMD, No Lead " H 0   0   50  0001 C CNN "Description"
F 5 "ECS-2520S33-250-FN-TR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "XC2198CT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "1.41900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8900 8100
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 6322F0EA
P 9250 8000
AR Path="/5EAA846A/6322F0EA" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/6322F0EA" Ref="#PWR?"  Part="1" 
AR Path="/5DC4A59D/6322F0EA" Ref="#PWR0408"  Part="1" 
F 0 "#PWR0408" H 9255 8210 20  0001 C CNN
F 1 "3V3" H 9255 8158 30  0000 C CNN
F 2 "" H 9250 8000 70  0000 C CNN
F 3 "" H 9250 8000 70  0000 C CNN
	1    9250 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 8000 9250 8000
Wire Wire Line
	9150 8200 9250 8200
Wire Wire Line
	9250 8200 9250 8000
Connection ~ 9250 8000
Wire Wire Line
	8650 8200 8600 8200
Wire Wire Line
	8600 8200 8600 8450
Wire Wire Line
	8200 7500 8400 7500
Wire Wire Line
	8400 8000 8650 8000
$Comp
L servo:GND #GND_0411
U 1 1 6322F0FA
P 8600 8450
F 0 "#GND_0411" H 8605 8301 20  0001 C CNN
F 1 "GND" H 8600 8292 30  0000 C CNN
F 2 "" H 8600 8450 70  0000 C CNN
F 3 "" H 8600 8450 70  0000 C CNN
	1    8600 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 6400 9300 6400
Text Notes 8900 8450 0    20   ~ 0
you could choose between\n uC out clk, oscilator for ecah PHY\n or share oscilator to many PHY's using uC\n out clk path
Wire Wire Line
	10250 7100 10250 7400
Wire Wire Line
	10600 7600 10800 7600
Wire Wire Line
	10700 7400 10800 7400
Wire Wire Line
	10800 7400 10800 7600
Text Notes 10300 7200 0    20   ~ 0
the pullup of led_0 is mandatory, but to\n drive the led you could choose between \nPHY or uC populating/unpopulating the jumper
Text Notes 10600 7700 0    20   ~ 0
It'd be optionall\n
Connection ~ 4400 6000
Wire Wire Line
	4600 6000 5400 6000
Connection ~ 4600 6000
Wire Wire Line
	11400 6000 11400 5900
Wire Wire Line
	11400 6300 11400 6100
Wire Wire Line
	11300 6500 11300 6200
Wire Wire Line
	8200 5900 9400 5900
Wire Wire Line
	9400 5500 9400 5900
Connection ~ 9400 5900
Wire Wire Line
	9400 5900 11400 5900
Wire Wire Line
	9200 5500 9200 5800
Wire Wire Line
	9500 4950 9500 5100
Connection ~ 9500 5100
Wire Wire Line
	9500 5100 9650 5100
Wire Wire Line
	10450 5550 10450 6100
Connection ~ 10450 6100
Wire Wire Line
	10450 6100 11400 6100
Wire Wire Line
	10600 5550 10600 6200
Connection ~ 10600 6200
Wire Wire Line
	10600 6200 11300 6200
Wire Wire Line
	8200 6100 10450 6100
Wire Wire Line
	8200 6200 10600 6200
Wire Wire Line
	10450 5100 10450 5150
Wire Wire Line
	10600 5150 10600 5100
Connection ~ 10600 5100
Wire Wire Line
	10600 5100 10450 5100
Wire Wire Line
	10000 6600 10000 7400
Wire Wire Line
	10000 7400 10250 7400
Wire Wire Line
	8200 6600 10000 6600
Connection ~ 10250 7400
Wire Wire Line
	4200 6150 4200 6000
Connection ~ 4200 6000
Wire Wire Line
	4200 6000 4400 6000
Wire Wire Line
	4200 6550 4200 7900
NoConn ~ 8050 3750
NoConn ~ 8050 3550
NoConn ~ 8200 7700
NoConn ~ 8200 7900
Wire Wire Line
	9200 5800 8200 5800
Connection ~ 9200 5800
Wire Wire Line
	4700 10600 4700 10150
Wire Wire Line
	4700 10150 4600 10150
Wire Wire Line
	4600 10250 5100 10250
$Comp
L servo:Resistor R417
U 1 1 5DB39081
P 4900 9950
F 0 "R417" V 4878 10000 20  0000 L CNN
F 1 "4.7k" V 4921 10000 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 4400 9850 60  0001 C CNN
F 3 "" H 4500 9950 60  0001 C CNN
F 4 "4.7 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-074K7L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-4.7KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4900 9950
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 9750 4900 9650
Connection ~ 4900 9650
Wire Wire Line
	4900 9650 5100 9650
Wire Wire Line
	4900 10150 4900 10350
Connection ~ 4900 10350
Wire Wire Line
	4600 10350 4900 10350
Wire Wire Line
	3800 10050 3700 10050
Wire Wire Line
	3700 10050 3700 10150
Wire Wire Line
	3800 10150 3700 10150
Connection ~ 3700 10150
Wire Wire Line
	3700 10150 3700 10250
Wire Wire Line
	3700 10250 3800 10250
Connection ~ 3700 10250
Wire Wire Line
	3800 10350 3700 10350
Wire Wire Line
	3700 10250 3700 10350
Connection ~ 3700 10350
Wire Wire Line
	3700 10350 3700 10600
Wire Wire Line
	3700 10600 4250 10600
Wire Wire Line
	4250 10650 4250 10600
Connection ~ 4250 10600
Wire Wire Line
	4250 10600 4700 10600
Wire Wire Line
	4700 10050 4600 10050
Wire Wire Line
	3700 10600 3550 10600
Wire Wire Line
	3550 10600 3550 10200
Connection ~ 3700 10600
Wire Wire Line
	4700 9550 4700 9650
Connection ~ 4700 9650
Wire Wire Line
	4700 9650 3550 9650
Wire Wire Line
	4700 9650 4900 9650
Wire Wire Line
	3550 9650 3550 9900
Wire Wire Line
	4700 9650 4700 10050
$Comp
L servo:Capacitor C429
U 1 1 5E588E17
P 12250 6900
F 0 "C429" V 12200 6850 20  0000 R CNN
F 1 "1uF" V 12250 6850 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 12250 6800 60  0001 C CNN
F 3 "" H 12250 6900 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    12250 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6550 10250 6700
$Comp
L servo:Resistor R446
U 1 1 5E9379D1
P 14100 3250
F 0 "R446" V 14078 3300 20  0000 L CNN
F 1 "470" V 14121 3300 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 13600 3150 60  0001 C CNN
F 3 "" H 13700 3250 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14100 3250
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E9379DF
P 14550 950
AR Path="/5DC3DC9E/5E9379DF" Ref="#PWR?"  Part="1" 
AR Path="/5DC4A59D/5E9379DF" Ref="#PWR0419"  Part="1" 
F 0 "#PWR0419" H 14555 1157 20  0001 C CNN
F 1 "3V3" H 14555 1107 28  0000 C CNN
F 2 "" H 14550 950 50  0001 C CNN
F 3 "" H 14550 950 50  0001 C CNN
	1    14550 950 
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E9379E6
P 13900 3250
AR Path="/5DC3DC9E/5E9379E6" Ref="R?"  Part="1" 
AR Path="/5DC4A59D/5E9379E6" Ref="R445"  Part="1" 
F 0 "R445" V 13878 3300 20  0000 L CNN
F 1 "470" V 13921 3300 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 13400 3150 60  0001 C CNN
F 3 "" H 13500 3250 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13900 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 2450 10100 2550
$Comp
L servo:Capacitor C426
U 1 1 5EB81FEB
P 11550 4100
F 0 "C426" V 11500 4050 20  0000 R CNN
F 1 "1uF" V 11550 4050 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11550 4000 60  0001 C CNN
F 3 "" H 11550 4100 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 4100
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C428
U 1 1 5EB81FF3
P 11850 4600
F 0 "C428" V 11878 4710 20  0000 L CNN
F 1 "1uF" V 11921 4710 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 11850 4500 60  0001 C CNN
F 3 "" H 11850 4600 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11850 4600
	0    1    1    0   
$EndComp
$Comp
L servo:rj45x2_0845-2G1T-H5 J401
U 1 1 5E2209F6
P 14800 4900
F 0 "J401" H 15277 4938 39  0000 L CNN
F 1 "RJ45x2" H 15277 4863 39  0000 L CNN
F 2 "servo:rj45x2_0845-2G1T-H5" H 15300 5200 20  0001 C CNN
F 3 "../doc/datasheets/rj45x2_dr-MAG-0845-2G1T-H5-1309698.pdf" H 15400 5300 20  0001 C CNN
F 4 "2 Port RJ45 Magjack Connector Through Hole 10/100 Base-T, AutoMDIX " H 0   0   50  0001 C CNN "Description"
F 5 "0845-2G1T-H5 " H 0   0   50  0001 C CNN "PartNumber"
F 6 "380-1123-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "7.17400" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    14800 4900
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0421
U 1 1 5E55D619
P 14000 2950
F 0 "#PWR0421" H 13900 3050 20  0001 C CNN
F 1 "3V3" H 14000 3100 28  0000 C CNN
F 2 "" H 14000 2950 50  0001 C CNN
F 3 "" H 14000 2950 50  0001 C CNN
	1    14000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 3050 14000 3050
Wire Wire Line
	14000 2950 14000 3050
Connection ~ 14000 3050
Wire Wire Line
	14000 3050 14100 3050
Wire Wire Line
	14100 3450 14100 3700
Wire Wire Line
	14100 3700 14200 3700
Wire Wire Line
	13900 3450 13900 4700
Wire Wire Line
	13900 4700 14200 4700
$Comp
L servo:Resistor R442
U 1 1 5E78ED24
P 13600 3200
F 0 "R442" V 13578 3250 20  0000 L CNN
F 1 "470" V 13621 3250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 13100 3100 60  0001 C CNN
F 3 "" H 13200 3200 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13600 3200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E78ED2C
P 13400 3200
AR Path="/5DC3DC9E/5E78ED2C" Ref="R?"  Part="1" 
AR Path="/5DC4A59D/5E78ED2C" Ref="R441"  Part="1" 
F 0 "R441" V 13378 3250 20  0000 L CNN
F 1 "470" V 13421 3250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 12900 3100 60  0001 C CNN
F 3 "" H 13000 3200 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13400 3200
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR0420
U 1 1 5E78ED33
P 13500 2900
F 0 "#PWR0420" H 13400 3000 20  0001 C CNN
F 1 "3V3" H 13500 3050 28  0000 C CNN
F 2 "" H 13500 2900 50  0001 C CNN
F 3 "" H 13500 2900 50  0001 C CNN
	1    13500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 3000 13500 3000
Wire Wire Line
	13500 2900 13500 3000
Connection ~ 13500 3000
Wire Wire Line
	13500 3000 13600 3000
Wire Wire Line
	13600 3400 13600 5050
Wire Wire Line
	13600 5050 14200 5050
Wire Wire Line
	13400 6050 14200 6050
Wire Wire Line
	13400 3400 13400 6050
Wire Wire Line
	12800 5900 12800 5350
Wire Wire Line
	12800 5350 14200 5350
Wire Wire Line
	13100 6400 13100 5850
Wire Wire Line
	13100 5850 14200 5850
Wire Wire Line
	12650 5800 12650 5250
Wire Wire Line
	12650 5250 14200 5250
Wire Wire Line
	9200 5800 12650 5800
Wire Wire Line
	12900 6000 12900 5450
Wire Wire Line
	12900 5450 14200 5450
Wire Wire Line
	11400 6000 12900 6000
Wire Wire Line
	13000 6300 13000 5750
Wire Wire Line
	13000 5750 14200 5750
Wire Wire Line
	11400 6300 13000 6300
Wire Wire Line
	13200 6500 13200 5950
Wire Wire Line
	13200 5950 14200 5950
Wire Wire Line
	11300 6500 13200 6500
Wire Wire Line
	10800 7400 13600 7400
Wire Wire Line
	13600 7400 13600 5150
Wire Wire Line
	13600 5150 14200 5150
Connection ~ 10800 7400
Wire Wire Line
	10600 7700 13700 7700
Wire Wire Line
	13700 7700 13700 6150
Wire Wire Line
	13700 6150 14200 6150
Wire Wire Line
	10650 3250 12250 3250
Wire Wire Line
	12250 3250 12250 3800
Wire Wire Line
	12250 3800 14200 3800
Connection ~ 10650 3250
Wire Wire Line
	10450 3550 12150 3550
Wire Wire Line
	12150 3550 12150 4800
Wire Wire Line
	12150 4800 14200 4800
Wire Wire Line
	13200 1650 13200 3900
Wire Wire Line
	13200 3900 14200 3900
Wire Wire Line
	9050 1650 13200 1650
Wire Wire Line
	13000 1750 13000 4100
Wire Wire Line
	13000 4100 14200 4100
Wire Wire Line
	12800 1950 12800 4400
Wire Wire Line
	12800 4400 14200 4400
Wire Wire Line
	12600 2050 12600 4600
Wire Wire Line
	12600 4600 14200 4600
$Comp
L servo:Earth #PWR?
U 1 1 5E2B8CFA
P 14600 7450
AR Path="/5DC3DC9E/5E2B8CFA" Ref="#PWR?"  Part="1" 
AR Path="/5DC4A59D/5E2B8CFA" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 14600 7200 20  0001 C CNN
F 1 "Earth" H 14600 7285 39  0000 C CNN
F 2 "" H 14600 7450 50  0001 C CNN
F 3 "~" H 14600 7450 50  0001 C CNN
	1    14600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 5600 14200 5600
Wire Wire Line
	14000 4250 14200 4250
$Comp
L servo:Capacitor C434
U 1 1 5E3BA4D2
P 14850 7200
F 0 "C434" V 14800 7150 20  0000 R CNN
F 1 "4n7" V 14850 7150 20  0000 R CNN
F 2 "servo:C_1206_3216Metric" H 14850 7100 60  0001 C CNN
F 3 "" H 14850 7200 60  0000 C CNN
F 4 "12061C472KAT2A" H 0   700 50  0001 C CNN "PartNumber"
F 5 "478-1521-1-ND" H 0   700 50  0001 C CNN "digikey"
F 6 "4700pF ±10% 100V Ceramic Capacitor X7R 1206 (3216 Metric) " H 0   700 50  0001 C CNN "Description"
F 7 "0.18700" H 0   700 50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14850 7200
	0    1    1    0   
$EndComp
$Comp
L servo:GND #GND_0102
U 1 1 5E463A14
P 14850 7450
F 0 "#GND_0102" H 14855 7301 20  0001 C CNN
F 1 "GND" H 14850 7293 30  0000 C CNN
F 2 "" H 14850 7450 70  0000 C CNN
F 3 "" H 14850 7450 70  0000 C CNN
	1    14850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 7450 14850 7400
Wire Wire Line
	14000 5600 14000 7100
Wire Wire Line
	14000 7100 14100 7100
Wire Wire Line
	14000 4250 14000 5600
Connection ~ 14000 5600
Wire Wire Line
	14600 7450 14600 7100
Connection ~ 14600 7100
Wire Wire Line
	14600 7100 14850 7100
Wire Wire Line
	9050 950  9250 950 
Connection ~ 9250 950 
Wire Wire Line
	9250 950  9350 950 
Wire Wire Line
	10600 850  10600 950 
Wire Wire Line
	9200 5100 9400 5100
Connection ~ 9400 5100
Wire Wire Line
	9400 5100 9500 5100
Wire Wire Line
	10600 5100 10750 5100
Wire Wire Line
	10750 5000 10750 5100
Connection ~ 10750 5100
Wire Wire Line
	10750 5100 10900 5100
$Comp
L servo:3V3 #PWR?
U 1 1 5E30E75B
P 1600 4700
AR Path="/5EAA846A/5E30E75B" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E30E75B" Ref="#PWR?"  Part="1" 
AR Path="/5DC4A59D/5E30E75B" Ref="#PWR0258"  Part="1" 
F 0 "#PWR0258" H 1605 4910 20  0001 C CNN
F 1 "3V3" H 1605 4858 30  0000 C CNN
F 2 "" H 1600 4700 70  0000 C CNN
F 3 "" H 1600 4700 70  0000 C CNN
	1    1600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2750 9600 2950
Text GLabel 1400 5150 0    50   Input ~ 0
ECAT_MDIO
Wire Wire Line
	1400 5150 1600 5150
Wire Wire Line
	1600 5150 1600 5100
Text Notes 1150 5000 0    20   ~ 0
2k2 pullup as\n indicated by phy IC's
Wire Wire Line
	9750 6900 9750 7100
Wire Wire Line
	3150 1650 3250 1650
Wire Wire Line
	3150 1950 3250 1950
Text Notes 4850 2250 0    20   ~ 0
25Mhz!!
Text Notes 2350 3100 0    20   ~ 0
25Mhz!!
Text Notes 5100 6400 0    20   ~ 0
25Mhz!!
Text Notes 2500 7250 0    20   ~ 0
25Mhz!!
Text GLabel 7050 10250 0    50   Input ~ 0
ECAT_LED_RUN
Text GLabel 7050 10500 0    50   Input ~ 0
ECAT_LED_ERR
Wire Wire Line
	3450 5800 5400 5800
Text Notes 7050 9900 0    20   ~ 0
It's a good idea to have them on \nthese fitst stage but could be \nthrought away on next release.
Text GLabel 8350 6800 2    50   Input ~ 0
ECAT_MDCLK
Text Label 4850 3750 0    39   ~ 0
ecat0_col
Text Label 4850 3850 0    39   ~ 0
ecat0_crs
Text Label 4900 7900 0    39   ~ 0
ecat1_col
Text Label 4900 8000 0    39   ~ 0
ecat1_crs
Text Notes 9000 1050 0    20   ~ 0
place near device\n
$Comp
L servo:3V3 #PWR0264
U 1 1 5F708FCF
P 11550 3900
F 0 "#PWR0264" H 11450 4000 20  0001 C CNN
F 1 "3V3" H 11550 4050 28  0000 C CNN
F 2 "" H 11550 3900 50  0001 C CNN
F 3 "" H 11550 3900 50  0001 C CNN
	1    11550 3900
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0111
U 1 1 5F782B6F
P 11850 4800
F 0 "#GND_0111" H 11855 4651 20  0001 C CNN
F 1 "GND" H 11850 4643 30  0000 C CNN
F 2 "" H 11850 4800 70  0000 C CNN
F 3 "" H 11850 4800 70  0000 C CNN
	1    11850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 3900 11550 4000
Wire Wire Line
	10300 1950 12800 1950
Wire Wire Line
	9250 1750 13000 1750
Wire Wire Line
	10450 2050 12600 2050
Wire Wire Line
	11850 4500 14200 4500
Wire Wire Line
	11550 4000 14200 4000
Connection ~ 11550 4000
$Comp
L servo:GND #GND_0112
U 1 1 5FB3FCD4
P 11550 4300
F 0 "#GND_0112" H 11555 4151 20  0001 C CNN
F 1 "GND" H 11550 4143 30  0000 C CNN
F 2 "" H 11550 4300 70  0000 C CNN
F 3 "" H 11550 4300 70  0000 C CNN
	1    11550 4300
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0265
U 1 1 5FB3FF1D
P 11850 4450
F 0 "#PWR0265" H 11750 4550 20  0001 C CNN
F 1 "3V3" H 11850 4600 28  0000 C CNN
F 2 "" H 11850 4450 50  0001 C CNN
F 3 "" H 11850 4450 50  0001 C CNN
	1    11850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 4450 11850 4500
Connection ~ 11850 4500
Wire Wire Line
	12250 6750 12550 6750
Wire Wire Line
	12550 6750 12550 6400
Wire Wire Line
	12550 6400 13100 6400
Wire Wire Line
	12100 5900 12800 5900
$Comp
L servo:3V3 #PWR0266
U 1 1 5FE2F381
P 11900 6700
F 0 "#PWR0266" H 11905 6907 20  0000 C CNN
F 1 "3V3" H 11905 6857 28  0000 C CNN
F 2 "" H 11900 6700 50  0001 C CNN
F 3 "" H 11900 6700 50  0001 C CNN
	1    11900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 6750 11900 6750
Wire Wire Line
	11900 6750 11900 6700
Wire Wire Line
	12100 5900 12100 6750
Wire Wire Line
	11900 6800 11900 6750
Connection ~ 11900 6750
$Comp
L servo:GND #GND_0113
U 1 1 5FEAF3F5
P 11900 7100
F 0 "#GND_0113" H 11905 6951 20  0001 C CNN
F 1 "GND" H 11900 6943 30  0000 C CNN
F 2 "" H 11900 7100 70  0000 C CNN
F 3 "" H 11900 7100 70  0000 C CNN
	1    11900 7100
	1    0    0    -1  
$EndComp
Connection ~ 12250 6750
Wire Wire Line
	12250 6700 12250 6750
Wire Wire Line
	12250 6800 12250 6750
Wire Wire Line
	3950 1850 4250 1850
Wire Wire Line
	3850 2400 3850 2350
Connection ~ 3850 2350
Wire Wire Line
	3850 2350 3950 2350
Wire Wire Line
	3250 2000 3250 1950
Connection ~ 3250 1950
Wire Wire Line
	3250 1950 3350 1950
Connection ~ 3250 1650
Wire Wire Line
	3250 1650 3350 1650
Wire Wire Line
	3950 6000 4200 6000
Wire Wire Line
	3850 6550 3850 6500
Connection ~ 3850 6500
Wire Wire Line
	3850 6500 3950 6500
$Comp
L servo:Capacitor C404
U 1 1 6322EFD9
P 3250 5950
F 0 "C404" V 3278 5840 20  0000 R CNN
F 1 "0.1uF" V 3321 5840 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3250 5850 60  0001 C CNN
F 3 "" H 3250 5950 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3250 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5800 3450 5800
Wire Wire Line
	3250 6150 3350 6150
Wire Wire Line
	3350 6200 3350 6150
Connection ~ 3350 6150
Wire Wire Line
	3350 6150 3450 6150
Wire Wire Line
	3250 5850 3250 5800
Wire Wire Line
	3450 5850 3450 5800
Text Label 8200 6400 0    20   ~ 0
ecat1_bias
Text Label 8050 2950 0    20   ~ 0
ecat0_bias
Text Label 8350 6600 0    20   ~ 0
ecat1_led0
Text Label 8350 7100 0    20   ~ 0
ecat1_pwrdn
$Comp
L servo:jumper JP?
U 1 1 5EB12D3B
P 8250 3600
AR Path="/5DD76B18/5EB12D3B" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5EB12D3B" Ref="JP401"  Part="1" 
F 0 "JP401" V 8212 3648 39  0000 L CNN
F 1 "jumper" V 8287 3648 39  0000 L CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8150 3580 50  0001 C CNN
F 3 "~" H 8250 3680 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 4950 -2000 50  0001 C CNN "Description"
F 5 "-" H 4950 -2000 50  0001 C CNN "PartNumber"
F 6 "-" H 4950 -2000 50  0001 C CNN "digikey"
F 7 "0" H 4950 -2000 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    8250 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3850 8250 3700
Wire Wire Line
	8250 3500 8250 3350
$Comp
L servo:jumper JP?
U 1 1 5EB89DCF
P 8400 7800
AR Path="/5DD76B18/5EB89DCF" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5EB89DCF" Ref="JP402"  Part="1" 
F 0 "JP402" V 8362 7848 39  0000 L CNN
F 1 "jumper" V 8437 7848 39  0000 L CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8300 7780 50  0001 C CNN
F 3 "~" H 8400 7880 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 5100 2200 50  0001 C CNN "Description"
F 5 "-" H 5100 2200 50  0001 C CNN "PartNumber"
F 6 "-" H 5100 2200 50  0001 C CNN "digikey"
F 7 "0" H 5100 2200 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    8400 7800
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 8000 8400 7900
Wire Wire Line
	8400 7700 8400 7500
$Comp
L servo:jumper JP?
U 1 1 5E5AA601
P 8700 7500
AR Path="/5DD76B18/5E5AA601" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E5AA601" Ref="JP404"  Part="1" 
F 0 "JP404" H 8700 7585 39  0000 C CNN
F 1 "jumper" H 8700 7660 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8600 7480 50  0001 C CNN
F 3 "~" H 8700 7580 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 5400 1900 50  0001 C CNN "Description"
F 5 "-" H 5400 1900 50  0001 C CNN "PartNumber"
F 6 "-" H 5400 1900 50  0001 C CNN "digikey"
F 7 "0" H 5400 1900 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    8700 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 7500 8400 7500
Connection ~ 8400 7500
$Comp
L servo:jumper JP?
U 1 1 5E5E812A
P 8550 3350
AR Path="/5DD76B18/5E5E812A" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E5E812A" Ref="JP403"  Part="1" 
F 0 "JP403" H 8550 3150 39  0000 C CNN
F 1 "jumper" H 8550 3250 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8450 3330 50  0001 C CNN
F 3 "~" H 8550 3430 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 5250 -2250 50  0001 C CNN "Description"
F 5 "-" H 5250 -2250 50  0001 C CNN "PartNumber"
F 6 "-" H 5250 -2250 50  0001 C CNN "digikey"
F 7 "0" H 5250 -2250 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    8550 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 3350 8250 3350
Connection ~ 8250 3350
$Comp
L servo:jumper JP?
U 1 1 5E5A5819
P 10450 3250
AR Path="/5DD76B18/5E5A5819" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E5A5819" Ref="JP405"  Part="1" 
F 0 "JP405" H 10450 3089 39  0000 C CNN
F 1 "jumper" H 10450 3164 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10350 3230 50  0001 C CNN
F 3 "~" H 10450 3330 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 7150 -2350 50  0001 C CNN "Description"
F 5 "-" H 7150 -2350 50  0001 C CNN "PartNumber"
F 6 "-" H 7150 -2350 50  0001 C CNN "digikey"
F 7 "0" H 7150 -2350 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    10450 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 3250 10350 3250
$Comp
L servo:jumper JP?
U 1 1 5E5C6F5E
P 10600 7400
AR Path="/5DD76B18/5E5C6F5E" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E5C6F5E" Ref="JP406"  Part="1" 
F 0 "JP406" H 10600 7239 39  0000 C CNN
F 1 "jumper" H 10600 7314 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10500 7380 50  0001 C CNN
F 3 "~" H 10600 7480 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 7300 1800 50  0001 C CNN "Description"
F 5 "-" H 7300 1800 50  0001 C CNN "PartNumber"
F 6 "-" H 7300 1800 50  0001 C CNN "digikey"
F 7 "0" H 7300 1800 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    10600 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 7400 10500 7400
Wire Wire Line
	14200 6350 14100 6350
Wire Wire Line
	14100 6350 14100 6450
Wire Wire Line
	14100 6650 14200 6650
Wire Wire Line
	14200 6550 14100 6550
Connection ~ 14100 6550
Wire Wire Line
	14100 6550 14100 6650
Wire Wire Line
	14200 6450 14100 6450
Connection ~ 14100 6450
Wire Wire Line
	14100 6450 14100 6550
Wire Wire Line
	14100 6650 14100 6750
Connection ~ 14100 6650
Connection ~ 14100 7100
Wire Wire Line
	14100 7100 14600 7100
Wire Wire Line
	14200 6750 14100 6750
Connection ~ 14100 6750
Wire Wire Line
	14100 6750 14100 6850
Wire Wire Line
	14200 6850 14100 6850
Connection ~ 14100 6850
Wire Wire Line
	14100 6850 14100 7100
$EndSCHEMATC
