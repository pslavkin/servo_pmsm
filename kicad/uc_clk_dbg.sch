EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 19
Title "clk"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F8D
P 2050 4350
F 0 "#PWR_?" H 2055 4560 20  0001 C CNN
F 1 "3V3" H 2055 4508 30  0000 C CNN
F 2 "" H 2050 4350 70  0000 C CNN
F 3 "" H 2050 4350 70  0000 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5000 2200 4900
Wire Wire Line
	1850 4900 1850 5000
Wire Wire Line
	2200 5550 2200 5250
Text Notes 1550 3750 0    120  ~ 0
Multipropouse\nLEDs
Text Notes 3300 4150 0    120  ~ 0
Boot Mode to\n Flash/USB\n
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F82
P 1200 -2000
F 0 "#PWR_?" H 1205 -1790 20  0001 C CNN
F 1 "3V3" H 1205 -1842 30  0000 C CNN
F 2 "" H 1200 -2000 70  0000 C CNN
F 3 "" H 1200 -2000 70  0000 C CNN
	1    1200 -2000
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F81
P 1200 -1250
F 0 "#PWR_?" H 1205 -1399 20  0001 C CNN
F 1 "GND" H 1200 -1408 30  0000 C CNN
F 2 "" H 1200 -1250 70  0000 C CNN
F 3 "" H 1200 -1250 70  0000 C CNN
	1    1200 -1250
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F7B
P 1600 -2800
F 0 "#PWR_?" H 1605 -2590 20  0001 C CNN
F 1 "3V3" H 1605 -2642 30  0000 C CNN
F 2 "" H 1600 -2800 70  0000 C CNN
F 3 "" H 1600 -2800 70  0000 C CNN
	1    1600 -2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 -2650 1600 -2800
Wire Wire Line
	3800 5250 3800 5550
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F7A
P 3650 4600
F 0 "#PWR_?" H 3655 4810 20  0001 C CNN
F 1 "3V3" H 3655 4758 30  0000 C CNN
F 2 "" H 3650 4600 70  0000 C CNN
F 3 "" H 3650 4600 70  0000 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4700 3650 4700
Wire Wire Line
	3800 4850 3800 4700
Wire Wire Line
	3500 4700 3500 4850
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F77
P -2650 -1750
F 0 "#PWR_?" H -2645 -1899 20  0001 C CNN
F 1 "GND" H -2650 -1908 30  0000 C CNN
F 2 "" H -2650 -1750 70  0000 C CNN
F 3 "" H -2650 -1750 70  0000 C CNN
	1    -2650 -1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2650 -2350 -2650 -2150
Wire Wire Line
	1400 5400 1850 5400
Text Label 700  -1550 0    60   ~ 0
MCU_XRSn
Text Label 600  -2250 2    60   ~ 0
F2838x_CLK
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F74
P 2300 -1250
F 0 "#PWR_?" H 2305 -1399 20  0001 C CNN
F 1 "GND" H 2300 -1408 30  0000 C CNN
F 2 "" H 2300 -1250 70  0000 C CNN
F 3 "" H 2300 -1250 70  0000 C CNN
	1    2300 -1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 -1550 2200 -1550
Wire Wire Line
	2300 -1350 2300 -1550
Wire Wire Line
	2300 -1250 2300 -1350
Wire Wire Line
	2300 -1350 2200 -1350
Text Notes 1350 -3000 2    120  ~ 0
25MHz Clock
NoConn ~ -2050 -2050
NoConn ~ -2050 -1850
Wire Wire Line
	1200 -1550 1200 -1600
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F6D
P 850 -2450
F 0 "#PWR_?" H 855 -2599 20  0001 C CNN
F 1 "GND" H 855 -2651 30  0000 C CNN
F 2 "" H 850 -2450 70  0000 C CNN
F 3 "" H 850 -2450 70  0000 C CNN
	1    850  -2450
	-1   0    0    -1  
