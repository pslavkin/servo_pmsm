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
P 2450 2300
AR Path="/5DD4DF4C/5DB38F8D" Ref="#PWR_?"  Part="1" 
AR Path="/5E0D58C4/5DB38F8D" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 2455 2510 20  0001 C CNN
F 1 "3V3" H 2455 2458 30  0000 C CNN
F 2 "" H 2450 2300 70  0000 C CNN
F 3 "" H 2450 2300 70  0000 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2950 2750 2850
Wire Wire Line
	2150 2850 2150 2950
Wire Wire Line
	2750 4000 2750 3550
Text Notes 1850 2050 0    120  ~ 0
Multipropouse\nLEDs
Wire Wire Line
	1700 3800 2150 3800
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2750 3250
AR Path="/5DD4DF4C/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F6A" Ref="D?"  Part="1" 
F 0 "D?" V 2705 3470 60  0000 L CNN
F 1 "red@2mA" V 2803 3470 50  0000 L CNN
F 2 "" H 2750 3250 50  0001 C CNN
F 3 "" H 2750 3250 50  0001 C CNN
F 4 "Red" V -6250 3450 60  0001 C CNN "VALUE"
	1    2750 3250
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5F
P 2150 2650
AR Path="/5DD4DF4C/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F5F" Ref="R?"  Part="1" 
F 0 "R?" V 2105 2700 60  0000 L CNN
F 1 "680" V 2203 2700 50  0000 L CNN
F 2 "" H 2150 2650 50  0001 C CNN
F 3 "" H 2150 2650 50  0001 C CNN
F 4 "680" V -6250 3450 60  0001 C CNN "ValueDisplayed"
	1    2150 2650
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 2750 2650
AR Path="/5DD4DF4C/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F54" Ref="R?"  Part="1" 
F 0 "R?" V 2705 2700 60  0000 L CNN
F 1 "680" V 2803 2700 50  0000 L CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "" H 2750 2650 50  0001 C CNN
F 4 "680" V -6250 3450 60  0001 C CNN "ValueDisplayed"
	1    2750 2650
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 2150 3250
AR Path="/5DD4DF4C/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F35" Ref="D?"  Part="1" 
F 0 "D?" V 2105 3120 60  0000 R CNN
F 1 "red@2mA" V 2203 3120 50  0000 R CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
F 4 "Red" V -6250 3450 60  0001 C CNN "VALUE"
	1    2150 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4000 2750 4000
Text GLabel 1700 3800 0    50   Input ~ 0
RUN_LED0
Text GLabel 1700 4000 0    50   Input ~ 0
RUN_LED1
Wire Wire Line
	2150 2400 2450 2400
Wire Wire Line
	2750 2400 2750 2450
Wire Wire Line
	2150 2450 2150 2400
Connection ~ 2450 2400
Wire Wire Line
	2450 2400 2750 2400
Wire Wire Line
	2450 2300 2450 2400
Wire Wire Line
	2150 3550 2150 3800
$EndSCHEMATC
