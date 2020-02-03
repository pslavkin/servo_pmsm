EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 15 20
Title "LEM currente measurement"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3400 4150 0    50   Input ~ 0
LEM_A_U
Text GLabel 3200 6100 0    50   Input ~ 0
LEM_A_V
Text Notes 4800 1900 0    39   ~ 8
with 6 screw connector you could choose\n3 range of current measurement  1x, 2x or 3x.\nIN 1 BRIDGE 1-2-3  and 4-5-6 OUT 4  ------- X\nIN 1 BRIDGE 1-2     and 3-5-6 OUT 4  ------- 2X\nIN 1 BRIDGE 2-6     and 3-5    OUT 4  ------- 3X\n
Wire Wire Line
	4450 3750 4200 3750
Wire Wire Line
	4950 4150 4950 4100
$Comp
L servo:GND #PWR01510
U 1 1 5E1B6C88
P 3950 3700
F 0 "#PWR01510" H 3950 3450 30  0001 C CNN
F 1 "GND" H 3950 3550 30  0000 C CNN
F 2 "" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 3650 3950 3700
$Comp
L servo:5VC #PWR01509
U 1 1 5E1B6C90
P 3950 3300
F 0 "#PWR01509" H 3950 3100 20  0001 C CNN
F 1 "5VC" H 3955 3457 28  0000 C CNN
F 2 "" H 3950 3300 50  0001 C CNN
F 3 "" H 3950 3300 50  0001 C CNN
	1    3950 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 3350 3950 3300
$Comp
L servo:Capacitor C1504
U 1 1 5E1B6C98
P 3950 3450
F 0 "C1504" V 3978 3560 20  0000 L CNN
F 1 "100nF" V 4021 3560 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3950 3350 60  0001 C CNN
F 3 "" H 3950 3450 60  0000 C CNN
	1    3950 3450
	0    -1   1    0   
$EndComp
Wire Wire Line
	4450 3550 4350 3550
Wire Wire Line
	4350 3550 4350 3350
Wire Wire Line
	4350 3350 3950 3350
Connection ~ 3950 3350
Text GLabel 6000 10550 0    50   Input ~ 0
LEM_A_W
Text GLabel 3300 8700 0    50   Input ~ 0
LEM_A_ALL
Text GLabel 9300 4150 2    50   Input ~ 0
LEM_B_U
Text GLabel 9300 6100 2    50   Input ~ 0
LEM_B_V
Text GLabel 6400 10550 2    50   Input ~ 0
LEM_B_W
Text GLabel 9300 8700 2    50   Input ~ 0
LEM_B_ALL
Text Notes 4050 1400 0    197  ~ 39
8 LEM's current measurement \nU+V+W+ALL x 2
Text Notes 6900 2150 0    20   ~ 0
The intention of these lems is to have the capacity on the control board\n to measure all the current, without the need of the sigma delta chips\n on power board side. Why?? becouse I've study the two options\n carrefullty and I've conclude that there are very similar, and more or\n less buck per byck (a little expensive is SD) but the new generation\n LEM's I'm includin here has <0.5uSeg response time, and the SD has\n all the SD filter delay, so LEM is faster. The other advantage is that for\n same LEM I've choosen you could rearange the connection to multiply\n the preccision 1x,2x or 3x without touching nothing, and is pretty\n linear.  In the case of SD you have to change the precission shunt. or\n puts more than one, that is costly and take some board space.\nThe disadvantage of LEM is that the output is single ended, so it could\n not travel across boards, for that reason I've put them on control\n board, but is completely isolated becouse of these phisics effect. and\n also becouse of that single ended I just use one ADC channel per\n current. I't not the only option, becous if you insist and wanna use SD,\n I'eft all the SD channels available as an inputs on SD schematic page.\n\nthese LEM's version doesn't need a buffer, \nit's one already included inside LEM\n\nLXS6 is LTS and CAS pin to pin compatible, but LXS is a little better.\n I don't usa an opamp becous with the external conection I have x,2x\n and 3x amplifier option without any component\n\nI've decided to make the loop over the LEM on board and if you\n wanna change it you have to use the soldering iron..becouse the\n connetor is 2 terminal, not 6\n
$Comp
L servo:GND #PWR01504
U 1 1 5E3E8DE6
P 4200 4550
F 0 "#PWR01504" H 4200 4300 30  0001 C CNN
F 1 "GND" H 4200 4392 30  0000 C CNN
F 2 "" H 4200 4550 50  0001 C CNN
F 3 "" H 4200 4550 50  0001 C CNN
	1    4200 4550
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1506
U 1 1 5E3E8DEC
P 4200 4350
F 0 "R1506" V 4178 4400 20  0000 L CNN
F 1 "3.3k" V 4221 4400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3700 4250 60  0001 C CNN
F 3 "" H 3800 4350 60  0001 C CNN
	1    4200 4350
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1505
U 1 1 5E3E8DF3
P 4200 3950
F 0 "R1505" V 4178 4000 20  0000 L CNN
F 1 "5k" V 4221 4000 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3700 3850 60  0001 C CNN
F 3 "" H 3800 3950 60  0001 C CNN
	1    4200 3950
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1509
U 1 1 5E3E8E03
P 3600 4350
F 0 "C1509" V 3628 4460 20  0000 L CNN
F 1 "100pF" V 3671 4460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3600 4250 60  0001 C CNN
F 3 "" H 3600 4350 60  0000 C CNN
	1    3600 4350
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01515
U 1 1 5E3E8E0A
P 3600 4550
F 0 "#PWR01515" H 3600 4300 30  0001 C CNN
F 1 "GND" H 3600 4392 30  0000 C CNN
F 2 "" H 3600 4550 50  0001 C CNN
F 3 "" H 3600 4550 50  0001 C CNN
	1    3600 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 4150 3600 4250
