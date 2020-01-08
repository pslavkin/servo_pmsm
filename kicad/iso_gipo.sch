EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 15 19
Title "clk"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5050 1650 0    197  ~ 39
Multipropouse\nIsolated GPI
$Comp
L servo:Resistor R?
U 1 1 5DB38F54
P 4500 4850
AR Path="/5DD4DF4C/5DB38F54" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5DB38F54" Ref="R?"  Part="1" 
F 0 "R?" V 4460 4870 20  0000 L CNN
F 1 "1k" V 4510 4870 20  0000 L CNN
F 2 "" H 4500 4850 50  0001 C CNN
F 3 "" H 4500 4850 50  0001 C CNN
F 4 "680" V -4500 5650 60  0001 C CNN "ValueDisplayed"
	1    4500 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Si8380 U?
U 1 1 5E7350CE
P 6350 4150
F 0 "U?" H 6350 4889 60  0000 C CNN
F 1 "Si8380" H 6350 4783 60  0000 C CNN
F 2 "" H 5750 4600 60  0000 C CNN
F 3 "../doc/datasheets/Si8380.pdf" H 6250 4900 60  0001 C CNN
	1    6350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3600 5200 4600
Wire Wire Line
	5100 3600 5100 4500
Wire Wire Line
	5000 3600 5000 4400
Wire Wire Line
	4800 3600 4800 4000
Wire Wire Line
	4900 3600 4900 4300
Wire Wire Line
	4700 3600 4700 3900
Wire Wire Line
	4600 3600 4600 3800
Wire Wire Line
	4500 3600 4500 3700
Wire Wire Line
	5750 3700 4500 3700
Connection ~ 4500 3700
Wire Wire Line
	4500 3700 4500 4650
Wire Wire Line
	5750 3800 4600 3800
Connection ~ 4600 3800
Wire Wire Line
	4600 3800 4600 4650
Wire Wire Line
	5750 3900 4700 3900
Connection ~ 4700 3900
Wire Wire Line
	4700 3900 4700 4650
Wire Wire Line
	5750 4000 4800 4000
Connection ~ 4800 4000
Wire Wire Line
	4800 4000 4800 4650
Wire Wire Line
	5750 4300 4900 4300
Connection ~ 4900 4300
Wire Wire Line
	4900 4300 4900 4650
Wire Wire Line
	5750 4400 5000 4400
Connection ~ 5000 4400
Wire Wire Line
	5000 4400 5000 4650
Wire Wire Line
	5750 4500 5100 4500
Connection ~ 5100 4500
Wire Wire Line
	5100 4500 5100 4650
Wire Wire Line
	5750 4600 5200 4600
Connection ~ 5200 4600
Wire Wire Line
	5200 4600 5200 4650
$Comp
L servo:Resistor R?
U 1 1 5E73BC4A
P 4600 4850
AR Path="/5DD4DF4C/5E73BC4A" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73BC4A" Ref="R?"  Part="1" 
F 0 "R?" V 4560 4870 20  0000 L CNN
F 1 "1k" V 4610 4870 20  0000 L CNN
F 2 "" H 4600 4850 50  0001 C CNN
F 3 "" H 4600 4850 50  0001 C CNN
F 4 "680" V -4400 5650 60  0001 C CNN "ValueDisplayed"
	1    4600 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C0D9
P 4700 4850
AR Path="/5DD4DF4C/5E73C0D9" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C0D9" Ref="R?"  Part="1" 
F 0 "R?" V 4660 4870 20  0000 L CNN
F 1 "1k" V 4710 4870 20  0000 L CNN
F 2 "" H 4700 4850 50  0001 C CNN
F 3 "" H 4700 4850 50  0001 C CNN
F 4 "680" V -4300 5650 60  0001 C CNN "ValueDisplayed"
	1    4700 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C56A