$EndComp
Connection ~ 2300 -1350
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2200 5100
F 0 "D?" V 2155 5320 60  0000 L CNN
F 1 "red@2mA" V 2253 5320 50  0000 L CNN
F 2 "" H 2200 5100 50  0001 C CNN
F 3 "" H 2200 5100 50  0001 C CNN
F 4 "Red" V -6800 5300 60  0001 C CNN "VALUE"
	1    2200 5100
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F69
P 1200 -1800
F 0 "R?" V 1245 -1850 60  0000 R CNN
F 1 "2.2k" V 1147 -1850 50  0000 R CNN
F 2 "" H 1200 -1800 50  0001 C CNN
F 3 "" H 1200 -1800 50  0001 C CNN
F 4 "2.2k" V -1600 -4000 60  0001 C CNN "ValueDisplayed"
	1    1200 -1800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DB38F68
P 1200 -1350
F 0 "C?" V 1295 -1241 60  0000 L CNN
F 1 "0.01uF" V 1197 -1241 50  0000 L CNN
F 2 "" H 1200 -1350 50  0001 C CNN
F 3 "" H 1200 -1350 50  0001 C CNN
F 4 "0.01uF" V -1600 -4250 60  0001 C CNN "ValueDisplayed"
	1    1200 -1350
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F64
P 3500 5050
F 0 "R?" V 3455 5100 60  0000 L CNN
F 1 "56k" V 3553 5100 50  0000 L CNN
F 2 "" H 3500 5050 50  0001 C CNN
F 3 "" H 3500 5050 50  0001 C CNN
F 4 "56k" V -10700 1550 60  0001 C CNN "ValueDisplayed"
	1    3500 5050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F63
P 3800 5050
F 0 "R?" V 3845 5000 60  0000 R CNN
F 1 "56k" V 3747 5000 50  0000 R CNN
F 2 "" H 3800 5050 50  0001 C CNN
F 3 "" H 3800 5050 50  0001 C CNN
F 4 "56k" V -10700 1550 60  0001 C CNN "ValueDisplayed"
	1    3800 5050
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5F
P 1850 4700
F 0 "R?" V 1805 4750 60  0000 L CNN
F 1 "680" V 1903 4750 50  0000 L CNN
F 2 "" H 1850 4700 50  0001 C CNN
F 3 "" H 1850 4700 50  0001 C CNN
F 4 "680" V -6550 5500 60  0001 C CNN "ValueDisplayed"
	1    1850 4700
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5A
P -2650 -1950
F 0 "R?" V -2605 -2000 60  0000 R CNN
F 1 "2.2k" V -2703 -2000 50  0000 R CNN
F 2 "" H -2650 -1950 50  0001 C CNN
F 3 "" H -2650 -1950 50  0001 C CNN
F 4 "2.2k" V -2750 -2650 60  0001 C CNN "ValueDisplayed"
	1    -2650 -1950
	0    -1   -1   0   
$EndComp
$Comp
L servo:Switch_PushButton_GND3 S?
U 1 1 5DB38F55
P 1800 -1450
F 0 "S?" H 1800 -1167 60  0000 C CNN
F 1 "~" H 1800 -1450 50  0001 C CNN
F 2 "" H 1800 -1450 50  0001 C CNN
F 3 "" H 1800 -1450 50  0001 C CNN
	1    1800 -1450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 2200 4700
F 0 "R?" V 2155 4750 60  0000 L CNN
F 1 "680" V 2253 4750 50  0000 L CNN
F 2 "" H 2200 4700 50  0001 C CNN
F 3 "" H 2200 4700 50  0001 C CNN
F 4 "680" V -6800 5500 60  0001 C CNN "ValueDisplayed"
	1    2200 4700
	0    1    1    0   