Connection ~ 3600 4150
Wire Wire Line
	3600 4150 3400 4150
Connection ~ 4200 4150
$Comp
L servo:LXS6-NPS U1503
U 1 1 5E30D1C7
P 4850 3650
F 0 "U1503" H 4350 4150 39  0000 L CNN
F 1 "LXS6-NPS" H 4300 4050 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 4850 2850 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4850 3000 50  0001 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
Connection ~ 3950 3650
Wire Wire Line
	4450 3650 3950 3650
Wire Wire Line
	4950 3100 4950 3200
NoConn ~ 6400 10550
Text Notes 5700 10800 0    20   ~ 0
I've decided to eliminate 1 LEM, you could use 3 in line measurement,\n or 2 in line plus one for all. De reason is size of board and complexity
Wire Wire Line
	4850 3000 5450 3000
Wire Wire Line
	5450 3000 5450 3400
Wire Wire Line
	4750 2900 4750 3200
Wire Wire Line
	4850 3000 4850 3200
Wire Wire Line
	4950 4150 5350 4150
Wire Wire Line
	5350 4150 5350 3900
Wire Wire Line
	4850 4100 4850 4250
Wire Wire Line
	4850 4250 5450 4250
Wire Wire Line
	5450 4250 5450 3900
Wire Wire Line
	4750 4100 4750 4350
Wire Wire Line
	4250 5700 4000 5700
Wire Wire Line
	4750 6100 4750 6050
$Comp
L servo:GND #PWR0101
U 1 1 5E274FC3
P 3750 5650
F 0 "#PWR0101" H 3750 5400 30  0001 C CNN
F 1 "GND" H 3750 5500 30  0000 C CNN
F 2 "" H 3750 5650 50  0001 C CNN
F 3 "" H 3750 5650 50  0001 C CNN
	1    3750 5650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 5600 3750 5650
$Comp
L servo:5VC #PWR0102
U 1 1 5E274FCA
P 3750 5250
F 0 "#PWR0102" H 3750 5050 20  0001 C CNN
F 1 "5VC" H 3755 5407 28  0000 C CNN
F 2 "" H 3750 5250 50  0001 C CNN
F 3 "" H 3750 5250 50  0001 C CNN
	1    3750 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 5300 3750 5250
$Comp
L servo:Capacitor C1505
U 1 1 5E274FD1
P 3750 5400
F 0 "C1505" V 3778 5510 20  0000 L CNN
F 1 "100nF" V 3821 5510 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3750 5300 60  0001 C CNN
F 3 "" H 3750 5400 60  0000 C CNN
	1    3750 5400
	0    -1   1    0   
$EndComp
Wire Wire Line
	4250 5500 4150 5500
Wire Wire Line
	4150 5500 4150 5300
Wire Wire Line
	4150 5300 3750 5300
