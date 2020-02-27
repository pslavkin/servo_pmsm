EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 20
Title "ethernet"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5700 3200 0    50   Input ~ 0
ENET_TX_EN
Text GLabel 5700 3300 0    50   Input ~ 0
ENET_TX_CLK
Text GLabel 5700 3500 0    50   Input ~ 0
ENET_TX_D0
Text GLabel 5700 3600 0    50   Input ~ 0
ENET_TX_D1
Text GLabel 5700 3700 0    50   Input ~ 0
ENET_TX_D2
Text GLabel 5700 3800 0    50   Input ~ 0
ENET_TX_D3
Text GLabel 4650 4100 0    50   Input ~ 0
ENET_RX_ER
Text GLabel 4650 4000 0    50   Input ~ 0
ENET_RX_DV
Text GLabel 4650 4200 0    50   Input ~ 0
ENET_RX_CLK
Text GLabel 5550 4400 0    50   Input ~ 0
ENET_RX_D0
Text GLabel 5550 4500 0    50   Input ~ 0
ENET_RX_D1
Text GLabel 5550 4600 0    50   Input ~ 0
ENET_RX_D2
Text GLabel 5550 4700 0    50   Input ~ 0
ENET_RX_D3
Text GLabel 5550 4900 0    50   Input ~ 0
ENET_COL
Text GLabel 5550 5000 0    50   Input ~ 0
ENET_CRS
Text GLabel 8700 3900 2    50   Input ~ 0
ENET_MDIO
Text GLabel 9650 4300 2    50   Input ~ 0
ENET_RST
Text GLabel 9650 4200 2    50   Input ~ 0
ENET_PWDN
$Comp
L servo:GND #GND_0206
U 1 1 63C6809C
P 10000 2300
F 0 "#GND_0206" H 10005 2151 20  0001 C CNN
F 1 "GND" H 10000 2143 30  0000 C CNN
F 2 "" H 10000 2300 70  0000 C CNN
F 3 "" H 10000 2300 70  0000 C CNN
	1    10000 2300
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0207
U 1 1 63C680A2
P 11250 2450
F 0 "#GND_0207" H 11172 2443 20  0001 R CNN
F 1 "GND" H 11250 2292 30  0000 C CNN
F 2 "" H 11250 2450 70  0000 C CNN
F 3 "" H 11250 2450 70  0000 C CNN
	1    11250 2450
	1    0    0    -1  
$EndComp
Text Label 10050 2800 0    39   ~ 0
P0_TD_P
Text Label 10050 2900 0    39   ~ 0
P0_TD_N
Text Label 9350 3100 0    39   ~ 0
P0_RD_P
Text Label 9350 3200 0    39   ~ 0
P0_RD_N
$Comp
L servo:GND #GND_0205
U 1 1 63C680B0
P 9650 3400
F 0 "#GND_0205" H 9655 3251 20  0001 C CNN
F 1 "GND" H 9728 3358 30  0000 L CNN
F 2 "" H 9650 3400 70  0000 C CNN
F 3 "" H 9650 3400 70  0000 C CNN
	1    9650 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0203
U 1 1 63C680B6
P 8550 5450
F 0 "#GND_0203" H 8555 5301 20  0001 C CNN
F 1 "GND" H 8550 5292 30  0000 C CNN
F 2 "" H 8550 5450 70  0000 C CNN
F 3 "" H 8550 5450 70  0000 C CNN
	1    8550 5450
	1    0    0    -1  
$EndComp
NoConn ~ 5750 5200
NoConn ~ 5750 5300
$Comp
L servo:GND #GND_0208
U 1 1 63C680C4
P 12450 4050
F 0 "#GND_0208" H 12455 3901 20  0001 C CNN
F 1 "GND" H 12450 3893 30  0000 C CNN
F 2 "" H 12450 4050 70  0000 C CNN
F 3 "" H 12450 4050 70  0000 C CNN
	1    12450 4050
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0202
U 1 1 63C680CA
P 4600 3600
F 0 "#GND_0202" H 4605 3451 20  0001 C CNN
F 1 "GND" H 4600 3443 30  0000 C CNN
F 2 "" H 4600 3600 70  0000 C CNN
F 3 "" H 4600 3600 70  0000 C CNN
	1    4600 3600
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0201
U 1 1 63C680D0
P 4050 3350
F 0 "#GND_0201" H 4138 3343 20  0001 L CNN
F 1 "GND" H 4050 3193 30  0000 C CNN
F 2 "" H 4050 3350 70  0000 C CNN
F 3 "" H 4050 3350 70  0000 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3800 8550 3800
Wire Wire Line
	10100 4100 9050 4100
