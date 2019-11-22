EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr C 22000 17000
encoding utf-8
Sheet 9 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:IRM-20-15 PS?
U 1 1 5F20ABE6
P 3400 6600
F 0 "PS?" H 3400 6925 50  0000 C CNN
F 1 "IRM-20-15" H 3400 6834 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 3400 6300 50  0001 C CNN
F 3 "http://www.meanwell.com/Upload/PDF/IRM-20/IRM-20-SPEC.PDF" H 3800 6250 50  0001 C CNN
	1    3400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6700 2800 6700
Wire Wire Line
	2650 6500 3000 6500
Wire Wire Line
	3800 6500 4000 6500
$Comp
L servo:15VC #PWR?
U 1 1 5F44E52B
P 4000 6400
F 0 "#PWR?" H 4000 6200 20  0001 C CNN
F 1 "15VC" H 4005 6557 28  0000 C CNN
F 2 "" H 4000 6400 50  0001 C CNN
F 3 "" H 4000 6400 50  0001 C CNN
	1    4000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6400 4000 6500
$Comp
L servo:IRM-20-15 PS?
U 1 1 5F450AA5
P 3400 1800
F 0 "PS?" H 3400 2125 50  0000 C CNN
F 1 "IRM-20-15" H 3400 2034 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 3400 1500 50  0001 C CNN
F 3 "http://www.meanwell.com/Upload/PDF/IRM-20/IRM-20-SPEC.PDF" H 3800 1450 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1700 4000 1700
Wire Wire Line
	4000 1600 4000 1700
$Comp
L servo:15VH #PWR?
U 1 1 5F450B63
P 4000 1600
F 0 "#PWR?" H 4000 1400 20  0001 C CNN
F 1 "15VH" H 4005 1757 28  0000 C CNN
F 2 "" H 4000 1600 50  0001 C CNN
F 3 "" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6500 2650 1700
Wire Wire Line
	2650 1700 3000 1700
Wire Wire Line
	2800 1900 3000 1900
Wire Wire Line
	2800 1900 2800 6700
Wire Wire Line
	3800 1900 4000 1900
$Comp
L servo:GNDH #PWR?
U 1 1 5F45967C
P 4000 1900
F 0 "#PWR?" H 4000 1650 30  0001 C CNN
F 1 "GNDH" H 4000 1742 30  0000 C CNN
F 2 "" H 4000 1900 50  0001 C CNN
F 3 "" H 4000 1900 50  0001 C CNN
	1    4000 1900
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5F4598B4
P 4000 6700
AR Path="/5DCD812E/5F4598B4" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5F4598B4" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5F4598B4" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5F4598B4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4005 6551 20  0001 C CNN
F 1 "GND" H 4005 6542 30  0000 C CNN
F 2 "" H 4000 6700 70  0000 C CNN
F 3 "" H 4000 6700 70  0000 C CNN
	1    4000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6700 3800 6700
$Comp
L servo:AZ1117-1.2 U?
U 1 1 5DDBB552
P 4950 8750
F 0 "U?" H 4950 8992 50  0000 C CNN
F 1 "AZ1117-1.2" H 4950 8901 50  0000 C CNN
F 2 "" H 4950 9000 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4950 8750 50  0001 C CNN
	1    4950 8750
	1    0    0    -1  
$EndComp
$Comp
L servo:AZ1117-3.3 U?
U 1 1 5DDBB65B
P 4950 7100
F 0 "U?" H 4950 7342 50  0000 C CNN
F 1 "AZ1117-3.3" H 4950 7251 50  0000 C CNN
F 2 "" H 4950 7350 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4950 7100 50  0001 C CNN
	1    4950 7100
	1    0    0    -1  
$EndComp
$Comp
L servo:AZ1117-5.0 U?
U 1 1 5DDBB731
P 4900 5550
F 0 "U?" H 4900 5792 50  0000 C CNN
F 1 "AZ1117-5.0" H 4900 5701 50  0000 C CNN
F 2 "" H 4900 5800 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4900 5550 50  0001 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 8750 4450 8750
Wire Wire Line
	4450 8750 4450 7100
