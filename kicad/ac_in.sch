EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 19
Title "AC input"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5300 8200 5100 8200
$Comp
L servo:3V3 #PWR0718
U 1 1 5DDC15D8
P 7700 6450
F 0 "#PWR0718" H 7700 6250 20  0001 C CNN
F 1 "3V3" H 7705 6607 28  0000 C CNN
F 2 "" H 7700 6450 50  0001 C CNN
F 3 "" H 7700 6450 50  0001 C CNN
	1    7700 6450
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR0719
U 1 1 5DDC3F59
P 8200 8100
F 0 "#PWR0719" H 8200 7900 20  0001 C CNN
F 1 "1V2C" H 8200 8250 28  0000 C CNN
F 2 "" H 8200 8100 50  0001 C CNN
F 3 "" H 8200 8100 50  0001 C CNN
	1    8200 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6550 7700 6450
Wire Wire Line
	7700 6550 7700 6650
Connection ~ 7700 6550
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 7700 6850
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R705"  Part="1" 
F 0 "R705" V 7678 6900 20  0000 L CNN
F 1 "680" V 7721 6900 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7200 6750 60  0001 C CNN
F 3 "" H 7300 6850 60  0001 C CNN
F 4 "680" V -4700 7250 60  0001 C CNN "ValueDisplayed"
	1    7700 6850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDA8
P 5500 6850
AR Path="/5EAA846A/5E18DDA8" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDA8" Ref="C703"  Part="1" 
F 0 "C703" V 5528 6960 20  0000 L CNN
F 1 "22uF" V 5571 6960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5500 6750 60  0001 C CNN
F 3 "" H 5500 6850 60  0000 C CNN
F 4 "22uF" V -7500 7250 60  0001 C CNN "ValueDisplayed"
	1    5500 6850
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDA9
P 7700 7150
AR Path="/5EAA846A/5E18DDA9" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDA9" Ref="D705"  Part="1" 
F 0 "D705" V 7725 7280 20  0000 L CNN
F 1 "green" H 7700 7300 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 7500 6950 60  0001 C CNN
F 3 "" H 7500 6950 60  0000 C CNN
F 4 "red" V -4700 7050 60  0001 C CNN "VALUE"
	1    7700 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 7300 7700 7350
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB2
P 5900 6850
AR Path="/5EAA846A/5E18DDB2" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB2" Ref="C706"  Part="1" 
F 0 "C706" V 5928 6741 20  0000 R CNN
F 1 "100nF" V 5971 6741 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 5900 6750 60  0001 C CNN
F 3 "" H 5900 6850 60  0000 C CNN
F 4 "22uF" V -7100 7250 60  0001 C CNN "ValueDisplayed"
	1    5900 6850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD13
P 7000 6850
AR Path="/5EAA846A/5E1ADD13" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD13" Ref="C711"  Part="1" 
F 0 "C711" V 7028 6960 20  0000 L CNN
F 1 "22uF" V 7071 6960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7000 6750 60  0001 C CNN
F 3 "" H 7000 6850 60  0000 C CNN
F 4 "22uF" V -6000 7250 60  0001 C CNN "ValueDisplayed"
	1    7000 6850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD22
P 7350 6850
AR Path="/5EAA846A/5E1ADD22" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD22" Ref="C713"  Part="1" 
F 0 "C713" V 7378 6960 20  0000 L CNN
F 1 "100nF" V 7421 6960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7350 6750 60  0001 C CNN
F 3 "" H 7350 6850 60  0000 C CNN
F 4 "22uF" V -5650 7250 60  0001 C CNN "ValueDisplayed"
	1    7350 6850
	0    1    1    0   
