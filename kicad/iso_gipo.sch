EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 17 18
Title "clk"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3900 1550 0    197  ~ 39
Multipropouse\nIsolated GPI
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 1750 3750
AR Path="/5DD4DF4C/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F54" Ref="R?"  Part="1" 
F 0 "R?" V 1710 3770 20  0000 L CNN
F 1 "1k" V 1760 3770 20  0000 L CNN
F 2 "" H 1750 3750 50  0001 C CNN
F 3 "" H 1750 3750 50  0001 C CNN
F 4 "680" V -7250 4550 60  0001 C CNN "ValueDisplayed"
	1    1750 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Si8380 U?
U 1 1 5E7350CE
P 3600 3050
F 0 "U?" H 3600 3789 60  0000 C CNN
F 1 "Si8380" H 3600 3683 60  0000 C CNN
F 2 "" H 3000 3500 60  0000 C CNN
F 3 "../doc/datasheets/Si8380.pdf" H 3500 3800 60  0001 C CNN
	1    3600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2500 2450 3500
Wire Wire Line
	2350 2500 2350 3400
Wire Wire Line
	2250 2500 2250 3300
Wire Wire Line
	2050 2500 2050 2900
Wire Wire Line
	2150 2500 2150 3200
Wire Wire Line
	1950 2500 1950 2800
Wire Wire Line
	1850 2500 1850 2700
Wire Wire Line
	1750 2500 1750 2600
Wire Wire Line
	3000 2600 1750 2600
Connection ~ 1750 2600
Wire Wire Line
	1750 2600 1750 3550
Wire Wire Line
	3000 2700 1850 2700
Connection ~ 1850 2700
Wire Wire Line
	1850 2700 1850 3550
Wire Wire Line
	3000 2800 1950 2800
Connection ~ 1950 2800
Wire Wire Line
	1950 2800 1950 3550
Wire Wire Line
	3000 2900 2050 2900
Connection ~ 2050 2900
Wire Wire Line
	2050 2900 2050 3550
Wire Wire Line
	3000 3200 2150 3200
Connection ~ 2150 3200
Wire Wire Line
	2150 3200 2150 3550
Wire Wire Line
	3000 3300 2250 3300
Connection ~ 2250 3300
Wire Wire Line
	2250 3300 2250 3550
Wire Wire Line
	3000 3400 2350 3400
Connection ~ 2350 3400
Wire Wire Line
	2350 3400 2350 3550
Wire Wire Line
	3000 3500 2450 3500
Connection ~ 2450 3500
Wire Wire Line
	2450 3500 2450 3550
$Comp
L servo:Resistor R?
U 1 1 5E73BC4A
P 1850 3750
AR Path="/5DD4DF4C/5E73BC4A" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73BC4A" Ref="R?"  Part="1" 
F 0 "R?" V 1810 3770 20  0000 L CNN
F 1 "1k" V 1860 3770 20  0000 L CNN
F 2 "" H 1850 3750 50  0001 C CNN
F 3 "" H 1850 3750 50  0001 C CNN
F 4 "680" V -7150 4550 60  0001 C CNN "ValueDisplayed"
	1    1850 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C0D9
P 1950 3750
AR Path="/5DD4DF4C/5E73C0D9" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C0D9" Ref="R?"  Part="1" 
F 0 "R?" V 1910 3770 20  0000 L CNN
F 1 "1k" V 1960 3770 20  0000 L CNN
F 2 "" H 1950 3750 50  0001 C CNN
F 3 "" H 1950 3750 50  0001 C CNN
F 4 "680" V -7050 4550 60  0001 C CNN "ValueDisplayed"
	1    1950 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C56A
P 2050 3750
AR Path="/5DD4DF4C/5E73C56A" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C56A" Ref="R?"  Part="1" 
F 0 "R?" V 2010 3770 20  0000 L CNN
F 1 "1k" V 2060 3770 20  0000 L CNN
F 2 "" H 2050 3750 50  0001 C CNN
F 3 "" H 2050 3750 50  0001 C CNN
F 4 "680" V -6950 4550 60  0001 C CNN "ValueDisplayed"
	1    2050 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C9FD
P 2150 3750
AR Path="/5DD4DF4C/5E73C9FD" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C9FD" Ref="R?"  Part="1" 
F 0 "R?" V 2110 3770 20  0000 L CNN
F 1 "1k" V 2160 3770 20  0000 L CNN
F 2 "" H 2150 3750 50  0001 C CNN
F 3 "" H 2150 3750 50  0001 C CNN
F 4 "680" V -6850 4550 60  0001 C CNN "ValueDisplayed"
	1    2150 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73CE92
