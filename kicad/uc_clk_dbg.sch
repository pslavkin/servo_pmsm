EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 18
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
P 2150 4000
F 0 "#PWR_?" H 2155 4210 20  0001 C CNN
F 1 "3V3" H 2155 4158 30  0000 C CNN
F 2 "" H 2150 4000 70  0000 C CNN
F 3 "" H 2150 4000 70  0000 C CNN
	1    2150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4650 2450 4550
Wire Wire Line
	1850 4550 1850 4650
Wire Wire Line
	2450 5700 2450 5250
Text Notes 1550 3750 0    120  ~ 0
Multipropouse\nLEDs
Text Notes 3600 3700 0    120  ~ 0
Boot Mode to\n Flash/USB\n
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F82
P 9150 2250
F 0 "#PWR_?" H 9155 2460 20  0001 C CNN
F 1 "3V3" H 9155 2408 30  0000 C CNN
F 2 "" H 9150 2250 70  0000 C CNN
F 3 "" H 9150 2250 70  0000 C CNN
	1    9150 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F81
P 9150 3000
F 0 "#PWR_?" H 9155 2851 20  0001 C CNN
F 1 "GND" H 9150 2842 30  0000 C CNN
F 2 "" H 9150 3000 70  0000 C CNN
F 3 "" H 9150 3000 70  0000 C CNN
	1    9150 3000
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F7B
P 10250 1450
F 0 "#PWR_?" H 10255 1660 20  0001 C CNN
F 1 "3V3" H 10255 1608 30  0000 C CNN
F 2 "" H 10250 1450 70  0000 C CNN
F 3 "" H 10250 1450 70  0000 C CNN
	1    10250 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10250 1600 10250 1450
Wire Wire Line
	4350 4950 4350 5700
$Comp
L servo:3V3 #PWR_?
U 1 1 5DB38F7A
P 4200 4000
F 0 "#PWR_?" H 4205 4210 20  0001 C CNN
F 1 "3V3" H 4205 4158 30  0000 C CNN
F 2 "" H 4200 4000 70  0000 C CNN
F 3 "" H 4200 4000 70  0000 C CNN
	1    4200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4100 4200 4100
Wire Wire Line
	4350 4550 4350 4100
Wire Wire Line
	4050 4100 4050 4550
Wire Wire Line
	8850 1800 8800 1800
Wire Wire Line
	5600 2000 5900 2000
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F77
P 5600 2600
F 0 "#PWR_?" H 5605 2451 20  0001 C CNN
F 1 "GND" H 5600 2442 30  0000 C CNN
F 2 "" H 5600 2600 70  0000 C CNN
F 3 "" H 5600 2600 70  0000 C CNN
	1    5600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2000 5600 2200
Wire Wire Line
	1400 5500 1850 5500
Text Label 8650 2700 0    60   ~ 0
MCU_XRSn
Text Label 8550 2000 2    60   ~ 0
F2838x_CLK
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F74
P 10250 3000
F 0 "#PWR_?" H 10255 2851 20  0001 C CNN
F 1 "GND" H 10250 2842 30  0000 C CNN
F 2 "" H 10250 3000 70  0000 C CNN
F 3 "" H 10250 3000 70  0000 C CNN
	1    10250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2700 10150 2700
Wire Wire Line
	10250 2900 10250 2700
Wire Wire Line
	10250 3000 10250 2900
Wire Wire Line
	10250 2900 10150 2900
Text Notes 10150 1350 2    120  ~ 0
25MHz Clock
NoConn ~ 5900 2200
NoConn ~ 5900 2400
Wire Wire Line
	9150 2700 9150 2650
$Comp
L servo:GND #PWR_?
U 1 1 5DB38F6D
P 8800 1800
F 0 "#PWR_?" H 8805 1651 20  0001 C CNN
F 1 "GND" H 8805 1599 30  0000 C CNN
F 2 "" H 8800 1800 70  0000 C CNN
F 3 "" H 8800 1800 70  0000 C CNN
	1    8800 1800
	-1   0    0    -1  