$EndComp
$Comp
L servo:OSC_4P_1_TRI-STATE Y?
U 1 1 5DB38F52
P 1200 -2550
F 0 "Y?" H 700 -2350 60  0000 L BNN
F 1 "~" H 1200 -2550 50  0001 C CNN
F 2 "" H 1200 -2550 50  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 1200 -2550 50  0001 C CNN
	1    1200 -2550
	-1   0    0    -1  
$EndComp
$Comp
L servo:TMS320F28388 U1_?
U 3 1 5DB38F4E
P -1050 -2350
F 0 "U1_?" H -1050 -1577 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H -1050 -1675 50  0000 C CNN
F 2 "" H -1050 -2350 50  0001 C CNN
F 3 "" H -1050 -2350 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V -2450 -2550 60  0001 C CNN "PartNumber"
	3    -1050 -2350
	1    0    0    -1  
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 1850 5100
F 0 "D?" V 1805 4970 60  0000 R CNN
F 1 "red@2mA" V 1903 4970 50  0000 R CNN
F 2 "" H 1850 5100 50  0001 C CNN
F 3 "" H 1850 5100 50  0001 C CNN
F 4 "Red" V -6550 5300 60  0001 C CNN "VALUE"
	1    1850 5100
	0    1    1    0   
$EndComp
Connection ~ 3650 4700
Wire Wire Line
	3650 4700 3500 4700
Text Notes 1500 -1950 0    120  ~ 0
Reset\n
Wire Wire Line
	3300 5550 3800 5550
Wire Wire Line
	1400 5550 2200 5550
Text GLabel 1400 5400 0    50   Input ~ 0
RUN_LED0
Text GLabel 1400 5550 0    50   Input ~ 0
RUN_LED1
Text GLabel 3300 5350 0    50   Input ~ 0
BOOT1
Text GLabel 3300 5550 0    50   Input ~ 0
BOOT2
Wire Wire Line
	1850 4450 2050 4450
Wire Wire Line
	2200 4450 2200 4500
Wire Wire Line
	1850 4500 1850 4450
Connection ~ 2050 4450
Wire Wire Line
	2050 4450 2200 4450
Wire Wire Line
	2050 4350 2050 4450
Wire Wire Line
	3650 4600 3650 4700
Connection ~ 1200 -1550
Wire Wire Line
	300  -1850 -50  -1850
Wire Wire Line
	3500 5250 3500 5350
Wire Wire Line
	3500 5350 3300 5350
Wire Wire Line
	-3650 -1650 -3650 -1500
Wire Wire Line
	-3300 -1650 -3300 -1500
$Comp
L servo:Resistor R?
U 1 1 5DE66EAC
P -3650 -1050
AR Path="/5DC1676A/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EAC" Ref="R?"  Part="1" 
F 0 "R?" V -3703 -1000 60  0000 L CNN
F 1 "1.0k" H -3650 -1050 50  0001 C CNN
F 2 "" H -3650 -1050 50  0001 C CNN
F 3 "" H -3650 -1050 50  0001 C CNN
F 4 "1.0k" V -3597 -1000 60  0000 L CNN "ValueDisplayed"
	1    -3650 -1050
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EBC
P -3300 -1400
AR Path="/5DCD812E/5DE66EBC" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EBC" Ref="D?"  Part="1" 
F 0 "D?" V -3353 -1180 60  0000 L CNN
F 1 "green" H -3300 -1400 50  0001 C CNN
F 2 "" H -3300 -1400 50  0001 C CNN
F 3 "" H -3300 -1400 50  0001 C CNN
F 4 "green@2mA" V -3247 -1180 60  0000 L CNN "VALUE"
	1    -3300 -1400
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EC4
P -3650 -1400
AR Path="/5DCD812E/5DE66EC4" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EC4" Ref="D?"  Part="1" 
F 0 "D?" V -3703 -1529 60  0000 R CNN
F 1 "blue" H -3650 -1400 50  0001 C CNN
F 2 "" H -3650 -1400 50  0001 C CNN
F 3 "" H -3650 -1400 50  0001 C CNN
F 4 "blue@2mA" V -3597 -1529 60  0000 R CNN "VALUE"
	1    -3650 -1400
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5DE66ECB
P -3500 -1750
AR Path="/5DCD812E/5DE66ECB" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66ECB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -3483 -1541 20  0000 C CNN
F 1 "3V3" H -3483 -1593 30  0000 C CNN
F 2 "" H -3500 -1750 70  0000 C CNN
F 3 "" H -3500 -1750 70  0000 C CNN
	1    -3500 -1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	-10250 -2850 -10250 -3000