Wire Wire Line
	4450 5550 4600 5550
Wire Wire Line
	4650 7100 4450 7100
Connection ~ 4450 7100
Wire Wire Line
	4450 7100 4450 6500
Wire Wire Line
	4000 6500 4450 6500
Connection ~ 4000 6500
Connection ~ 4450 6500
$Comp
L servo:AZ1117-3.3 U?
U 1 1 5DDBBD62
P 4950 3050
F 0 "U?" H 4950 3292 50  0000 C CNN
F 1 "AZ1117-3.3" H 4950 3201 50  0000 C CNN
F 2 "" H 4950 3300 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4950 3050 50  0001 C CNN
	1    4950 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:AZ1117-5.0 U?
U 1 1 5DDBBD69
P 4950 1050
F 0 "U?" H 4950 1292 50  0000 C CNN
F 1 "AZ1117-5.0" H 4950 1201 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 4950 1050 50  0001 C CNN
	1    4950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4500 3050
Wire Wire Line
	4500 3050 4500 1700
Wire Wire Line
	4500 1050 4650 1050
Wire Wire Line
	4000 1700 4500 1700
Connection ~ 4000 1700
Connection ~ 4500 1700
Wire Wire Line
	4500 1700 4500 1050
$Comp
L servo:GND #PWR?
U 1 1 5DDBCF36
P 4900 5850
AR Path="/5DCD812E/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDBCF36" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4905 5701 20  0001 C CNN
F 1 "GND" H 4905 5692 30  0000 C CNN
F 2 "" H 4900 5850 70  0000 C CNN
F 3 "" H 4900 5850 70  0000 C CNN
	1    4900 5850
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDBCF4F
P 4950 7400
AR Path="/5DCD812E/5DDBCF4F" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDBCF4F" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5DDBCF4F" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDBCF4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4955 7251 20  0001 C CNN
F 1 "GND" H 4955 7242 30  0000 C CNN
F 2 "" H 4950 7400 70  0000 C CNN
F 3 "" H 4950 7400 70  0000 C CNN
	1    4950 7400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDBCF84
P 4950 9050
AR Path="/5DCD812E/5DDBCF84" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDBCF84" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5DDBCF84" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDBCF84" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4955 8901 20  0001 C CNN
F 1 "GND" H 4955 8892 30  0000 C CNN
F 2 "" H 4950 9050 70  0000 C CNN
F 3 "" H 4950 9050 70  0000 C CNN
	1    4950 9050
	1    0    0    -1  
$EndComp
$Comp
L servo:5VC #PWR?
U 1 1 5DDBEAD4
P 5950 5450
F 0 "#PWR?" H 5950 5250 20  0001 C CNN
F 1 "5VC" H 5955 5607 28  0000 C CNN
F 2 "" H 5950 5450 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3C #PWR?
U 1 1 5DDC15D8
P 5950 7000
F 0 "#PWR?" H 5950 6800 20  0001 C CNN
F 1 "3V3C" H 5955 7157 28  0000 C CNN
F 2 "" H 5950 7000 50  0001 C CNN
F 3 "" H 5950 7000 50  0001 C CNN
	1    5950 7000
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR?
U 1 1 5DDC3F59
P 5950 8650
F 0 "#PWR?" H 5950 8450 20  0001 C CNN
F 1 "1V2C" H 5955 8807 28  0000 C CNN
F 2 "" H 5950 8650 50  0001 C CNN
F 3 "" H 5950 8650 50  0001 C CNN
	1    5950 8650
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5DDC7EB3
P 6050 950
F 0 "#PWR?" H 6050 750 20  0001 C CNN
F 1 "5VH" H 6055 1107 28  0000 C CNN
F 2 "" H 6050 950 50  0001 C CNN
F 3 "" H 6050 950 50  0001 C CNN
	1    6050 950 
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3H #PWR?
U 1 1 5DDCAA52
P 6050 3000
F 0 "#PWR?" H 6050 2800 20  0001 C CNN
F 1 "3V3H" H 6055 3157 28  0000 C CNN
F 2 "" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 50  0001 C CNN
	1    6050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7100 5950 7000