P 4800 4850
AR Path="/5DD4DF4C/5E73C56A" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C56A" Ref="R?"  Part="1" 
F 0 "R?" V 4760 4870 20  0000 L CNN
F 1 "1k" V 4810 4870 20  0000 L CNN
F 2 "" H 4800 4850 50  0001 C CNN
F 3 "" H 4800 4850 50  0001 C CNN
F 4 "680" V -4200 5650 60  0001 C CNN "ValueDisplayed"
	1    4800 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73C9FD
P 4900 4850
AR Path="/5DD4DF4C/5E73C9FD" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73C9FD" Ref="R?"  Part="1" 
F 0 "R?" V 4860 4870 20  0000 L CNN
F 1 "1k" V 4910 4870 20  0000 L CNN
F 2 "" H 4900 4850 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
F 4 "680" V -4100 5650 60  0001 C CNN "ValueDisplayed"
	1    4900 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73CE92
P 5000 4850
AR Path="/5DD4DF4C/5E73CE92" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73CE92" Ref="R?"  Part="1" 
F 0 "R?" V 4960 4870 20  0000 L CNN
F 1 "1k" V 5010 4870 20  0000 L CNN
F 2 "" H 5000 4850 50  0001 C CNN
F 3 "" H 5000 4850 50  0001 C CNN
F 4 "680" V -4000 5650 60  0001 C CNN "ValueDisplayed"
	1    5000 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73D329
P 5100 4850
AR Path="/5DD4DF4C/5E73D329" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73D329" Ref="R?"  Part="1" 
F 0 "R?" V 5060 4870 20  0000 L CNN
F 1 "1k" V 5110 4870 20  0000 L CNN
F 2 "" H 5100 4850 50  0001 C CNN
F 3 "" H 5100 4850 50  0001 C CNN
F 4 "680" V -3900 5650 60  0001 C CNN "ValueDisplayed"
	1    5100 4850
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73D7C2
P 5200 4850
AR Path="/5DD4DF4C/5E73D7C2" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73D7C2" Ref="R?"  Part="1" 
F 0 "R?" V 5160 4870 20  0000 L CNN
F 1 "1k" V 5210 4870 20  0000 L CNN
F 2 "" H 5200 4850 50  0001 C CNN
F 3 "" H 5200 4850 50  0001 C CNN
F 4 "680" V -3800 5650 60  0001 C CNN "ValueDisplayed"
	1    5200 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 4200 5650 4200
Connection ~ 4600 5050
Wire Wire Line
	4600 5050 4500 5050
Connection ~ 4700 5050
Wire Wire Line
	4700 5050 4600 5050
Wire Wire Line
	4800 5050 4700 5050
Connection ~ 5000 5050
Wire Wire Line
	5000 5050 4900 5050
Connection ~ 5100 5050
Wire Wire Line
	5100 5050 5000 5050
Wire Wire Line
	5200 5050 5100 5050
Wire Wire Line
	5750 4100 5650 4100
Wire Wire Line
	5650 4100 5650 4200
Connection ~ 5650 4200
$Comp
L servo:Resistor R?
U 1 1 5E73F3EF
P 4500 3400
AR Path="/5DD4DF4C/5E73F3EF" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3EF" Ref="R?"  Part="1" 
F 0 "R?" V 4460 3420 20  0000 L CNN
F 1 "1k" V 4510 3420 20  0000 L CNN
F 2 "" H 4500 3400 50  0001 C CNN
F 3 "" H 4500 3400 50  0001 C CNN
F 4 "680" V -4500 4200 60  0001 C CNN "ValueDisplayed"
	1    4500 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F3F7
P 4600 3400
AR Path="/5DD4DF4C/5E73F3F7" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3F7" Ref="R?"  Part="1" 
F 0 "R?" V 4560 3420 20  0000 L CNN
F 1 "1k" V 4610 3420 20  0000 L CNN
F 2 "" H 4600 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
F 4 "680" V -4400 4200 60  0001 C CNN "ValueDisplayed"
	1    4600 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F3FF