Connection ~ 3750 5300
$Comp
L servo:GND #PWR0103
U 1 1 5E274FE3
P 4000 6500
F 0 "#PWR0103" H 4000 6250 30  0001 C CNN
F 1 "GND" H 4000 6342 30  0000 C CNN
F 2 "" H 4000 6500 50  0001 C CNN
F 3 "" H 4000 6500 50  0001 C CNN
	1    4000 6500
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1502
U 1 1 5E274FE9
P 4000 6300
F 0 "R1502" V 3978 6350 20  0000 L CNN
F 1 "3.3k" V 4021 6350 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3500 6200 60  0001 C CNN
F 3 "" H 3600 6300 60  0001 C CNN
	1    4000 6300
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1501
U 1 1 5E274FF0
P 4000 5900
F 0 "R1501" V 3978 5950 20  0000 L CNN
F 1 "5k" V 4021 5950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3500 5800 60  0001 C CNN
F 3 "" H 3600 5900 60  0001 C CNN
	1    4000 5900
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1501
U 1 1 5E275000
P 3400 6300
F 0 "C1501" V 3428 6410 20  0000 L CNN
F 1 "100pF" V 3471 6410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3400 6200 60  0001 C CNN
F 3 "" H 3400 6300 60  0000 C CNN
	1    3400 6300
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR0105
U 1 1 5E275007
P 3400 6500
F 0 "#PWR0105" H 3400 6250 30  0001 C CNN
F 1 "GND" H 3400 6342 30  0000 C CNN
F 2 "" H 3400 6500 50  0001 C CNN
F 3 "" H 3400 6500 50  0001 C CNN
	1    3400 6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 6100 3400 6200
Connection ~ 3400 6100
Wire Wire Line
	3400 6100 3200 6100
Connection ~ 4000 6100
$Comp
L servo:LXS6-NPS U1501
U 1 1 5E275013
P 4650 5600
F 0 "U1501" H 4150 6100 39  0000 L CNN
F 1 "LXS6-NPS" H 4100 6000 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 4650 4800 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4650 4950 50  0001 C CNN
	1    4650 5600
	1    0    0    -1  
$EndComp
Connection ~ 3750 5600
Wire Wire Line
	4250 5600 3750 5600
Wire Wire Line
	4750 5050 4750 5150
Wire Wire Line
	4550 4850 4550 5150
Wire Wire Line
	4650 4950 4650 5150
Wire Wire Line
	4650 6050 4650 6200
Wire Wire Line
	4550 6050 4550 6300
Wire Wire Line
	4350 8300 4100 8300
Wire Wire Line
	4850 8700 4850 8650
$Comp
L servo:GND #PWR0106
U 1 1 5E27620D
P 3850 8250
F 0 "#PWR0106" H 3850 8000 30  0001 C CNN
F 1 "GND" H 3850 8100 30  0000 C CNN
F 2 "" H 3850 8250 50  0001 C CNN
F 3 "" H 3850 8250 50  0001 C CNN
	1    3850 8250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 8200 3850 8250
$Comp
L servo:5VC #PWR0107
U 1 1 5E276214
P 3850 7850
F 0 "#PWR0107" H 3850 7650 20  0001 C CNN
F 1 "5VC" H 3855 8007 28  0000 C CNN
F 2 "" H 3850 7850 50  0001 C CNN
F 3 "" H 3850 7850 50  0001 C CNN
	1    3850 7850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 7900 3850 7850
$Comp
L servo:Capacitor C1508
U 1 1 5E27621B
P 3850 8000
F 0 "C1508" V 3878 8110 20  0000 L CNN
F 1 "100nF" V 3921 8110 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3850 7900 60  0001 C CNN
F 3 "" H 3850 8000 60  0000 C CNN
	1    3850 8000
	0    -1   1    0   
$EndComp
Wire Wire Line
	4350 8100 4250 8100
Wire Wire Line
	4250 8100 4250 7900
Wire Wire Line
	4250 7900 3850 7900
Connection ~ 3850 7900
$Comp
L servo:GND #PWR0108
U 1 1 5E27622D
P 4100 9100
F 0 "#PWR0108" H 4100 8850 30  0001 C CNN
F 1 "GND" H 4100 8942 30  0000 C CNN
F 2 "" H 4100 9100 50  0001 C CNN
F 3 "" H 4100 9100 50  0001 C CNN
	1    4100 9100
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1504
U 1 1 5E276233
P 4100 8900
F 0 "R1504" V 4078 8950 20  0000 L CNN
F 1 "3.3k" V 4121 8950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3600 8800 60  0001 C CNN
F 3 "" H 3700 8900 60  0001 C CNN
	1    4100 8900
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1503
U 1 1 5E27623A
P 4100 8500
F 0 "R1503" V 4078 8550 20  0000 L CNN
F 1 "5k" V 4121 8550 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 3600 8400 60  0001 C CNN
F 3 "" H 3700 8500 60  0001 C CNN
	1    4100 8500
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C1502
U 1 1 5E27624A
P 3500 8900
F 0 "C1502" V 3528 9010 20  0000 L CNN
F 1 "100pF" V 3571 9010 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 3500 8800 60  0001 C CNN
F 3 "" H 3500 8900 60  0000 C CNN
	1    3500 8900
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR0110
U 1 1 5E276251
P 3500 9100
F 0 "#PWR0110" H 3500 8850 30  0001 C CNN
F 1 "GND" H 3500 8942 30  0000 C CNN
F 2 "" H 3500 9100 50  0001 C CNN
F 3 "" H 3500 9100 50  0001 C CNN
	1    3500 9100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 8700 3500 8800