$EndComp
Connection ~ 7350 6550
Wire Wire Line
	7350 6550 7700 6550
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB7
P 6050 8500
AR Path="/5EAA846A/5E18DDB7" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB7" Ref="C704"  Part="1" 
F 0 "C704" V 6078 8610 20  0000 L CNN
F 1 "22uF" V 6121 8610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6050 8400 60  0001 C CNN
F 3 "" H 6050 8500 60  0000 C CNN
F 4 "22uF" V -6950 8900 60  0001 C CNN "ValueDisplayed"
	1    6050 8500
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E20776B
P 6400 8500
AR Path="/5EAA846A/5E20776B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E20776B" Ref="C707"  Part="1" 
F 0 "C707" V 6428 8610 20  0000 L CNN
F 1 "100nF" V 6471 8610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6400 8400 60  0001 C CNN
F 3 "" H 6400 8500 60  0000 C CNN
F 4 "22uF" V -6600 8900 60  0001 C CNN "ValueDisplayed"
	1    6400 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 8500 5600 9000
Wire Wire Line
	8200 8200 8200 8100
Wire Wire Line
	8200 8200 8200 8300
Connection ~ 8200 8200
$Comp
L servo:Resistor R?
U 1 1 5E18DDBA
P 8200 8500
AR Path="/5EAA846A/5E18DDBA" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E18DDBA" Ref="R706"  Part="1" 
F 0 "R706" V 8178 8550 20  0000 L CNN
F 1 "680" V 8221 8550 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7700 8400 60  0001 C CNN
F 3 "" H 7800 8500 60  0001 C CNN
F 4 "680" V -4200 8900 60  0001 C CNN "ValueDisplayed"
	1    8200 8500
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDBB
P 8200 8800
AR Path="/5EAA846A/5E18DDBB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDBB" Ref="D706"  Part="1" 
F 0 "D706" V 8225 8930 20  0000 L CNN
F 1 "blue" H 8200 8950 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 8000 8600 60  0001 C CNN
F 3 "" H 8000 8600 60  0000 C CNN
F 4 "red" V -4200 8700 60  0001 C CNN "VALUE"
	1    8200 8800
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 8950 8200 9000
$Comp
L servo:GND #PWR?
U 1 1 5E286204
P 6950 9000
AR Path="/5DCD812E/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E286204" Ref="#PWR0715"  Part="1" 
F 0 "#PWR0715" H 6955 8851 20  0001 C CNN
F 1 "GND" H 6950 8842 30  0000 C CNN
F 2 "" H 6950 9000 70  0000 C CNN
F 3 "" H 6950 9000 70  0000 C CNN
	1    6950 9000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E28620B
P 7500 8500
AR Path="/5EAA846A/5E28620B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E28620B" Ref="C712"  Part="1" 
F 0 "C712" V 7528 8610 20  0000 L CNN
F 1 "22uF" V 7571 8610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7500 8400 60  0001 C CNN
F 3 "" H 7500 8500 60  0000 C CNN
F 4 "22uF" V -5500 8900 60  0001 C CNN "ValueDisplayed"
	1    7500 8500
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E286219
P 7850 8500
AR Path="/5EAA846A/5E286219" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E286219" Ref="C714"  Part="1" 
F 0 "C714" V 7878 8610 20  0000 L CNN
F 1 "100nF" V 7921 8610 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7850 8400 60  0001 C CNN
F 3 "" H 7850 8500 60  0000 C CNN
F 4 "22uF" V -5150 8900 60  0001 C CNN "ValueDisplayed"
	1    7850 8500
	0    1    1    0   
$EndComp
Text Notes 5550 6200 0    20   ~ 0
in case we need more \ncurrent use another 5v dc/dc and\n open jumper to no overload the previos \nschitching power supply. if not, just chain and \ndo not place the extra 78E5
$Comp
L servo:Capacitor C?
U 1 1 5E2F90CF
P 13950 6950
AR Path="/5EAA846A/5E2F90CF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90CF" Ref="C708"  Part="1" 
F 0 "C708" V 13978 7060 20  0000 L CNN
F 1 "22uF" V 14021 7060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 13950 6850 60  0001 C CNN
F 3 "" H 13950 6950 60  0000 C CNN
F 4 "22uF" V 950 7350 60  0001 C CNN "ValueDisplayed"
	1    13950 6950
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDC4
P 14250 6950
AR Path="/5EAA846A/5E18DDC4" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDC4" Ref="C710"  Part="1" 
F 0 "C710" V 14278 7060 20  0000 L CNN
F 1 "100nF" V 14321 7060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 14250 6850 60  0001 C CNN
F 3 "" H 14250 6950 60  0000 C CNN
F 4 "22uF" V 1250 7350 60  0001 C CNN "ValueDisplayed"
	1    14250 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	13500 6950 13500 7450
