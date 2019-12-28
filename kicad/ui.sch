EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 18 18
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
AR Path="/5E72D841/5DB38F8D" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 2455 2510 20  0001 C CNN
F 1 "3V3" H 2455 2458 30  0000 C CNN
F 2 "" H 2450 2300 70  0000 C CNN
F 3 "" H 2450 2300 70  0000 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3000 2650 2850
Wire Wire Line
	2250 2850 2250 3000
Wire Wire Line
	2650 3500 2650 3250
Text Notes 1850 2050 0    120  ~ 0
Multipropouse\nLEDs
Wire Wire Line
	1700 3400 2250 3400
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F6A
P 2650 3100
AR Path="/5DD4DF4C/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F6A" Ref="D?"  Part="1" 
AR Path="/5E72D841/5DB38F6A" Ref="D?"  Part="1" 
F 0 "D?" V 2605 3320 60  0000 L CNN
F 1 "red@2mA" V 2703 3320 50  0000 L CNN
F 2 "" H 2650 3100 50  0001 C CNN
F 3 "" H 2650 3100 50  0001 C CNN
F 4 "Red" V -6350 3300 60  0001 C CNN "VALUE"
	1    2650 3100
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F5F
P 2250 2650
AR Path="/5DD4DF4C/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F5F" Ref="R?"  Part="1" 
AR Path="/5E72D841/5DB38F5F" Ref="R?"  Part="1" 
F 0 "R?" V 2205 2700 60  0000 L CNN
F 1 "680" V 2303 2700 50  0000 L CNN
F 2 "" H 2250 2650 50  0001 C CNN
F 3 "" H 2250 2650 50  0001 C CNN
F 4 "680" V -6150 3450 60  0001 C CNN "ValueDisplayed"
	1    2250 2650
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 2650 2650
AR Path="/5DD4DF4C/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E72D841/5DB38F54" Ref="R?"  Part="1" 
F 0 "R?" V 2605 2700 60  0000 L CNN
F 1 "680" V 2703 2700 50  0000 L CNN
F 2 "" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0001 C CNN
F 4 "680" V -6350 3450 60  0001 C CNN "ValueDisplayed"
	1    2650 2650
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DB38F35
P 2250 3100
AR Path="/5DD4DF4C/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E0D58C4/5DB38F35" Ref="D?"  Part="1" 
AR Path="/5E72D841/5DB38F35" Ref="D?"  Part="1" 
F 0 "D?" V 2205 2970 60  0000 R CNN
F 1 "red@2mA" V 2303 2970 50  0000 R CNN
F 2 "" H 2250 3100 50  0001 C CNN
F 3 "" H 2250 3100 50  0001 C CNN
F 4 "Red" V -6150 3300 60  0001 C CNN "VALUE"
	1    2250 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3500 2650 3500
Text GLabel 1700 3400 0    50   Input ~ 0
RUN_LED0
Text GLabel 1700 3500 0    50   Input ~ 0
RUN_LED1
Wire Wire Line
	2250 2400 2450 2400
Wire Wire Line
	2650 2400 2650 2450
Wire Wire Line
	2250 2450 2250 2400
Connection ~ 2450 2400
Wire Wire Line
	2450 2400 2650 2400
Wire Wire Line
	2450 2300 2450 2400
Wire Wire Line
	2250 3250 2250 3400
$EndSCHEMATC