Connection ~ 3500 8700
Wire Wire Line
	3500 8700 3300 8700
Connection ~ 4100 8700
Connection ~ 3850 8200
Wire Wire Line
	4350 8200 3850 8200
Wire Wire Line
	4850 7650 4850 7750
Wire Wire Line
	4650 7450 4650 7750
Wire Wire Line
	4750 7550 4750 7750
Wire Wire Line
	4750 8650 4750 8800
Wire Wire Line
	4650 8650 4650 8900
Wire Wire Line
	8250 3750 8500 3750
Wire Wire Line
	7750 4150 7750 4100
$Comp
L servo:GND #PWR0111
U 1 1 5E278661
P 8750 3700
F 0 "#PWR0111" H 8750 3450 30  0001 C CNN
F 1 "GND" H 8750 3550 30  0000 C CNN
F 2 "" H 8750 3700 50  0001 C CNN
F 3 "" H 8750 3700 50  0001 C CNN
	1    8750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3650 8750 3700
$Comp
L servo:5VC #PWR0112
U 1 1 5E278668
P 8750 3300
F 0 "#PWR0112" H 8750 3100 20  0001 C CNN
F 1 "5VC" H 8755 3457 28  0000 C CNN
F 2 "" H 8750 3300 50  0001 C CNN
F 3 "" H 8750 3300 50  0001 C CNN
	1    8750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3350 8750 3300
$Comp
L servo:Capacitor C1510
U 1 1 5E27866F
P 8750 3450
F 0 "C1510" V 8778 3560 20  0000 L CNN
F 1 "100nF" V 8821 3560 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8750 3350 60  0001 C CNN
F 3 "" H 8750 3450 60  0000 C CNN
	1    8750 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3550 8350 3550
Wire Wire Line
	8350 3550 8350 3350
Wire Wire Line
	8350 3350 8750 3350
Connection ~ 8750 3350
$Comp
L servo:Capacitor C1513
U 1 1 5E27867A
P 8800 4350
F 0 "C1513" V 8828 4460 20  0000 L CNN
F 1 "100pF" V 8871 4460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8800 4250 60  0001 C CNN
F 3 "" H 8800 4350 60  0000 C CNN
	1    8800 4350
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0113
U 1 1 5E278681
P 8500 4550
F 0 "#PWR0113" H 8500 4300 30  0001 C CNN
F 1 "GND" H 8500 4392 30  0000 C CNN
F 2 "" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0001 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1508
U 1 1 5E278687
P 8500 4350
F 0 "R1508" V 8478 4400 20  0000 L CNN
F 1 "3.3k" V 8521 4400 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 4250 60  0001 C CNN
F 3 "" H 8100 4350 60  0001 C CNN
	1    8500 4350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1507
U 1 1 5E27868E
P 8500 3950
F 0 "R1507" V 8478 4000 20  0000 L CNN
F 1 "5k" V 8521 4000 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 3850 60  0001 C CNN
F 3 "" H 8100 3950 60  0001 C CNN
	1    8500 3950
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0114
U 1 1 5E278695
P 8800 4550
F 0 "#PWR0114" H 8800 4300 30  0001 C CNN
F 1 "GND" H 8800 4392 30  0000 C CNN
F 2 "" H 8800 4550 50  0001 C CNN
F 3 "" H 8800 4550 50  0001 C CNN
	1    8800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4250 8800 4150
Wire Wire Line
	8800 4150 8500 4150
Connection ~ 8800 4150
Connection ~ 8500 4150
$Comp
L servo:LXS6-NPS U1504
U 1 1 5E2786B1
P 7850 3650
F 0 "U1504" H 7350 4150 39  0000 L CNN
F 1 "LXS6-NPS" H 7300 4050 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 7850 2850 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 7850 3000 50  0001 C CNN
	1    7850 3650
	-1   0    0    -1  
$EndComp
Connection ~ 8750 3650
Wire Wire Line
	8250 3650 8750 3650
Wire Wire Line
	7750 3100 7750 3200
Wire Wire Line
	7950 2900 7950 3200
Wire Wire Line
	7850 3000 7850 3200
Wire Wire Line
	7850 4100 7850 4250
Wire Wire Line
	7950 4100 7950 4350
Wire Wire Line
	8250 5700 8500 5700
Wire Wire Line
	7750 6100 7750 6050
$Comp
L servo:GND #PWR0116
U 1 1 5E283388
P 8750 5650
F 0 "#PWR0116" H 8750 5400 30  0001 C CNN
F 1 "GND" H 8750 5500 30  0000 C CNN
F 2 "" H 8750 5650 50  0001 C CNN
F 3 "" H 8750 5650 50  0001 C CNN
	1    8750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5600 8750 5650