Wire Wire Line
	5950 7450 5950 7100
Wire Wire Line
	5950 7100 5500 7100
Wire Wire Line
	5500 7100 5500 7200
Connection ~ 5500 7100
Connection ~ 5950 7100
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 5500 7300
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R?"  Part="1" 
F 0 "R?" V 5545 7250 60  0000 R CNN
F 1 "680" V 5447 7250 50  0000 R CNN
F 2 "" H 5500 7300 50  0001 C CNN
F 3 "" H 5500 7300 50  0001 C CNN
F 4 "680" V -6900 7700 60  0001 C CNN "ValueDisplayed"
	1    5500 7300
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDAAD7D
P 5950 7650
AR Path="/5EAA846A/5DDAAD7D" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDAAD7D" Ref="C?"  Part="1" 
F 0 "C?" V 6045 7540 60  0000 R CNN
F 1 "22uF" V 5947 7540 50  0000 R CNN
F 2 "" H 5950 7650 50  0001 C CNN
F 3 "" H 5950 7650 50  0001 C CNN
F 4 "22uF" V -7050 8050 60  0001 C CNN "ValueDisplayed"
	1    5950 7650
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDAAD85
P 5500 7800
AR Path="/5EAA846A/5DDAAD85" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDAAD85" Ref="D?"  Part="1" 
F 0 "D?" V 5455 8020 60  0000 L CNN
F 1 "red" V 5553 8020 50  0000 L CNN
F 2 "" H 5500 7800 50  0001 C CNN
F 3 "" H 5500 7800 50  0001 C CNN
F 4 "red" V -6900 7700 60  0001 C CNN "VALUE"
	1    5500 7800
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDAAD93
P 5500 8100
AR Path="/5DCD812E/5DDAAD93" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDAAD93" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDAAD93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5505 7951 20  0001 C CNN
F 1 "GND" H 5500 7942 30  0000 C CNN
F 2 "" H 5500 8100 70  0000 C CNN
F 3 "" H 5500 8100 70  0000 C CNN
	1    5500 8100
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDAAD9A
P 5950 8100
AR Path="/5DCD812E/5DDAAD9A" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDAAD9A" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDAAD9A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5955 7951 20  0001 C CNN
F 1 "GND" H 5950 7942 30  0000 C CNN
F 2 "" H 5950 8100 70  0000 C CNN
F 3 "" H 5950 8100 70  0000 C CNN
	1    5950 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7750 5950 8100
Wire Wire Line
	5250 7100 5500 7100
Wire Wire Line
	5950 8750 5950 8650
Wire Wire Line
	5950 9100 5950 8750
Wire Wire Line
	5950 8750 5500 8750
Wire Wire Line
	5500 8750 5500 8850
