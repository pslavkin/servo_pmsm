EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 20
Title "clk"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:3V3 #PWR_?
U 1 1 5E170B22
P 2500 1450
AR Path="/5DD4DF4C/5E170B22" Ref="#PWR_?"  Part="1" 
AR Path="/5E0D58C4/5E170B22" Ref="#PWR_?"  Part="1" 
AR Path="/5E72D841/5E170B22" Ref="#PWR_01401"  Part="1" 
F 0 "#PWR_01401" H 2505 1660 20  0001 C CNN
F 1 "3V3" H 2505 1608 30  0000 C CNN
F 2 "" H 2500 1450 70  0000 C CNN
F 3 "" H 2500 1450 70  0000 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
Text Notes 1350 1250 0    197  ~ 39
Multipurpose\nLEDs
Wire Wire Line
	2150 2550 2350 2550
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2650 1700
AR Path="/5DD4DF4C/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E72D841/5DB38F6A" Ref="D1402"  Part="1" 
F 0 "D1402" V 2656 1830 20  0000 L CNN
F 1 "red@2mA" V 2696 1830 16  0000 L CNN
F 2 "servo:LED_0603_1608Metric" H 2450 1500 60  0001 C CNN
F 3 "../doc/datasheets/LS L29K.pdf" H 2450 1500 60  0001 C CNN
F 4 "475-3124-1-ND" H 2650 1700 50  0001 C CNN "digikey"
F 5 "LS L29K-G1H2-1-Z" H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED RED DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.33900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2650 1700
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5F
P 2350 2050
AR Path="/5DD4DF4C/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E72D841/5DB38F5F" Ref="R1401"  Part="1" 
F 0 "R1401" V 2328 2100 20  0000 L CNN
F 1 "560" V 2371 2100 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 1850 1950 60  0001 C CNN
F 3 "" H 1950 2050 60  0001 C CNN
F 4 "560 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CR0603-JW-561ELF" H 0   0   50  0001 C CNN "PartNumber"
F 6 "118-CR0603-JW-561ELFCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2350 2050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E170B1F
P 2650 2050
AR Path="/5DD4DF4C/5E170B1F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E170B1F" Ref="R?"  Part="1" 
AR Path="/5E72D841/5E170B1F" Ref="R1402"  Part="1" 
F 0 "R1402" V 2628 2100 20  0000 L CNN
F 1 "560" V 2671 2100 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 2150 1950 60  0001 C CNN
F 3 "" H 2250 2050 60  0001 C CNN
F 4 "560 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CR0603-JW-561ELF" H 0   0   50  0001 C CNN "PartNumber"
F 6 "118-CR0603-JW-561ELFCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02600" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2650 2050
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 2350 1700
AR Path="/5DD4DF4C/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E72D841/5DB38F35" Ref="D1401"  Part="1" 
F 0 "D1401" V 2356 1622 20  0000 R CNN
F 1 "yellow@2mA" V 2396 1622 16  0000 R CNN
F 2 "servo:LED_0603_1608Metric" H 2150 1500 60  0001 C CNN
F 3 "../doc/datasheets/LY L29K.pdf" H 2150 1500 60  0001 C CNN
F 4 "475-1196-1-ND" H 2350 1700 50  0001 C CNN "digikey"
F 5 "LY L29K-H1K2-26-Z " H 0   0   50  0001 C CNN "PartNumber"
F 6 "LED YELLOW DIFFUSED 0603 SMD " H 0   0   50  0001 C CNN "Description"
F 7 "0.30100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2350 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2650 2650 2650
Text GLabel 2150 2550 0    50   Input ~ 0
RUN_LED0
Text GLabel 2150 2650 0    50   Input ~ 0
RUN_LED1
Wire Wire Line
	2350 1550 2500 1550
Wire Wire Line
	2650 1550 2650 1600
Wire Wire Line
	2350 1600 2350 1550
Connection ~ 2500 1550
Wire Wire Line
	2500 1550 2650 1550
Wire Wire Line
	2500 1450 2500 1550
$Comp
L servo:PAM8301 U1401
U 1 1 5E34B925
P 8600 1800
F 0 "U1401" H 8800 2150 39  0000 C CNN
F 1 "PAM8301" H 8800 2050 39  0000 C CNN
F 2 "servo:SOT-23-6" H 8600 1800 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/PAM8301.pdf" H 8600 1800 50  0001 C CNN
F 4 "Amplifier IC 1-Channel (Mono) Class D SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "PAM8301AAF" H 0   0   50  0001 C CNN "PartNumber"
F 6 "PAM8301AAFDICT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.46800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
F 10 "0" H 0   0   50  0001 C CNN "bom_1"
	1    8600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1700 9100 1700
