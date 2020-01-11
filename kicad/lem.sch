EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 16 19
Title "LEM currente measurement"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6000 3550 2    50   Input ~ 0
LEM_A_U
Text GLabel 6000 5500 2    50   Input ~ 0
LEM_A_V
Text Notes 4850 2000 0    39   ~ 8
with 6 screw connector you could choose\n3 range of current measurement  1x, 2x or 3x.\nIN 1 BRIDGE 1-2-3  and 4-5-6 OUT 4  ------- X\nIN 1 BRIDGE 1-2     and 3-5-6 OUT 4  ------- 2X\nIN 1 BRIDGE 2-6     and 3-5    OUT 4  ------- 3X\n
Wire Wire Line
	4950 3150 5200 3150
Wire Wire Line
	4450 3550 4450 3500
$Comp
L servo:GND #PWR01613
U 1 1 5E1B6C88
P 5450 3100
F 0 "#PWR01613" H 5450 2850 30  0001 C CNN
F 1 "GND" H 5450 2950 30  0000 C CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3050 5450 3100
$Comp
L servo:5VC #PWR01608
U 1 1 5E1B6C90
P 5450 2700
F 0 "#PWR01608" H 5450 2500 20  0001 C CNN
F 1 "5VC" H 5455 2857 28  0000 C CNN
F 2 "" H 5450 2700 50  0001 C CNN
F 3 "" H 5450 2700 50  0001 C CNN
	1    5450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2750 5450 2700
$Comp
L servo:Capacitor C1604
U 1 1 5E1B6C98
P 5450 2850
F 0 "C1604" V 5478 2960 20  0000 L CNN
F 1 "100nF" V 5521 2960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5450 2750 60  0001 C CNN
F 3 "" H 5450 2850 60  0000 C CNN
	1    5450 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2950 5050 2950
Wire Wire Line
	5050 2950 5050 2750
Wire Wire Line
	5050 2750 5450 2750
Connection ~ 5450 2750
Text GLabel 5950 7300 2    50   Input ~ 0
LEM_A_W
Text GLabel 5950 9150 2    50   Input ~ 0
LEM_A_ALL
Text GLabel 7050 3550 0    50   Input ~ 0
LEM_B_U
Text GLabel 7050 5500 0    50   Input ~ 0
LEM_B_V
Text GLabel 7100 7300 0    50   Input ~ 0
LEM_B_W
Text GLabel 7100 9150 0    50   Input ~ 0
LEM_B_ALL
Text Notes 4100 1500 0    197  ~ 39
8 LEM's current measurement \nU+V+W+ALL x 2
Text Notes 6950 2250 0    20   ~ 0
The intention of these lems is to have the capacity on the control board\n to measure all the current, without the need of the sigma delta chips\n on power board side. Why?? becouse I've study the two options\n carrefullty and I've conclude that there are very similar, and more or\n less buck per byck (a little expensive is SD) but the new generation\n LEM's I'm includin here has <0.5uSeg response time, and the SD has\n all the SD filter delay, so LEM is faster. The other advantage is that for\n same LEM I've choosen you could rearange the connection to multiply\n the preccision 1x,2x or 3x without touching nothing, and is pretty\n linear.  In the case of SD you have to change the precission shunt. or\n puts more than one, that is costly and take some board space.\nThe disadvantage of LEM is that the output is single ended, so it could\n not travel across boards, for that reason I've put them on control\n board, but is completely isolated becouse of these phisics effect. and\n also becouse of that single ended I just use one ADC channel per\n current. I't not the only option, becous if you insist and wanna use SD,\n I'eft all the SD channels available as an inputs on SD schematic page.\n\nthese LEM's version doesn't need a buffer, \nit's one already included inside LEM\n\nLXS6 is LTS and CAS pin to pin compatible, but LXS is a little better.\n I don't usa an opamp becous with the external conection I have x,2x\n and 3x amplifier option without any component\n\nI've decided to make the loop over the LEM on board and if you\n wanna change it you have to use the soldering iron..becouse the\n connetor is 2 terminal, not 6\n
$Comp
L servo:Capacitor C1608
U 1 1 5E3E8DDF
P 5500 3750
F 0 "C1608" V 5528 3860 20  0000 L CNN
F 1 "100pF" V 5571 3860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5500 3650 60  0001 C CNN
F 3 "" H 5500 3750 60  0000 C CNN
	1    5500 3750
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01605
U 1 1 5E3E8DE6
P 5200 3950
F 0 "#PWR01605" H 5200 3700 30  0001 C CNN
F 1 "GND" H 5200 3792 30  0000 C CNN
F 2 "" H 5200 3950 50  0001 C CNN
F 3 "" H 5200 3950 50  0001 C CNN
	1    5200 3950
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1608
U 1 1 5E3E8DEC
P 5200 3750
F 0 "R1608" V 5178 3800 20  0000 L CNN
F 1 "3.3k" V 5221 3800 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 3650 60  0001 C CNN
F 3 "" H 4800 3750 60  0001 C CNN
	1    5200 3750
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1607
U 1 1 5E3E8DF3
P 5200 3350
F 0 "R1607" V 5178 3400 20  0000 L CNN
F 1 "5k" V 5221 3400 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 3250 60  0001 C CNN
F 3 "" H 4800 3350 60  0001 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01616
U 1 1 5E3E8DFA
P 5500 3950
F 0 "#PWR01616" H 5500 3700 30  0001 C CNN
F 1 "GND" H 5500 3792 30  0000 C CNN
F 2 "" H 5500 3950 50  0001 C CNN
F 3 "" H 5500 3950 50  0001 C CNN
	1    5500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3650 5500 3550
Wire Wire Line
	5500 3550 5200 3550
Connection ~ 5500 3550
$Comp
L servo:Capacitor C1612
U 1 1 5E3E8E03
P 5800 3750
F 0 "C1612" V 5828 3860 20  0000 L CNN
F 1 "100pF" V 5871 3860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5800 3650 60  0001 C CNN
F 3 "" H 5800 3750 60  0000 C CNN
	1    5800 3750
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01620
U 1 1 5E3E8E0A
P 5800 3950
F 0 "#PWR01620" H 5800 3700 30  0001 C CNN
F 1 "GND" H 5800 3792 30  0000 C CNN
F 2 "" H 5800 3950 50  0001 C CNN
F 3 "" H 5800 3950 50  0001 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3550 5800 3650
Text Notes 5550 3650 0    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	5500 3550 5800 3550
Connection ~ 5800 3550
Wire Wire Line
	5800 3550 6000 3550
Connection ~ 5200 3550
$Comp
L servo:LXS6-NPS U1604
U 1 1 5E30D1C7
P 4550 3050
F 0 "U1604" H 4050 3550 39  0000 L CNN
F 1 "LXS6-NPS" H 4000 3450 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 4550 2250 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4550 2400 50  0001 C CNN
	1    4550 3050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 5100 5000 5100
$Comp
L servo:GND #PWR01609
U 1 1 5E359BCB
P 5250 5050
F 0 "#PWR01609" H 5250 4800 30  0001 C CNN
F 1 "GND" H 5250 4900 30  0000 C CNN
F 2 "" H 5250 5050 50  0001 C CNN
F 3 "" H 5250 5050 50  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5000 5050 5000
Wire Wire Line
	5250 5000 5250 5050
$Comp
L servo:5VC #PWR01602
U 1 1 5E359BD3
P 5050 4650
F 0 "#PWR01602" H 5050 4450 20  0001 C CNN
F 1 "5VC" H 5055 4807 28  0000 C CNN
F 2 "" H 5050 4650 50  0001 C CNN
F 3 "" H 5050 4650 50  0001 C CNN
	1    5050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4700 5050 4650
$Comp
L servo:Capacitor C1601
U 1 1 5E359BDA
P 5050 4800
F 0 "C1601" V 5078 4910 20  0000 L CNN
F 1 "100nF" V 5121 4910 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5050 4700 60  0001 C CNN
F 3 "" H 5050 4800 60  0000 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
Connection ~ 5050 5000
Wire Wire Line
	5050 5000 5250 5000
Wire Wire Line
	4750 4900 4850 4900
Wire Wire Line
	4850 4900 4850 4700
Wire Wire Line
	4850 4700 5050 4700