Connection ~ 5500 8750
Connection ~ 5950 8750
$Comp
L servo:Resistor R?
U 1 1 5DDB3226
P 5500 8950
AR Path="/5EAA846A/5DDB3226" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDB3226" Ref="R?"  Part="1" 
F 0 "R?" V 5545 8900 60  0000 R CNN
F 1 "680" V 5447 8900 50  0000 R CNN
F 2 "" H 5500 8950 50  0001 C CNN
F 3 "" H 5500 8950 50  0001 C CNN
F 4 "680" V -6900 9350 60  0001 C CNN "ValueDisplayed"
	1    5500 8950
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDB322E
P 5950 9300
AR Path="/5EAA846A/5DDB322E" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDB322E" Ref="C?"  Part="1" 
F 0 "C?" V 6045 9190 60  0000 R CNN
F 1 "22uF" V 5947 9190 50  0000 R CNN
F 2 "" H 5950 9300 50  0001 C CNN
F 3 "" H 5950 9300 50  0001 C CNN
F 4 "22uF" V -7050 9700 60  0001 C CNN "ValueDisplayed"
	1    5950 9300
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDB3236
P 5500 9450
AR Path="/5EAA846A/5DDB3236" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDB3236" Ref="D?"  Part="1" 
F 0 "D?" V 5455 9670 60  0000 L CNN
F 1 "red" V 5553 9670 50  0000 L CNN
F 2 "" H 5500 9450 50  0001 C CNN
F 3 "" H 5500 9450 50  0001 C CNN
F 4 "red" V -6900 9350 60  0001 C CNN "VALUE"
	1    5500 9450
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDB323D
P 5500 9750
AR Path="/5DCD812E/5DDB323D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDB323D" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDB323D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5505 9601 20  0001 C CNN
F 1 "GND" H 5500 9592 30  0000 C CNN
F 2 "" H 5500 9750 70  0000 C CNN
F 3 "" H 5500 9750 70  0000 C CNN
	1    5500 9750
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDB3243
P 5950 9750
AR Path="/5DCD812E/5DDB3243" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDB3243" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDB3243" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5955 9601 20  0001 C CNN
F 1 "GND" H 5950 9592 30  0000 C CNN
F 2 "" H 5950 9750 70  0000 C CNN
F 3 "" H 5950 9750 70  0000 C CNN
	1    5950 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 9400 5950 9750
Wire Wire Line
	5250 8750 5500 8750
Wire Wire Line
	4450 6500 4450 5550
Wire Wire Line
	5950 5550 5950 5450
Wire Wire Line
	5950 5900 5950 5550
Wire Wire Line
	5950 5550 5500 5550
Wire Wire Line
	5500 5550 5500 5650
Connection ~ 5500 5550
Connection ~ 5950 5550
$Comp
L servo:Resistor R?
U 1 1 5DDB545A
P 5500 5750
AR Path="/5EAA846A/5DDB545A" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDB545A" Ref="R?"  Part="1" 
F 0 "R?" V 5545 5700 60  0000 R CNN
F 1 "680" V 5447 5700 50  0000 R CNN
F 2 "" H 5500 5750 50  0001 C CNN
F 3 "" H 5500 5750 50  0001 C CNN
F 4 "680" V -6900 6150 60  0001 C CNN "ValueDisplayed"
	1    5500 5750
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDB5462
P 5950 6100
AR Path="/5EAA846A/5DDB5462" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDB5462" Ref="C?"  Part="1" 
F 0 "C?" V 6045 5990 60  0000 R CNN
F 1 "22uF" V 5947 5990 50  0000 R CNN
F 2 "" H 5950 6100 50  0001 C CNN
F 3 "" H 5950 6100 50  0001 C CNN
F 4 "22uF" V -7050 6500 60  0001 C CNN "ValueDisplayed"
	1    5950 6100
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDB546A
P 5500 6250
AR Path="/5EAA846A/5DDB546A" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDB546A" Ref="D?"  Part="1" 
F 0 "D?" V 5455 6470 60  0000 L CNN
F 1 "red" V 5553 6470 50  0000 L CNN
F 2 "" H 5500 6250 50  0001 C CNN
F 3 "" H 5500 6250 50  0001 C CNN
F 4 "red" V -6900 6150 60  0001 C CNN "VALUE"
	1    5500 6250
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDB5471
P 5500 6550
AR Path="/5DCD812E/5DDB5471" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDB5471" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDB5471" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5505 6401 20  0001 C CNN
F 1 "GND" H 5500 6392 30  0000 C CNN
F 2 "" H 5500 6550 70  0000 C CNN
F 3 "" H 5500 6550 70  0000 C CNN
	1    5500 6550
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5DDB5477
P 5950 6550
AR Path="/5DCD812E/5DDB5477" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDB5477" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDB5477" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5955 6401 20  0001 C CNN
F 1 "GND" H 5950 6392 30  0000 C CNN
F 2 "" H 5950 6550 70  0000 C CNN
F 3 "" H 5950 6550 70  0000 C CNN
	1    5950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6200 5950 6550
