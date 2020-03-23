EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 20
Title "clk"
Date "2020-03-23"
Rev "0.2"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:GND #PWR_0609
U 1 1 5DB38F81
P 13900 3900
F 0 "#PWR_0609" H 13905 3751 20  0001 C CNN
F 1 "GND" H 13900 3742 30  0000 C CNN
F 2 "" H 13900 3900 70  0000 C CNN
F 3 "" H 13900 3900 70  0000 C CNN
	1    13900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 2500 14300 2350
Wire Wire Line
	6600 7750 6600 8050
Wire Wire Line
	6600 7200 6450 7200
Wire Wire Line
	6600 7350 6600 7200
Wire Wire Line
	6300 7200 6300 7350
$Comp
L servo:GND #PWR_0605
U 1 1 5DB38F77
P 10050 3400
F 0 "#PWR_0605" H 10055 3251 20  0001 C CNN
F 1 "GND" H 10050 3242 30  0000 C CNN
F 2 "" H 10050 3400 70  0000 C CNN
F 3 "" H 10050 3400 70  0000 C CNN
	1    10050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2800 10050 3000
Text Label 13400 3600 0    60   ~ 0
MCU_XRSn
Text Label 13300 2900 2    60   ~ 0
F2838x_CLK
Text Notes 14150 2350 2    79   ~ 0
25MHz Clock
NoConn ~ 10650 3100
NoConn ~ 10650 3300
Wire Wire Line
	13900 3600 13900 3550
$Comp
L servo:GND #PWR_0607
U 1 1 5DB38F6D
P 13550 2700
F 0 "#PWR_0607" H 13555 2551 20  0001 C CNN
F 1 "GND" H 13555 2499 30  0000 C CNN
F 2 "" H 13550 2700 70  0000 C CNN
F 3 "" H 13550 2700 70  0000 C CNN
	1    13550 2700
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R610
U 1 1 5DB38F69
P 13900 3350
F 0 "R610" V 13878 3400 20  0000 L CNN
F 1 "2.2k" V 13921 3400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 13400 3250 60  0001 C CNN
F 3 "" H 13500 3350 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13900 3350
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C602
U 1 1 5DB38F68
P 13900 3800
F 0 "C602" V 13972 3690 20  0000 R CNN
F 1 "0.1uF" V 13929 3690 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 13900 3700 60  0001 C CNN
F 3 "" H 13900 3800 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13900 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R604
U 1 1 5DB38F64
P 6300 7550
F 0 "R604" V 6278 7600 20  0000 L CNN
F 1 "56k" V 6321 7600 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5800 7450 60  0001 C CNN
F 3 "" H 5900 7550 60  0001 C CNN
F 4 "56 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RK73B1JTTD563J " H 0   0   50  0001 C CNN "PartNumber"
F 6 "2019-RK73B1JTTD563JCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.01400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6300 7550
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R605
U 1 1 5DB38F63
P 6600 7550
F 0 "R605" V 6578 7600 20  0000 L CNN
F 1 "56k" V 6621 7600 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6100 7450 60  0001 C CNN
F 3 "" H 6200 7550 60  0001 C CNN
F 4 "56 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RK73B1JTTD563J " H 0   0   50  0001 C CNN "PartNumber"
F 6 "2019-RK73B1JTTD563JCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.01400" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6600 7550
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R607
U 1 1 5DB38F5A
P 10050 3200
F 0 "R607" V 10028 3250 20  0000 L CNN
F 1 "2.2k" V 10071 3250 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9550 3100 60  0001 C CNN
F 3 "" H 9650 3200 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
F 6 "P2.2KGCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10050 3200
	0    1    1    0   
$EndComp
$Comp
L servo:OSC_4P_1_TRI-STATE Y601
U 1 1 5DB38F52
P 13900 2600
F 0 "Y601" H 13900 2367 60  0000 C CNN
F 1 "osc 25Mhz" H 13900 2600 50  0001 C CNN
F 2 "servo:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 13900 2600 50  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 13900 2600 50  0001 C CNN
F 4 "25MHz XO (Standard) HCMOS Oscillator 3.3V Enable/Disable 4-SMD, No Lead " H 0   0   50  0001 C CNN "Description"
F 5 "ECS-2520S33-250-FN-TR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "XC2198CT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "1.41900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13900 2600
	-1   0    0    -1  