Wire Wire Line
	9650 4300 8550 4300
Wire Wire Line
	8550 5450 8550 5300
Wire Wire Line
	4650 4200 5750 4200
Wire Wire Line
	4850 3000 4850 2950
Wire Wire Line
	8550 4100 8650 4100
Wire Wire Line
	8550 3400 8650 3400
Wire Wire Line
	10100 4100 10100 4000
Wire Wire Line
	11250 2450 11250 2350
Wire Wire Line
	8550 4000 8550 3900
Wire Wire Line
	9150 4000 8550 4000
Wire Wire Line
	10100 4000 9550 4000
Wire Wire Line
	10100 4000 10100 3900
Wire Wire Line
	4450 3000 4450 3100
Wire Wire Line
	4750 3100 4750 3000
Wire Wire Line
	4450 3400 4450 3500
Wire Wire Line
	4750 3500 4750 3400
Wire Wire Line
	10000 1900 10000 2000
Wire Wire Line
	11250 1950 11250 2050
Connection ~ 4750 3000
Connection ~ 4850 3000
Connection ~ 10100 4000
$Comp
L servo:DP83822 U201
U 1 1 63C6813C
P 7150 4000
F 0 "U201" H 7150 5573 60  0000 C CNN
F 1 "DP83822" H 7150 5475 50  0000 C CNN
F 2 "servo:QFN-32-1EP_5x5mm_P0.5mm_EP2.9x2.9mm_ThermalVias" H 7150 4000 50  0001 C CNN
F 3 "../doc/datasheets/dp83822i.pdf" H 7150 4000 50  0001 C CNN
F 4 "DP83822IRHBR" V -150 2900 60  0001 C CNN "PartNumber"
F 5 "Ethernet Interface 32-VQFN (5x5) " H 0   0   50  0001 C CNN "Description"
F 6 "296-47256-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.37700" H 0   0   50  0001 C CNN "price@10"
	1    7150 4000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C209
U 1 1 63C68144
P 10000 2200
F 0 "C209" V 10072 2090 20  0000 R CNN
F 1 "0.1uF" V 10029 2090 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10000 2100 60  0001 C CNN
F 3 "" H 10000 2200 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
	1    10000 2200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R204
U 1 1 63C6814C
P 9350 4000
F 0 "R204" H 9350 4115 20  0000 C CNN
F 1 "2.2k" H 9350 4072 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8850 3900 60  0001 C CNN
F 3 "" H 8950 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
	1    9350 4000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C214
U 1 1 63C68154
P 12150 3850
F 0 "C214" V 12178 3960 20  0000 L CNN
F 1 "1uF" V 12221 3960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 12150 3750 60  0001 C CNN
F 3 "" H 12150 3850 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
	1    12150 3850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C216
U 1 1 63C6815C
P 12450 3850
F 0 "C216" V 12478 3960 20  0000 L CNN
F 1 "1uF" V 12521 3960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 12450 3750 60  0001 C CNN
F 3 "" H 12450 3850 60  0000 C CNN
F 4 "CAP CER 1UF 10V X7R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "399-11133-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "C0603C105K8RACTU" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.06400" H 0   0   50  0001 C CNN "price@10"
	1    12450 3850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C211
U 1 1 63C68164
P 11250 2250
F 0 "C211" V 11322 2140 20  0000 R CNN
F 1 "0.1uF" V 11279 2140 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 11250 2150 60  0001 C CNN
F 3 "" H 11250 2250 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 11250 2250 50  0001 C CNN "Description"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
	1    11250 2250
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C207
U 1 1 63C68173
P 4750 3300
F 0 "C207" V 4822 3190 20  0000 R CNN
F 1 "0.1uF" V 4779 3190 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4750 3200 60  0001 C CNN
F 3 "" H 4750 3300 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
	1    4750 3300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C202
U 1 1 63C68181
P 3900 3000
F 0 "C202" V 3928 2890 20  0000 R CNN
F 1 "0.1uF" V 3971 2890 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 3900 2900 60  0001 C CNN
F 3 "" H 3900 3000 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
	1    3900 3000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R201