Wire Wire Line
	5200 5550 5500 5550
Wire Wire Line
	6050 3400 6050 3050
Wire Wire Line
	6050 3050 5600 3050
Wire Wire Line
	5600 3050 5600 3150
Connection ~ 5600 3050
$Comp
L servo:Resistor R?
U 1 1 5DDBAFC8
P 5600 3250
AR Path="/5EAA846A/5DDBAFC8" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDBAFC8" Ref="R?"  Part="1" 
F 0 "R?" V 5645 3200 60  0000 R CNN
F 1 "680" V 5547 3200 50  0000 R CNN
F 2 "" H 5600 3250 50  0001 C CNN
F 3 "" H 5600 3250 50  0001 C CNN
F 4 "680" V -6800 3650 60  0001 C CNN "ValueDisplayed"
	1    5600 3250
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDBAFD0
P 6050 3600
AR Path="/5EAA846A/5DDBAFD0" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDBAFD0" Ref="C?"  Part="1" 
F 0 "C?" V 6145 3490 60  0000 R CNN
F 1 "22uF" V 6047 3490 50  0000 R CNN
F 2 "" H 6050 3600 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
F 4 "22uF" V -6950 4000 60  0001 C CNN "ValueDisplayed"
	1    6050 3600
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDBAFD8
P 5600 3750
AR Path="/5EAA846A/5DDBAFD8" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDBAFD8" Ref="D?"  Part="1" 
F 0 "D?" V 5555 3970 60  0000 L CNN
F 1 "red" V 5653 3970 50  0000 L CNN
F 2 "" H 5600 3750 50  0001 C CNN
F 3 "" H 5600 3750 50  0001 C CNN
F 4 "red" V -6800 3650 60  0001 C CNN "VALUE"
	1    5600 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3700 6050 4050
Wire Wire Line
	5250 3050 5600 3050
Wire Wire Line
	6050 1400 6050 1050
Wire Wire Line
	6050 1050 5600 1050
Wire Wire Line
	5600 1050 5600 1150
Connection ~ 5600 1050
$Comp
L servo:Resistor R?
U 1 1 5DDBBA4C
P 5600 1250
AR Path="/5EAA846A/5DDBBA4C" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDBBA4C" Ref="R?"  Part="1" 
F 0 "R?" V 5645 1200 60  0000 R CNN
F 1 "680" V 5547 1200 50  0000 R CNN
F 2 "" H 5600 1250 50  0001 C CNN
F 3 "" H 5600 1250 50  0001 C CNN
F 4 "680" V -6800 1650 60  0001 C CNN "ValueDisplayed"
	1    5600 1250
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDBBA54
P 6050 1600
AR Path="/5EAA846A/5DDBBA54" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDBBA54" Ref="C?"  Part="1" 
F 0 "C?" V 6145 1490 60  0000 R CNN
F 1 "22uF" V 6047 1490 50  0000 R CNN
F 2 "" H 6050 1600 50  0001 C CNN
F 3 "" H 6050 1600 50  0001 C CNN
F 4 "22uF" V -6950 2000 60  0001 C CNN "ValueDisplayed"
	1    6050 1600
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDBBA5C
P 5600 1750
AR Path="/5EAA846A/5DDBBA5C" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDBBA5C" Ref="D?"  Part="1" 
F 0 "D?" V 5555 1970 60  0000 L CNN
F 1 "red" V 5653 1970 50  0000 L CNN
F 2 "" H 5600 1750 50  0001 C CNN
F 3 "" H 5600 1750 50  0001 C CNN
F 4 "red" V -6800 1650 60  0001 C CNN "VALUE"
	1    5600 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1700 6050 2050
Wire Wire Line
	5250 1050 5600 1050
Wire Wire Line
	6050 950  6050 1050
Connection ~ 6050 1050
Wire Wire Line
	6050 3000 6050 3050