Wire Wire Line
	9100 1700 9100 1750
Wire Wire Line
	9100 1750 9300 1750
Wire Wire Line
	9300 1850 9100 1850
Wire Wire Line
	9100 1850 9100 1900
Wire Wire Line
	9100 1900 9000 1900
$Comp
L servo:Resistor R?
U 1 1 5E351E31
P 7300 1700
AR Path="/5DD4DF4C/5E351E31" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E351E31" Ref="R?"  Part="1" 
AR Path="/5E72D841/5E351E31" Ref="R1403"  Part="1" 
F 0 "R1403" H 7300 1815 20  0000 C CNN
F 1 "1k" H 7300 1772 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6800 1600 60  0001 C CNN
F 3 "" H 6900 1700 60  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 1700
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E351EEC
P 7500 1900
AR Path="/5E092156/5E351EEC" Ref="C?"  Part="1" 
AR Path="/5E72D841/5E351EEC" Ref="C1401"  Part="1" 
F 0 "C1401" V 7528 2010 20  0000 L CNN
F 1 "10nF" V 7571 2010 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7500 1800 60  0001 C CNN
F 3 "" H 7500 1900 60  0000 C CNN
F 4 "CAP CER 1000PF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "0603B102K160CT" H 0   0   50  0001 C CNN "PartNumber"
F 6 "1292-1378-1-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.04100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7500 1900
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E352492
P 7700 1700
AR Path="/5DD4DF4C/5E352492" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E352492" Ref="R?"  Part="1" 
AR Path="/5E72D841/5E352492" Ref="R1404"  Part="1" 
F 0 "R1404" H 7700 1815 20  0000 C CNN
F 1 "100" H 7700 1772 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 7200 1600 60  0001 C CNN
F 3 "" H 7300 1700 60  0001 C CNN
F 4 "1" H 7700 1700 50  0001 C CNN "bom_2"
F 5 "100 Ohms ±5% 0.25W, 1/4W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Pulse Withstanding Thick Film " H 0   0   50  0001 C CNN "Description"
F 6 "ESR03EZPJ101" H 0   0   50  0001 C CNN "PartNumber"
F 7 "RHM100DCT-ND" H 0   0   50  0001 C CNN "digikey"
F 8 "0.07900" H 0   0   50  0001 C CNN "price@10"
F 9 "1" H 0   0   50  0001 C CNN "bom_1"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7700 1700
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3524D7
P 8100 1700
AR Path="/5E092156/5E3524D7" Ref="C?"  Part="1" 
AR Path="/5E72D841/5E3524D7" Ref="C1404"  Part="1" 
F 0 "C1404" H 8150 1525 20  0000 C CNN
F 1 "10uF" H 8150 1568 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8100 1600 60  0001 C CNN
F 3 "" H 8100 1700 60  0000 C CNN
F 4 "1" H 8100 1700 50  0001 C CNN "bom_1"
F 5 "10µF ±20% 10V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 6 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
F 8 "0.15400" H 0   0   50  0001 C CNN "price@10"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8100 1700
	-1   0    0    1   
$EndComp
$Comp
L servo:5VC #PWR01410
U 1 1 5E35274C
P 8600 900
F 0 "#PWR01410" H 8600 700 20  0001 C CNN
F 1 "5VC" H 8605 1057 28  0000 C CNN
F 2 "" H 8600 900 50  0001 C CNN
F 3 "" H 8600 900 50  0001 C CNN
	1    8600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1900 8150 1900
Wire Wire Line
	7500 1700 7500 1800
Connection ~ 7500 1700
Wire Wire Line
	7500 2100 7500 2250
Wire Wire Line
	7500 2250 8150 2250
Connection ~ 8600 2250
Wire Wire Line
	8600 2250 8600 2300
Wire Wire Line
	8600 2250 8150 2250
Wire Wire Line
	8150 1900 8150 2250
Connection ~ 8150 2250
Wire Wire Line
	8600 2100 8600 2250