P 4700 3400
AR Path="/5DD4DF4C/5E73F3FF" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F3FF" Ref="R?"  Part="1" 
F 0 "R?" V 4660 3420 20  0000 L CNN
F 1 "1k" V 4710 3420 20  0000 L CNN
F 2 "" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
F 4 "680" V -4300 4200 60  0001 C CNN "ValueDisplayed"
	1    4700 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F407
P 4800 3400
AR Path="/5DD4DF4C/5E73F407" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F407" Ref="R?"  Part="1" 
F 0 "R?" V 4760 3420 20  0000 L CNN
F 1 "1k" V 4810 3420 20  0000 L CNN
F 2 "" H 4800 3400 50  0001 C CNN
F 3 "" H 4800 3400 50  0001 C CNN
F 4 "680" V -4200 4200 60  0001 C CNN "ValueDisplayed"
	1    4800 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F40F
P 4900 3400
AR Path="/5DD4DF4C/5E73F40F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F40F" Ref="R?"  Part="1" 
F 0 "R?" V 4860 3420 20  0000 L CNN
F 1 "1k" V 4910 3420 20  0000 L CNN
F 2 "" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0001 C CNN
F 4 "680" V -4100 4200 60  0001 C CNN "ValueDisplayed"
	1    4900 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F417
P 5000 3400
AR Path="/5DD4DF4C/5E73F417" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F417" Ref="R?"  Part="1" 
F 0 "R?" V 4960 3420 20  0000 L CNN
F 1 "1k" V 5010 3420 20  0000 L CNN
F 2 "" H 5000 3400 50  0001 C CNN
F 3 "" H 5000 3400 50  0001 C CNN
F 4 "680" V -4000 4200 60  0001 C CNN "ValueDisplayed"
	1    5000 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F41F
P 5100 3400
AR Path="/5DD4DF4C/5E73F41F" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F41F" Ref="R?"  Part="1" 
F 0 "R?" V 5060 3420 20  0000 L CNN
F 1 "1k" V 5110 3420 20  0000 L CNN
F 2 "" H 5100 3400 50  0001 C CNN
F 3 "" H 5100 3400 50  0001 C CNN
F 4 "680" V -3900 4200 60  0001 C CNN "ValueDisplayed"
	1    5100 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E73F427
P 5200 3400
AR Path="/5DD4DF4C/5E73F427" Ref="R?"  Part="1" 
AR Path="/5E0D58C4/5E73F427" Ref="R?"  Part="1" 
F 0 "R?" V 5160 3420 20  0000 L CNN
F 1 "1k" V 5210 3420 20  0000 L CNN
F 2 "" H 5200 3400 50  0001 C CNN
F 3 "" H 5200 3400 50  0001 C CNN
F 4 "680" V -3800 4200 60  0001 C CNN "ValueDisplayed"
	1    5200 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:15VH #PWR?
U 1 1 5E744AF4
P 5350 2650
F 0 "#PWR?" H 5350 2450 20  0001 C CNN
F 1 "15VH" H 5355 2807 28  0000 C CNN
F 2 "" H 5350 2650 50  0001 C CNN
F 3 "" H 5350 2650 50  0001 C CNN
	1    5350 2650
	-1   0    0    -1  
$EndComp
Text GLabel 7350 3700 2    60   Output ~ 0
ISO_GPI1
Wire Wire Line
	7350 3700 6950 3700
Wire Wire Line
	7350 3800 6950 3800
Wire Wire Line
	7350 3900 6950 3900
Wire Wire Line
	7350 4000 6950 4000
Wire Wire Line
	7350 4300 6950 4300
Wire Wire Line
	7350 4400 6950 4400
Wire Wire Line
	7350 4500 6950 4500
Wire Wire Line
	7350 4600 6950 4600