Wire Wire Line
	-10050 -2450 -10050 -2350
Text Notes -4300 -3150 0    50   ~ 0
IDC connector to plug \nan external isolated jtag interface
Wire Wire Line
	-4750 800  -4200 800 
Wire Wire Line
	-4200 800  -4200 550 
$Comp
L servo:5VC #PWR?
U 1 1 5DE66EF3
P -10250 -3000
AR Path="/5DD76B18/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DCD812E/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -10250 -3200 20  0001 C CNN
F 1 "5VC" H -10245 -2843 28  0000 C CNN
F 2 "" H -10250 -3000 50  0001 C CNN
F 3 "" H -10250 -3000 50  0001 C CNN
	1    -10250 -3000
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DE66EF9
P -10050 -2350
AR Path="/5DCD812E/5DE66EF9" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H -10050 -2600 30  0001 C CNN
F 1 "GND" H -10050 -2508 30  0000 C CNN
F 2 "" H -10050 -2350 50  0001 C CNN
F 3 "" H -10050 -2350 50  0001 C CNN
	1    -10050 -2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3650 -1650 -3500 -1650
Wire Wire Line
	-3500 -1750 -3500 -1650
Connection ~ -3500 -1650
Wire Wire Line
	-3500 -1650 -3300 -1650
Wire Wire Line
	700  -2250 -50  -2250
Wire Wire Line
	700  -2650 700  -2250
Wire Wire Line
	1200 -1550 1400 -1550
Wire Wire Line
	300  -1550 300  -1850
Text Label -2950 -2750 2    60   ~ 0
MCU_TCK
Text Label -2950 -2650 2    60   ~ 0
MCU_TDI
Text Label -2950 -2550 2    60   ~ 0
MCU_TDO
Text Label -2900 -2450 2    60   ~ 0
MCU_TMS
Text Label -2900 -2350 2    60   ~ 0
MCU_TRSTn
Wire Wire Line
	-4750 600  -4550 600 
Wire Wire Line
	-4550 550  -4550 600 
Text Notes 5300 3900 0    120  ~ 0
SCI leds\n
Wire Wire Line
	1850 5250 1850 5400
Text GLabel -7900 -2050 0    60   BiDi ~ 0
SCIA_TX
Text GLabel -4650 -1850 2    60   BiDi ~ 0
SCIA_RX
Text GLabel -4750 600  0    60   BiDi ~ 0
SCIA_TX
Text GLabel -4750 800  0    60   BiDi ~ 0
SCIA_RX
Wire Wire Line
	300  -1550 1200 -1550
$Comp
L servo:Resistor R?
U 1 1 5DE66EB4
P -3300 -1050
AR Path="/5DC1676A/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EB4" Ref="R?"  Part="1" 
F 0 "R?" V -3353 -1000 60  0000 L CNN
F 1 "1.0k" H -3300 -1050 50  0001 C CNN
F 2 "" H -3300 -1050 50  0001 C CNN
F 3 "" H -3300 -1050 50  0001 C CNN
F 4 "1.0k" V -3247 -1000 60  0000 L CNN "ValueDisplayed"
	1    -3300 -1050
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5ECD3F89
P 11750 5700
AR Path="/5DC4A59D/5ECD3F89" Ref="C?"  Part="1" 
AR Path="/5DD4DF4C/5ECD3F89" Ref="C?"  Part="1" 
F 0 "C?" V 11845 5809 60  0000 L CNN
F 1 "0.1uF" V 11747 5809 50  0000 L CNN
F 2 "" H 11750 5700 50  0001 C CNN
F 3 "" H 11750 5700 50  0001 C CNN
F 4 "0.1uF" V 9150 6100 60  0001 C CNN "ValueDisplayed"
	1    11750 5700
	0    -1   -1   0   