Text Notes 9300 1650 0    20   ~ 0
to optionally connect a speaker \nuggly instead of a buzzer
$Comp
L servo:3V3 #PWR_?
U 1 1 5E3549E5
P 4650 1600
AR Path="/5DD4DF4C/5E3549E5" Ref="#PWR_?"  Part="1" 
AR Path="/5E0D58C4/5E3549E5" Ref="#PWR_?"  Part="1" 
AR Path="/5E72D841/5E3549E5" Ref="#PWR_01402"  Part="1" 
F 0 "#PWR_01402" H 4655 1810 20  0001 C CNN
F 1 "3V3" H 4655 1758 30  0000 C CNN
F 2 "" H 4650 1600 70  0000 C CNN
F 3 "" H 4650 1600 70  0000 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1600 4650 1650
Wire Wire Line
	4650 1650 4950 1650
Text GLabel 4700 1750 0    50   Input ~ 0
LCD_SPI_CLK
Text GLabel 4700 1850 0    50   Input ~ 0
LCD_SPI_MOSI
Text GLabel 4700 1950 0    50   Input ~ 0
LCD_INT
Text GLabel 4700 2050 0    50   Input ~ 0
LCD_AUDIO
Text GLabel 7100 1700 0    50   Input ~ 0
LCD_AUDIO
Text GLabel 5650 1750 2    50   Input ~ 0
LCD_SPI_MISO
Text GLabel 5650 1850 2    50   Input ~ 0
LCD_SPI_CS
Text GLabel 5650 1950 2    50   Input ~ 0
LCD_SPI_PDW
Wire Wire Line
	4100 2350 4100 2450
Wire Wire Line
	4950 2550 4750 2550
Wire Wire Line
	6250 2350 6250 2450
Text Notes 5050 900  0    197  ~ 39
LCD UI interfase
Text Notes 4650 3200 0    39   ~ 8
interfase directly using 20 wires flat cable\n for NHD-4.3-480272FT-CTXL-T newheaven LCD\nor hand wiring\nEA eDIP128B-6LWTP\nor using any paralel 8080 3v3 interfase bitbanging \nthe SPI and GPIO pins
$Comp
L servo:5VC #PWR01405
U 1 1 5E35B3A6
P 6250 2350
F 0 "#PWR01405" H 6250 2150 20  0001 C CNN
F 1 "5VC" H 6255 2507 28  0000 C CNN
F 2 "" H 6250 2350 50  0001 C CNN
F 3 "" H 6250 2350 50  0001 C CNN
	1    6250 2350
	1    0    0    -1  
$EndComp
$Comp
L servo:5VC #PWR01401
U 1 1 5E35C17C
P 4100 2350
F 0 "#PWR01401" H 4100 2150 20  0001 C CNN
F 1 "5VC" H 4105 2507 28  0000 C CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
Text Notes 4150 2500 0    20   ~ 0
backligth supply\n
Text Notes 5850 2500 0    20   ~ 0
backligth supply\n
$Comp
L servo:GND #PWR?
U 1 1 5EA082E4
P 8600 2300
AR Path="/5DCD812E/5EA082E4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5EA082E4" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5EA082E4" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5EA082E4" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5EA082E4" Ref="#PWR01411"  Part="1" 
F 0 "#PWR01411" H 8605 2151 20  0001 C CNN
F 1 "GND" H 8605 2142 30  0000 C CNN
F 2 "" H 8600 2300 70  0000 C CNN
F 3 "" H 8600 2300 70  0000 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5EA08C62
P 4750 2600
AR Path="/5DCD812E/5EA08C62" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5EA08C62" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5EA08C62" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5EA08C62" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5EA08C62" Ref="#PWR01402"  Part="1" 
F 0 "#PWR01402" H 4755 2451 20  0001 C CNN
F 1 "GND" H 4755 2442 30  0000 C CNN
F 2 "" H 4750 2600 70  0000 C CNN
F 3 "" H 4750 2600 70  0000 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5EA090ED
P 5600 2600
AR Path="/5DCD812E/5EA090ED" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5EA090ED" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5EA090ED" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5EA090ED" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5EA090ED" Ref="#PWR01403"  Part="1" 
F 0 "#PWR01403" H 5605 2451 20  0001 C CNN
F 1 "GND" H 5605 2442 30  0000 C CNN
F 2 "" H 5600 2600 70  0000 C CNN
F 3 "" H 5600 2600 70  0000 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2550 5600 2600
Wire Wire Line
	4750 2550 4750 2600
