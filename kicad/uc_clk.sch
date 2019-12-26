EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 17 17
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
AR Path="/5DD4DF4C/5DB38F8D" Ref="#PWR_?"  Part="1" 
AR Path="/5E0D58C4/5DB38F8D" Ref="#PWR_?"  Part="1" 
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
Wire Wire Line
	1400 5500 1850 5500
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2450 4950
AR Path="/5DD4DF4C/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F6A" Ref="D?"  Part="1" 
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
U 1 1 5DB38F5F
P 1850 4350
AR Path="/5DD4DF4C/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F5F" Ref="R?"  Part="1" 
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
U 1 1 5DB38F54
P 2450 4350
AR Path="/5DD4DF4C/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F54" Ref="R?"  Part="1" 
F 0 "R?" V 2405 4400 60  0000 L CNN
F 1 "680" V 2503 4400 50  0000 L CNN
F 2 "" H 2450 4350 50  0001 C CNN
F 3 "" H 2450 4350 50  0001 C CNN
F 4 "680" V -6550 5150 60  0001 C CNN "ValueDisplayed"
	1    2450 4350
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 1850 4950
AR Path="/5DD4DF4C/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F35" Ref="D?"  Part="1" 
F 0 "D?" V 1805 4820 60  0000 R CNN
F 1 "red@2mA" V 1903 4820 50  0000 R CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
F 4 "Red" V -6550 5150 60  0001 C CNN "VALUE"
	1    1850 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5700 2450 5700
Text GLabel 1400 5500 0    50   Input ~ 0
RUN_LED0
Text GLabel 1400 5700 0    50   Input ~ 0
RUN_LED1
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
	1850 5250 1850 5500
$EndSCHEMATC
