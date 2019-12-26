EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 10 17
Title "gpio"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2650 2350 2    60   BiDi ~ 0
1Wire
$Comp
L servo:GND #PWR_?
U 1 1 5E081A4D
P 2150 2800
AR Path="/5DD4DF4C/5E081A4D" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E081A4D" Ref="#PWR_?"  Part="1" 
F 0 "#PWR_?" H 2155 2651 20  0001 C CNN
F 1 "GND" H 2150 2642 30  0000 C CNN
F 2 "" H 2150 2800 70  0000 C CNN
F 3 "" H 2150 2800 70  0000 C CNN
	1    2150 2800
	1    0    0    -1  
$EndComp
Text Notes 1800 1550 0    120  ~ 0
Temperatura Sensors
$Comp
L servo:3V3 #PWR?
U 1 1 5E0844CD
P 2150 1850
AR Path="/5DCD812E/5E0844CD" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E0844CD" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E0844CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2167 2059 20  0000 C CNN
F 1 "3V3" H 2167 2007 30  0000 C CNN
F 2 "" H 2150 1850 70  0000 C CNN
F 3 "" H 2150 1850 70  0000 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:DS18B20 U?
U 1 1 5E086568
P 2150 2350
F 0 "U?" H 1920 2396 50  0000 R CNN
F 1 "DS18B20" H 1920 2305 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1150 2100 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 2000 2600 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1850 2150 1950
Wire Wire Line
	2150 1950 3150 1950
Wire Wire Line
	3150 1950 3150 2250
Wire Wire Line
	3150 2250 3350 2250
Connection ~ 2150 1950
Wire Wire Line
	2150 1950 2150 2050
Wire Wire Line
	2450 2350 3350 2350
Wire Wire Line
	2150 2750 3150 2750
Wire Wire Line
	3150 2750 3150 2450
Wire Wire Line
	3150 2450 3350 2450
Wire Wire Line
	2150 2750 2150 2800
Wire Wire Line
	2150 2650 2150 2750
Connection ~ 2150 2750
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5E091947
P 3550 2350
F 0 "J?" H 3630 2392 50  0000 L CNN
F 1 "Conn_01x03" H 3630 2301 50  0000 L CNN
F 2 "" H 3550 2350 50  0001 C CNN
F 3 "~" H 3550 2350 50  0001 C CNN
	1    3550 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