Wire Wire Line
	13000 6550 13000 6650
$Comp
L servo:15VH #PWR0710
U 1 1 5E18DDC5
P 13000 6550
F 0 "#PWR0710" H 13000 6350 20  0001 C CNN
F 1 "15VH" H 13005 6707 28  0000 C CNN
F 2 "" H 13000 6550 50  0001 C CNN
F 3 "" H 13000 6550 50  0001 C CNN
	1    13000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 6650 13200 6650
$Comp
L servo:5VH #PWR0717
U 1 1 5E309ABD
P 14650 6550
F 0 "#PWR0717" H 14650 6350 20  0001 C CNN
F 1 "5VH" H 14655 6707 28  0000 C CNN
F 2 "" H 14650 6550 50  0001 C CNN
F 3 "" H 14650 6550 50  0001 C CNN
	1    14650 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 7450 13650 7450
$Comp
L servo:Resistor R?
U 1 1 5E38D647
P 14650 6900
AR Path="/5EAA846A/5E38D647" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E38D647" Ref="R704"  Part="1" 
F 0 "R704" V 14628 6950 20  0000 L CNN
F 1 "680" V 14671 6950 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 14150 6800 60  0001 C CNN
F 3 "" H 14250 6900 60  0001 C CNN
F 4 "680" V 2250 7300 60  0001 C CNN "ValueDisplayed"
	1    14650 6900
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E38D64F
P 14650 7200
AR Path="/5EAA846A/5E38D64F" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E38D64F" Ref="D704"  Part="1" 
F 0 "D704" V 14675 7330 20  0000 L CNN
F 1 "red" H 14650 7350 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 14450 7000 60  0001 C CNN
F 3 "" H 14450 7000 60  0000 C CNN
F 4 "red" V 2250 7100 60  0001 C CNN "VALUE"
	1    14650 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	14650 7350 14650 7450
Wire Wire Line
	14650 6700 14650 6650
$Comp
L servo:GND #PWR?
U 1 1 5E18DDCA
P 3500 7250
AR Path="/5DCD812E/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDCA" Ref="#PWR0701"  Part="1" 
F 0 "#PWR0701" H 3505 7101 20  0001 C CNN
F 1 "GND" H 3505 7092 30  0000 C CNN
F 2 "" H 3500 7250 70  0000 C CNN
F 3 "" H 3500 7250 70  0000 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR0704
U 1 1 5E18DDCC
P 13400 3650
F 0 "#PWR0704" H 13400 3450 20  0001 C CNN
F 1 "15VH" H 13453 3694 28  0000 L CNN
F 2 "" H 13400 3650 50  0001 C CNN
F 3 "" H 13400 3650 50  0001 C CNN
	1    13400 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0702
U 1 1 5E18DDCD
P 12900 4550
F 0 "#PWR0702" H 12900 4300 30  0001 C CNN
F 1 "GNDH" H 12900 4392 30  0000 C CNN
F 2 "" H 12900 4550 50  0001 C CNN
F 3 "" H 12900 4550 50  0001 C CNN
	1    12900 4550
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDCF
P 13000 6950
AR Path="/5EAA846A/5E18DDCF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDCF" Ref="C702"  Part="1" 
F 0 "C702" V 13028 6841 20  0000 R CNN
F 1 "220uF" V 13071 6841 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 13000 6850 60  0001 C CNN
F 3 "" H 13000 6950 60  0000 C CNN
F 4 "22uF" V 0   7350 60  0001 C CNN "ValueDisplayed"
	1    13000 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	13000 6650 13000 6850
Connection ~ 13000 6650
Wire Wire Line
	13500 7450 13000 7450