$EndComp
$Comp
L servo:TMS320F28388 U301
U 3 1 5DB38F4E
P 11650 2800
F 0 "U301" H 11650 3573 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 11650 3475 50  0000 C CNN
F 2 "servo:BGA337CP80_19X19_1600X1600X140B50N" H 11650 2800 50  0001 C CNN
F 3 "../doc/datasheets/tms320f28388d_datasheet.pdf" H 11650 2800 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V 10250 2600 60  0001 C CNN "PartNumber"
F 5 "32-bit MCU with connectivity manager, 2x C28x+CLA CPU, 1.5 MB flash, FPU64, CLB, Ethernet, EtherCAT" H 0   0   50  0001 C CNN "Description"
F 6 "14.96" H 0   0   50  0001 C CNN "price@10"
F 7 "1" H 0   0   50  0001 C CNN "bom_1"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
	3    11650 2800
	1    0    0    -1  
$EndComp
Connection ~ 6450 7200
Wire Wire Line
	6450 7200 6300 7200
Text Notes 14200 3200 0    120  ~ 0
Reset\n
Wire Wire Line
	6100 8050 6600 8050
Text GLabel 6100 7850 0    50   Input ~ 0
BOOT1
Text GLabel 6100 8050 0    50   Input ~ 0
BOOT2
Wire Wire Line
	6450 7100 6450 7200
Wire Wire Line
	13000 3300 12650 3300
Wire Wire Line
	6300 7750 6300 7850
Wire Wire Line
	6300 7850 6100 7850
Wire Wire Line
	4400 3100 4400 3150
$Comp
L servo:Resistor R?
U 1 1 5DE66EAC
P 8250 3800
AR Path="/5DC1676A/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EAC" Ref="R606"  Part="1" 
F 0 "R606" V 8325 3750 20  0000 R CNN
F 1 "560" V 8282 3750 20  0000 R CNN
F 2 "servo:R_0603_1608Metric" H 7750 3700 60  0001 C CNN
F 3 "" H 7850 3800 60  0001 C CNN
F 4 "560 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CR0603-JW-561ELF" H 0   0   50  0001 C CNN "PartNumber"
F 6 "118-CR0603-JW-561ELFCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8250 3800
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EBC
P 4400 3250
AR Path="/5DCD812E/5DE66EBC" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EBC" Ref="D603"  Part="1" 
F 0 "D603" V 4385 3172 20  0000 R CNN
F 1 "blue@5mA" V 4425 3172 16  0000 R CNN
F 2 "servo:LED_0603_1608Metric" H 4200 3050 60  0001 C CNN
F 3 "../doc/datasheets/LB_Q39G_v1.4_9-1-15.pdf" H 4200 3050 60  0001 C CNN
F 4 "475-2816-1-ND" H 4400 3250 50  0001 C CNN "digikey"
F 5 "LB Q39G-L2OO-35-1" H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED BLUE DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.40100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 3250
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EC4
P 8250 3450
AR Path="/5DCD812E/5DE66EC4" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EC4" Ref="D604"  Part="1" 
F 0 "D604" V 8235 3580 20  0000 L CNN
F 1 "blue@5mA" V 8275 3580 16  0000 L CNN
F 2 "servo:LED_0603_1608Metric" H 8050 3250 60  0001 C CNN
F 3 "../doc/datasheets/LB_Q39G_v1.4_9-1-15.pdf" H 8050 3250 60  0001 C CNN
F 4 "475-2816-1-ND" H 8250 3450 50  0001 C CNN "digikey"
F 5 "LB Q39G-L2OO-35-1" H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED BLUE DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.40100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8250 3450
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5DE66ECB
P 8250 3300
AR Path="/5DCD812E/5DE66ECB" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66ECB" Ref="#PWR0606"  Part="1" 
F 0 "#PWR0606" H 8267 3509 20  0001 C CNN
F 1 "3V3" H 8267 3457 30  0000 C CNN
F 2 "" H 8250 3300 70  0000 C CNN
F 3 "" H 8250 3300 70  0000 C CNN
	1    8250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2400 2900 2250