$EndComp
Connection ~ 5600 2000
Connection ~ 10250 2900
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2450 4950
F 0 "D?" V 2405 5170 60  0000 L CNN
F 1 "red@2mA" V 2503 5170 50  0000 L CNN
F 2 "" H 2450 4950 50  0001 C CNN
F 3 "" H 2450 4950 50  0001 C CNN
F 4 "Red" V -6550 5150 60  0001 C CNN "VALUE"
	1    2450 4950
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F69
P 9150 2450
F 0 "R?" V 9195 2400 60  0000 R CNN
F 1 "2.2k" V 9097 2400 50  0000 R CNN
F 2 "" H 9150 2450 50  0001 C CNN
F 3 "" H 9150 2450 50  0001 C CNN
F 4 "2.2k" V 6350 250 60  0001 C CNN "ValueDisplayed"
	1    9150 2450
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DB38F68
P 9150 2900
F 0 "C?" V 9245 3009 60  0000 L CNN
F 1 "0.01uF" V 9147 3009 50  0000 L CNN
F 2 "" H 9150 2900 50  0001 C CNN
F 3 "" H 9150 2900 50  0001 C CNN
F 4 "0.01uF" V 6350 0   60  0001 C CNN "ValueDisplayed"
	1    9150 2900
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F64
P 4050 4750
F 0 "R?" V 4005 4800 60  0000 L CNN
F 1 "56k" V 4103 4800 50  0000 L CNN
F 2 "" H 4050 4750 50  0001 C CNN
F 3 "" H 4050 4750 50  0001 C CNN
F 4 "56k" V -10150 1250 60  0001 C CNN "ValueDisplayed"
	1    4050 4750
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F63
P 4350 4750
F 0 "R?" V 4395 4700 60  0000 R CNN
F 1 "56k" V 4297 4700 50  0000 R CNN
F 2 "" H 4350 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0001 C CNN
F 4 "56k" V -10150 1250 60  0001 C CNN "ValueDisplayed"
	1    4350 4750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5F
P 1850 4350
F 0 "R?" V 1805 4400 60  0000 L CNN
F 1 "680" V 1903 4400 50  0000 L CNN
F 2 "" H 1850 4350 50  0001 C CNN
F 3 "" H 1850 4350 50  0001 C CNN
F 4 "680" V -6550 5150 60  0001 C CNN "ValueDisplayed"
	1    1850 4350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5A
P 5600 2400
F 0 "R?" V 5645 2350 60  0000 R CNN
F 1 "2.2k" V 5547 2350 50  0000 R CNN
F 2 "" H 5600 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
F 4 "2.2k" V 5500 1700 60  0001 C CNN "ValueDisplayed"
	1    5600 2400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Switch_PushButton_GND3 S?
U 1 1 5DB38F55
P 9750 2800
F 0 "S?" H 9750 3083 60  0000 C CNN
F 1 "~" H 9750 2800 50  0001 C CNN
F 2 "" H 9750 2800 50  0001 C CNN
F 3 "" H 9750 2800 50  0001 C CNN
	1    9750 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 2450 4350
F 0 "R?" V 2405 4400 60  0000 L CNN
F 1 "680" V 2503 4400 50  0000 L CNN
F 2 "" H 2450 4350 50  0001 C CNN
F 3 "" H 2450 4350 50  0001 C CNN
F 4 "680" V -6550 5150 60  0001 C CNN "ValueDisplayed"
	1    2450 4350
	0    1    1    0   
$EndComp
$Comp
L servo:OSC_4P_1_TRI-STATE Y?
U 1 1 5DB38F52
P 9550 1700
F 0 "Y?" H 9050 1900 60  0000 L BNN
F 1 "~" H 9550 1700 50  0001 C CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "../doc/datasheets//ECS-2520S.pdf" H 9550 1700 50  0001 C CNN
	1    9550 1700
	-1   0    0    -1  
$EndComp
$Comp
L servo:TMS320F28388 U1_?
U 3 1 5DB38F4E
P 6900 1900
F 0 "U1_?" H 6900 2673 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 6900 2575 50  0000 C CNN
F 2 "" H 6900 1900 50  0001 C CNN
F 3 "" H 6900 1900 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V 5500 1700 60  0001 C CNN "PartNumber"
	3    6900 1900
	1    0    0    -1  