$Comp
L servo:3V3 #PWR?
U 1 1 5E75F6F8
P 8150 4050
F 0 "#PWR?" H 8155 4257 20  0000 C CNN
F 1 "3V3" H 8155 4207 28  0000 C CNN
F 2 "" H 8150 4050 50  0001 C CNN
F 3 "" H 8150 4050 50  0001 C CNN
	1    8150 4050
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E75F954
P 8150 4200
F 0 "#PWR?" H 8150 3950 30  0001 C CNN
F 1 "GND" H 8150 4042 30  0000 C CNN
F 2 "" H 8150 4200 50  0001 C CNN
F 3 "" H 8150 4200 50  0001 C CNN
	1    8150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4200 8150 4200
Wire Wire Line
	6950 4100 8150 4100
Wire Wire Line
	8150 4100 8150 4050
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J?
U 1 1 5E768DC9
P 4800 2900
F 0 "J?" V 4804 3280 50  0000 L CNN
F 1 "Conn_02x08_Counter_Clockwise" V 4200 2600 50  0001 L CNN
F 2 "" H 4800 2900 50  0001 C CNN
F 3 "~" H 4800 2900 50  0001 C CNN
	1    4800 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	4900 2700 5000 2700
Wire Wire Line
	5350 2700 5350 2650
Connection ~ 5200 2700
Wire Wire Line
	5200 2700 5350 2700
Connection ~ 5100 2700
Wire Wire Line
	5100 2700 5200 2700
Connection ~ 5000 2700
Wire Wire Line
	5000 2700 5100 2700
Wire Wire Line
	4800 2700 4700 2700
Connection ~ 4700 2700
Wire Wire Line
	4700 2700 4600 2700
Connection ~ 4600 2700
Wire Wire Line
	4600 2700 4500 2700
Text Notes 4000 4750 0    20   ~ 0
set the resistor dividers  \ndepending on the requeriments
$Comp
L servo:GNDH #PWR?
U 1 1 5E91AACE
P 5300 5100
F 0 "#PWR?" H 5300 4850 30  0001 C CNN
F 1 "GNDH" H 5300 4942 30  0000 C CNN
F 2 "" H 5300 5100 50  0001 C CNN
F 3 "" H 5300 5100 50  0001 C CNN
	1    5300 5100
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E91BDCC
P 4250 2750
F 0 "#PWR?" H 4250 2500 30  0001 C CNN
F 1 "GNDH" H 4250 2592 30  0000 C CNN
F 2 "" H 4250 2750 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 2700 4250 2700
Connection ~ 4500 2700
Wire Wire Line
	4250 2700 4250 2750
Wire Wire Line
	5300 5100 5300 5050
Wire Wire Line
	5300 5050 5200 5050
Connection ~ 5200 5050
Wire Wire Line
	5300 5050 5650 5050
Wire Wire Line
	5650 4200 5650 5050
Connection ~ 5300 5050
$Comp
L servo:15VH #PWR?
U 1 1 5E931AF7
P 4250 5000
F 0 "#PWR?" H 4250 4800 20  0001 C CNN
F 1 "15VH" H 4255 5157 28  0000 C CNN
F 2 "" H 4250 5000 50  0001 C CNN
F 3 "" H 4250 5000 50  0001 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5000 4250 5050
Wire Wire Line
	4250 5050 4500 5050
Connection ~ 4500 5050
Text Notes 4900 2650 0    50   ~ 0
active HI
Text Notes 4350 2650 0    50   ~ 0
active Low\n
Text Notes 5250 2050 0    79   ~ 16
4 Active Hi / to inyect\n4 Active LO / to source
Text GLabel 7350 3800 2    60   Output ~ 0
ISO_GPI2
Text GLabel 7350 3900 2    60   Output ~ 0
ISO_GPI3
Text GLabel 7350 4000 2    60   Output ~ 0
ISO_GPI4
Text GLabel 7350 4300 2    60   Output ~ 0
ISO_GPI5
Text GLabel 7350 4400 2    60   Output ~ 0
ISO_GPI6
Text GLabel 7350 4500 2    60   Output ~ 0
ISO_GPI7
Text GLabel 7350 4600 2    60   Output ~ 0
ISO_GPI8
$EndSCHEMATC