$Comp
L servo:5VC #PWR?
U 1 1 5DE66EF3
P 2900 2250
AR Path="/5DD76B18/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DCD812E/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF3" Ref="#PWR0602"  Part="1" 
F 0 "#PWR0602" H 2900 2050 20  0001 C CNN
F 1 "5VC" H 2905 2407 28  0000 C CNN
F 2 "" H 2900 2250 50  0001 C CNN
F 3 "" H 2900 2250 50  0001 C CNN
	1    2900 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DE66EF9
P 3000 2900
AR Path="/5DCD812E/5DE66EF9" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF9" Ref="#PWR0603"  Part="1" 
F 0 "#PWR0603" H 3000 2650 30  0001 C CNN
F 1 "GND" H 3000 2742 30  0000 C CNN
F 2 "" H 3000 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13400 2900 12650 2900
Wire Wire Line
	13400 2500 13400 2900
Wire Wire Line
	13000 3600 13000 3300
Text Label 9750 2400 2    60   ~ 0
MCU_TCK
Text Label 9750 2500 2    60   ~ 0
MCU_TDI
Text Label 9750 2600 2    60   ~ 0
MCU_TDO
Text Label 9800 2700 2    60   ~ 0
MCU_TMS
Text Label 9800 2800 2    60   ~ 0
MCU_TRSTn
Text GLabel 7450 3800 2    60   BiDi ~ 0
SCIA_TX
Text GLabel 8500 4000 2    60   BiDi ~ 0
SCIA_RX
Wire Wire Line
	13000 3600 13900 3600
$Comp
L servo:Resistor R?
U 1 1 5DE66EB4
P 4400 3600
AR Path="/5DC1676A/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EB4" Ref="R603"  Part="1" 
F 0 "R603" V 4378 3650 20  0000 L CNN
F 1 "560" V 4421 3650 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3900 3500 60  0001 C CNN
F 3 "" H 4000 3600 60  0001 C CNN
F 4 "560 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CR0603-JW-561ELF" H 0   0   50  0001 C CNN "PartNumber"
F 6 "118-CR0603-JW-561ELFCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4400 3600
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5ECD3F89
P 14300 7250
AR Path="/5DC4A59D/5ECD3F89" Ref="C?"  Part="1" 
AR Path="/5DD4DF4C/5ECD3F89" Ref="C603"  Part="1" 
F 0 "C603" V 14328 7360 20  0000 L CNN
F 1 "0.1uF" V 14371 7360 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 14300 7150 60  0001 C CNN
F 3 "" H 14300 7250 60  0000 C CNN
F 4 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 6 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14300 7250
	0    1    1    0   
$EndComp
Text GLabel 13000 7900 0    50   Input ~ 0
FLASH_SPI_CLK
$Comp
L servo:3V3 #PWR?
U 1 1 5ECE694E
P 13850 7000
AR Path="/5DC4A59D/5ECE694E" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5ECE694E" Ref="#PWR0607"  Part="1" 
F 0 "#PWR0607" H 13855 7207 20  0001 C CNN
F 1 "3V3" H 13855 7157 28  0000 C CNN
F 2 "" H 13850 7000 50  0001 C CNN
F 3 "" H 13850 7000 50  0001 C CNN
	1    13850 7000
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_?
U 1 1 5ECE6AD9
P 13850 8500
AR Path="/5DC4A59D/5ECE6AD9" Ref="#GND_?"  Part="1" 
AR Path="/5DD4DF4C/5ECE6AD9" Ref="#GND_0601"  Part="1" 
F 0 "#GND_0601" H 13855 8351 20  0001 C CNN
F 1 "GND" H 13850 8342 30  0000 C CNN
F 2 "" H 13850 8500 70  0000 C CNN
F 3 "" H 13850 8500 70  0000 C CNN
	1    13850 8500
	1    0    0    -1  