Connection ~ 13500 7450
Text Notes 5500 5550 0    197  ~ 39
COLD SUPPLY\n
Text Notes 12700 5800 0    197  ~ 39
HOT SUPPLY
Wire Wire Line
	7250 8200 7300 8200
Wire Wire Line
	7250 8300 7300 8300
Wire Wire Line
	7300 8300 7300 8200
Connection ~ 7300 8200
Wire Wire Line
	6950 8600 6950 9000
Connection ~ 6950 9000
$Comp
L servo:AP2114 U705
U 1 1 5E18DDD0
P 6450 6650
F 0 "U705" H 6450 6991 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 6450 6916 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 6550 7275 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 6500 7050 50  0001 C CNN
	1    6450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6550 6800 6550
Wire Wire Line
	6750 6650 6800 6650
Wire Wire Line
	6800 6650 6800 6550
Wire Wire Line
	6450 6950 6450 7350
Connection ~ 6800 6550
Connection ~ 6450 7350
Connection ~ 14650 6650
Wire Wire Line
	14650 6550 14650 6650
Connection ~ 1950 6750
Wire Wire Line
	1950 6750 1850 6750
Text Notes 7550 1650 0    197  ~ 39
Main Power
Text Notes 13150 6000 0    20   ~ 0
Take in account that hot doesn't mean that it is refered to high voltage\n AC socket input path like 220v/380v. It is intended to isolate the uC\n/logic/user interfase side from accidentally high voltage contact on the\n hot side and prevent injuries as to make the reinforced isolation\n possible with one single isolateion added
Text Notes 13300 6400 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 5400 7950 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 7900 2350 0    20   ~ 0
In case the control board have to be supply directly with socket voltage\n (220v) populate these. It's not a good idea cause I'll like to keep hight\n voltage outside these controller board, but it's a requeriment, so I let it\n as an option. But you have the low voltage input 15vc and 15vh\n connectors also\n\nI've choosen to add 2 power supply for Cold and Hot sides because\n it's cheaper than have only one double sized power supply and add\n a DC/DC isolated controller, and it has the advantage to choose\n which one to use and if there is some isue in the HOT side, the Cold\n side keeps working without affect. I've choosen 15W size beouse\n has similar price as 10.2W and is pin-to-pin compatible with 20W, so\n you could change if you need more power\n\n\nI wrote 15v on the DC voltage side, but it's better to use 12v. But the\n range coulg be from 8 to 18 more or less
Text Notes 6000 5800 0    20   ~ 0
It is inteded to use only, I mean ONLY inside the control board, none of\n these coopers wires has to leave the board. I isolate every single pin\n from these supply to go outside, take these in account\n
Text Notes 6100 7100 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:GNDH #PWR0713
U 1 1 5EC79A03
P 13650 7500
F 0 "#PWR0713" H 13650 7250 30  0001 C CNN
F 1 "GNDH" H 13650 7342 30  0000 C CNN
F 2 "" H 13650 7500 50  0001 C CNN
F 3 "" H 13650 7500 50  0001 C CNN
	1    13650 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 7500 13650 7450
Connection ~ 13650 7450
Wire Wire Line
	1950 6600 1950 6750
$Comp
L servo:GND #PWR?
U 1 1 5E18DDDC
P 6450 7400
AR Path="/5DCD812E/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDDC" Ref="#PWR0714"  Part="1" 
F 0 "#PWR0714" H 6455 7251 20  0001 C CNN
F 1 "GND" H 6450 7242 30  0000 C CNN
F 2 "" H 6450 7400 70  0000 C CNN
F 3 "" H 6450 7400 70  0000 C CNN
	1    6450 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 7400 6450 7350
Wire Wire Line
	5500 7050 5500 7350
Wire Wire Line
	5500 7350 5900 7350
Wire Wire Line
	5500 6550 5900 6550
Wire Wire Line
	5500 6550 5500 6750
Wire Wire Line
	5900 6750 5900 6550
Connection ~ 5900 6550
Wire Wire Line
	5900 6550 6150 6550
Wire Wire Line
	5900 7050 5900 7350
Connection ~ 5900 7350
Wire Wire Line
	5900 7350 6450 7350