$EndComp
Text GLabel 10450 6250 0    50   Input ~ 0
FLASH_SPI_CLK
$Comp
L servo:3V3 #PWR?
U 1 1 5ECE694E
P 11300 5350
AR Path="/5DC4A59D/5ECE694E" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5ECE694E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11305 5557 20  0001 C CNN
F 1 "3V3" H 11305 5507 28  0000 C CNN
F 2 "" H 11300 5350 50  0001 C CNN
F 3 "" H 11300 5350 50  0001 C CNN
	1    11300 5350
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_?
U 1 1 5ECE6AD9
P 11300 6850
AR Path="/5DC4A59D/5ECE6AD9" Ref="#GND_?"  Part="1" 
AR Path="/5DD4DF4C/5ECE6AD9" Ref="#GND_?"  Part="1" 
F 0 "#GND_?" H 11305 6701 20  0001 C CNN
F 1 "GND" H 11300 6692 30  0000 C CNN
F 2 "" H 11300 6850 70  0000 C CNN
F 3 "" H 11300 6850 70  0000 C CNN
	1    11300 6850
	1    0    0    -1  
$EndComp
Text GLabel 11900 6150 2    50   Input ~ 0
FLASH_SPI_MISO
Text GLabel 10450 6350 0    50   Input ~ 0
FLASH_SPI_CS
Wire Wire Line
	10700 6350 10450 6350
Wire Wire Line
	10700 6250 10450 6250
Text GLabel 10450 6150 0    50   Input ~ 0
FLASH_SPI_MOSI
Wire Wire Line
	10450 6150 10700 6150
Wire Wire Line
	11750 5500 11300 5500
Connection ~ 11300 5500
Wire Wire Line
	11300 5500 11300 5850
Wire Wire Line
	11300 5350 11300 5500
$Comp
L servo:GND #GND_?
U 1 1 5ECF9D7E
P 11750 5800
AR Path="/5DC4A59D/5ECF9D7E" Ref="#GND_?"  Part="1" 
AR Path="/5DD4DF4C/5ECF9D7E" Ref="#GND_?"  Part="1" 
F 0 "#GND_?" H 11755 5651 20  0001 C CNN
F 1 "GND" H 11750 5642 30  0000 C CNN
F 2 "" H 11750 5800 70  0000 C CNN
F 3 "" H 11750 5800 70  0000 C CNN
	1    11750 5800
	1    0    0    -1  
$EndComp
$Comp
L servo:M25PX32-VMW U
U 1 1 5ECE67BA
P 11300 6350
F 0 "U" H 11941 6396 50  0000 L CNN
F 1 "M25PX32-VMW" H 11941 6305 50  0000 L CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 11950 6400 50  0001 C CNN
F 3 "../doc/datasheets/m25px32.pdf" H 11450 6250 50  0001 C CNN
	1    11300 6350
	1    0    0    -1  
$EndComp
Text Notes 10650 4750 0    197  ~ 39
SPI FLASH 
Text Notes 11200 5000 0    20   ~ 0
To store some firmware features, \nand maybe UI images or screens
Text GLabel 13750 6850 0    50   Input ~ 0
FLASH_SPI_CLK
Text GLabel 13750 6950 0    50   Input ~ 0
FLASH_SPI_CS
Text GLabel 13750 6750 0    50   Input ~ 0
FLASH_SPI_MOSI
Text GLabel 13100 6600 2    50   Input ~ 0
FLASH_SPI_MISO
$Comp
L servo:SN74ALVC244PW U?
U 1 1 5EE6E621
P -6850 -2450
F 0 "U?" H -6850 -955 60  0000 C CNN
F 1 "SN74ALVC244PW" H -6850 -1061 60  0000 C CNN
F 2 "" H -6850 -2450 60  0000 C CNN
F 3 "../doc/datasheets/sn74alvc244.pdf" H -6850 -1167 60  0000 C CNN
	1    -6850 -2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J?