Connection ~ 5050 4700
$Comp
L servo:Capacitor C1605
U 1 1 5E359BE7
P 5300 5700
F 0 "C1605" V 5328 5810 20  0000 L CNN
F 1 "100pF" V 5371 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5300 5600 60  0001 C CNN
F 3 "" H 5300 5700 60  0000 C CNN
	1    5300 5700
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01601
U 1 1 5E359BEE
P 5000 5900
F 0 "#PWR01601" H 5000 5650 30  0001 C CNN
F 1 "GND" H 5000 5742 30  0000 C CNN
F 2 "" H 5000 5900 50  0001 C CNN
F 3 "" H 5000 5900 50  0001 C CNN
	1    5000 5900
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1602
U 1 1 5E359BF4
P 5000 5700
F 0 "R1602" V 4978 5750 20  0000 L CNN
F 1 "3.3k" V 5021 5750 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 5600 60  0001 C CNN
F 3 "" H 4600 5700 60  0001 C CNN
	1    5000 5700
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1601
U 1 1 5E359BFB
P 5000 5300
F 0 "R1601" V 4978 5350 20  0000 L CNN
F 1 "5k" V 5021 5350 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 5200 60  0001 C CNN
F 3 "" H 4600 5300 60  0001 C CNN
	1    5000 5300
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01610
U 1 1 5E359C02
P 5300 5900
F 0 "#PWR01610" H 5300 5650 30  0001 C CNN
F 1 "GND" H 5300 5742 30  0000 C CNN
F 2 "" H 5300 5900 50  0001 C CNN
F 3 "" H 5300 5900 50  0001 C CNN
	1    5300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5600 5300 5500
Wire Wire Line
	5300 5500 5000 5500
Connection ~ 5300 5500
$Comp
L servo:Capacitor C1609
U 1 1 5E359C0B
P 5600 5700
F 0 "C1609" V 5628 5810 20  0000 L CNN
F 1 "100pF" V 5671 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5600 5600 60  0001 C CNN
F 3 "" H 5600 5700 60  0000 C CNN
	1    5600 5700
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01617
U 1 1 5E359C12
P 5600 5900
F 0 "#PWR01617" H 5600 5650 30  0001 C CNN
F 1 "GND" H 5600 5742 30  0000 C CNN
F 2 "" H 5600 5900 50  0001 C CNN
F 3 "" H 5600 5900 50  0001 C CNN
	1    5600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5500 5600 5600
Text Notes 5350 5600 0    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	5300 5500 5600 5500
Connection ~ 5600 5500
Connection ~ 5000 5500
Wire Wire Line
	4900 6900 5150 6900
$Comp
L servo:GND #PWR01611
U 1 1 5E366E1C
P 5400 6850
F 0 "#PWR01611" H 5400 6600 30  0001 C CNN
F 1 "GND" H 5400 6700 30  0000 C CNN
F 2 "" H 5400 6850 50  0001 C CNN
F 3 "" H 5400 6850 50  0001 C CNN
	1    5400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6800 5200 6800
Wire Wire Line
	5400 6800 5400 6850
$Comp
L servo:5VC #PWR01606
U 1 1 5E366E24
P 5200 6450
F 0 "#PWR01606" H 5200 6250 20  0001 C CNN
F 1 "5VC" H 5205 6607 28  0000 C CNN
F 2 "" H 5200 6450 50  0001 C CNN
F 3 "" H 5200 6450 50  0001 C CNN
	1    5200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6500 5200 6450
$Comp
L servo:Capacitor C1602
U 1 1 5E366E2B
P 5200 6600
F 0 "C1602" V 5228 6710 20  0000 L CNN
F 1 "100nF" V 5271 6710 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5200 6500 60  0001 C CNN
F 3 "" H 5200 6600 60  0000 C CNN
	1    5200 6600
	0    1    1    0   
$EndComp
Connection ~ 5200 6800
Wire Wire Line
	5200 6800 5400 6800
Wire Wire Line
	4900 6700 5000 6700
Wire Wire Line
	5000 6700 5000 6500
Wire Wire Line
	5000 6500 5200 6500
Connection ~ 5200 6500
$Comp
L servo:Capacitor C1606
U 1 1 5E366E38
P 5450 7500
F 0 "C1606" V 5478 7610 20  0000 L CNN
F 1 "100pF" V 5521 7610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5450 7400 60  0001 C CNN
F 3 "" H 5450 7500 60  0000 C CNN
	1    5450 7500
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01603
U 1 1 5E366E3F
P 5150 7700
F 0 "#PWR01603" H 5150 7450 30  0001 C CNN
F 1 "GND" H 5150 7542 30  0000 C CNN
F 2 "" H 5150 7700 50  0001 C CNN
F 3 "" H 5150 7700 50  0001 C CNN
	1    5150 7700
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1604
U 1 1 5E366E45
P 5150 7500
F 0 "R1604" V 5128 7550 20  0000 L CNN
F 1 "3.3k" V 5171 7550 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 7400 60  0001 C CNN
F 3 "" H 4750 7500 60  0001 C CNN
	1    5150 7500
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1603
U 1 1 5E366E4C
P 5150 7100
F 0 "R1603" V 5128 7150 20  0000 L CNN
F 1 "5k" V 5171 7150 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 7000 60  0001 C CNN
F 3 "" H 4750 7100 60  0001 C CNN
	1    5150 7100
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01614
U 1 1 5E366E53
P 5450 7700
F 0 "#PWR01614" H 5450 7450 30  0001 C CNN
F 1 "GND" H 5450 7542 30  0000 C CNN
F 2 "" H 5450 7700 50  0001 C CNN
F 3 "" H 5450 7700 50  0001 C CNN
	1    5450 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7400 5450 7300
Wire Wire Line
	5450 7300 5150 7300
Connection ~ 5450 7300
$Comp
L servo:Capacitor C1610
U 1 1 5E366E5C
P 5750 7500
F 0 "C1610" V 5778 7610 20  0000 L CNN
F 1 "100pF" V 5821 7610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5750 7400 60  0001 C CNN
F 3 "" H 5750 7500 60  0000 C CNN
	1    5750 7500
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01618
U 1 1 5E366E63
P 5750 7700
F 0 "#PWR01618" H 5750 7450 30  0001 C CNN
F 1 "GND" H 5750 7542 30  0000 C CNN
F 2 "" H 5750 7700 50  0001 C CNN
F 3 "" H 5750 7700 50  0001 C CNN
	1    5750 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 7300 5750 7400
Text Notes 5500 7400 0    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	5450 7300 5750 7300
Connection ~ 5750 7300
Wire Wire Line
	5750 7300 5950 7300
Connection ~ 5150 7300
Wire Wire Line
	5600 5500 6000 5500
Wire Wire Line
	4900 8750 5150 8750
$Comp
L servo:GND #PWR01612
U 1 1 5E378C5C
P 5400 8700
F 0 "#PWR01612" H 5400 8450 30  0001 C CNN
F 1 "GND" H 5400 8550 30  0000 C CNN
F 2 "" H 5400 8700 50  0001 C CNN
F 3 "" H 5400 8700 50  0001 C CNN
	1    5400 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 8650 5200 8650
Wire Wire Line
	5400 8650 5400 8700
$Comp
L servo:5VC #PWR01607
U 1 1 5E378C64
P 5200 8300
F 0 "#PWR01607" H 5200 8100 20  0001 C CNN
F 1 "5VC" H 5205 8457 28  0000 C CNN
F 2 "" H 5200 8300 50  0001 C CNN
F 3 "" H 5200 8300 50  0001 C CNN
	1    5200 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 8350 5200 8300
$Comp
L servo:Capacitor C1603
U 1 1 5E378C6B
P 5200 8450
F 0 "C1603" V 5228 8560 20  0000 L CNN
F 1 "100nF" V 5271 8560 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5200 8350 60  0001 C CNN
F 3 "" H 5200 8450 60  0000 C CNN
	1    5200 8450
	0    1    1    0   
$EndComp
Connection ~ 5200 8650
Wire Wire Line
	5200 8650 5400 8650
Wire Wire Line
	4900 8550 5000 8550
Wire Wire Line
	5000 8550 5000 8350
Wire Wire Line
	5000 8350 5200 8350
Connection ~ 5200 8350
$Comp
L servo:Capacitor C1607
U 1 1 5E378C78
P 5450 9350
F 0 "C1607" V 5478 9460 20  0000 L CNN
F 1 "100pF" V 5521 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5450 9250 60  0001 C CNN
F 3 "" H 5450 9350 60  0000 C CNN
	1    5450 9350
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01604
U 1 1 5E378C7F
P 5150 9550
F 0 "#PWR01604" H 5150 9300 30  0001 C CNN
F 1 "GND" H 5150 9392 30  0000 C CNN
F 2 "" H 5150 9550 50  0001 C CNN
F 3 "" H 5150 9550 50  0001 C CNN
	1    5150 9550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R1606