P 2250 3750
AR Path="/5DD4DF4C/5E73CE92" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73CE92" Ref="R?"  Part="1" 
F 0 "R?" V 2210 3770 20  0000 L CNN
F 1 "1k" V 2260 3770 20  0000 L CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "" H 2250 3750 50  0001 C CNN
F 4 "680" V -6750 4550 60  0001 C CNN "ValueDisplayed"
	1    2250 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73D329
P 2350 3750
AR Path="/5DD4DF4C/5E73D329" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73D329" Ref="R?"  Part="1" 
F 0 "R?" V 2310 3770 20  0000 L CNN
F 1 "1k" V 2360 3770 20  0000 L CNN
F 2 "" H 2350 3750 50  0001 C CNN
F 3 "" H 2350 3750 50  0001 C CNN
F 4 "680" V -6650 4550 60  0001 C CNN "ValueDisplayed"
	1    2350 3750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73D7C2
P 2450 3750
AR Path="/5DD4DF4C/5E73D7C2" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73D7C2" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3770 20  0000 L CNN
F 1 "1k" V 2460 3770 20  0000 L CNN
F 2 "" H 2450 3750 50  0001 C CNN
F 3 "" H 2450 3750 50  0001 C CNN
F 4 "680" V -6550 4550 60  0001 C CNN "ValueDisplayed"
	1    2450 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 3100 2900 3100
Wire Wire Line
	2900 3100 2900 3950
Wire Wire Line
	2900 3950 2450 3950
Connection ~ 1850 3950
Wire Wire Line
	1850 3950 1750 3950
Connection ~ 1950 3950
Wire Wire Line
	1950 3950 1850 3950
Connection ~ 2050 3950
Wire Wire Line
	2050 3950 1950 3950
Connection ~ 2150 3950
Wire Wire Line
	2150 3950 2050 3950
Connection ~ 2250 3950
Wire Wire Line
	2250 3950 2150 3950
Connection ~ 2350 3950
Wire Wire Line
	2350 3950 2250 3950
Connection ~ 2450 3950
Wire Wire Line
	2450 3950 2350 3950
Wire Wire Line
	3000 3000 2900 3000
Wire Wire Line
	2900 3000 2900 3100
Connection ~ 2900 3100
$Comp
L servo:Resistor R?
U 1 1 5E73F3EF
P 1750 2300
AR Path="/5DD4DF4C/5E73F3EF" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3EF" Ref="R?"  Part="1" 
F 0 "R?" V 1710 2320 20  0000 L CNN
F 1 "1k" V 1760 2320 20  0000 L CNN
F 2 "" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
F 4 "680" V -7250 3100 60  0001 C CNN "ValueDisplayed"
	1    1750 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F3F7
P 1850 2300
AR Path="/5DD4DF4C/5E73F3F7" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3F7" Ref="R?"  Part="1" 
F 0 "R?" V 1810 2320 20  0000 L CNN
F 1 "1k" V 1860 2320 20  0000 L CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
F 4 "680" V -7150 3100 60  0001 C CNN "ValueDisplayed"
	1    1850 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F3FF
P 1950 2300
AR Path="/5DD4DF4C/5E73F3FF" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3FF" Ref="R?"  Part="1" 
F 0 "R?" V 1910 2320 20  0000 L CNN
F 1 "1k" V 1960 2320 20  0000 L CNN
F 2 "" H 1950 2300 50  0001 C CNN
F 3 "" H 1950 2300 50  0001 C CNN
F 4 "680" V -7050 3100 60  0001 C CNN "ValueDisplayed"
	1    1950 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F407
P 2050 2300
AR Path="/5DD4DF4C/5E73F407" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F407" Ref="R?"  Part="1" 
F 0 "R?" V 2010 2320 20  0000 L CNN
F 1 "1k" V 2060 2320 20  0000 L CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
F 4 "680" V -6950 3100 60  0001 C CNN "ValueDisplayed"
	1    2050 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F40F
P 2150 2300
AR Path="/5DD4DF4C/5E73F40F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F40F" Ref="R?"  Part="1" 
F 0 "R?" V 2110 2320 20  0000 L CNN
F 1 "1k" V 2160 2320 20  0000 L CNN
F 2 "" H 2150 2300 50  0001 C CNN
F 3 "" H 2150 2300 50  0001 C CNN
F 4 "680" V -6850 3100 60  0001 C CNN "ValueDisplayed"
	1    2150 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F417