$EndComp
Text GLabel 14450 7800 2    50   Input ~ 0
FLASH_SPI_MISO
Text GLabel 13000 8000 0    50   Input ~ 0
FLASH_SPI_CS
Wire Wire Line
	13250 8000 13000 8000
Wire Wire Line
	13250 7900 13000 7900
Text GLabel 13000 7800 0    50   Input ~ 0
FLASH_SPI_MOSI
Wire Wire Line
	13000 7800 13250 7800
Wire Wire Line
	14300 7150 13850 7150
Connection ~ 13850 7150
Wire Wire Line
	13850 7150 13850 7400
Wire Wire Line
	13850 7000 13850 7150
$Comp
L servo:GND #GND_?
U 1 1 5ECF9D7E
P 14300 7450
AR Path="/5DC4A59D/5ECF9D7E" Ref="#GND_?"  Part="1" 
AR Path="/5DD4DF4C/5ECF9D7E" Ref="#GND_0602"  Part="1" 
F 0 "#GND_0602" H 14305 7301 20  0001 C CNN
F 1 "GND" H 14300 7292 30  0000 C CNN
F 2 "" H 14300 7450 70  0000 C CNN
F 3 "" H 14300 7450 70  0000 C CNN
	1    14300 7450
	1    0    0    -1  
$EndComp
$Comp
L servo:M25PX32-VMW U602
U 1 1 5ECE67BA
P 13850 8000
F 0 "U602" H 14491 8046 39  0000 L CNN
F 1 "SST26VF032B-104V/SM (M25PX32-VMW)" H 14491 7955 39  0000 L CNN
F 2 "servo:SOIJ-8_5.3x5.3mm_P1.27mm" H 14500 8050 50  0001 C CNN
F 3 "../doc/datasheets/SST26VF032B_nor_flash.pdf" H 14000 7900 50  0001 C CNN
F 4 "FLASH Memory IC 32Mb (4M x 8) SPI - Quad I/O 104MHz 8-SOIJ" H 0   0   50  0001 C CNN "Description"
F 5 "SST26VF032B-104V/SM" H 0   0   50  0001 C CNN "PartNumber"
F 6 "SST26VF032B-104V/SM-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "1.67000" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    13850 8000
	1    0    0    -1  
$EndComp
Text Notes 13200 6400 0    197  ~ 39
SPI FLASH 
Text Notes 13750 6650 0    20   ~ 0
To store some firmware features, \nand maybe UI images or screens
Text Label 4100 2500 2    60   ~ 0
PRG_TDI
Text Label 4200 2700 2    60   ~ 0
PRG_TRSTn
Text Label 4100 2400 2    60   ~ 0
PRG_TCK
Text Label 4100 2600 2    60   ~ 0
PRG_TMS
Text Label 4100 2800 2    60   ~ 0
PRG_TDO
$Comp
L servo:3V3 #PWR0601
U 1 1 5EEB86F5
P 2750 2200
F 0 "#PWR0601" H 2650 2300 20  0001 C CNN
F 1 "3V3" H 2750 2350 28  0000 C CNN
F 2 "" H 2750 2200 50  0001 C CNN
F 3 "" H 2750 2200 50  0001 C CNN
	1    2750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2200 2750 2500
Wire Wire Line
	7950 2600 10650 2600
Wire Wire Line
	10650 2900 10400 2900
Wire Wire Line
	10400 2900 10400 2800
Wire Wire Line
	10400 2800 10050 2800
Connection ~ 10050 2800
Wire Wire Line
	14150 2500 14300 2500
Wire Wire Line
	14150 2700 14300 2700
Wire Wire Line
	14300 2700 14300 2500
Connection ~ 14300 2500
Wire Wire Line
	13550 2700 13650 2700
Wire Wire Line
	13400 2500 13650 2500