U 1 1 63C681B2
P 8850 3400
F 0 "R201" H 8850 3515 20  0000 C CNN
F 1 "4.87k" H 8850 3472 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8350 3300 60  0001 C CNN
F 3 "" H 8450 3400 60  0001 C CNN
F 4 "4.87 kOhms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film" H 0   0   50  0001 C CNN "Description"
F 5 "RMCF0603FT4K87" H 0   0   50  0001 C CNN "PartNumber"
F 6 " RMCF0603FT4K87CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01600" H 0   0   50  0001 C CNN "price@10"
	1    8850 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R202
U 1 1 63C681CA
P 8850 4100
F 0 "R202" H 8750 4150 20  0000 C CNN
F 1 "10k" H 9000 4150 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 8350 4000 60  0001 C CNN
F 3 "" H 8450 4100 60  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
	1    8850 4100
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R205
U 1 1 63C681D2
P 9550 2100
F 0 "R205" V 9528 2150 20  0000 L CNN
F 1 "49.9" V 9571 2150 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9050 2000 60  0001 C CNN
F 3 "" H 9150 2100 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
	1    9550 2100
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R206
U 1 1 63C681DA
P 9750 2100
F 0 "R206" V 9728 2150 20  0000 L CNN
F 1 "49.9" V 9771 2150 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9250 2000 60  0001 C CNN
F 3 "" H 9350 2100 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
	1    9750 2100
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R207
U 1 1 63C681E2
P 10800 2200
F 0 "R207" V 10778 2150 20  0000 R CNN
F 1 "49.9" V 10821 2150 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 10300 2100 60  0001 C CNN
F 3 "" H 10400 2200 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
	1    10800 2200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R209
U 1 1 63C681EA
P 10950 2200
F 0 "R209" V 10928 2250 20  0000 L CNN
F 1 "49.9" V 10971 2250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10450 2100 60  0001 C CNN
F 3 "" H 10550 2200 60  0001 C CNN
F 4 "49.9 Ohms ±1% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603FR-0749R9L" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-49.9HRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02300" H 0   0   50  0001 C CNN "price@10"
	1    10950 2200
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C205
U 1 1 63C68212
P 4450 3300
F 0 "C205" V 4522 3190 20  0000 R CNN
F 1 "10uF" V 4479 3190 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4450 3200 60  0001 C CNN
F 3 "" H 4450 3300 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
	1    4450 3300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C204
U 1 1 63C68219
P 4150 3100
F 0 "C204" V 4222 2990 20  0000 R CNN
F 1 "10uF" V 4179 2990 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4150 3000 60  0001 C CNN
F 3 "" H 4150 3100 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 6 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.15400" H 0   0   50  0001 C CNN "price@10"
	1    4150 3100
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R208
U 1 1 63C6822E
P 10850 4000
F 0 "R208" V 10828 4050 20  0000 L CNN
F 1 "2.2k" V 10871 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10350 3900 60  0001 C CNN
F 3 "" H 10450 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
	1    10850 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3900 8700 3900
Connection ~ 8550 3900
$Comp
L servo:3V3 #PWR0202
U 1 1 63C6823A
P 4850 2950
F 0 "#PWR0202" H 4855 3157 20  0001 C CNN
F 1 "3V3" H 4855 3107 28  0000 C CNN
F 2 "" H 4850 2950 50  0001 C CNN
F 3 "" H 4850 2950 50  0001 C CNN
	1    4850 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0201