$Comp
L servo:5VC #PWR0117
U 1 1 5E28338F
P 8750 5250
F 0 "#PWR0117" H 8750 5050 20  0001 C CNN
F 1 "5VC" H 8755 5407 28  0000 C CNN
F 2 "" H 8750 5250 50  0001 C CNN
F 3 "" H 8750 5250 50  0001 C CNN
	1    8750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5300 8750 5250
$Comp
L servo:Capacitor C1511
U 1 1 5E283396
P 8750 5400
F 0 "C1511" V 8778 5510 20  0000 L CNN
F 1 "100nF" V 8821 5510 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8750 5300 60  0001 C CNN
F 3 "" H 8750 5400 60  0000 C CNN
	1    8750 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5500 8350 5500
Wire Wire Line
	8350 5500 8350 5300
Wire Wire Line
	8350 5300 8750 5300
Connection ~ 8750 5300
$Comp
L servo:Capacitor C1514
U 1 1 5E2833A1
P 8800 6300
F 0 "C1514" V 8828 6410 20  0000 L CNN
F 1 "100pF" V 8871 6410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8800 6200 60  0001 C CNN
F 3 "" H 8800 6300 60  0000 C CNN
	1    8800 6300
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0118
U 1 1 5E2833A8
P 8500 6500
F 0 "#PWR0118" H 8500 6250 30  0001 C CNN
F 1 "GND" H 8500 6342 30  0000 C CNN
F 2 "" H 8500 6500 50  0001 C CNN
F 3 "" H 8500 6500 50  0001 C CNN
	1    8500 6500
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1510
U 1 1 5E2833AE
P 8500 6300
F 0 "R1510" V 8478 6350 20  0000 L CNN
F 1 "3.3k" V 8521 6350 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 6200 60  0001 C CNN
F 3 "" H 8100 6300 60  0001 C CNN
	1    8500 6300
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1509
U 1 1 5E2833B5
P 8500 5900
F 0 "R1509" V 8478 5950 20  0000 L CNN
F 1 "5k" V 8521 5950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 5800 60  0001 C CNN
F 3 "" H 8100 5900 60  0001 C CNN
	1    8500 5900
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0119
U 1 1 5E2833BC
P 8800 6500
F 0 "#PWR0119" H 8800 6250 30  0001 C CNN
F 1 "GND" H 8800 6342 30  0000 C CNN
F 2 "" H 8800 6500 50  0001 C CNN
F 3 "" H 8800 6500 50  0001 C CNN
	1    8800 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6200 8800 6100
Wire Wire Line
	8800 6100 8500 6100
Connection ~ 8800 6100
Connection ~ 8500 6100
$Comp
L servo:LXS6-NPS U1505
U 1 1 5E2833D8
P 7850 5600
F 0 "U1505" H 7350 6100 39  0000 L CNN
F 1 "LXS6-NPS" H 7300 6000 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 7850 4800 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 7850 4950 50  0001 C CNN
	1    7850 5600
	-1   0    0    -1  
$EndComp
Connection ~ 8750 5600
Wire Wire Line
	8250 5600 8750 5600
Wire Wire Line
	7750 5050 7750 5150
Wire Wire Line
	7950 4850 7950 5150
Wire Wire Line
	7850 4950 7850 5150
Wire Wire Line
	7850 6050 7850 6200
Wire Wire Line
	7950 6050 7950 6300
Wire Wire Line
	8250 8300 8500 8300
Wire Wire Line
	7750 8700 7750 8650
$Comp
L servo:GND #PWR0121
U 1 1 5E2889F6
P 8750 8250
F 0 "#PWR0121" H 8750 8000 30  0001 C CNN
F 1 "GND" H 8750 8100 30  0000 C CNN
F 2 "" H 8750 8250 50  0001 C CNN
F 3 "" H 8750 8250 50  0001 C CNN
	1    8750 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 8200 8750 8250
$Comp
L servo:5VC #PWR0122
U 1 1 5E2889FD
P 8750 7850
F 0 "#PWR0122" H 8750 7650 20  0001 C CNN
F 1 "5VC" H 8755 8007 28  0000 C CNN
F 2 "" H 8750 7850 50  0001 C CNN
F 3 "" H 8750 7850 50  0001 C CNN
	1    8750 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 7900 8750 7850
$Comp
L servo:Capacitor C1512
U 1 1 5E288A04
P 8750 8000
F 0 "C1512" V 8778 8110 20  0000 L CNN
F 1 "100nF" V 8821 8110 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8750 7900 60  0001 C CNN
F 3 "" H 8750 8000 60  0000 C CNN
	1    8750 8000
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 8100 8350 8100
Wire Wire Line
	8350 8100 8350 7900