U 1 1 5E378C85
P 5150 9350
F 0 "R1606" V 5128 9400 20  0000 L CNN
F 1 "3.3k" V 5171 9400 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 9250 60  0001 C CNN
F 3 "" H 4750 9350 60  0001 C CNN
	1    5150 9350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R1605
U 1 1 5E378C8C
P 5150 8950
F 0 "R1605" V 5128 9000 20  0000 L CNN
F 1 "5k" V 5171 9000 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 8850 60  0001 C CNN
F 3 "" H 4750 8950 60  0001 C CNN
	1    5150 8950
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01615
U 1 1 5E378C93
P 5450 9550
F 0 "#PWR01615" H 5450 9300 30  0001 C CNN
F 1 "GND" H 5450 9392 30  0000 C CNN
F 2 "" H 5450 9550 50  0001 C CNN
F 3 "" H 5450 9550 50  0001 C CNN
	1    5450 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 9250 5450 9150
Wire Wire Line
	5450 9150 5150 9150
Connection ~ 5450 9150
$Comp
L servo:Capacitor C1611
U 1 1 5E378C9C
P 5750 9350
F 0 "C1611" V 5778 9460 20  0000 L CNN
F 1 "100pF" V 5821 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5750 9250 60  0001 C CNN
F 3 "" H 5750 9350 60  0000 C CNN
	1    5750 9350
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR01619
U 1 1 5E378CA3
P 5750 9550
F 0 "#PWR01619" H 5750 9300 30  0001 C CNN
F 1 "GND" H 5750 9392 30  0000 C CNN
F 2 "" H 5750 9550 50  0001 C CNN
F 3 "" H 5750 9550 50  0001 C CNN
	1    5750 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 9150 5750 9250
Text Notes 5500 9250 0    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	5450 9150 5750 9150
Connection ~ 5750 9150
Wire Wire Line
	5750 9150 5950 9150
Connection ~ 5150 9150
Wire Wire Line
	8400 2500 8500 2500
$Comp
L servo:Screw_Terminal_01x02 J1604
U 1 1 607EC527
P 3550 3150
F 0 "J1604" H 3470 2857 39  0000 C CNN
F 1 "tblock" H 3470 2932 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 3450 3150 50  0001 C CNN
F 3 "~" H 3550 3250 50  0001 C CNN
	1    3550 3150
	-1   0    0    1   
$EndComp
$Comp
L servo:jumper JP1608
U 1 1 608750C2
P 4200 3850
F 0 "JP1608" H 4200 3919 20  0000 C CNN
F 1 "jumper" H 4200 3936 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4100 3830 50  0001 C CNN
F 3 "~" H 4200 3930 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3150 3800 3150
Wire Wire Line
	3750 3050 3800 3050
$Comp
L servo:jumper JP1623
U 1 1 60BA782C
P 4650 2500
F 0 "JP1623" H 4650 2569 20  0000 C CNN
F 1 "jumper" H 4650 2586 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4550 2480 50  0001 C CNN
F 3 "~" H 4650 2580 50  0001 C CNN
	1    4650 2500
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1615
U 1 1 60BD2621
P 4450 2500
F 0 "JP1615" H 4450 2569 20  0000 C CNN
F 1 "jumper" H 4450 2586 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4350 2480 50  0001 C CNN
F 3 "~" H 4450 2580 50  0001 C CNN
	1    4450 2500
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1607
U 1 1 60CB5B7E
P 4200 3650
F 0 "JP1607" H 4200 3719 20  0000 C CNN
F 1 "jumper" H 4200 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4100 3630 50  0001 C CNN
F 3 "~" H 4200 3730 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
Connection ~ 5450 3050
Wire Wire Line
	4950 3050 5450 3050
Wire Wire Line
	4550 2600 4550 2500
Wire Wire Line
	4550 2450 3900 2450
Wire Wire Line
	3900 2450 3900 3850
Connection ~ 4550 2500
Wire Wire Line
	4550 2500 4550 2450
Wire Wire Line
	4350 2500 4350 2600
Wire Wire Line
	4350 2600 4450 2600
Connection ~ 4350 2500
Wire Wire Line
	4650 2600 4750 2600
Wire Wire Line
	4750 2600 4750 2500
Wire Wire Line
	4750 2500 4750 2400
Wire Wire Line
	4750 2400 3800 2400
Wire Wire Line
	3800 2400 3800 3050
Connection ~ 4750 2500
$Comp
L servo:jumper JP1624
U 1 1 6118338E
P 4650 3650
F 0 "JP1624" H 4650 3719 20  0000 C CNN
F 1 "jumper" H 4650 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4550 3630 50  0001 C CNN
F 3 "~" H 4650 3730 50  0001 C CNN
	1    4650 3650
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1616
U 1 1 61183395
P 4450 3650
F 0 "JP1616" H 4450 3719 20  0000 C CNN
F 1 "jumper" H 4450 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4350 3630 50  0001 C CNN
F 3 "~" H 4450 3730 50  0001 C CNN
	1    4450 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 3750 4550 3650
Connection ~ 4550 3650
Wire Wire Line
	4550 3650 4550 3500
Wire Wire Line
	4450 3550 4350 3550
Wire Wire Line
	4350 3550 4350 3650
Wire Wire Line
	4650 3500 4650 3550
Wire Wire Line
	4650 3550 4750 3550
Wire Wire Line
	4750 3550 4750 3650
Wire Wire Line
	4350 3650 4300 3650
Connection ~ 4350 3650
Wire Wire Line
	4750 3650 4750 3850
Wire Wire Line
	4750 3850 4300 3850
Connection ~ 4750 3650
Wire Wire Line
	3900 3850 4100 3850
Wire Wire Line
	3800 3150 3800 3650
Wire Wire Line
	4550 3750 4000 3750
Wire Wire Line
	4000 3750 4000 2500
Wire Wire Line
	4000 2500 4350 2500
Wire Wire Line
	4100 3650 3800 3650
Wire Wire Line
	4250 5500 4250 5450
$Comp
L servo:LXS6-NPS U1601
U 1 1 613B810A
P 4350 5000
F 0 "U1601" H 3850 5500 39  0000 L CNN
F 1 "LXS6-NPS" H 3800 5400 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 4350 4200 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4350 4350 50  0001 C CNN
	1    4350 5000
	-1   0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1601
U 1 1 613B8111
P 3350 5100
F 0 "J1601" H 3270 4807 39  0000 C CNN
F 1 "tblock" H 3270 4882 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 3250 5100 50  0001 C CNN
F 3 "~" H 3350 5200 50  0001 C CNN
	1    3350 5100
	-1   0    0    1   
$EndComp
$Comp
L servo:jumper JP1602
U 1 1 613B8118
P 4000 5800
F 0 "JP1602" H 4000 5869 20  0000 C CNN
F 1 "jumper" H 4000 5886 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3900 5780 50  0001 C CNN
F 3 "~" H 4000 5880 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5100 3600 5100
Wire Wire Line
	3550 5000 3600 5000
$Comp
L servo:jumper JP1617
U 1 1 613B8121
P 4450 4450
F 0 "JP1617" H 4450 4519 20  0000 C CNN
F 1 "jumper" H 4450 4536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4350 4430 50  0001 C CNN
F 3 "~" H 4450 4530 50  0001 C CNN
	1    4450 4450
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1609
U 1 1 613B8128
P 4250 4450
F 0 "JP1609" H 4250 4519 20  0000 C CNN
F 1 "jumper" H 4250 4536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4150 4430 50  0001 C CNN
F 3 "~" H 4250 4530 50  0001 C CNN
	1    4250 4450
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1601
U 1 1 613B812F
P 4000 5600
F 0 "JP1601" H 4000 5669 20  0000 C CNN
F 1 "jumper" H 4000 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3900 5580 50  0001 C CNN
F 3 "~" H 4000 5680 50  0001 C CNN
	1    4000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4550 4350 4450
Wire Wire Line
	4350 4400 3700 4400
Wire Wire Line
	3700 4400 3700 5800
Connection ~ 4350 4450
Wire Wire Line
	4350 4450 4350 4400
Wire Wire Line
	4150 4450 4150 4550
Wire Wire Line
	4150 4550 4250 4550
Connection ~ 4150 4450
Wire Wire Line
	4450 4550 4550 4550
Wire Wire Line
	4550 4550 4550 4450
Wire Wire Line
	4550 4450 4550 4350
Wire Wire Line
	4550 4350 3600 4350
Wire Wire Line
	3600 4350 3600 5000