$EndComp
$Comp
L servo:CMP-0078143-2 TP?
U 1 1 5DB38F39
P 8650 1300
F 0 "TP?" H 8550 1400 60  0000 L BNN
F 1 "~" H 8650 1300 50  0001 C CNN
F 2 "" H 8650 1300 50  0001 C CNN
F 3 "" H 8650 1300 50  0001 C CNN
	1    8650 1300
	-1   0    0    -1  
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 1850 4950
F 0 "D?" V 1805 4820 60  0000 R CNN
F 1 "red@2mA" V 1903 4820 50  0000 R CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
F 4 "Red" V -6550 5150 60  0001 C CNN "VALUE"
	1    1850 4950
	0    1    1    0   
$EndComp
Connection ~ 4200 4100
Wire Wire Line
	4200 4100 4050 4100
Text Notes 9450 2400 0    120  ~ 0
Reset\n
Wire Wire Line
	3850 5700 4350 5700
Wire Wire Line
	1400 5700 2450 5700
Text GLabel 1400 5500 0    50   Input ~ 0
RUN_LED0
Text GLabel 1400 5700 0    50   Input ~ 0
RUN_LED1
Text GLabel 3850 5500 0    50   Input ~ 0
BOOT1
Text GLabel 3850 5700 0    50   Input ~ 0
BOOT2
Wire Wire Line
	1850 4100 2150 4100
Wire Wire Line
	2450 4100 2450 4150
Wire Wire Line
	1850 4150 1850 4100
Connection ~ 2150 4100
Wire Wire Line
	2150 4100 2450 4100
Wire Wire Line
	2150 4000 2150 4100
Wire Wire Line
	4200 4000 4200 4100
Connection ~ 9150 2700
Wire Wire Line
	8250 2400 7900 2400
Wire Wire Line
	4050 4950 4050 5500
Wire Wire Line
	4050 5500 3850 5500
Wire Wire Line
	5700 4100 5700 4400
Wire Wire Line
	6050 4100 6050 4400
Wire Wire Line
	6050 5000 6050 5100
$Comp
L servo:Resistor R?
U 1 1 5DE66EAC
P 5700 5200
AR Path="/5DC1676A/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EAC" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EAC" Ref="R?"  Part="1" 
F 0 "R?" V 5647 5250 60  0000 L CNN
F 1 "1.0k" H 5700 5200 50  0001 C CNN
F 2 "" H 5700 5200 50  0001 C CNN
F 3 "" H 5700 5200 50  0001 C CNN
F 4 "1.0k" V 5753 5250 60  0000 L CNN "ValueDisplayed"
	1    5700 5200
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DE66EB4
P 6050 5200
AR Path="/5DC1676A/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DE66EB4" Ref="R?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EB4" Ref="R?"  Part="1" 
F 0 "R?" V 5997 5250 60  0000 L CNN
F 1 "1.0k" H 6050 5200 50  0001 C CNN
F 2 "" H 6050 5200 50  0001 C CNN
F 3 "" H 6050 5200 50  0001 C CNN
F 4 "1.0k" V 6103 5250 60  0000 L CNN "ValueDisplayed"
	1    6050 5200
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EBC
P 6050 4700
AR Path="/5DCD812E/5DE66EBC" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EBC" Ref="D?"  Part="1" 
F 0 "D?" V 5997 4920 60  0000 L CNN
F 1 "green" H 6050 4700 50  0001 C CNN
F 2 "" H 6050 4700 50  0001 C CNN
F 3 "" H 6050 4700 50  0001 C CNN
F 4 "green@2mA" V 6103 4920 60  0000 L CNN "VALUE"
	1    6050 4700
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DE66EC4
P 5700 4700
AR Path="/5DCD812E/5DE66EC4" Ref="D?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EC4" Ref="D?"  Part="1" 
F 0 "D?" V 5647 4571 60  0000 R CNN
F 1 "blue" H 5700 4700 50  0001 C CNN
F 2 "" H 5700 4700 50  0001 C CNN
F 3 "" H 5700 4700 50  0001 C CNN
F 4 "blue@2mA" V 5753 4571 60  0000 R CNN "VALUE"
	1    5700 4700
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5DE66ECB
P 5850 4000
AR Path="/5DCD812E/5DE66ECB" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66ECB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5867 4209 20  0000 C CNN
F 1 "3V3" H 5867 4157 30  0000 C CNN
F 2 "" H 5850 4000 70  0000 C CNN
F 3 "" H 5850 4000 70  0000 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J?
U 1 1 5DE66ED3
P 4100 1800
AR Path="/5DCD812E/5DE66ED3" Ref="J?"  Part="1" 
AR Path="/5DD4DF4C/5DE66ED3" Ref="J?"  Part="1" 
F 0 "J?" H 4150 2217 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 4150 2126 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "~" H 4100 1800 50  0001 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3450 1600
Wire Wire Line
	3450 1600 3450 1450