Wire Wire Line
	8350 7900 8750 7900
Connection ~ 8750 7900
$Comp
L servo:Capacitor C1515
U 1 1 5E288A0F
P 8800 8900
F 0 "C1515" V 8828 9010 20  0000 L CNN
F 1 "100pF" V 8871 9010 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8800 8800 60  0001 C CNN
F 3 "" H 8800 8900 60  0000 C CNN
	1    8800 8900
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0123
U 1 1 5E288A16
P 8500 9100
F 0 "#PWR0123" H 8500 8850 30  0001 C CNN
F 1 "GND" H 8500 8942 30  0000 C CNN
F 2 "" H 8500 9100 50  0001 C CNN
F 3 "" H 8500 9100 50  0001 C CNN
	1    8500 9100
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1512
U 1 1 5E288A1C
P 8500 8900
F 0 "R1512" V 8478 8950 20  0000 L CNN
F 1 "3.3k" V 8521 8950 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 8800 60  0001 C CNN
F 3 "" H 8100 8900 60  0001 C CNN
	1    8500 8900
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1511
U 1 1 5E288A23
P 8500 8500
F 0 "R1511" V 8478 8550 20  0000 L CNN
F 1 "5k" V 8521 8550 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 8000 8400 60  0001 C CNN
F 3 "" H 8100 8500 60  0001 C CNN
	1    8500 8500
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR0124
U 1 1 5E288A2A
P 8800 9100
F 0 "#PWR0124" H 8800 8850 30  0001 C CNN
F 1 "GND" H 8800 8942 30  0000 C CNN
F 2 "" H 8800 9100 50  0001 C CNN
F 3 "" H 8800 9100 50  0001 C CNN
	1    8800 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 8800 8800 8700
Wire Wire Line
	8800 8700 8500 8700
Connection ~ 8800 8700
Connection ~ 8500 8700
$Comp
L servo:LXS6-NPS U1506
U 1 1 5E288A46
P 7850 8200
F 0 "U1506" H 7350 8700 39  0000 L CNN
F 1 "LXS6-NPS" H 7300 8600 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 7850 7400 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 7850 7550 50  0001 C CNN
	1    7850 8200
	-1   0    0    -1  
$EndComp
Connection ~ 8750 8200
Wire Wire Line
	8250 8200 8750 8200
Wire Wire Line
	7750 7650 7750 7750
Wire Wire Line
	7850 8650 7850 8800
Wire Wire Line
	7950 8650 7950 8900
Text Notes 6900 2350 0    20   ~ 0
chanlog1: I've decided to return to a 2x3 terminal block output 'cause\n it match the size of the LEM
$Comp
L servo:tblock2x3 J1503
U 1 1 5E261EDA
P 5450 3700
F 0 "J1503" V 5462 3880 39  0000 L CNN
F 1 "tblock2x3" V 5537 3880 39  0000 L CNN
F 2 "servo:tblock02x03" H 5400 3800 50  0001 C CNN
F 3 "../doc/dfatasheets/tblock2rows.pdf" H 5500 3900 50  0001 C CNN
	1    5450 3700
	0    -1   -1   0   
$EndComp
$Comp
L servo:tblock2x3 J1504
U 1 1 5E270F16
P 7250 3700
F 0 "J1504" V 7262 3880 39  0000 L CNN
F 1 "tblock2x3" V 7337 3880 39  0000 L CNN
F 2 "servo:tblock02x03" H 7200 3800 50  0001 C CNN
F 3 "../doc/dfatasheets/tblock2rows.pdf" H 7300 3900 50  0001 C CNN
	1    7250 3700
	0    1    -1   0   
$EndComp
$Comp
L servo:tblock2x3 J1501
U 1 1 5E2787AF
P 5250 5650
F 0 "J1501" V 5338 5462 39  0000 R CNN
F 1 "tblock2x3" V 5263 5462 39  0000 R CNN
F 2 "servo:tblock02x03" H 5200 5750 50  0001 C CNN
F 3 "../doc/dfatasheets/tblock2rows.pdf" H 5300 5850 50  0001 C CNN
	1    5250 5650
	0    -1   -1   0   
$EndComp
$Comp
L servo:tblock2x3 J1505
U 1 1 5E27FF32
P 7250 5650
F 0 "J1505" V 7262 5830 39  0000 L CNN
F 1 "tblock2x3" V 7337 5830 39  0000 L CNN
F 2 "servo:tblock02x03" H 7200 5750 50  0001 C CNN
F 3 "../doc/dfatasheets/tblock2rows.pdf" H 7300 5850 50  0001 C CNN
	1    7250 5650
	0    1    -1   0   