P 2250 2300
AR Path="/5DD4DF4C/5E73F417" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F417" Ref="R?"  Part="1" 
F 0 "R?" V 2210 2320 20  0000 L CNN
F 1 "1k" V 2260 2320 20  0000 L CNN
F 2 "" H 2250 2300 50  0001 C CNN
F 3 "" H 2250 2300 50  0001 C CNN
F 4 "680" V -6750 3100 60  0001 C CNN "ValueDisplayed"
	1    2250 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F41F
P 2350 2300
AR Path="/5DD4DF4C/5E73F41F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F41F" Ref="R?"  Part="1" 
F 0 "R?" V 2310 2320 20  0000 L CNN
F 1 "1k" V 2360 2320 20  0000 L CNN
F 2 "" H 2350 2300 50  0001 C CNN
F 3 "" H 2350 2300 50  0001 C CNN
F 4 "680" V -6650 3100 60  0001 C CNN "ValueDisplayed"
	1    2350 2300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F427
P 2450 2300
AR Path="/5DD4DF4C/5E73F427" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F427" Ref="R?"  Part="1" 
F 0 "R?" V 2410 2320 20  0000 L CNN
F 1 "1k" V 2460 2320 20  0000 L CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "" H 2450 2300 50  0001 C CNN
F 4 "680" V -6550 3100 60  0001 C CNN "ValueDisplayed"
	1    2450 2300
	0    -1   -1   0   
$EndComp
Connection ~ 2900 3000
$Comp
L servo:15VH #PWR?
U 1 1 5E744AF4
P 1600 1400
F 0 "#PWR?" H 1600 1200 20  0001 C CNN
F 1 "15VH" H 1605 1557 28  0000 C CNN
F 2 "" H 1600 1400 50  0001 C CNN
F 3 "" H 1600 1400 50  0001 C CNN
	1    1600 1400
	1    0    0    -1  
$EndComp
Text GLabel 4600 2600 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 2600 4200 2600
Text GLabel 4600 2700 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 2700 4200 2700
Text GLabel 4600 2800 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 2800 4200 2800
Text GLabel 4600 2900 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 2900 4200 2900
Text GLabel 4600 3200 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 3200 4200 3200
Text GLabel 4600 3300 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 3300 4200 3300
Text GLabel 4600 3400 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 3400 4200 3400
Text GLabel 4600 3500 2    60   BiDi ~ 0
MCU_GPIO??
Wire Wire Line
	4600 3500 4200 3500
$Comp
L servo:3V3 #PWR?
U 1 1 5E75F6F8
P 5400 2950
F 0 "#PWR?" H 5405 3157 20  0000 C CNN
F 1 "3V3" H 5405 3107 28  0000 C CNN
F 2 "" H 5400 2950 50  0001 C CNN
F 3 "" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E75F954
P 5400 3100
F 0 "#PWR?" H 5400 2850 30  0001 C CNN
F 1 "GND" H 5400 2942 30  0000 C CNN
F 2 "" H 5400 3100 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3100 5400 3100
Wire Wire Line
	4200 3000 5400 3000
Wire Wire Line
	5400 3000 5400 2950
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J?
U 1 1 5E768DC9
P 2150 1800
F 0 "J?" V 2154 2180 50  0000 L CNN
F 1 "Conn_02x08_Counter_Clockwise" V 1550 1500 50  0000 L CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "~" H 2150 1800 50  0001 C CNN
	1    2150 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1600 1950 1600
Wire Wire Line
	1600 1600 1600 1400
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1600 1600
Connection ~ 1850 1600
Wire Wire Line
	1850 1600 1750 1600
Connection ~ 1950 1600
Wire Wire Line
	1950 1600 1850 1600
Wire Wire Line
	2150 1600 2250 1600
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 2350 1600
Connection ~ 2350 1600
Wire Wire Line
	2350 1600 2450 1600
Connection ~ 2450 1600
Wire Wire Line
	2450 1600 2900 1600
Wire Wire Line
	2900 1600 2900 3000
Text Notes 1650 1550 0    20   ~ 0
if the switch is passive\n use these pairs
Text Notes 2200 1500 0    20   ~ 0
if the switch is active\n use these pairs and inyect\n power supply from switch\n in any polarity with respect COM
Text Notes 1250 3650 0    20   ~ 0
set the resistor dividers  \ndepending on the requeriments
$EndSCHEMATC