Connection ~ 4550 4450
$Comp
L servo:jumper JP1618
U 1 1 613B8144
P 4450 5600
F 0 "JP1618" H 4450 5669 20  0000 C CNN
F 1 "jumper" H 4450 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4350 5580 50  0001 C CNN
F 3 "~" H 4450 5680 50  0001 C CNN
	1    4450 5600
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1610
U 1 1 613B814B
P 4250 5600
F 0 "JP1610" H 4250 5669 20  0000 C CNN
F 1 "jumper" H 4250 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4150 5580 50  0001 C CNN
F 3 "~" H 4250 5680 50  0001 C CNN
	1    4250 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4350 5700 4350 5600
Connection ~ 4350 5600
Wire Wire Line
	4350 5600 4350 5450
Wire Wire Line
	4250 5500 4150 5500
Wire Wire Line
	4150 5500 4150 5600
Wire Wire Line
	4450 5450 4450 5500
Wire Wire Line
	4450 5500 4550 5500
Wire Wire Line
	4550 5500 4550 5600
Wire Wire Line
	4150 5600 4100 5600
Connection ~ 4150 5600
Wire Wire Line
	4550 5600 4550 5800
Wire Wire Line
	4550 5800 4100 5800
Connection ~ 4550 5600
Wire Wire Line
	3700 5800 3900 5800
Wire Wire Line
	3600 5100 3600 5600
Wire Wire Line
	4350 5700 3800 5700
Wire Wire Line
	3800 5700 3800 4450
Wire Wire Line
	3800 4450 4150 4450
Wire Wire Line
	3900 5600 3600 5600
Wire Wire Line
	4400 7300 4400 7250
$Comp
L servo:LXS6-NPS U1602
U 1 1 614075E7
P 4500 6800
F 0 "U1602" H 4000 7300 39  0000 L CNN
F 1 "LXS6-NPS" H 3950 7200 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 4500 6000 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4500 6150 50  0001 C CNN
	1    4500 6800
	-1   0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1602
U 1 1 614075EE
P 3500 6900
F 0 "J1602" H 3420 6607 39  0000 C CNN
F 1 "tblock" H 3420 6682 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 3400 6900 50  0001 C CNN
F 3 "~" H 3500 7000 50  0001 C CNN
	1    3500 6900
	-1   0    0    1   
$EndComp
$Comp
L servo:jumper JP1604
U 1 1 614075F5
P 4150 7600
F 0 "JP1604" H 4150 7669 20  0000 C CNN
F 1 "jumper" H 4150 7686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4050 7580 50  0001 C CNN
F 3 "~" H 4150 7680 50  0001 C CNN
	1    4150 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6900 3750 6900
Wire Wire Line
	3700 6800 3750 6800
$Comp
L servo:jumper JP1619
U 1 1 614075FE
P 4600 6250
F 0 "JP1619" H 4600 6319 20  0000 C CNN
F 1 "jumper" H 4600 6336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 6230 50  0001 C CNN
F 3 "~" H 4600 6330 50  0001 C CNN
	1    4600 6250
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1611
U 1 1 61407605
P 4400 6250
F 0 "JP1611" H 4400 6319 20  0000 C CNN
F 1 "jumper" H 4400 6336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4300 6230 50  0001 C CNN
F 3 "~" H 4400 6330 50  0001 C CNN
	1    4400 6250
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1603
U 1 1 6140760C
P 4150 7400
F 0 "JP1603" H 4150 7469 20  0000 C CNN
F 1 "jumper" H 4150 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4050 7380 50  0001 C CNN
F 3 "~" H 4150 7480 50  0001 C CNN
	1    4150 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6350 4500 6250
Wire Wire Line
	4500 6200 3850 6200
Wire Wire Line
	3850 6200 3850 7600
Connection ~ 4500 6250
Wire Wire Line
	4500 6250 4500 6200
Wire Wire Line
	4300 6250 4300 6350
Wire Wire Line
	4300 6350 4400 6350
Connection ~ 4300 6250
Wire Wire Line
	4600 6350 4700 6350
Wire Wire Line
	4700 6350 4700 6250
Wire Wire Line
	4700 6250 4700 6150
Wire Wire Line
	4700 6150 3750 6150
Wire Wire Line
	3750 6150 3750 6800
Connection ~ 4700 6250
$Comp
L servo:jumper JP1620
U 1 1 61407621
P 4600 7400
F 0 "JP1620" H 4600 7469 20  0000 C CNN
F 1 "jumper" H 4600 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 7380 50  0001 C CNN
F 3 "~" H 4600 7480 50  0001 C CNN
	1    4600 7400
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1612
U 1 1 61407628
P 4400 7400
F 0 "JP1612" H 4400 7469 20  0000 C CNN
F 1 "jumper" H 4400 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4300 7380 50  0001 C CNN
F 3 "~" H 4400 7480 50  0001 C CNN
	1    4400 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 7500 4500 7400
Connection ~ 4500 7400
Wire Wire Line
	4500 7400 4500 7250
Wire Wire Line
	4400 7300 4300 7300
Wire Wire Line
	4300 7300 4300 7400
Wire Wire Line
	4600 7250 4600 7300
Wire Wire Line
	4600 7300 4700 7300
Wire Wire Line
	4700 7300 4700 7400
Wire Wire Line
	4300 7400 4250 7400
Connection ~ 4300 7400
Wire Wire Line
	4700 7400 4700 7600
Wire Wire Line
	4700 7600 4250 7600
Connection ~ 4700 7400
Wire Wire Line
	3850 7600 4050 7600
Wire Wire Line
	3750 6900 3750 7400
Wire Wire Line
	4500 7500 3950 7500
Wire Wire Line
	3950 7500 3950 6250
Wire Wire Line
	3950 6250 4300 6250
Wire Wire Line
	4050 7400 3750 7400
Wire Wire Line
	4400 9150 4400 9100
$Comp
L servo:LXS6-NPS U1603
U 1 1 61480C75
P 4500 8650
F 0 "U1603" H 4000 9150 39  0000 L CNN
F 1 "LXS6-NPS" H 3950 9050 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 4500 7850 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 4500 8000 50  0001 C CNN
	1    4500 8650
	-1   0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1603
U 1 1 61480C7C
P 3500 8750
F 0 "J1603" H 3420 8457 39  0000 C CNN
F 1 "tblock" H 3420 8532 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 3400 8750 50  0001 C CNN
F 3 "~" H 3500 8850 50  0001 C CNN
	1    3500 8750
	-1   0    0    1   
$EndComp
$Comp
L servo:jumper JP1606
U 1 1 61480C83
P 4150 9450
F 0 "JP1606" H 4150 9519 20  0000 C CNN
F 1 "jumper" H 4150 9536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4050 9430 50  0001 C CNN
F 3 "~" H 4150 9530 50  0001 C CNN
	1    4150 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 8750 3750 8750
Wire Wire Line
	3700 8650 3750 8650
$Comp
L servo:jumper JP1621
U 1 1 61480C8C
P 4600 8100
F 0 "JP1621" H 4600 8169 20  0000 C CNN
F 1 "jumper" H 4600 8186 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 8080 50  0001 C CNN
F 3 "~" H 4600 8180 50  0001 C CNN
	1    4600 8100
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1613
U 1 1 61480C93
P 4400 8100
F 0 "JP1613" H 4400 8169 20  0000 C CNN
F 1 "jumper" H 4400 8186 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4300 8080 50  0001 C CNN
F 3 "~" H 4400 8180 50  0001 C CNN
	1    4400 8100
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1605
U 1 1 61480C9A
P 4150 9250
F 0 "JP1605" H 4150 9319 20  0000 C CNN
F 1 "jumper" H 4150 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4050 9230 50  0001 C CNN
F 3 "~" H 4150 9330 50  0001 C CNN
	1    4150 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 8200 4500 8100
Wire Wire Line
	4500 8050 3850 8050
Wire Wire Line
	3850 8050 3850 9450
Connection ~ 4500 8100
Wire Wire Line
	4500 8100 4500 8050
Wire Wire Line
	4300 8100 4300 8200
Wire Wire Line
	4300 8200 4400 8200
Connection ~ 4300 8100
Wire Wire Line
	4600 8200 4700 8200
Wire Wire Line
	4700 8200 4700 8100
Wire Wire Line
	4700 8100 4700 8000
Wire Wire Line
	4700 8000 3750 8000
Wire Wire Line
	3750 8000 3750 8650
Connection ~ 4700 8100
$Comp
L servo:jumper JP1622
U 1 1 61480CAF
P 4600 9250
F 0 "JP1622" H 4600 9319 20  0000 C CNN
F 1 "jumper" H 4600 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 9230 50  0001 C CNN
F 3 "~" H 4600 9330 50  0001 C CNN
	1    4600 9250
	-1   0    0    -1  