Connection ~ 6050 3050
$Comp
L servo:GNDH #PWR?
U 1 1 5DE46A08
P 5350 4150
F 0 "#PWR?" H 5350 3900 30  0001 C CNN
F 1 "GNDH" H 5350 3992 30  0000 C CNN
F 2 "" H 5350 4150 50  0001 C CNN
F 3 "" H 5350 4150 50  0001 C CNN
	1    5350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3350 4950 4050
Wire Wire Line
	4950 4050 5350 4050
Connection ~ 5600 4050
Wire Wire Line
	5600 4050 6050 4050
Wire Wire Line
	5350 4150 5350 4050
Connection ~ 5350 4050
Wire Wire Line
	5350 4050 5600 4050
Wire Wire Line
	6050 2050 5600 2050
Wire Wire Line
	4950 2050 4950 1350
Connection ~ 5600 2050
Wire Wire Line
	5600 2050 4950 2050
Wire Wire Line
	5600 2150 5600 2050
$Comp
L servo:GNDH #PWR?
U 1 1 5DE4A811
P 5600 2150
F 0 "#PWR?" H 5600 1900 30  0001 C CNN
F 1 "GNDH" H 5600 1992 30  0000 C CNN
F 2 "" H 5600 2150 50  0001 C CNN
F 3 "" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 7300 6900 7300
Wire Wire Line
	7100 7100 7100 7300
Wire Wire Line
	7100 7900 6900 7900
Wire Wire Line
	7100 7700 7100 7900
Wire Wire Line
	7100 8300 6900 8300
Wire Wire Line
	7100 8400 7100 8300
$Comp
L servo:CMP-0078143-2 TP?
U 1 1 5E55E8FA
P 6800 7300
F 0 "TP?" V 6660 7380 60  0000 R TNN
F 1 "~" H 6800 7300 50  0001 C CNN
F 2 "" H 6800 7300 50  0001 C CNN
F 3 "" H 6800 7300 50  0001 C CNN
	1    6800 7300
	0    -1   -1   0   
$EndComp
$Comp
L servo:CMP-0078143-2 TP?
U 1 1 5E55E901
P 6800 7900
F 0 "TP?" V 6660 7980 60  0000 R TNN
F 1 "~" H 6800 7900 50  0001 C CNN
F 2 "" H 6800 7900 50  0001 C CNN
F 3 "" H 6800 7900 50  0001 C CNN
	1    6800 7900
	0    -1   -1   0   
$EndComp
$Comp
L servo:CMP-0078143-2 TP?
U 1 1 5E55E908
P 6800 8300
F 0 "TP?" V 6660 8380 60  0000 R TNN
F 1 "~" H 6800 8300 50  0001 C CNN
F 2 "" H 6800 8300 50  0001 C CNN
F 3 "" H 6800 8300 50  0001 C CNN
	1    6800 8300
	0    -1   -1   0   
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E55E90F
P 7100 7100
F 0 "#PWR?" H 7105 7310 20  0001 C CNN
F 1 "VDD_3V3" H 7105 7258 30  0000 C CNN
F 2 "" H 7100 7100 70  0000 C CNN
F 3 "" H 7100 7100 70  0000 C CNN
	1    7100 7100
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_1V2 #PWR?
U 1 1 5E55E915
P 7100 7700
F 0 "#PWR?" H 7105 7907 20  0001 C CNN
F 1 "VDD_1V2" H 7105 7857 28  0000 C CNN
F 2 "" H 7100 7700 50  0001 C CNN
F 3 "" H 7100 7700 50  0001 C CNN
	1    7100 7700
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E55E91B
P 7100 8400
AR Path="/5DCD812E/5E55E91B" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E55E91B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7105 8251 20  0001 C CNN
F 1 "GND" H 7105 8199 30  0000 C CNN
F 2 "" H 7100 8400 70  0000 C CNN
F 3 "" H 7100 8400 70  0000 C CNN
	1    7100 8400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