Wire Wire Line
	6800 6550 7000 6550
Connection ~ 7000 6550
Wire Wire Line
	7000 6550 7350 6550
Wire Wire Line
	6450 7350 7000 7350
Wire Wire Line
	7000 6750 7000 6550
Wire Wire Line
	7000 7050 7000 7350
Connection ~ 7000 7350
Wire Wire Line
	7000 7350 7350 7350
Wire Wire Line
	7350 6750 7350 6550
Connection ~ 7350 7350
Wire Wire Line
	7350 7350 7700 7350
Wire Wire Line
	7350 7050 7350 7350
$Comp
L servo:R-78E3.3-1.0 U702
U 1 1 5E18DDB9
P 5600 8200
F 0 "U702" H 5450 8325 39  0000 C CNN
F 1 "R-783.3-1.0" H 5600 8325 39  0000 L CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 5650 7950 50  0001 L CIN
F 3 "../doc/datasheets/R-78-1.0.pdf" H 5450 8325 50  0001 C CNN
	1    5600 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 8200 6050 8200
Wire Wire Line
	7300 8200 7500 8200
Wire Wire Line
	6050 8400 6050 8200
Connection ~ 6050 8200
Wire Wire Line
	6050 8200 6400 8200
Wire Wire Line
	6400 8400 6400 8200
Connection ~ 6400 8200
Wire Wire Line
	6400 8200 6650 8200
Wire Wire Line
	5600 9000 6050 9000
Wire Wire Line
	6050 8700 6050 9000
Connection ~ 6050 9000
Wire Wire Line
	6050 9000 6400 9000
Wire Wire Line
	6400 8700 6400 9000
Connection ~ 6400 9000
Wire Wire Line
	6400 9000 6950 9000
$Comp
L servo:AP2114 U706
U 1 1 5E28622B
P 6950 8300
F 0 "U706" H 6950 8641 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 6950 8566 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 7050 8925 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 7000 8700 50  0001 C CNN
	1    6950 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 8700 7500 9000
Wire Wire Line
	6950 9000 7500 9000
Connection ~ 7500 9000
Wire Wire Line
	7500 9000 7850 9000
Wire Wire Line
	7850 8700 7850 9000
Connection ~ 7850 9000
Wire Wire Line
	7850 9000 8200 9000
Wire Wire Line
	7500 8400 7500 8200
Connection ~ 7500 8200
Wire Wire Line
	7850 8400 7850 8200
Wire Wire Line
	7500 8200 7850 8200
Connection ~ 7850 8200
Wire Wire Line
	7850 8200 8200 8200
Text Notes 6750 8800 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:R-78E5.0-1.0 U704
U 1 1 5E2CE6E1
P 13500 6650
F 0 "U704" H 13500 6868 39  0000 C CNN
F 1 "R-78E5.0-1.0" H 13500 6793 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 13550 6400 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 13500 6650 50  0001 C CNN
	1    13500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 6650 13950 6650
Wire Wire Line
	13650 7450 13950 7450
Wire Wire Line
	13000 7150 13000 7450
Wire Wire Line
	13950 6850 13950 6650
Connection ~ 13950 6650
Wire Wire Line
	13950 6650 14250 6650
Wire Wire Line
	14250 6850 14250 6650
Connection ~ 14250 6650
Wire Wire Line
	14250 6650 14650 6650
Wire Wire Line
	13950 7150 13950 7450
Connection ~ 13950 7450
Wire Wire Line
	13950 7450 14250 7450
Wire Wire Line
	14250 7150 14250 7450
Connection ~ 14250 7450
Wire Wire Line
	14250 7450 14650 7450
$Comp
L servo:PWR_FLAG #FLG0701
U 1 1 5E1BE0A4
P 9000 2850
F 0 "#FLG0701" H 9000 2925 20  0001 C CNN
F 1 "PWR_FLAG" H 9000 3000 20  0000 C CNN
F 2 "" H 9000 2850 50  0001 C CNN
F 3 "~" H 9000 2850 50  0001 C CNN
	1    9000 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:PWR_FLAG #FLG0702