$EndComp
$Comp
L servo:tblock2x3 J1502
U 1 1 5E296823
P 5350 8250
F 0 "J1502" V 5362 8430 39  0000 L CNN
F 1 "tblock2x3" V 5437 8430 39  0000 L CNN
F 2 "servo:tblock02x03" H 5300 8350 50  0001 C CNN
F 3 "../doc/dfatasheets/tblock2rows.pdf" H 5400 8450 50  0001 C CNN
	1    5350 8250
	0    -1   -1   0   
$EndComp
$Comp
L servo:tblock2x3 J1506
U 1 1 5E29DFAC
P 7250 8250
F 0 "J1506" V 7262 8430 39  0000 L CNN
F 1 "tblock2x3" V 7337 8430 39  0000 L CNN
F 2 "servo:tblock02x03" H 7200 8350 50  0001 C CNN
F 3 "../doc/datasheets/tblock2rows.pdf" H 7300 8450 50  0001 C CNN
	1    7250 8250
	0    1    -1   0   
$EndComp
Text Label 5100 2900 0    20   ~ 0
LemAU_1
Text Label 5100 3000 0    20   ~ 0
LemAU_2
Text Label 5100 3100 0    20   ~ 0
LemAU_3
Text Label 5100 4150 0    20   ~ 0
LemAU_4
Text Label 5100 4250 0    20   ~ 0
LemAU_5
Text Label 5100 4350 0    20   ~ 0
LemAU_6
$Comp
L servo:LXS6-NPS U1502
U 1 1 5E27625D
P 4750 8200
F 0 "U1502" H 4250 8700 39  0000 L CNN
F 1 "LXS6-NPS" H 4200 8600 39  0000 L CNN
F 2 "servo:LEM_LXS-NP" H 4750 7400 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4750 7550 50  0001 C CNN
	1    4750 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 7550 7850 7750
Wire Wire Line
	7950 7450 7950 7750
Wire Wire Line
	4650 4950 5250 4950
Wire Wire Line
	5250 4950 5250 5350
Text Label 4900 4850 0    20   ~ 0
LemAV_1
Text Label 4900 4950 0    20   ~ 0
LemAV_2
Text Label 4900 5050 0    20   ~ 0
LemAV_3
Wire Wire Line
	4750 7550 5350 7550
Wire Wire Line
	5350 7550 5350 7950
Text Label 5000 7450 0    20   ~ 0
LemA_All_1
Text Label 5000 7550 0    20   ~ 0
LemA_All_2
Text Label 5000 7650 0    20   ~ 0
LemA_All_3
Wire Wire Line
	4750 6100 5150 6100
Wire Wire Line
	4650 6200 5250 6200
Wire Wire Line
	5250 6200 5250 5850
Text Label 4900 6100 0    20   ~ 0
LemAV_4
Text Label 4900 6200 0    20   ~ 0
LemAV_5
Text Label 4900 6300 0    20   ~ 0
LemAV_6
Wire Wire Line
	4850 8700 5250 8700
Wire Wire Line
	5250 8700 5250 8450
Wire Wire Line
	4750 8800 5350 8800
Wire Wire Line
	5350 8800 5350 8450
Text Label 5000 8700 0    20   ~ 0
LemA_All_4
Text Label 5000 8800 0    20   ~ 0
LemA_All_5
Text Label 5000 8900 0    20   ~ 0
LemA_All_6
Wire Wire Line
	7850 3000 7250 3000
Wire Wire Line
	7250 3000 7250 3400
Wire Wire Line
	7750 4150 7350 4150
Wire Wire Line
	7850 4250 7250 4250
Wire Wire Line
	7250 4250 7250 3900
Text Label 7600 2900 2    20   ~ 0
LemBU_1
Text Label 7600 3000 2    20   ~ 0
LemBU_2
Text Label 7600 3100 2    20   ~ 0
LemBU_3
Text Label 7600 4150 2    20   ~ 0
LemBU_4
Text Label 7600 4250 2    20   ~ 0
LemBU_5
Text Label 7600 4350 2    20   ~ 0
LemBU_6
Wire Wire Line
	7850 4950 7250 4950
Wire Wire Line
	7250 4950 7250 5350
Wire Wire Line
	7850 6200 7250 6200
Wire Wire Line
	7250 6200 7250 5850
Text Label 7600 4850 2    20   ~ 0
LemBV_1
Text Label 7600 4950 2    20   ~ 0
LemBV_2
Text Label 7600 5050 2    20   ~ 0
LemBV_3
Text Label 7600 6100 2    20   ~ 0
LemBV_4
Text Label 7600 6200 2    20   ~ 0
LemBV_5
Text Label 7600 6300 2    20   ~ 0
LemBV_6
Wire Wire Line
	7850 7550 7250 7550