Wire Wire Line
	3900 2000 3650 2000
Wire Wire Line
	3650 2000 3650 2100
Text Notes 3650 1200 0    50   ~ 0
IDC connector to plug \nan external isolated jtag interface
Wire Wire Line
	3900 1800 3800 1800
Wire Wire Line
	3800 1700 3900 1700
Wire Wire Line
	5500 5700 6050 5700
Wire Wire Line
	6050 5700 6050 5400
$Comp
L servo:5VC #PWR?
U 1 1 5DE66EF3
P 3450 1450
AR Path="/5DD76B18/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DCD812E/5DE66EF3" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3450 1250 20  0001 C CNN
F 1 "5VC" H 3455 1607 28  0000 C CNN
F 2 "" H 3450 1450 50  0001 C CNN
F 3 "" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DE66EF9
P 3650 2100
AR Path="/5DCD812E/5DE66EF9" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5DE66EF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3650 1850 30  0001 C CNN
F 1 "GND" H 3650 1942 30  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4100 5850 4100
Wire Wire Line
	5850 4000 5850 4100
Connection ~ 5850 4100
Wire Wire Line
	5850 4100 6050 4100
Wire Wire Line
	8650 2000 7900 2000
Connection ~ 8650 1600
Wire Wire Line
	8650 1400 8650 1600
Wire Wire Line
	8850 1600 8650 1600
Wire Wire Line
	8650 1600 8650 2000
Wire Wire Line
	9150 2700 9350 2700
Wire Wire Line
	8250 2700 8250 2400
Text Label 5000 1600 2    60   ~ 0
MCU_TCK
Text Label 5000 1700 2    60   ~ 0
MCU_TDI
Text Label 5000 1800 2    60   ~ 0
MCU_TDO
Text Label 5050 1900 2    60   ~ 0
MCU_TMS
Text Label 5050 2000 2    60   ~ 0
MCU_TRSTn
Wire Wire Line
	4400 2000 5600 2000
Wire Wire Line
	5600 1800 5600 1900
Wire Wire Line
	5600 1800 5900 1800
Wire Wire Line
	4400 1900 5600 1900
Wire Wire Line
	5300 1700 5300 1800
Wire Wire Line
	4400 1800 5300 1800
Wire Wire Line
	5200 1600 5200 1700
Wire Wire Line
	5200 1600 5900 1600
Wire Wire Line
	4400 1700 5200 1700
Wire Wire Line
	5100 1500 5100 1600
Wire Wire Line
	5100 1500 5900 1500
Wire Wire Line
	4400 1600 5100 1600
Wire Wire Line
	5500 5500 5700 5500
Wire Wire Line
	5700 5400 5700 5500
Text Notes 5600 3650 0    120  ~ 0
SCI leds\n
Wire Wire Line
	1850 5250 1850 5500
Text GLabel 3800 1700 0    60   BiDi ~ 0
SCIA_TX
Text GLabel 3800 1800 0    60   BiDi ~ 0
SCIA_RX
Text GLabel 5500 5500 0    60   BiDi ~ 0
SCIA_TX
Text GLabel 5500 5700 0    60   BiDi ~ 0
SCIA_RX
Wire Wire Line
	8250 2700 9150 2700
Wire Wire Line
	5300 1700 5900 1700
$EndSCHEMATC