U 1 1 63C68240
P 4150 2700
F 0 "#PWR0201" H 4155 2907 20  0001 C CNN
F 1 "3V3" H 4155 2857 28  0000 C CNN
F 2 "" H 4150 2700 50  0001 C CNN
F 3 "" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2700 4150 2800
Connection ~ 4150 2800
$Comp
L servo:3V3 #PWR0204
U 1 1 63C68248
P 9850 1750
F 0 "#PWR0204" H 9855 1957 20  0001 C CNN
F 1 "3V3" H 9855 1907 28  0000 C CNN
F 2 "" H 9850 1750 50  0001 C CNN
F 3 "" H 9850 1750 50  0001 C CNN
	1    9850 1750
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0208
U 1 1 63C6824E
P 12450 3750
F 0 "#PWR0208" H 12350 3850 20  0001 C CNN
F 1 "3V3" H 12450 3900 28  0000 C CNN
F 2 "" H 12450 3750 50  0001 C CNN
F 3 "" H 12450 3750 50  0001 C CNN
	1    12450 3750
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0206
U 1 1 63C68255
P 10950 3750
F 0 "#PWR0206" H 10955 3957 20  0001 C CNN
F 1 "3V3" H 10955 3907 28  0000 C CNN
F 2 "" H 10950 3750 50  0001 C CNN
F 3 "" H 10950 3750 50  0001 C CNN
	1    10950 3750
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0207
U 1 1 63C6825B
P 11100 1800
F 0 "#PWR0207" H 11105 2007 20  0001 C CNN
F 1 "3V3" H 11105 1957 28  0000 C CNN
F 2 "" H 11100 1800 50  0001 C CNN
F 3 "" H 11100 1800 50  0001 C CNN
	1    11100 1800
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0205
U 1 1 63C68264
P 10100 3900
F 0 "#PWR0205" H 10105 4107 20  0001 C CNN
F 1 "3V3" H 10105 4057 28  0000 C CNN
F 2 "" H 10100 3900 50  0001 C CNN
F 3 "" H 10100 3900 50  0001 C CNN
	1    10100 3900
	1    0    0    -1  
$EndComp
Text GLabel 9550 4500 2    50   Input ~ 0
ENET_CAT_XI
Wire Wire Line
	9550 4500 9250 4500
Text Notes 6700 1800 0    197  ~ 39
EtherNET
$Comp
L servo:OSC_4P_1_TRI-STATE Y?
U 1 1 63C6828B
P 9250 5350
AR Path="/5DD4DF4C/63C6828B" Ref="Y?"  Part="1" 
AR Path="/5DC3DC9E/63C6828B" Ref="Y201"  Part="1" 
AR Path="/5DC4A59D/63C6828B" Ref="Y?"  Part="1" 
F 0 "Y201" H 9250 5643 39  0000 C CNN
F 1 "osc 25Mhz" H 9250 5568 39  0000 C CNN
F 2 "servo:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 9300 5300 60  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 9150 5900 60  0001 C CNN
F 4 "25MHz XO (Standard) HCMOS Oscillator 3.3V Enable/Disable 4-SMD, No Lead " H 0   0   50  0001 C CNN "Description"
F 5 "ECS-2520S33-250-FN-TR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "XC2198CT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "1.41900" H 0   0   50  0001 C CNN "price@10"
	1    9250 5350
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 63C68292
P 9600 5250
AR Path="/5EAA846A/63C68292" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/63C68292" Ref="#PWR0203"  Part="1" 
AR Path="/5DC4A59D/63C68292" Ref="#PWR?"  Part="1" 
F 0 "#PWR0203" H 9605 5460 20  0001 C CNN
F 1 "3V3" H 9605 5408 30  0000 C CNN
F 2 "" H 9600 5250 70  0000 C CNN
F 3 "" H 9600 5250 70  0000 C CNN
	1    9600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5250 9600 5250
Wire Wire Line
	9500 5450 9600 5450
Wire Wire Line
	9600 5450 9600 5250
Connection ~ 9600 5250
Wire Wire Line
	9000 5450 8950 5450
Wire Wire Line
	8950 5450 8950 5700
Wire Wire Line
	8550 4500 8750 4500
Wire Wire Line
	8750 5250 9000 5250
$Comp
L servo:GND #GND_0204
U 1 1 63C682A2
P 8950 5700
F 0 "#GND_0204" H 8955 5551 20  0001 C CNN
F 1 "GND" H 8950 5542 30  0000 C CNN
F 2 "" H 8950 5700 70  0000 C CNN
F 3 "" H 8950 5700 70  0000 C CNN
	1    8950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3400 9650 3400
Text Notes 9150 5650 0    20   ~ 0
you could choose between\n uC out clk, oscilator for ecah PHY\n or share oscilator to many PHY's using uC\n out clk path
Text Notes 11100 4300 0    20   ~ 0
the pullup of led_0 is mandatory, but to\n drive the led you could choose between \nPHY or uC populating/unpopulating the resistor
Text Notes 6700 2000 0    20   ~ 0
I choose transfeormer spare part instead of the embedded shielded RJ45\n plus leds, cause noy I can choose any format connector  RJ45 and\n maybe add PoE then. And are halt the price\n\n
Wire Wire Line
	4150 2800 5750 2800
Wire Wire Line
	11750 3000 11750 2900
Wire Wire Line
	11750 3300 11750 3100