$EndComp
$Comp
L servo:jumper JP1614
U 1 1 61480CB6
P 4400 9250
F 0 "JP1614" H 4400 9319 20  0000 C CNN
F 1 "jumper" H 4400 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4300 9230 50  0001 C CNN
F 3 "~" H 4400 9330 50  0001 C CNN
	1    4400 9250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 9350 4500 9250
Connection ~ 4500 9250
Wire Wire Line
	4500 9250 4500 9100
Wire Wire Line
	4400 9150 4300 9150
Wire Wire Line
	4300 9150 4300 9250
Wire Wire Line
	4600 9100 4600 9150
Wire Wire Line
	4600 9150 4700 9150
Wire Wire Line
	4700 9150 4700 9250
Wire Wire Line
	4300 9250 4250 9250
Connection ~ 4300 9250
Wire Wire Line
	4700 9250 4700 9450
Wire Wire Line
	4700 9450 4250 9450
Connection ~ 4700 9250
Wire Wire Line
	3850 9450 4050 9450
Wire Wire Line
	3750 8750 3750 9250
Wire Wire Line
	4500 9350 3950 9350
Wire Wire Line
	3950 9350 3950 8100
Wire Wire Line
	3950 8100 4300 8100
Wire Wire Line
	4050 9250 3750 9250
Wire Wire Line
	8100 3150 7850 3150
Wire Wire Line
	8600 3550 8600 3500
$Comp
L servo:GND #PWR01627
U 1 1 6148B06D
P 7600 3100
F 0 "#PWR01627" H 7600 2850 30  0001 C CNN
F 1 "GND" H 7600 2950 30  0000 C CNN
F 2 "" H 7600 3100 50  0001 C CNN
F 3 "" H 7600 3100 50  0001 C CNN
	1    7600 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 3050 7600 3100
$Comp
L servo:5VC #PWR01626
U 1 1 6148B074
P 7600 2700
F 0 "#PWR01626" H 7600 2500 20  0001 C CNN
F 1 "5VC" H 7605 2857 28  0000 C CNN
F 2 "" H 7600 2700 50  0001 C CNN
F 3 "" H 7600 2700 50  0001 C CNN
	1    7600 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 2750 7600 2700
$Comp
L servo:Capacitor C1618
U 1 1 6148B07B
P 7600 2850
F 0 "C1618" V 7628 2960 20  0000 L CNN
F 1 "100nF" V 7671 2960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7600 2750 60  0001 C CNN
F 3 "" H 7600 2850 60  0000 C CNN
	1    7600 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	8100 2950 8000 2950
Wire Wire Line
	8000 2950 8000 2750
Wire Wire Line
	8000 2750 7600 2750
Connection ~ 7600 2750
$Comp
L servo:Capacitor C1617
U 1 1 6148B086
P 7550 3750
F 0 "C1617" V 7578 3860 20  0000 L CNN
F 1 "100pF" V 7621 3860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7550 3650 60  0001 C CNN
F 3 "" H 7550 3750 60  0000 C CNN
	1    7550 3750
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01634
U 1 1 6148B08D
P 7850 3950
F 0 "#PWR01634" H 7850 3700 30  0001 C CNN
F 1 "GND" H 7850 3792 30  0000 C CNN
F 2 "" H 7850 3950 50  0001 C CNN
F 3 "" H 7850 3950 50  0001 C CNN
	1    7850 3950
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1610
U 1 1 6148B093
P 7850 3750
F 0 "R1610" V 7828 3800 20  0000 L CNN
F 1 "3.3k" V 7871 3800 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 3650 60  0001 C CNN
F 3 "" H 7450 3750 60  0001 C CNN
	1    7850 3750
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1609
U 1 1 6148B09A
P 7850 3350
F 0 "R1609" V 7828 3400 20  0000 L CNN
F 1 "5k" V 7871 3400 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 3250 60  0001 C CNN
F 3 "" H 7450 3350 60  0001 C CNN
	1    7850 3350
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01625
U 1 1 6148B0A1
P 7550 3950
F 0 "#PWR01625" H 7550 3700 30  0001 C CNN
F 1 "GND" H 7550 3792 30  0000 C CNN
F 2 "" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0001 C CNN
	1    7550 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 3650 7550 3550
Wire Wire Line
	7550 3550 7850 3550
Connection ~ 7550 3550
$Comp
L servo:Capacitor C1613
U 1 1 6148B0AA
P 7250 3750
F 0 "C1613" V 7278 3860 20  0000 L CNN
F 1 "100pF" V 7321 3860 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7250 3650 60  0001 C CNN
F 3 "" H 7250 3750 60  0000 C CNN
	1    7250 3750
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01621
U 1 1 6148B0B1
P 7250 3950
F 0 "#PWR01621" H 7250 3700 30  0001 C CNN
F 1 "GND" H 7250 3792 30  0000 C CNN
F 2 "" H 7250 3950 50  0001 C CNN
F 3 "" H 7250 3950 50  0001 C CNN
	1    7250 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 3550 7250 3650
Text Notes 7500 3650 2    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	7550 3550 7250 3550
Connection ~ 7250 3550
Wire Wire Line
	7250 3550 7050 3550
Connection ~ 7850 3550
$Comp
L servo:LXS6-NPS U1605
U 1 1 6148B0BD
P 8500 3050
F 0 "U1605" H 8000 3550 39  0000 L CNN
F 1 "LXS6-NPS" H 7950 3450 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 8500 2250 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 8500 2400 50  0001 C CNN
	1    8500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5100 8050 5100
$Comp
L servo:GND #PWR01633
U 1 1 6148B0C5
P 7800 5050
F 0 "#PWR01633" H 7800 4800 30  0001 C CNN
F 1 "GND" H 7800 4900 30  0000 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 5000 8000 5000
Wire Wire Line
	7800 5000 7800 5050
$Comp
L servo:5VC #PWR01639
U 1 1 6148B0CD
P 8000 4650
F 0 "#PWR01639" H 8000 4450 20  0001 C CNN
F 1 "5VC" H 8005 4807 28  0000 C CNN
F 2 "" H 8000 4650 50  0001 C CNN
F 3 "" H 8000 4650 50  0001 C CNN
	1    8000 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 4700 8000 4650
$Comp
L servo:Capacitor C1624
U 1 1 6148B0D4
P 8000 4800
F 0 "C1624" V 8028 4910 20  0000 L CNN
F 1 "100nF" V 8071 4910 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8000 4700 60  0001 C CNN
F 3 "" H 8000 4800 60  0000 C CNN
	1    8000 4800
	0    -1   1    0   
$EndComp
Connection ~ 8000 5000
Wire Wire Line
	8000 5000 7800 5000
Wire Wire Line
	8300 4900 8200 4900
Wire Wire Line
	8200 4900 8200 4700
Wire Wire Line
	8200 4700 8000 4700
Connection ~ 8000 4700
$Comp
L servo:Capacitor C1621
U 1 1 6148B0E1
P 7750 5700
F 0 "C1621" V 7778 5810 20  0000 L CNN
F 1 "100pF" V 7821 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7750 5600 60  0001 C CNN
F 3 "" H 7750 5700 60  0000 C CNN
	1    7750 5700
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01640
U 1 1 6148B0E8
P 8050 5900
F 0 "#PWR01640" H 8050 5650 30  0001 C CNN
F 1 "GND" H 8050 5742 30  0000 C CNN
F 2 "" H 8050 5900 50  0001 C CNN
F 3 "" H 8050 5900 50  0001 C CNN
	1    8050 5900
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1616
U 1 1 6148B0EE
P 8050 5700
F 0 "R1616" V 8028 5750 20  0000 L CNN
F 1 "3.3k" V 8071 5750 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 5600 60  0001 C CNN
F 3 "" H 7650 5700 60  0001 C CNN
	1    8050 5700
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1615
U 1 1 6148B0F5
P 8050 5300
F 0 "R1615" V 8028 5350 20  0000 L CNN
F 1 "5k" V 8071 5350 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 5200 60  0001 C CNN
F 3 "" H 7650 5300 60  0001 C CNN
	1    8050 5300
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01632
U 1 1 6148B0FC
P 7750 5900
F 0 "#PWR01632" H 7750 5650 30  0001 C CNN
F 1 "GND" H 7750 5742 30  0000 C CNN
F 2 "" H 7750 5900 50  0001 C CNN
F 3 "" H 7750 5900 50  0001 C CNN
	1    7750 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 5600 7750 5500
Wire Wire Line
	7750 5500 8050 5500