Text GLabel 9900 7350 0    50   Input ~ 0
DACB_DBG
$Comp
L servo:Resistor R608
U 1 1 5E228777
P 10100 7350
AR Path="/5DD4DF4C/5E228777" Ref="R608"  Part="1" 
AR Path="/5E0D58C4/5E228777" Ref="R?"  Part="1" 
AR Path="/5E72D841/5E228777" Ref="R?"  Part="1" 
F 0 "R608" H 10100 7465 20  0000 C CNN
F 1 "100" H 10100 7422 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9600 7250 60  0001 C CNN
F 3 "" H 9700 7350 60  0001 C CNN
F 4 "100 Ohms ±5% 0.25W, 1/4W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Pulse Withstanding Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ESR03EZPJ101" H 0   0   50  0001 C CNN "PartNumber"
F 6 "RHM100DCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.07900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10100 7350
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E22877E
P 10300 7550
AR Path="/5E092156/5E22877E" Ref="C?"  Part="1" 
AR Path="/5E72D841/5E22877E" Ref="C?"  Part="1" 
AR Path="/5DD4DF4C/5E22877E" Ref="C601"  Part="1" 
F 0 "C601" V 10328 7660 20  0000 L CNN
F 1 "0.1uF" V 10371 7660 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10300 7450 60  0001 C CNN
F 3 "" H 10300 7550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10300 7550
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R609
U 1 1 5E228785
P 10500 7350
AR Path="/5DD4DF4C/5E228785" Ref="R609"  Part="1" 
AR Path="/5E0D58C4/5E228785" Ref="R?"  Part="1" 
AR Path="/5E72D841/5E228785" Ref="R?"  Part="1" 
F 0 "R609" H 10500 7465 20  0000 C CNN
F 1 "100" H 10500 7422 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 10000 7250 60  0001 C CNN
F 3 "" H 10100 7350 60  0001 C CNN
F 4 "100 Ohms ±5% 0.25W, 1/4W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Pulse Withstanding Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "ESR03EZPJ101" H 0   0   50  0001 C CNN "PartNumber"
F 6 "RHM100DCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.07900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10500 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 7350 10300 7450
Connection ~ 10300 7350
$Comp
L servo:GND #PWR_0606
U 1 1 5E236685
P 10300 7800
F 0 "#PWR_0606" H 10305 7651 20  0001 C CNN
F 1 "GND" H 10300 7643 30  0000 C CNN
F 2 "" H 10300 7800 70  0000 C CNN
F 3 "" H 10300 7800 70  0000 C CNN
	1    10300 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 7750 10300 7800
Text Notes 9400 6800 0    197  ~ 39
ADC/DAC DBG OUT
Text Notes 9900 7050 0    20   ~ 0
it's just optional for debug porpouses to monitor\n some analog signal out from the board, it could \nbe very handy
NoConn ~ -1800 600 
Text Label 4150 3800 2    60   ~ 0
PRG_SCI_RX
Text Label 4150 4000 2    60   ~ 0
PRG_SCI_TX
Wire Wire Line
	4900 2700 4900 2800
Wire Wire Line
	3600 2700 4900 2700
Wire Wire Line
	3600 2800 4700 2800
Wire Wire Line
	7950 2600 7950 2900
Wire Wire Line
	8250 3300 8250 3350
Connection ~ 4400 3800
Wire Wire Line
	4400 3800 2900 3800
$Comp
L servo:3V3 #PWR?
U 1 1 5E51604B
P 4400 3100
AR Path="/5DCD812E/5E51604B" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E51604B" Ref="#PWR0604"  Part="1" 
F 0 "#PWR0604" H 4417 3309 20  0001 C CNN
F 1 "3V3" H 4417 3257 30  0000 C CNN
F 2 "" H 4400 3100 70  0000 C CNN
F 3 "" H 4400 3100 70  0000 C CNN
	1    4400 3100
	1    0    0    -1  
$EndComp
Text Notes 3200 2100 0    20   ~ 0
Programmer connector plus SCI for debug porpouses.. take in account\n that it's not isolated, only buffered to minimize risk. It's supoussed that\n th 3v3 cold side never touch 220v\n
Text Notes 8000 1600 0    197  ~ 39
CLK + JTAG + SCI\n
Text Notes 5700 6550 0    197  ~ 39
BOOTSRAP R's
Wire Wire Line
	13250 8200 13100 8200
Wire Wire Line
	13100 8200 13100 8100