U 1 1 5E1C8CE4
P 1950 6600
F 0 "#FLG0702" H 1950 6675 20  0001 C CNN
F 1 "PWR_FLAG" H 1950 6750 20  0000 C CNN
F 2 "" H 1950 6600 50  0001 C CNN
F 3 "~" H 1950 6600 50  0001 C CNN
	1    1950 6600
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F701
U 1 1 5E1D6E68
P 1700 6750
F 0 "F701" V 1780 6750 39  0000 C CNN
F 1 "Fuse" V 1625 6750 39  0000 C CNN
F 2 "servo:fuse_3912" V 1630 6750 50  0001 C CNN
F 3 "../doc/datasheets/fuse_3912pdf" V 1780 6750 50  0001 C CNN
	1    1700 6750
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E45F0A3
P 3500 6700
AR Path="/5EAA846A/5E45F0A3" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E45F0A3" Ref="R701"  Part="1" 
F 0 "R701" V 3478 6750 20  0000 L CNN
F 1 "680" V 3521 6750 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 6600 60  0001 C CNN
F 3 "" H 3100 6700 60  0001 C CNN
F 4 "680" V -8900 7100 60  0001 C CNN "ValueDisplayed"
	1    3500 6700
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E45F0AB
P 3500 7000
AR Path="/5EAA846A/5E45F0AB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E45F0AB" Ref="D701"  Part="1" 
F 0 "D701" V 3525 7130 20  0000 L CNN
F 1 "green" H 3500 7150 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 3300 6800 60  0001 C CNN
F 3 "" H 3300 6800 60  0000 C CNN
F 4 "red" V -8900 6900 60  0001 C CNN "VALUE"
	1    3500 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 7150 3500 7200
Wire Wire Line
	3500 7200 3300 7200
Wire Wire Line
	3300 7200 3300 6950
Wire Wire Line
	3300 6750 3300 6450
Wire Wire Line
	3300 6450 3500 6450
Wire Wire Line
	3500 6500 3500 6450
Connection ~ 3500 6450
$Comp
L servo:jumper JP701
U 1 1 5E4E5EBD
P 3750 6450
F 0 "JP701" H 3750 6611 39  0000 C CNN
F 1 "jumper" H 3750 6536 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3650 6430 50  0001 C CNN
F 3 "~" H 3750 6530 50  0001 C CNN
	1    3750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6450 3900 6450
Wire Wire Line
	3500 6450 3650 6450
Connection ~ 11400 4050
Wire Wire Line
	11400 4050 11300 4050
Wire Wire Line
	11400 3900 11400 4050
$Comp
L servo:PWR_FLAG #FLG0703
U 1 1 5E548503
P 11400 3900
F 0 "#FLG0703" H 11400 3975 20  0001 C CNN
F 1 "PWR_FLAG" H 11400 4050 20  0000 C CNN
F 2 "" H 11400 3900 50  0001 C CNN
F 3 "~" H 11400 3900 50  0001 C CNN
	1    11400 3900
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F702
U 1 1 5E548509
P 11150 4050
F 0 "F702" V 11230 4050 39  0000 C CNN
F 1 "Fuse" V 11075 4050 39  0000 C CNN
F 2 "servo:fuse_3912" V 11080 4050 50  0001 C CNN
F 3 "../doc/datasheets/fuse_3912pdf" V 11230 4050 50  0001 C CNN
	1    11150 4050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E548518
P 12900 4000
AR Path="/5EAA846A/5E548518" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E548518" Ref="R702"  Part="1" 
F 0 "R702" V 12878 4050 20  0000 L CNN
F 1 "680" V 12921 4050 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 12400 3900 60  0001 C CNN
F 3 "" H 12500 4000 60  0001 C CNN
F 4 "680" V 500 4400 60  0001 C CNN "ValueDisplayed"
	1    12900 4000
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E548520
P 12900 4300
AR Path="/5EAA846A/5E548520" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E548520" Ref="D702"  Part="1" 
F 0 "D702" V 12925 4430 20  0000 L CNN
F 1 "red" H 12900 4450 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 12700 4100 60  0001 C CNN
F 3 "" H 12700 4100 60  0000 C CNN
F 4 "red" V 500 4200 60  0001 C CNN "VALUE"
	1    12900 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	12900 4450 12900 4500