U 1 1 5EE6EDE5
P -9850 -2650
AR Path="/5DCD812E/5EE6EDE5" Ref="J?"  Part="1" 
AR Path="/5DD4DF4C/5EE6EDE5" Ref="J?"  Part="1" 
F 0 "J?" H -9800 -2233 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H -9800 -2324 50  0001 C CNN
F 2 "" H -9850 -2650 50  0001 C CNN
F 3 "~" H -9850 -2650 50  0001 C CNN
	1    -9850 -2650
	1    0    0    -1  
$EndComp
Text Label -9050 -2750 2    60   ~ 0
MCU_TDI
Wire Wire Line
	-7650 -3250 -8950 -3250
Wire Wire Line
	-8950 -3250 -8950 -2850
Wire Wire Line
	-8950 -2850 -9550 -2850
Text Label -8950 -2550 2    60   ~ 0
MCU_TRSTn
Wire Wire Line
	-9550 -2750 -8850 -2750
Wire Wire Line
	-8850 -2750 -8850 -3050
Wire Wire Line
	-8850 -3050 -7650 -3050
Text Label -9050 -2850 2    60   ~ 0
MCU_TCK
Wire Wire Line
	-9550 -2650 -8750 -2650
Wire Wire Line
	-8750 -2650 -8750 -2850
Wire Wire Line
	-8750 -2850 -7650 -2850
Text Label -9050 -2650 2    60   ~ 0
MCU_TMS
Wire Wire Line
	-9550 -2550 -8550 -2550
Wire Wire Line
	-8550 -2550 -8550 -2650
Wire Wire Line
	-8550 -2650 -7650 -2650
Text Label -9050 -2450 2    60   ~ 0
MCU_TDO
Wire Wire Line
	-9550 -2450 -8800 -2450
Wire Wire Line
	-8800 -2450 -8800 -950
Wire Wire Line
	-8800 -950 -4950 -950
Wire Wire Line
	-4950 -950 -4950 -2250
Wire Wire Line
	-4950 -2250 -6050 -2250
Wire Wire Line
	-10050 -2550 -10250 -2550
Wire Wire Line
	-10250 -1850 -7650 -1850
Wire Wire Line
	-10050 -2650 -10350 -2650
Wire Wire Line
	-10350 -1050 -5250 -1050
Wire Wire Line
	-5250 -1050 -5250 -2050
Wire Wire Line
	-5250 -2050 -6050 -2050
Wire Wire Line
	-10050 -2850 -10250 -2850
Wire Wire Line
	-10250 -2550 -10250 -1850
Wire Wire Line
	-10350 -2650 -10350 -1050
$Comp
L servo:3V3 #PWR?
U 1 1 5EEB86F5
P -10400 -3050
F 0 "#PWR?" H -10395 -2843 20  0000 C CNN
F 1 "3V3" H -10395 -2893 28  0000 C CNN
F 2 "" H -10400 -3050 50  0001 C CNN
F 3 "" H -10400 -3050 50  0001 C CNN
	1    -10400 -3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	-10400 -3050 -10400 -2750
Wire Wire Line
	-10400 -2750 -10050 -2750
Wire Wire Line
	-7650 -2450 -8050 -2450
Wire Wire Line
	-8050 -2450 -8050 -3450
Wire Wire Line
	-8050 -3450 -7650 -3450