Wire Wire Line
	7750 8700 7350 8700
Wire Wire Line
	7350 8700 7350 8450
Wire Wire Line
	7850 8800 7250 8800
Wire Wire Line
	7250 8800 7250 8450
Text Label 7600 7450 2    20   ~ 0
LemB_All_1
Text Label 7600 7550 2    20   ~ 0
LemB_All_2
Text Label 7600 7650 2    20   ~ 0
LemB_All_3
Text Label 7600 8700 2    20   ~ 0
LemB_All_4
Text Label 7600 8800 2    20   ~ 0
LemB_All_5
Text Label 7600 8900 2    20   ~ 0
LemB_All_6
Wire Wire Line
	7250 7550 7250 7950
Wire Wire Line
	7150 8450 7000 8450
Wire Wire Line
	7000 8450 7000 7450
Wire Wire Line
	7000 7450 7950 7450
Wire Wire Line
	7150 7650 7150 7950
Wire Wire Line
	7150 7650 7750 7650
Wire Wire Line
	7350 7850 7350 7950
Wire Wire Line
	7350 7850 6850 7850
Wire Wire Line
	6850 7850 6850 8900
Wire Wire Line
	6850 8900 7950 8900
Wire Wire Line
	5600 8900 5600 7850
Wire Wire Line
	5600 7850 5250 7850
Wire Wire Line
	4650 8900 5600 8900
Wire Wire Line
	5700 8550 5450 8550
Wire Wire Line
	5450 8550 5450 8450
Wire Wire Line
	4850 7650 5450 7650
Wire Wire Line
	5600 6300 5600 5150
Wire Wire Line
	5600 5150 5150 5150
Wire Wire Line
	5150 5150 5150 5350
Wire Wire Line
	4550 6300 5600 6300
Wire Wire Line
	4750 5050 5350 5050
Wire Wire Line
	5700 4850 5700 6000
Wire Wire Line
	5700 6000 5350 6000
Wire Wire Line
	5350 6000 5350 5850
Wire Wire Line
	4550 4850 5700 4850
Wire Wire Line
	5350 5050 5350 5350
Wire Wire Line
	5150 6100 5150 5850
Wire Wire Line
	5800 4050 5550 4050
Wire Wire Line
	5550 4050 5550 3900
Wire Wire Line
	4950 3100 5550 3100
Wire Wire Line
	5900 4350 5900 3200
Wire Wire Line
	5900 3200 5350 3200
Wire Wire Line
	5350 3200 5350 3400
Wire Wire Line
	4750 4350 5900 4350
Wire Wire Line
	5250 7850 5250 7950
Wire Wire Line
	5450 7650 5450 7950
Wire Wire Line
	5700 7450 5700 8550
Wire Wire Line
	4650 7450 5700 7450
Wire Wire Line
	5550 3100 5550 3400
Wire Wire Line
	5800 2900 5800 4050
Wire Wire Line
	4750 2900 5800 2900
Wire Wire Line
	7000 4850 7950 4850
Wire Wire Line
	6700 6300 6700 5200
Wire Wire Line
	6700 5200 7350 5200
Wire Wire Line
	7350 5200 7350 5350
Wire Wire Line
	6700 6300 7950 6300
Wire Wire Line
	7000 4850 7000 6000
Wire Wire Line
	7150 5050 7750 5050
Wire Wire Line
	7150 5050 7150 5350
Wire Wire Line
	7350 5850 7350 6100
Wire Wire Line
	7350 6100 7750 6100
Wire Wire Line
	7000 6000 7150 6000
Wire Wire Line
	7150 6000 7150 5850
Wire Wire Line
	6850 2900 6850 4050
Wire Wire Line
	6850 2900 7950 2900
Wire Wire Line
	6850 4050 7150 4050
Wire Wire Line
	7150 4050 7150 3900
Wire Wire Line
	6950 4350 6950 3200
Wire Wire Line
	6950 4350 7950 4350
Wire Wire Line
	7350 4150 7350 3900
Wire Wire Line
	7350 3200 7350 3400
Wire Wire Line
	6950 3200 7350 3200
Wire Wire Line
	7150 3100 7750 3100
Wire Wire Line
	7150 3100 7150 3400
Wire Wire Line
	3400 6100 4000 6100
Wire Wire Line
	3600 4150 4200 4150
Wire Wire Line
	8800 4150 9300 4150
Wire Wire Line
	8800 6100 9300 6100
Wire Wire Line
	8800 8700 9300 8700
Wire Wire Line
	3500 8700 4100 8700
$EndSCHEMATC