Wire Wire Line
	12700 4500 12700 4250
Wire Wire Line
	12700 4050 12700 3750
Wire Wire Line
	12700 3750 12900 3750
Wire Wire Line
	12900 3800 12900 3750
Connection ~ 12900 3750
$Comp
L servo:jumper JP702
U 1 1 5E54852F
P 13150 3750
F 0 "JP702" H 13150 3911 39  0000 C CNN
F 1 "jumper" H 13150 3836 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 13050 3730 50  0001 C CNN
F 3 "~" H 13150 3830 50  0001 C CNN
	1    13150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 3750 13300 3750
Wire Wire Line
	13400 3650 13400 3750
Wire Wire Line
	12900 3750 13050 3750
Wire Wire Line
	12900 4550 12900 4500
Connection ~ 12900 4500
Wire Wire Line
	12700 4500 12900 4500
Wire Wire Line
	3500 7200 3500 7250
Connection ~ 3500 7200
Wire Wire Line
	13300 3650 13300 3750
$Comp
L servo:PWR_FLAG #FLG0705
U 1 1 5E6B6A83
P 13300 3650
F 0 "#FLG0705" H 13300 3725 20  0001 C CNN
F 1 "PWR_FLAG" H 13300 3800 20  0000 C CNN
F 2 "" H 13300 3650 50  0001 C CNN
F 3 "~" H 13300 3650 50  0001 C CNN
	1    13300 3650
	1    0    0    -1  
$EndComp
Connection ~ 13300 3750
Wire Wire Line
	13300 3750 13400 3750
$Comp
L servo:PWR_FLAG #FLG0704
U 1 1 5E6C456D
P 3900 6350
F 0 "#FLG0704" H 3900 6425 20  0001 C CNN
F 1 "PWR_FLAG" H 3900 6500 20  0000 C CNN
F 2 "" H 3900 6350 50  0001 C CNN
F 3 "~" H 3900 6350 50  0001 C CNN
	1    3900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6350 3900 6450
Connection ~ 3900 6450
Wire Wire Line
	3900 6450 4000 6450
Wire Wire Line
	1300 6750 1550 6750
Wire Wire Line
	10700 4050 11000 4050
$Comp
L Connector_Generic:Conn_02x04_Row_Letter_Last J?
U 1 1 5E229E8E
P 8550 3400
AR Path="/5E21534F/5E229E8E" Ref="J?"  Part="1" 
AR Path="/5DD76B18/5E229E8E" Ref="J701"  Part="1" 
AR Path="/5EC40F3C/5E229E8E" Ref="J?"  Part="1" 
F 0 "J701" H 8600 3717 50  0000 C CNN
F 1 "tblock" H 8600 3626 50  0000 C CNN
F 2 "servo:tblock02x04" H 8550 3400 50  0001 C CNN
F 3 "~" H 8550 3400 50  0001 C CNN
	1    8550 3400
	1    0    0    -1  
$EndComp
Text GLabel 8200 3600 0    50   Input ~ 0
VBUS_B_N_H
Text GLabel 8200 3400 0    50   Input ~ 0
VBUS_A_N_H
Text GLabel 8200 3500 0    50   Input ~ 0
VBUS_B_P_H
Text GLabel 8200 3300 0    50   Input ~ 0
VBUS_A_P_H
Wire Wire Line
	8350 3500 8200 3500
Wire Wire Line
	8350 3600 8200 3600
Wire Wire Line
	8200 3300 8350 3300
Wire Wire Line
	8350 3400 8200 3400
$Comp
L servo:IRM-10-5 PS701
U 1 1 5E1F0CFB
P 2650 6850
F 0 "PS701" H 2650 7151 39  0000 C CNN
F 1 "IRM-10-5" H 2650 7076 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 2650 6550 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 3050 6500 50  0001 C CNN
	1    2650 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6750 2250 6750