Wire Wire Line
	13100 7400 13850 7400
Connection ~ 13850 7400
Wire Wire Line
	13850 7400 13850 7500
Wire Wire Line
	13250 8100 13100 8100
Connection ~ 13100 8100
Wire Wire Line
	13100 8100 13100 7400
NoConn ~ 12650 3100
NoConn ~ 12650 2700
NoConn ~ 12650 2600
NoConn ~ 12650 2400
Wire Wire Line
	10800 7350 10700 7350
Text GLabel 10800 7350 2    50   Input ~ 0
DACB_DBG_OUT
Text GLabel 3600 2900 2    50   Input ~ 0
DACB_DBG_OUT
Wire Wire Line
	3100 2900 3000 2900
Wire Wire Line
	3000 2900 3000 2800
Wire Wire Line
	3000 2800 3100 2800
Connection ~ 3000 2900
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J601
U 1 1 5E9506B9
P 3400 2600
F 0 "J601" H 3450 3017 50  0000 C CNN
F 1 "pin header 2x6 2.54" H 3450 2926 50  0000 C CNN
F 2 "servo:idc2x06_smd" H 3400 2600 50  0001 C CNN
F 3 "../doc/datasheets/idc2x_smd.pdf" H 3400 2600 50  0001 C CNN
F 4 "Connector Header Surface Mount 12 position 0.100\" (2.54mm) " H 100 0   50  0001 C CNN "Description"
F 5 "SBH11-NBPC-D06-SM-BK" H 100 0   50  0001 C CNN "PartNumber"
F 6 "SBH11-NBPC-D06-SM-BK-ND " H 100 0   50  0001 C CNN "digikey"
F 7 "1" H 100 0   50  0001 C CNN "price@10"
F 8 "0" H 100 0   50  0001 C CNN "bom_1"
F 9 "0" H 100 0   50  0001 C CNN "bom_2"
F 10 "1" H 100 0   50  0001 C CNN "bom_3"
	1    3400 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 10650 2400
Wire Wire Line
	4400 3800 7450 3800
Wire Wire Line
	2800 4000 8250 4000
Connection ~ 8250 4000
Wire Wire Line
	8250 4000 8500 4000
$Comp
L servo:3V3uC #PWR?
U 1 1 5E5056D0
P 14300 2350
AR Path="/5EAA846A/5E5056D0" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E5056D0" Ref="#PWR0281"  Part="1" 
F 0 "#PWR0281" H 14300 2150 20  0001 C CNN
F 1 "3V3uC" H 14300 2500 28  0000 C CNN
F 2 "" H 14300 2350 50  0001 C CNN
F 3 "" H 14300 2350 50  0001 C CNN
	1    14300 2350
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3uC #PWR?
U 1 1 5E509174
P 13900 3150
AR Path="/5EAA846A/5E509174" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E509174" Ref="#PWR0282"  Part="1" 
F 0 "#PWR0282" H 13900 2950 20  0001 C CNN
F 1 "3V3uC" H 13900 3300 28  0000 C CNN
F 2 "" H 13900 3150 50  0001 C CNN
F 3 "" H 13900 3150 50  0001 C CNN
	1    13900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2600 2900 3800
Wire Wire Line
	2800 2700 2800 4000
$Comp
L servo:3V3uC #PWR?
U 1 1 5E3A9789
P 6450 7100
AR Path="/5EAA846A/5E3A9789" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E3A9789" Ref="#PWR0283"  Part="1" 
F 0 "#PWR0283" H 6450 6900 20  0001 C CNN
F 1 "3V3uC" H 6450 7250 28  0000 C CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "" H 6450 7100 50  0001 C CNN
	1    6450 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 10650 2500
Wire Wire Line
	5350 2700 5350 2600
Wire Wire Line
	3600 2600 5350 2600
Wire Wire Line
	5350 2700 10650 2700
Wire Wire Line
	4900 2800 10050 2800
Wire Wire Line
	7950 2900 4700 2900
Wire Wire Line
	4700 2800 4700 2900