Connection ~ 7750 5500
$Comp
L servo:Capacitor C1616
U 1 1 6148B105
P 7450 5700
F 0 "C1616" V 7478 5810 20  0000 L CNN
F 1 "100pF" V 7521 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7450 5600 60  0001 C CNN
F 3 "" H 7450 5700 60  0000 C CNN
	1    7450 5700
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01624
U 1 1 6148B10C
P 7450 5900
F 0 "#PWR01624" H 7450 5650 30  0001 C CNN
F 1 "GND" H 7450 5742 30  0000 C CNN
F 2 "" H 7450 5900 50  0001 C CNN
F 3 "" H 7450 5900 50  0001 C CNN
	1    7450 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 5500 7450 5600
Text Notes 7700 5600 2    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	7750 5500 7450 5500
Connection ~ 7450 5500
Connection ~ 8050 5500
Wire Wire Line
	8150 6900 7900 6900
$Comp
L servo:GND #PWR01630
U 1 1 6148B118
P 7650 6850
F 0 "#PWR01630" H 7650 6600 30  0001 C CNN
F 1 "GND" H 7650 6700 30  0000 C CNN
F 2 "" H 7650 6850 50  0001 C CNN
F 3 "" H 7650 6850 50  0001 C CNN
	1    7650 6850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 6800 7850 6800
Wire Wire Line
	7650 6800 7650 6850
$Comp
L servo:5VC #PWR01635
U 1 1 6148B120
P 7850 6450
F 0 "#PWR01635" H 7850 6250 20  0001 C CNN
F 1 "5VC" H 7855 6607 28  0000 C CNN
F 2 "" H 7850 6450 50  0001 C CNN
F 3 "" H 7850 6450 50  0001 C CNN
	1    7850 6450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 6500 7850 6450
$Comp
L servo:Capacitor C1622
U 1 1 6148B127
P 7850 6600
F 0 "C1622" V 7878 6710 20  0000 L CNN
F 1 "100nF" V 7921 6710 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7850 6500 60  0001 C CNN
F 3 "" H 7850 6600 60  0000 C CNN
	1    7850 6600
	0    -1   1    0   
$EndComp
Connection ~ 7850 6800
Wire Wire Line
	7850 6800 7650 6800
Wire Wire Line
	8150 6700 8050 6700
Wire Wire Line
	8050 6700 8050 6500
Wire Wire Line
	8050 6500 7850 6500
Connection ~ 7850 6500
$Comp
L servo:Capacitor C1619
U 1 1 6148B134
P 7600 7500
F 0 "C1619" V 7628 7610 20  0000 L CNN
F 1 "100pF" V 7671 7610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7600 7400 60  0001 C CNN
F 3 "" H 7600 7500 60  0000 C CNN
	1    7600 7500
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01637
U 1 1 6148B13B
P 7900 7700
F 0 "#PWR01637" H 7900 7450 30  0001 C CNN
F 1 "GND" H 7900 7542 30  0000 C CNN
F 2 "" H 7900 7700 50  0001 C CNN
F 3 "" H 7900 7700 50  0001 C CNN
	1    7900 7700
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1612
U 1 1 6148B141
P 7900 7500
F 0 "R1612" V 7878 7550 20  0000 L CNN
F 1 "3.3k" V 7921 7550 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7400 7400 60  0001 C CNN
F 3 "" H 7500 7500 60  0001 C CNN
	1    7900 7500
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1611
U 1 1 6148B148
P 7900 7100
F 0 "R1611" V 7878 7150 20  0000 L CNN
F 1 "5k" V 7921 7150 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7400 7000 60  0001 C CNN
F 3 "" H 7500 7100 60  0001 C CNN
	1    7900 7100
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01628
U 1 1 6148B14F
P 7600 7700
F 0 "#PWR01628" H 7600 7450 30  0001 C CNN
F 1 "GND" H 7600 7542 30  0000 C CNN
F 2 "" H 7600 7700 50  0001 C CNN
F 3 "" H 7600 7700 50  0001 C CNN
	1    7600 7700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 7400 7600 7300
Wire Wire Line
	7600 7300 7900 7300
Connection ~ 7600 7300
$Comp
L servo:Capacitor C1614
U 1 1 6148B158
P 7300 7500
F 0 "C1614" V 7328 7610 20  0000 L CNN
F 1 "100pF" V 7371 7610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7300 7400 60  0001 C CNN
F 3 "" H 7300 7500 60  0000 C CNN
	1    7300 7500
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01622
U 1 1 6148B15F
P 7300 7700
F 0 "#PWR01622" H 7300 7450 30  0001 C CNN
F 1 "GND" H 7300 7542 30  0000 C CNN
F 2 "" H 7300 7700 50  0001 C CNN
F 3 "" H 7300 7700 50  0001 C CNN
	1    7300 7700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 7300 7300 7400
Text Notes 7550 7400 2    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	7600 7300 7300 7300
Connection ~ 7300 7300
Wire Wire Line
	7300 7300 7100 7300
Connection ~ 7900 7300
Wire Wire Line
	7450 5500 7050 5500
Wire Wire Line
	8150 8750 7900 8750
$Comp
L servo:GND #PWR01631
U 1 1 6148B16D
P 7650 8700
F 0 "#PWR01631" H 7650 8450 30  0001 C CNN
F 1 "GND" H 7650 8550 30  0000 C CNN
F 2 "" H 7650 8700 50  0001 C CNN
F 3 "" H 7650 8700 50  0001 C CNN
	1    7650 8700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 8650 7850 8650
Wire Wire Line
	7650 8650 7650 8700
$Comp
L servo:5VC #PWR01636
U 1 1 6148B175
P 7850 8300
F 0 "#PWR01636" H 7850 8100 20  0001 C CNN
F 1 "5VC" H 7855 8457 28  0000 C CNN
F 2 "" H 7850 8300 50  0001 C CNN
F 3 "" H 7850 8300 50  0001 C CNN
	1    7850 8300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 8350 7850 8300
$Comp
L servo:Capacitor C1623
U 1 1 6148B17C
P 7850 8450
F 0 "C1623" V 7878 8560 20  0000 L CNN
F 1 "100nF" V 7921 8560 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7850 8350 60  0001 C CNN
F 3 "" H 7850 8450 60  0000 C CNN
	1    7850 8450
	0    -1   1    0   
$EndComp
Connection ~ 7850 8650
Wire Wire Line
	7850 8650 7650 8650
Wire Wire Line
	8150 8550 8050 8550
Wire Wire Line
	8050 8550 8050 8350
Wire Wire Line
	8050 8350 7850 8350
Connection ~ 7850 8350
$Comp
L servo:Capacitor C1620
U 1 1 6148B189
P 7600 9350
F 0 "C1620" V 7628 9460 20  0000 L CNN
F 1 "100pF" V 7671 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7600 9250 60  0001 C CNN
F 3 "" H 7600 9350 60  0000 C CNN
	1    7600 9350
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01638
U 1 1 6148B190
P 7900 9550
F 0 "#PWR01638" H 7900 9300 30  0001 C CNN
F 1 "GND" H 7900 9392 30  0000 C CNN
F 2 "" H 7900 9550 50  0001 C CNN
F 3 "" H 7900 9550 50  0001 C CNN
	1    7900 9550
	-1   0    0    -1  
$EndComp
$Comp
L servo:Resistor R1614
U 1 1 6148B196
P 7900 9350
F 0 "R1614" V 7878 9400 20  0000 L CNN
F 1 "3.3k" V 7921 9400 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7400 9250 60  0001 C CNN
F 3 "" H 7500 9350 60  0001 C CNN
	1    7900 9350
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R1613
U 1 1 6148B19D
P 7900 8950
F 0 "R1613" V 7878 9000 20  0000 L CNN
F 1 "5k" V 7921 9000 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7400 8850 60  0001 C CNN
F 3 "" H 7500 8950 60  0001 C CNN
	1    7900 8950
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01629
U 1 1 6148B1A4
P 7600 9550
F 0 "#PWR01629" H 7600 9300 30  0001 C CNN
F 1 "GND" H 7600 9392 30  0000 C CNN
F 2 "" H 7600 9550 50  0001 C CNN
F 3 "" H 7600 9550 50  0001 C CNN
	1    7600 9550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 9250 7600 9150
Wire Wire Line
	7600 9150 7900 9150
Connection ~ 7600 9150
$Comp
L servo:Capacitor C1615
U 1 1 6148B1AD
P 7300 9350
F 0 "C1615" V 7328 9460 20  0000 L CNN
F 1 "100pF" V 7371 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7300 9250 60  0001 C CNN
F 3 "" H 7300 9350 60  0000 C CNN
	1    7300 9350
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR01623
U 1 1 6148B1B4
P 7300 9550
F 0 "#PWR01623" H 7300 9300 30  0001 C CNN
F 1 "GND" H 7300 9392 30  0000 C CNN
F 2 "" H 7300 9550 50  0001 C CNN
F 3 "" H 7300 9550 50  0001 C CNN
	1    7300 9550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 9150 7300 9250