$Comp
L servo:GND #PWR?
U 1 1 5EA0A9F9
P 6250 1700
AR Path="/5DCD812E/5EA0A9F9" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5EA0A9F9" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5EA0A9F9" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5EA0A9F9" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5EA0A9F9" Ref="#PWR01404"  Part="1" 
F 0 "#PWR01404" H 6255 1551 20  0001 C CNN
F 1 "GND" H 6255 1542 30  0000 C CNN
F 2 "" H 6250 1700 70  0000 C CNN
F 3 "" H 6250 1700 70  0000 C CNN
	1    6250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1650 6250 1700
Text GLabel 4700 2150 0    50   Input ~ 0
LCD_GPIO0
Text GLabel 5650 2150 2    50   Input ~ 0
LCD_GPIO1
Text GLabel 4700 2250 0    50   Input ~ 0
LCD_GPIO2
Text GLabel 5650 2250 2    50   Input ~ 0
LCD_GPIO3
Wire Wire Line
	4950 1750 4700 1750
Wire Wire Line
	4950 1850 4700 1850
Wire Wire Line
	4700 1950 4950 1950
Wire Wire Line
	4950 2050 4700 2050
Wire Wire Line
	4700 2150 4950 2150
Wire Wire Line
	4950 2250 4700 2250
Wire Wire Line
	4100 2450 4950 2450
Wire Wire Line
	5450 2550 5600 2550
Wire Wire Line
	5450 1650 6250 1650
Wire Wire Line
	5450 2250 5650 2250
Wire Wire Line
	5450 2150 5650 2150
Wire Wire Line
	5450 1950 5650 1950
Wire Wire Line
	5450 1850 5650 1850
Wire Wire Line
	5450 1750 5650 1750
Wire Wire Line
	5450 2450 6250 2450
NoConn ~ 5450 2050
$Comp
L servo:GND #PWR?
U 1 1 5EF4F67A
P 7750 3700
AR Path="/5DCD812E/5EF4F67A" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5EF4F67A" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5EF4F67A" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5EF4F67A" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5EF4F67A" Ref="#PWR01407"  Part="1" 
F 0 "#PWR01407" H 7755 3551 20  0001 C CNN
F 1 "GND" H 7755 3542 30  0000 C CNN
F 2 "" H 7750 3700 70  0000 C CNN
F 3 "" H 7750 3700 70  0000 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Text GLabel 7050 3150 0    50   Input ~ 0
LCD_GPIO3
Text GLabel 7050 2950 0    50   Input ~ 0
LCD_GPIO2
Wire Wire Line
	7050 2950 7150 2950
Wire Wire Line
	7150 3150 7050 3150
Wire Wire Line
	7150 3350 7050 3350
Wire Wire Line
	7150 3550 7050 3550
Wire Wire Line
	7550 2950 7750 2950
Wire Wire Line
	7550 3550 7750 3550
Connection ~ 7750 3550
Wire Wire Line
	7750 3550 7750 3700
Wire Wire Line
	7550 3350 7750 3350
Connection ~ 7750 3350
Wire Wire Line
	7750 3350 7750 3550
Wire Wire Line
	7550 3150 7750 3150
Wire Wire Line
	7750 2950 7750 3150
Connection ~ 7750 3150
Wire Wire Line
	7750 3150 7750 3350
Text Notes 6550 3850 0    20   ~ 0
I leave 4 push buttons as an alternative to touch pannel LCD, but also in\n case the some internal configuration has to be made without UI, or for\n debg. I think is not the best to use them as UI directly over the main\n board, for isolation and mechanicall isues.. better to do another board\n of leds and buttons or LCD plus buttons and interconnect them using the\n flat cable.\n
Text GLabel 5650 2350 2    50   Input ~ 0
LCD_GPIO5
Text GLabel 4700 2350 0    50   Input ~ 0
LCD_GPIO4
$Comp
L servo:NHD-4.3-480272FT-CTXL-T J1401
U 1 1 5EED15B1
P 5150 2050
F 0 "J1401" H 5200 2651 50  0000 C CNN
F 1 "idc2x10" H 5200 2568 39  0000 C CNN
F 2 "servo:idc2x10_smd" H 5150 2050 50  0001 C CNN
F 3 "../doc/datasheets/PAGE122 .100 SBH11 SERIES MALE BOX HDR ST RA SMT.pdf" H 5200 2550 50  0001 C CNN
F 4 " Connector Header Surface Mount 20 position 0.100\" (2.54mm) " H 0   0   50  0001 C CNN "Description"
F 5 "SBH11-NBPC-D10-SM-BK" H 0   0   50  0001 C CNN "PartNumber"
F 6 "S9188-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "1.10200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 5800 3251 50  0001 C CNN "bom_1"
F 9 "0" H 5900 3351 50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2350 4700 2350
Wire Wire Line
	5450 2350 5650 2350