Wire Wire Line
	11650 3500 11650 3200
Wire Wire Line
	8550 2900 9750 2900
Wire Wire Line
	8550 2800 9550 2800
Wire Wire Line
	9750 2300 9750 2900
Connection ~ 9750 2900
Wire Wire Line
	9750 2900 11750 2900
Wire Wire Line
	9550 2300 9550 2800
Connection ~ 9550 2800
Wire Wire Line
	9850 1750 9850 1900
Connection ~ 9850 1900
Wire Wire Line
	9850 1900 10000 1900
Wire Wire Line
	10800 2400 10800 3100
Connection ~ 10800 3100
Wire Wire Line
	10800 3100 11750 3100
Wire Wire Line
	10950 2400 10950 3200
Connection ~ 10950 3200
Wire Wire Line
	10950 3200 11650 3200
Wire Wire Line
	8550 3100 10800 3100
Wire Wire Line
	8550 3200 10950 3200
Wire Wire Line
	10800 1950 10800 2000
Wire Wire Line
	10950 2000 10950 1950
Connection ~ 10950 1950
Wire Wire Line
	10950 1950 10800 1950
Wire Wire Line
	5750 4900 5550 4900
Wire Wire Line
	5750 5000 5550 5000
Wire Wire Line
	5550 4700 5750 4700
Wire Wire Line
	5550 4600 5750 4600
Wire Wire Line
	5550 4500 5750 4500
Wire Wire Line
	5550 4400 5750 4400
Wire Wire Line
	4650 4000 5750 4000
Wire Wire Line
	4650 4100 5750 4100
Wire Wire Line
	4850 3000 4750 3000
Wire Wire Line
	5750 3800 5700 3800
Wire Wire Line
	5750 3700 5700 3700
Wire Wire Line
	5750 3600 5700 3600
Wire Wire Line
	5750 3500 5700 3500
Wire Wire Line
	5750 3300 5700 3300
Wire Wire Line
	5750 3200 5700 3200
Wire Wire Line
	9650 4200 8650 4200
Wire Wire Line
	8650 4200 8650 4100
Connection ~ 8650 4100
NoConn ~ 8550 4700
$Comp
L servo:3V3 #PWR0209
U 1 1 5E379A32
P 13400 1600
F 0 "#PWR0209" H 13405 1807 20  0001 C CNN
F 1 "3V3" H 13405 1757 28  0000 C CNN
F 2 "" H 13400 1600 50  0001 C CNN
F 3 "" H 13400 1600 50  0001 C CNN
	1    13400 1600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R212
U 1 1 5E379A39
P 13450 2000
F 0 "R212" V 13428 2050 20  0000 L CNN
F 1 "470" V 13471 2050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 12950 1900 60  0001 C CNN
F 3 "" H 13050 2000 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
	1    13450 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 1650 13450 1800
Wire Wire Line
	10850 3750 10850 3800
Wire Wire Line
	8550 3600 10550 3600
Wire Wire Line
	10550 4400 10550 3600
Wire Wire Line
	11750 3300 13000 3300
Wire Wire Line
	9550 2800 13650 2800
Wire Wire Line
	13650 3100 13000 3100
Wire Wire Line
	13000 3100 13000 3300
Wire Wire Line
	13100 3400 13100 3200
Wire Wire Line
	13100 3200 13650 3200
Wire Wire Line
	12550 3400 13100 3400
Wire Wire Line
	13650 3300 13200 3300
Wire Wire Line
	13200 3300 13200 3500
Wire Wire Line
	11650 3500 13200 3500
Wire Wire Line
	13450 2200 13450 3600
Wire Wire Line
	13450 3600 13650 3600
Wire Wire Line
	13650 3500 13350 3500
Wire Wire Line
	13350 3500 13350 4400
Text GLabel 12950 2500 0    50   Input ~ 0
USB_D+
Text GLabel 12950 2400 0    50   Input ~ 0
USB_D-
Wire Wire Line
	12950 2400 13650 2400
Wire Wire Line
	13650 2500 12950 2500
$Comp
L servo:GND #GND_0104
U 1 1 5E33355B
P 12900 2600
F 0 "#GND_0104" H 12822 2593 20  0001 R CNN
F 1 "GND" H 12900 2442 30  0000 C CNN
F 2 "" H 12900 2600 70  0000 C CNN
F 3 "" H 12900 2600 70  0000 C CNN
	1    12900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 2600 12900 2600