Connection ~ 13900 3600
$Comp
L servo:Resistor R601
U 1 1 5E946D6A
P 6300 8650
F 0 "R601" V 6278 8700 20  0000 L CNN
F 1 "2.2k" V 6321 8700 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5800 8550 60  0001 C CNN
F 3 "" H 5900 8650 60  0001 C CNN
F 4 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   1100 50  0001 C CNN "Description"
F 5 "P2.2KGCT-ND " H 0   1100 50  0001 C CNN "digikey"
F 6 "0.04500" H 0   1100 50  0001 C CNN "price@10"
F 7 "1" H 0   0   50  0001 C CNN "bom_1"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
	1    6300 8650
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R602
U 1 1 5E946DCA
P 6600 8650
F 0 "R602" V 6578 8700 20  0000 L CNN
F 1 "2.2k" V 6621 8700 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 6100 8550 60  0001 C CNN
F 3 "" H 6200 8650 60  0001 C CNN
F 4 "P2.2KGCT-ND " H 0   1100 50  0001 C CNN "digikey"
F 5 "0.04500" H 0   1100 50  0001 C CNN "price@10"
F 6 "1" H 0   0   50  0001 C CNN "bom_1"
F 7 "1" H 0   0   50  0001 C CNN "bom_2"
F 8 "1" H 0   0   50  0001 C CNN "bom_3"
F 9 "2.2 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200 Thick Film " H 0   0   50  0001 C CNN "Description"
F 10 "ERJ-3GEYJ222V" H 0   0   50  0001 C CNN "PartNumber"
	1    6600 8650
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR_0103
U 1 1 5E946EAD
P 6450 8950
F 0 "#PWR_0103" H 6455 8801 20  0001 C CNN
F 1 "GND" H 6450 8793 30  0000 C CNN
F 2 "" H 6450 8950 70  0000 C CNN
F 3 "" H 6450 8950 70  0000 C CNN
	1    6450 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 8850 6450 8850
Wire Wire Line
	6450 8950 6450 8850
Connection ~ 6450 8850
Wire Wire Line
	6450 8850 6600 8850
$Comp
L servo:jumper JP?
U 1 1 5E94D5D1
P 6300 8350
AR Path="/5DD76B18/5E94D5D1" Ref="JP?"  Part="1" 
AR Path="/5EAA846A/5E94D5D1" Ref="JP?"  Part="1" 
AR Path="/5DD4DF4C/5E94D5D1" Ref="JP601"  Part="1" 
F 0 "JP601" H 6300 8463 20  0000 C CNN
F 1 "jumper" H 6300 8420 20  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6200 8330 50  0001 C CNN
F 3 "~" H 6300 8430 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 3000 2750 50  0001 C CNN "Description"
F 5 "-" H 3000 2750 50  0001 C CNN "PartNumber"
F 6 "-" H 3000 2750 50  0001 C CNN "digikey"
F 7 "0" H 3000 2750 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    6300 8350
	0    1    1    0   
$EndComp
$Comp
L servo:jumper JP?
U 1 1 5E950904
P 6600 8350
AR Path="/5DD76B18/5E950904" Ref="JP?"  Part="1" 
AR Path="/5EAA846A/5E950904" Ref="JP?"  Part="1" 
AR Path="/5DD4DF4C/5E950904" Ref="JP602"  Part="1" 
F 0 "JP602" H 6600 8463 20  0000 C CNN
F 1 "jumper" H 6600 8420 20  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6500 8330 50  0001 C CNN
F 3 "~" H 6600 8430 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 3300 2750 50  0001 C CNN "Description"
F 5 "-" H 3300 2750 50  0001 C CNN "PartNumber"
F 6 "-" H 3300 2750 50  0001 C CNN "digikey"
F 7 "0" H 3300 2750 50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
	1    6600 8350
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 8250 6600 8050
Connection ~ 6600 8050
Wire Wire Line
	6300 8250 6300 7850
Connection ~ 6300 7850
Wire Wire Line
	2800 2700 3100 2700
Wire Wire Line
	2900 2600 3100 2600
Wire Wire Line
	2750 2500 3100 2500
Wire Wire Line
	2900 2400 3100 2400
$EndSCHEMATC