Text GLabel 7050 3350 0    50   Input ~ 0
LCD_GPIO4
Text GLabel 7050 3550 0    50   Input ~ 0
LCD_GPIO5
Text Notes 5750 1350 0    20   ~ 0
I leve a multi LCD/Touch/button 20 pins IDC connector to interfase with\n some UI. It could be simple leds,, a character LCD or an EVE graphic\n LCD as I recomment  'cause for same price you've all in one piece and\n it's already done, clean, usefull and intuitive interfase.\n\n\nI've added 2 more GPIO's 4 and 5 apart of LCD to manage an 8080 \n motorola LCD interfase as well. Using 4 bits for data/address plus CS0\n/CS1 plus R/W plus E = 7 pins plus 4 buttons = 11 ( amd you have 12\n available) Just made another board with 4 buttons and a LCD and you're\n done 
Wire Wire Line
	8600 1500 8600 1000
Connection ~ 8600 1000
Wire Wire Line
	8600 1000 8600 900 
$Comp
L servo:Capacitor C?
U 1 1 618DDB4B
P 7900 1200
AR Path="/5E092156/618DDB4B" Ref="C?"  Part="1" 
AR Path="/5E72D841/618DDB4B" Ref="C1403"  Part="1" 
F 0 "C1403" V 7972 1090 20  0000 R CNN
F 1 "47Uf" V 7929 1090 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7900 1100 60  0001 C CNN
F 3 "" H 7900 1200 60  0000 C CNN
F 4 "47µF ±20% 6.3V Ceramic Capacitor X5R 0603 (1608 Metric) " H 0   0   50  0001 C CNN "Description"
F 5 "GRM188R60J476ME15D" H 0   0   50  0001 C CNN "PartNumber"
F 6 "490-13247-6-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.46900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7900 1200
	0    -1   -1   0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 618DDB52
P 7900 1300
AR Path="/5DCD812E/618DDB52" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/618DDB52" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/618DDB52" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/618DDB52" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/618DDB52" Ref="#PWR01408"  Part="1" 
F 0 "#PWR01408" H 7905 1151 20  0001 C CNN
F 1 "GND" H 7905 1142 30  0000 C CNN
F 2 "" H 7900 1300 70  0000 C CNN
F 3 "" H 7900 1300 70  0000 C CNN
	1    7900 1300
	1    0    0    -1  
$EndComp
$Comp
L servo:Conn_01x02 J1402
U 1 1 618ED4ED
P 9500 1850
F 0 "J1402" H 9580 1838 39  0000 L CNN
F 1 "header 1x2 2.54 molex" H 9580 1763 39  0000 L CNN
F 2 "servo:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9500 1850 50  0001 C CNN
F 3 "" H 9500 1850 50  0001 C CNN
F 4 "Connector Header Through Hole 2 position 0.100\" (2.54mm) " H 0   0   50  0001 C CNN "Description"
F 5 "0022232023 " H 0   0   50  0001 C CNN "PartNumber"
F 6 " WM19468-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.23100" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "0" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9500 1850
	1    0    0    1   
$EndComp
Text Notes 7900 950  0    20   ~ 4
for bulk capacitor
Wire Wire Line
	7900 1000 8600 1000
Text Label 9200 1750 0    20   ~ 0
speaker+
Text Label 9200 1850 0    20   ~ 0
speaker-
Wire Wire Line
	2650 2250 2650 2650
Wire Wire Line
	2350 2250 2350 2550
$Comp
L Mechanical:MountingHole L1401
U 1 1 5E61A395
P 5150 4100
F 0 "L1401" H 5250 4138 50  0000 L CNN
F 1 "NHD-4.3-480272FT-CTXL-T" H 5250 4055 39  0000 L CNN
F 2 "servo:lcd" H 5150 4100 50  0001 C CNN
F 3 "../doc/datasheets/NHD-4.3-480272FT-CTXL-T.pdf" H 5200 4600 50  0001 C CNN
F 4 "0" H 0   0   50  0001 C CNN "bom_1"
F 5 "0" H 0   0   50  0001 C CNN "bom_2"
F 6 "1" H 0   0   50  0001 C CNN "bom_3"
	1    5150 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