Text GLabel 7350 8450 0    50   Input ~ 0
USB_D+
Text GLabel 7350 8250 0    50   Input ~ 0
USB_D-
Wire Wire Line
	10950 1950 11100 1950
Wire Wire Line
	11100 1800 11100 1950
Connection ~ 11100 1950
Wire Wire Line
	11100 1950 11250 1950
Wire Wire Line
	9550 1900 9750 1900
Connection ~ 9750 1900
Wire Wire Line
	9750 1900 9850 1900
Wire Wire Line
	12900 2300 13650 2300
Text Notes 7050 7700 0    197  ~ 39
USB HOST
Text Notes 7550 7750 0    20   ~ 0
it's just an USB protection
$Comp
L servo:Earth #PWR0129
U 1 1 5E5959F5
P 15150 4700
AR Path="/5DC3DC9E/5E5959F5" Ref="#PWR0129"  Part="1" 
AR Path="/5DC4A59D/5E5959F5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 15150 4450 20  0001 C CNN
F 1 "Earth" H 15150 4535 39  0000 C CNN
F 2 "" H 15150 4700 50  0001 C CNN
F 3 "~" H 15150 4700 50  0001 C CNN
	1    15150 4700
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E5959FC
P 15400 4450
AR Path="/5DC4A59D/5E5959FC" Ref="C?"  Part="1" 
AR Path="/5DC3DC9E/5E5959FC" Ref="C217"  Part="1" 
F 0 "C217" V 15350 4400 20  0000 R CNN
F 1 "4n7" V 15400 4400 20  0000 R CNN
F 2 "servo:C_1206_3216Metric" H 15400 4350 60  0001 C CNN
F 3 "" H 15400 4450 60  0000 C CNN
F 4 "12061C472KAT2A" H 0   0   50  0001 C CNN "PartNumber"
F 5 "478-1521-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "4700pF ±10% 100V Ceramic Capacitor X7R 1206 (3216 Metric) " H 0   0   50  0001 C CNN "Description"
F 7 "0.18700" H 0   0   50  0001 C CNN "price@10"
	1    15400 4450
	0    1    1    0   
$EndComp
$Comp
L servo:GND #GND_?
U 1 1 5E595A03
P 15400 4700
AR Path="/5DC4A59D/5E595A03" Ref="#GND_?"  Part="1" 
AR Path="/5DC3DC9E/5E595A03" Ref="#GND_0101"  Part="1" 
F 0 "#GND_0101" H 15405 4551 20  0001 C CNN
F 1 "GND" H 15400 4543 30  0000 C CNN
F 2 "" H 15400 4700 70  0000 C CNN
F 3 "" H 15400 4700 70  0000 C CNN
	1    15400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15400 4700 15400 4650
Wire Wire Line
	15150 4700 15150 4350
Wire Wire Line
	15150 4350 15400 4350
Connection ~ 15150 4350
$Comp
L servo:TPD4E001QDBV IC201
U 1 1 5E69A3BE
P 7800 8350
F 0 "IC201" H 7800 8643 39  0000 C CNN
F 1 "TPD4E001QDBV" H 7800 8568 39  0000 C CNN
F 2 "servo:SOT-23-6" H 7800 8350 60  0001 C CNN
F 3 "../doc/datasheets/tpd4e001-q1.pdf" H 7850 8650 60  0001 C CNN
F 4 "TVS DIODE 5.5V 16V SOT23-6 " H 0   0   50  0001 C CNN "Description"
F 5 "TPD4E001QDBVRQ1" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-39344-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.56800" H 0   0   50  0001 C CNN "price@10"
	1    7800 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 8250 7350 8250
Wire Wire Line
	7500 8450 7350 8450
$Comp
L servo:GND #GND_0103
U 1 1 5E6C8445
P 7450 8550
F 0 "#GND_0103" H 7455 8401 20  0001 C CNN
F 1 "GND" H 7455 8349 30  0000 C CNN
F 2 "" H 7450 8550 70  0000 C CNN
F 3 "" H 7450 8550 70  0000 C CNN
	1    7450 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 8350 7450 8350
Wire Wire Line
	7450 8350 7450 8550