Text Notes 7550 9250 2    20   ~ 0
one near LEM, \nthe other near uC
Wire Wire Line
	7600 9150 7300 9150
Connection ~ 7300 9150
Wire Wire Line
	7300 9150 7100 9150
Connection ~ 7900 9150
$Comp
L servo:Screw_Terminal_01x02 J1605
U 1 1 6148B1C0
P 9500 3150
F 0 "J1605" H 9420 2857 39  0000 C CNN
F 1 "tblock" H 9420 2932 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 9400 3150 50  0001 C CNN
F 3 "~" H 9500 3250 50  0001 C CNN
	1    9500 3150
	1    0    0    1   
$EndComp
$Comp
L servo:jumper JP1642
U 1 1 6148B1C7
P 8850 3850
F 0 "JP1642" H 8850 3919 20  0000 C CNN
F 1 "jumper" H 8850 3936 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8750 3830 50  0001 C CNN
F 3 "~" H 8850 3930 50  0001 C CNN
	1    8850 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 3150 9250 3150
Wire Wire Line
	9300 3050 9250 3050
$Comp
L servo:jumper JP1625
U 1 1 6148B1D0
P 8400 2500
F 0 "JP1625" H 8400 2569 20  0000 C CNN
F 1 "jumper" H 8400 2586 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8300 2480 50  0001 C CNN
F 3 "~" H 8400 2580 50  0001 C CNN
	1    8400 2500
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1631
U 1 1 6148B1D7
P 8600 2500
F 0 "JP1631" H 8600 2569 20  0000 C CNN
F 1 "jumper" H 8600 2586 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 2480 50  0001 C CNN
F 3 "~" H 8600 2580 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1641
U 1 1 6148B1DE
P 8850 3650
F 0 "JP1641" H 8850 3719 20  0000 C CNN
F 1 "jumper" H 8850 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8750 3630 50  0001 C CNN
F 3 "~" H 8850 3730 50  0001 C CNN
	1    8850 3650
	-1   0    0    -1  
$EndComp
Connection ~ 7600 3050
Wire Wire Line
	8100 3050 7600 3050
Wire Wire Line
	8500 2450 9150 2450
Wire Wire Line
	9150 2450 9150 3850
Connection ~ 8500 2500
Wire Wire Line
	8500 2500 8500 2450
Wire Wire Line
	8700 2500 8700 2600
Wire Wire Line
	8700 2600 8600 2600
Connection ~ 8700 2500
Wire Wire Line
	8400 2600 8300 2600
Wire Wire Line
	8300 2600 8300 2500
Wire Wire Line
	8300 2500 8300 2400
Wire Wire Line
	8300 2400 9250 2400
Wire Wire Line
	9250 2400 9250 3050
Connection ~ 8300 2500
$Comp
L servo:jumper JP1626
U 1 1 6148B1F5
P 8400 3650
F 0 "JP1626" H 8400 3719 20  0000 C CNN
F 1 "jumper" H 8400 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8300 3630 50  0001 C CNN
F 3 "~" H 8400 3730 50  0001 C CNN
	1    8400 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1632
U 1 1 6148B1FC
P 8600 3650
F 0 "JP1632" H 8600 3719 20  0000 C CNN
F 1 "jumper" H 8600 3736 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 3630 50  0001 C CNN
F 3 "~" H 8600 3730 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3750 8500 3650
Connection ~ 8500 3650
Wire Wire Line
	8500 3650 8500 3500
Wire Wire Line
	8600 3550 8700 3550
Wire Wire Line
	8700 3550 8700 3650
Wire Wire Line
	8400 3500 8400 3550
Wire Wire Line
	8400 3550 8300 3550
Wire Wire Line
	8300 3550 8300 3650
Wire Wire Line
	8700 3650 8750 3650
Connection ~ 8700 3650
Wire Wire Line
	8300 3650 8300 3850
Wire Wire Line
	8300 3850 8750 3850
Connection ~ 8300 3650
Wire Wire Line
	9150 3850 8950 3850
Wire Wire Line
	9250 3150 9250 3650
Wire Wire Line
	8500 3750 9050 3750
Wire Wire Line
	9050 3750 9050 2500
Wire Wire Line
	8950 3650 9250 3650
Wire Wire Line
	8800 5500 8800 5450
$Comp
L servo:LXS6-NPS U1608
U 1 1 6148B217
P 8700 5000
F 0 "U1608" H 8200 5500 39  0000 L CNN
F 1 "LXS6-NPS" H 8150 5400 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 8700 4200 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 8700 4350 50  0001 C CNN
	1    8700 5000
	1    0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1608
U 1 1 6148B21E
P 9700 5100
F 0 "J1608" H 9620 4807 39  0000 C CNN
F 1 "tblock" H 9620 4882 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 9600 5100 50  0001 C CNN
F 3 "~" H 9700 5200 50  0001 C CNN
	1    9700 5100
	1    0    0    1   
$EndComp
$Comp
L servo:jumper JP1648
U 1 1 6148B225
P 9050 5800
F 0 "JP1648" H 9050 5869 20  0000 C CNN
F 1 "jumper" H 9050 5886 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8950 5780 50  0001 C CNN
F 3 "~" H 9050 5880 50  0001 C CNN
	1    9050 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 5100 9450 5100
Wire Wire Line
	9500 5000 9450 5000
$Comp
L servo:jumper JP1633
U 1 1 6148B22E
P 8600 4450
F 0 "JP1633" H 8600 4519 20  0000 C CNN
F 1 "jumper" H 8600 4536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 4430 50  0001 C CNN
F 3 "~" H 8600 4530 50  0001 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1639
U 1 1 6148B235
P 8800 4450
F 0 "JP1639" H 8800 4519 20  0000 C CNN
F 1 "jumper" H 8800 4536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8700 4430 50  0001 C CNN
F 3 "~" H 8800 4530 50  0001 C CNN
	1    8800 4450
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1647
U 1 1 6148B23C
P 9050 5600
F 0 "JP1647" H 9050 5669 20  0000 C CNN
F 1 "jumper" H 9050 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8950 5580 50  0001 C CNN
F 3 "~" H 9050 5680 50  0001 C CNN
	1    9050 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8700 4550 8700 4450
Wire Wire Line
	8700 4400 9350 4400
Wire Wire Line
	9350 4400 9350 5800
Connection ~ 8700 4450
Wire Wire Line
	8700 4450 8700 4400
Wire Wire Line
	8900 4450 8900 4550
Wire Wire Line
	8900 4550 8800 4550
Connection ~ 8900 4450
Wire Wire Line
	8600 4550 8500 4550
Wire Wire Line
	8500 4550 8500 4450
Wire Wire Line
	8500 4450 8500 4350
Wire Wire Line
	8500 4350 9450 4350
Wire Wire Line
	9450 4350 9450 5000
Connection ~ 8500 4450
$Comp
L servo:jumper JP1634
U 1 1 6148B251
P 8600 5600
F 0 "JP1634" H 8600 5669 20  0000 C CNN
F 1 "jumper" H 8600 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 5580 50  0001 C CNN
F 3 "~" H 8600 5680 50  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1640
U 1 1 6148B258
P 8800 5600
F 0 "JP1640" H 8800 5669 20  0000 C CNN
F 1 "jumper" H 8800 5686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8700 5580 50  0001 C CNN
F 3 "~" H 8800 5680 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5700 8700 5600
Connection ~ 8700 5600
Wire Wire Line
	8700 5600 8700 5450
Wire Wire Line
	8800 5500 8900 5500
Wire Wire Line
	8900 5500 8900 5600
Wire Wire Line
	8600 5450 8600 5500
Wire Wire Line
	8600 5500 8500 5500
Wire Wire Line
	8500 5500 8500 5600
Wire Wire Line
	8900 5600 8950 5600
Connection ~ 8900 5600
Wire Wire Line
	8500 5600 8500 5800
Wire Wire Line
	8500 5800 8950 5800
Connection ~ 8500 5600
Wire Wire Line
	9350 5800 9150 5800
Wire Wire Line
	9450 5100 9450 5600
Wire Wire Line
	8700 5700 9250 5700
Wire Wire Line
	9250 5700 9250 4450
Wire Wire Line
	9250 4450 8900 4450
Wire Wire Line
	9150 5600 9450 5600
Wire Wire Line
	8650 7300 8650 7250