Wire Wire Line
	3050 6750 3300 6750
$Comp
L servo:5VC #PWR0126
U 1 1 5E21C60D
P 4000 6350
F 0 "#PWR0126" H 4000 6150 20  0001 C CNN
F 1 "5VC" H 4053 6394 28  0000 L CNN
F 2 "" H 4000 6350 50  0001 C CNN
F 3 "" H 4000 6350 50  0001 C CNN
	1    4000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6350 4000 6450
Wire Wire Line
	1300 6950 2250 6950
Wire Wire Line
	3050 6950 3300 6950
Connection ~ 5500 6550
Wire Wire Line
	5500 6350 5500 6550
$Comp
L servo:5VC #PWR0712
U 1 1 5E18DDC0
P 5500 6350
F 0 "#PWR0712" H 5500 6150 20  0001 C CNN
F 1 "5VC" H 5505 6507 28  0000 C CNN
F 2 "" H 5500 6350 50  0001 C CNN
F 3 "" H 5500 6350 50  0001 C CNN
	1    5500 6350
	1    0    0    -1  
$EndComp
$Comp
L servo:irm-10-12 PS702
U 1 1 5E299A6A
P 12050 4150
F 0 "PS702" H 12050 4451 39  0000 C CNN
F 1 "irm-10-12" H 12050 4376 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 12050 3850 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 12450 3800 50  0001 C CNN
	1    12050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 4050 11650 4050
Wire Wire Line
	12450 4050 12700 4050
Wire Wire Line
	12450 4250 12700 4250
Wire Wire Line
	5100 8000 5100 8200
$Comp
L servo:5VC #PWR0127
U 1 1 5E2B6C0C
P 5100 8000
F 0 "#PWR0127" H 5100 7800 20  0001 C CNN
F 1 "5VC" H 5105 8157 28  0000 C CNN
F 2 "" H 5100 8000 50  0001 C CNN
F 3 "" H 5100 8000 50  0001 C CNN
	1    5100 8000
	1    0    0    -1  
$EndComp
$Comp
L servo:Earth #PWR?
U 1 1 5E23C47B
P 9000 3950
AR Path="/5DC3DC9E/5E23C47B" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E23C47B" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 9000 3700 20  0001 C CNN
F 1 "Earth" H 9000 3801 20  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "~" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3600 9000 3600
Wire Wire Line
	9000 3600 9000 3900
Wire Wire Line
	8850 3500 9000 3500
Wire Wire Line
	8850 3400 9300 3400
Wire Wire Line
	8850 3300 9300 3300
Text Notes 8300 3800 0    20   ~ 0
Individuali selected input, but in case \nyou want, just join input line pins and \nwith 3 pins turn it all
$Comp
L servo:PWR_FLAG #FLG0102
U 1 1 63A59982
P 9150 3800
F 0 "#FLG0102" H 9150 3875 20  0001 C CNN
F 1 "PWR_FLAG" H 9150 3950 20  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "~" H 9150 3800 50  0001 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3900 9150 3900
Wire Wire Line
	9150 3900 9150 3800
Connection ~ 9000 3900
Wire Wire Line
	9000 3900 9000 3950
Wire Wire Line
	10700 4250 11650 4250
Wire Wire Line
	9000 2850 9000 3500
Connection ~ 9000 3500
Wire Wire Line
	9000 3500 9300 3500
Text Label 9100 3300 0    39   ~ 0
AC_L_C
Text Label 9100 3400 0    39   ~ 0
AC_L_H'
Text Label 9100 3500 0    39   ~ 0
AC_N
Text Label 1350 6750 0    39   ~ 0
AC_L_C
Text Label 10800 4050 0    39   ~ 0
AC_L_H'
Text Label 10800 4250 0    39   ~ 0
AC_N
Text Label 1350 6950 0    39   ~ 0
AC_N
Text Label 12750 3750 0    20   ~ 0
15VH_IN
Text Label 3100 6750 0    20   ~ 0
5VC_IN
$EndSCHEMATC