$Comp
L servo:5VC #PWR?
U 1 1 5E6DE565
P 8300 8200
AR Path="/5DD76B18/5E6DE565" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E6DE565" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 8300 8000 20  0001 C CNN
F 1 "5VC" H 8305 8357 28  0000 C CNN
F 2 "" H 8300 8200 50  0001 C CNN
F 3 "" H 8300 8200 50  0001 C CNN
	1    8300 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 8350 8300 8350
$Comp
L servo:Resistor R210
U 1 1 5E6ED74D
P 8500 8350
F 0 "R210" H 8500 8465 20  0000 C CNN
F 1 "10" H 8500 8422 20  0000 C CNN
F 2 "servo:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8000 8250 60  0001 C CNN
F 3 "" H 8100 8350 60  0001 C CNN
F 4 " 10 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J10R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130079CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
	1    8500 8350
	1    0    0    -1  
$EndComp
Text GLabel 12900 2300 0    50   Input ~ 0
USB_VBUS
Text GLabel 8800 8350 2    50   Input ~ 0
USB_VBUS
Wire Wire Line
	8300 8200 8300 8350
Connection ~ 8300 8350
$Comp
L servo:PWR_FLAG #FLG0101
U 1 1 63A0C17E
P 8700 8200
F 0 "#FLG0101" H 8700 8275 20  0001 C CNN
F 1 "PWR_FLAG" H 8700 8350 20  0000 C CNN
F 2 "" H 8700 8200 50  0001 C CNN
F 3 "~" H 8700 8200 50  0001 C CNN
	1    8700 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 8350 8700 8350
Wire Wire Line
	8700 8200 8700 8350
Connection ~ 8700 8350
NoConn ~ 8100 8250
NoConn ~ 8100 8450
Wire Wire Line
	11750 3000 13650 3000
Text GLabel 8700 3800 2    50   Input ~ 0
ENET_MDCLK
$Comp
L servo:Resistor R211
U 1 1 5EF6459C
P 11050 4000
F 0 "R211" V 11028 4050 20  0000 L CNN
F 1 "2.2k" V 11071 4050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 10550 3900 60  0001 C CNN
F 3 "" H 10650 4000 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
	1    11050 4000
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R213
U 1 1 5EF6E068
P 13300 2000
F 0 "R213" V 13278 2050 20  0000 L CNN
F 1 "470" V 13321 2050 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 12800 1900 60  0001 C CNN
F 3 "" H 12900 2000 60  0001 C CNN
F 4 "470 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J470R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130089CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
	1    13300 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	13300 1650 13300 1800
Wire Wire Line
	13400 1600 13400 1650
Connection ~ 13400 1650
Wire Wire Line
	13400 1650 13300 1650
Wire Wire Line
	13300 2200 13300 3800
Wire Wire Line
	13300 3800 13650 3800
Wire Wire Line
	15150 3650 15150 3700
Connection ~ 15150 3700
Wire Wire Line
	15150 3900 15150 4350
Connection ~ 15150 3900
Wire Wire Line
	15150 3850 15150 3900
Connection ~ 15150 3850
Wire Wire Line
	15150 3700 15150 3750
Connection ~ 15150 3750
Wire Wire Line
	15150 3800 15150 3850
Wire Wire Line
	15150 3750 15150 3800
Connection ~ 15150 3800
$Comp
L servo:0821-1X1T-36-F J201
U 1 1 5E23A3EB
P 14150 3300
F 0 "J201" H 14400 4565 50  0000 C CNN
F 1 "RJ45 USB" H 14400 4474 50  0000 C CNN
F 2 "servo:BEL_0821-1X1T-36-F" H 14000 4650 50  0001 L BNN
F 3 "../doc/datasheets/dr-MAG-0821-1X1T-36-F.pdf" H 14150 4550 50  0001 L BNN
F 4 "1 Port RJ45 with USB A Magjack Connector Through Hole 10/100 Base-T, AutoMDIX " H 0   0   50  0001 C CNN "Description"
F 5 "0821-1X1T-36-F " H 0   0   50  0001 C CNN "PartNumber"
F 6 "507-1424-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "4.89600" H 0   0   50  0001 C CNN "price@10"
	1    14150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 1650 13400 1650
Wire Wire Line
	13500 4550 11050 4550
Wire Wire Line
	10550 4900 8550 4900
Wire Wire Line
	10550 4400 10850 4400
Wire Wire Line
	10850 3750 10950 3750
Wire Wire Line
	11050 3750 11050 3800
Connection ~ 10950 3750
Wire Wire Line
	10950 3750 11050 3750