$Comp
L servo:3V3 #PWR?
U 1 1 5EEBF59C
P -5800 -4300
F 0 "#PWR?" H -5795 -4093 20  0001 C CNN
F 1 "3V3" H -5795 -4143 28  0000 C CNN
F 2 "" H -5800 -4300 50  0001 C CNN
F 3 "" H -5800 -4300 50  0001 C CNN
	1    -5800 -4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6050 -3450 -5800 -3450
Wire Wire Line
	-5800 -3450 -5800 -4100
$Comp
L servo:GND #PWR_?
U 1 1 5EEC9C34
P -5900 -1400
F 0 "#PWR_?" H -5895 -1549 20  0001 C CNN
F 1 "GND" H -5900 -1558 30  0000 C CNN
F 2 "" H -5900 -1400 70  0000 C CNN
F 3 "" H -5900 -1400 70  0000 C CNN
	1    -5900 -1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6050 -1450 -5900 -1450
Wire Wire Line
	-5900 -1450 -5900 -1400
Wire Wire Line
	-4750 -2550 -4750 -850
Wire Wire Line
	-4750 -850 -8650 -850
Wire Wire Line
	-8650 -850 -8650 -2250
Wire Wire Line
	-8650 -2250 -7650 -2250
Wire Wire Line
	-5450 -3250 -6050 -3250
Wire Wire Line
	-6050 -3050 -5650 -3050
Wire Wire Line
	-5650 -3050 -5650 -2650
Wire Wire Line
	-5450 -3250 -5450 -2750
Wire Wire Line
	-6050 -2850 -5800 -2850
Wire Wire Line
	-5800 -2850 -5800 -2450
Wire Wire Line
	-6050 -2650 -5950 -2650
Wire Wire Line
	-5950 -2650 -5950 -2350
Wire Wire Line
	-5950 -2350 -2650 -2350
Wire Wire Line
	-3650 -750 -3650 -850
Wire Wire Line
	-7900 -2050 -7650 -2050
Wire Wire Line
	-5250 -1050 -5250 -750
Wire Wire Line
	-5250 -750 -3650 -750
Connection ~ -5250 -1050
Wire Wire Line
	-6050 -1850 -5750 -1850
Wire Wire Line
	-5750 -1850 -5750 -650
Wire Wire Line
	-5750 -650 -3300 -650
Wire Wire Line
	-3300 -650 -3300 -850
Connection ~ -5750 -1850
Wire Wire Line
	-5750 -1850 -4650 -1850
Wire Wire Line
	-5800 -4100 -8050 -4100
Wire Wire Line
	-8050 -4100 -8050 -3450
Connection ~ -5800 -4100
Wire Wire Line
	-5800 -4100 -5800 -4300
Connection ~ -8050 -3450
$Comp
L servo:GND #PWR_?
U 1 1 5EF4D354
P -7800 -1450
F 0 "#PWR_?" H -7795 -1599 20  0001 C CNN
F 1 "GND" H -7800 -1608 30  0000 C CNN
F 2 "" H -7800 -1450 70  0000 C CNN
F 3 "" H -7800 -1450 70  0000 C CNN
	1    -7800 -1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	-7650 -1650 -7800 -1650
Wire Wire Line
	-7800 -1650 -7800 -1450
Wire Wire Line
	-5800 -2450 -2050 -2450
Wire Wire Line
	-4750 -2550 -2050 -2550
Wire Wire Line
	-5650 -2650 -2050 -2650
Wire Wire Line
	-5450 -2750 -2050 -2750
Wire Wire Line
	-2050 -2250 -2300 -2250
Wire Wire Line
	-2300 -2250 -2300 -2350
Wire Wire Line
	-2300 -2350 -2650 -2350
Connection ~ -2650 -2350
Wire Wire Line
	1450 -2650 1600 -2650
Wire Wire Line
	1450 -2450 1600 -2450
Wire Wire Line
	1600 -2450 1600 -2650
Connection ~ 1600 -2650
Wire Wire Line
	850  -2450 950  -2450
Wire Wire Line
	700  -2650 950  -2650
$EndSCHEMATC