$Comp
L servo:LXS6-NPS U1606
U 1 1 6148B273
P 8550 6800
F 0 "U1606" H 8050 7300 39  0000 L CNN
F 1 "LXS6-NPS" H 8000 7200 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 8550 6000 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 8550 6150 50  0001 C CNN
	1    8550 6800
	1    0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1606
U 1 1 6148B27A
P 9550 6900
F 0 "J1606" H 9470 6607 39  0000 C CNN
F 1 "tblock" H 9470 6682 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 9450 6900 50  0001 C CNN
F 3 "~" H 9550 7000 50  0001 C CNN
	1    9550 6900
	1    0    0    1   
$EndComp
$Comp
L servo:jumper JP1644
U 1 1 6148B281
P 8900 7600
F 0 "JP1644" H 8900 7669 20  0000 C CNN
F 1 "jumper" H 8900 7686 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 7580 50  0001 C CNN
F 3 "~" H 8900 7680 50  0001 C CNN
	1    8900 7600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 6900 9300 6900
Wire Wire Line
	9350 6800 9300 6800
$Comp
L servo:jumper JP1627
U 1 1 6148B28A
P 8450 6250
F 0 "JP1627" H 8450 6319 20  0000 C CNN
F 1 "jumper" H 8450 6336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8350 6230 50  0001 C CNN
F 3 "~" H 8450 6330 50  0001 C CNN
	1    8450 6250
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1635
U 1 1 6148B291
P 8650 6250
F 0 "JP1635" H 8650 6319 20  0000 C CNN
F 1 "jumper" H 8650 6336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8550 6230 50  0001 C CNN
F 3 "~" H 8650 6330 50  0001 C CNN
	1    8650 6250
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1643
U 1 1 6148B298
P 8900 7400
F 0 "JP1643" H 8900 7469 20  0000 C CNN
F 1 "jumper" H 8900 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 7380 50  0001 C CNN
F 3 "~" H 8900 7480 50  0001 C CNN
	1    8900 7400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 6350 8550 6250
Wire Wire Line
	8550 6200 9200 6200
Wire Wire Line
	9200 6200 9200 7600
Connection ~ 8550 6250
Wire Wire Line
	8550 6250 8550 6200
Wire Wire Line
	8750 6250 8750 6350
Wire Wire Line
	8750 6350 8650 6350
Connection ~ 8750 6250
Wire Wire Line
	8450 6350 8350 6350
Wire Wire Line
	8350 6350 8350 6250
Wire Wire Line
	8350 6250 8350 6150
Wire Wire Line
	8350 6150 9300 6150
Wire Wire Line
	9300 6150 9300 6800
Connection ~ 8350 6250
$Comp
L servo:jumper JP1628
U 1 1 6148B2AD
P 8450 7400
F 0 "JP1628" H 8450 7469 20  0000 C CNN
F 1 "jumper" H 8450 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8350 7380 50  0001 C CNN
F 3 "~" H 8450 7480 50  0001 C CNN
	1    8450 7400
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1636
U 1 1 6148B2B4
P 8650 7400
F 0 "JP1636" H 8650 7469 20  0000 C CNN
F 1 "jumper" H 8650 7486 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8550 7380 50  0001 C CNN
F 3 "~" H 8650 7480 50  0001 C CNN
	1    8650 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 7500 8550 7400
Connection ~ 8550 7400
Wire Wire Line
	8550 7400 8550 7250
Wire Wire Line
	8650 7300 8750 7300
Wire Wire Line
	8750 7300 8750 7400
Wire Wire Line
	8450 7250 8450 7300
Wire Wire Line
	8450 7300 8350 7300
Wire Wire Line
	8350 7300 8350 7400
Wire Wire Line
	8750 7400 8800 7400
Connection ~ 8750 7400
Wire Wire Line
	8350 7400 8350 7600
Wire Wire Line
	8350 7600 8800 7600
Connection ~ 8350 7400
Wire Wire Line
	9200 7600 9000 7600
Wire Wire Line
	9300 6900 9300 7400
Wire Wire Line
	8550 7500 9100 7500
Wire Wire Line
	9100 7500 9100 6250
Wire Wire Line
	9100 6250 8750 6250
Wire Wire Line
	9000 7400 9300 7400
Wire Wire Line
	8650 9150 8650 9100
$Comp
L servo:LXS6-NPS U1607
U 1 1 6148B2CF
P 8550 8650
F 0 "U1607" H 8050 9150 39  0000 L CNN
F 1 "LXS6-NPS" H 8000 9050 39  0000 L CNN
F 2 "servo:LEM_LTSR-NP" H 8550 7850 50  0001 C CNN
F 3 "../doc/datasheets/lem_lxs_series.pdf" H 8550 8000 50  0001 C CNN
	1    8550 8650
	1    0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J1607
U 1 1 6148B2D6
P 9550 8750
F 0 "J1607" H 9470 8457 39  0000 C CNN
F 1 "tblock" H 9470 8532 39  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 9450 8750 50  0001 C CNN
F 3 "~" H 9550 8850 50  0001 C CNN
	1    9550 8750
	1    0    0    1   
$EndComp
$Comp
L servo:jumper JP1646
U 1 1 6148B2DD
P 8900 9450
F 0 "JP1646" H 8900 9519 20  0000 C CNN
F 1 "jumper" H 8900 9536 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 9430 50  0001 C CNN
F 3 "~" H 8900 9530 50  0001 C CNN
	1    8900 9450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 8750 9300 8750
Wire Wire Line
	9350 8650 9300 8650
$Comp
L servo:jumper JP1629
U 1 1 6148B2E6
P 8450 8100
F 0 "JP1629" H 8450 8169 20  0000 C CNN
F 1 "jumper" H 8450 8186 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8350 8080 50  0001 C CNN
F 3 "~" H 8450 8180 50  0001 C CNN
	1    8450 8100
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1637
U 1 1 6148B2ED
P 8650 8100
F 0 "JP1637" H 8650 8169 20  0000 C CNN
F 1 "jumper" H 8650 8186 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8550 8080 50  0001 C CNN
F 3 "~" H 8650 8180 50  0001 C CNN
	1    8650 8100
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1645
U 1 1 6148B2F4
P 8900 9250
F 0 "JP1645" H 8900 9319 20  0000 C CNN
F 1 "jumper" H 8900 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8800 9230 50  0001 C CNN
F 3 "~" H 8900 9330 50  0001 C CNN
	1    8900 9250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 8200 8550 8100
Wire Wire Line
	8550 8050 9200 8050
Wire Wire Line
	9200 8050 9200 9450
Connection ~ 8550 8100
Wire Wire Line
	8550 8100 8550 8050
Wire Wire Line
	8750 8100 8750 8200
Wire Wire Line
	8750 8200 8650 8200
Connection ~ 8750 8100
Wire Wire Line
	8450 8200 8350 8200
Wire Wire Line
	8350 8200 8350 8100
Wire Wire Line
	8350 8100 8350 8000
Wire Wire Line
	8350 8000 9300 8000
Wire Wire Line
	9300 8000 9300 8650
Connection ~ 8350 8100
$Comp
L servo:jumper JP1630
U 1 1 6148B309
P 8450 9250
F 0 "JP1630" H 8450 9319 20  0000 C CNN
F 1 "jumper" H 8450 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8350 9230 50  0001 C CNN
F 3 "~" H 8450 9330 50  0001 C CNN
	1    8450 9250
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP1638
U 1 1 6148B310
P 8650 9250
F 0 "JP1638" H 8650 9319 20  0000 C CNN
F 1 "jumper" H 8650 9336 39  0001 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8550 9230 50  0001 C CNN
F 3 "~" H 8650 9330 50  0001 C CNN
	1    8650 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 9350 8550 9250
Connection ~ 8550 9250
Wire Wire Line
	8550 9250 8550 9100
Wire Wire Line
	8650 9150 8750 9150
Wire Wire Line
	8750 9150 8750 9250
Wire Wire Line
	8450 9100 8450 9150
Wire Wire Line
	8450 9150 8350 9150
Wire Wire Line
	8350 9150 8350 9250
Wire Wire Line
	8750 9250 8800 9250
Connection ~ 8750 9250
Wire Wire Line
	8350 9250 8350 9450
Wire Wire Line
	8350 9450 8800 9450
Connection ~ 8350 9250
Wire Wire Line
	9200 9450 9000 9450
Wire Wire Line
	9300 8750 9300 9250
Wire Wire Line
	8550 9350 9100 9350
Wire Wire Line
	9100 9350 9100 8100
Wire Wire Line
	9100 8100 8750 8100
Wire Wire Line
	9000 9250 9300 9250
Wire Wire Line
	8700 2500 9050 2500
Wire Wire Line
	8500 2500 8500 2600
$EndSCHEMATC