Wire Wire Line
	10850 4200 10850 4400
Connection ~ 10850 4400
Wire Wire Line
	10850 4400 13350 4400
Wire Wire Line
	11050 4200 11050 4550
Connection ~ 11050 4550
Wire Wire Line
	11050 4550 10550 4550
Wire Wire Line
	13650 4100 13500 4100
Wire Wire Line
	13500 4100 13500 4550
Wire Wire Line
	10550 4550 10550 4900
Text Label 8900 4900 0    39   ~ 0
enet_led1
Text Label 8800 3600 0    39   ~ 0
enet_led0
Text Notes 9150 4300 0    20   ~ 0
have interna\nl 60k pullip
Text Label 8600 4500 0    39   ~ 0
clk_xi
$Comp
L servo:GND #GND_0114
U 1 1 603B4765
P 12150 4050
F 0 "#GND_0114" H 12155 3901 20  0001 C CNN
F 1 "GND" H 12150 3893 30  0000 C CNN
F 2 "" H 12150 4050 70  0000 C CNN
F 3 "" H 12150 4050 70  0000 C CNN
	1    12150 4050
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0267
U 1 1 603B47AC
P 12150 3750
F 0 "#PWR0267" H 12050 3850 20  0001 C CNN
F 1 "3V3" H 12150 3900 28  0000 C CNN
F 2 "" H 12150 3750 50  0001 C CNN
F 3 "" H 12150 3750 50  0001 C CNN
	1    12150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11950 2900 11950 3750
Wire Wire Line
	11950 3750 12150 3750
Wire Wire Line
	11950 2900 13650 2900
Connection ~ 12150 3750
Wire Wire Line
	12550 3750 12450 3750
Wire Wire Line
	12550 3400 12550 3750
Connection ~ 12450 3750
Wire Wire Line
	4850 3000 5750 3000
Wire Wire Line
	4450 3000 4750 3000
Wire Wire Line
	3900 2800 4150 2800
Wire Wire Line
	3900 3250 4050 3250
Wire Wire Line
	4050 3350 4050 3250
Connection ~ 4050 3250
Wire Wire Line
	4050 3250 4150 3250
Wire Wire Line
	3900 2900 3900 2800
Wire Wire Line
	4150 2900 4150 2800
Wire Wire Line
	4150 3200 4150 3250
Wire Wire Line
	3900 3200 3900 3250
Wire Wire Line
	4450 3500 4600 3500
Wire Wire Line
	4600 3600 4600 3500
Connection ~ 4600 3500
Wire Wire Line
	4600 3500 4750 3500
$Comp
L servo:jumper JP?
U 1 1 5EBCD9AF
P 8750 4700
AR Path="/5DD76B18/5EBCD9AF" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5EBCD9AF" Ref="JP?"  Part="1" 
AR Path="/5DC3DC9E/5EBCD9AF" Ref="JP201"  Part="1" 
F 0 "JP201" V 8712 4748 39  0000 L CNN
F 1 "jumper" V 8787 4748 39  0000 L CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8650 4680 50  0001 C CNN
F 3 "~" H 8750 4780 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 5450 -900 50  0001 C CNN "Description"
F 5 "-" H 5450 -900 50  0001 C CNN "PartNumber"
F 6 "-" H 5450 -900 50  0001 C CNN "digikey"
F 7 "0" H 5450 -900 50  0001 C CNN "price@10"
	1    8750 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4600 8750 4500
Wire Wire Line
	8750 4800 8750 5250
$Comp
L servo:jumper JP?
U 1 1 5E57DF30
P 9150 4500
AR Path="/5DD76B18/5E57DF30" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E57DF30" Ref="JP?"  Part="1" 
AR Path="/5DC3DC9E/5E57DF30" Ref="JP202"  Part="1" 
F 0 "JP202" H 9150 4585 39  0000 C CNN
F 1 "jumper" H 9150 4660 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9050 4480 50  0001 C CNN
F 3 "~" H 9150 4580 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 5850 -1100 50  0001 C CNN "Description"
F 5 "-" H 5850 -1100 50  0001 C CNN "PartNumber"
F 6 "-" H 5850 -1100 50  0001 C CNN "digikey"
F 7 "0" H 5850 -1100 50  0001 C CNN "price@10"
	1    9150 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 4500 8750 4500
Connection ~ 8750 4500
$EndSCHEMATC
