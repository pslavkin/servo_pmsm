EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 18
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
	7900 3900 7700 3900
$Comp
L servo:3V3 #PWR0718
U 1 1 5DDC15D8
P 10300 2150
F 0 "#PWR0718" H 10300 1950 20  0001 C CNN
F 1 "3V3" H 10305 2307 28  0000 C CNN
F 2 "" H 10300 2150 50  0001 C CNN
F 3 "" H 10300 2150 50  0001 C CNN
	1    10300 2150
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR0719
U 1 1 5DDC3F59
P 10800 3800
F 0 "#PWR0719" H 10800 3600 20  0001 C CNN
F 1 "1V2C" H 10800 3950 28  0000 C CNN
F 2 "" H 10800 3800 50  0001 C CNN
F 3 "" H 10800 3800 50  0001 C CNN
	1    10800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 2250 10300 2150
Wire Wire Line
	10300 2250 10300 2350
Connection ~ 10300 2250
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 10300 2550
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R705"  Part="1" 
F 0 "R705" V 10278 2600 20  0000 L CNN
F 1 "680" V 10321 2600 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9800 2450 60  0001 C CNN
F 3 "" H 9900 2550 60  0001 C CNN
F 4 "680" V -2100 2950 60  0001 C CNN "ValueDisplayed"
	1    10300 2550
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDA8
P 8100 2550
AR Path="/5EAA846A/5E18DDA8" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDA8" Ref="C703"  Part="1" 
F 0 "C703" V 8128 2660 20  0000 L CNN
F 1 "22uF" V 8171 2660 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8100 2450 60  0001 C CNN
F 3 "" H 8100 2550 60  0000 C CNN
F 4 "22uF" V -4900 2950 60  0001 C CNN "ValueDisplayed"
	1    8100 2550
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDA9
P 10300 2850
AR Path="/5EAA846A/5E18DDA9" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDA9" Ref="D705"  Part="1" 
F 0 "D705" V 10325 2980 20  0000 L CNN
F 1 "green" H 10300 3000 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 10100 2650 60  0001 C CNN
F 3 "" H 10100 2650 60  0000 C CNN
F 4 "red" V -2100 2750 60  0001 C CNN "VALUE"
	1    10300 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	10300 3000 10300 3050
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB2
P 8500 2550
AR Path="/5EAA846A/5E18DDB2" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB2" Ref="C706"  Part="1" 
F 0 "C706" V 8528 2441 20  0000 R CNN
F 1 "100nF" V 8571 2441 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8500 2450 60  0001 C CNN
F 3 "" H 8500 2550 60  0000 C CNN
F 4 "22uF" V -4500 2950 60  0001 C CNN "ValueDisplayed"
	1    8500 2550
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD13
P 9600 2550
AR Path="/5EAA846A/5E1ADD13" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD13" Ref="C711"  Part="1" 
F 0 "C711" V 9628 2660 20  0000 L CNN
F 1 "22uF" V 9671 2660 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9600 2450 60  0001 C CNN
F 3 "" H 9600 2550 60  0000 C CNN
F 4 "22uF" V -3400 2950 60  0001 C CNN "ValueDisplayed"
	1    9600 2550
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD22
P 9950 2550
AR Path="/5EAA846A/5E1ADD22" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD22" Ref="C713"  Part="1" 
F 0 "C713" V 9978 2660 20  0000 L CNN
F 1 "100nF" V 10021 2660 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9950 2450 60  0001 C CNN
F 3 "" H 9950 2550 60  0000 C CNN
F 4 "22uF" V -3050 2950 60  0001 C CNN "ValueDisplayed"
	1    9950 2550
	0    1    1    0   
$EndComp
Connection ~ 9950 2250
Wire Wire Line
	9950 2250 10300 2250
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB7
P 8650 4200
AR Path="/5EAA846A/5E18DDB7" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB7" Ref="C704"  Part="1" 
F 0 "C704" V 8678 4310 20  0000 L CNN
F 1 "22uF" V 8721 4310 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8650 4100 60  0001 C CNN
F 3 "" H 8650 4200 60  0000 C CNN
F 4 "22uF" V -4350 4600 60  0001 C CNN "ValueDisplayed"
	1    8650 4200
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E20776B
P 9000 4200
AR Path="/5EAA846A/5E20776B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E20776B" Ref="C707"  Part="1" 
F 0 "C707" V 9028 4310 20  0000 L CNN
F 1 "100nF" V 9071 4310 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9000 4100 60  0001 C CNN
F 3 "" H 9000 4200 60  0000 C CNN
F 4 "22uF" V -4000 4600 60  0001 C CNN "ValueDisplayed"
	1    9000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4200 8200 4700
Wire Wire Line
	10800 3900 10800 3800
Wire Wire Line
	10800 3900 10800 4000
Connection ~ 10800 3900
$Comp
L servo:Resistor R?
U 1 1 5E18DDBA
P 10800 4200
AR Path="/5EAA846A/5E18DDBA" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E18DDBA" Ref="R706"  Part="1" 
F 0 "R706" V 10778 4250 20  0000 L CNN
F 1 "680" V 10821 4250 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 4100 60  0001 C CNN
F 3 "" H 10400 4200 60  0001 C CNN
F 4 "680" V -1600 4600 60  0001 C CNN "ValueDisplayed"
	1    10800 4200
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDBB
P 10800 4500
AR Path="/5EAA846A/5E18DDBB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDBB" Ref="D706"  Part="1" 
F 0 "D706" V 10825 4630 20  0000 L CNN
F 1 "blue" H 10800 4650 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 10600 4300 60  0001 C CNN
F 3 "" H 10600 4300 60  0000 C CNN
F 4 "red" V -1600 4400 60  0001 C CNN "VALUE"
	1    10800 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	10800 4650 10800 4700
$Comp
L servo:GND #PWR?
U 1 1 5E286204
P 9550 4700
AR Path="/5DCD812E/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E286204" Ref="#PWR0715"  Part="1" 
F 0 "#PWR0715" H 9555 4551 20  0001 C CNN
F 1 "GND" H 9550 4542 30  0000 C CNN
F 2 "" H 9550 4700 70  0000 C CNN
F 3 "" H 9550 4700 70  0000 C CNN
	1    9550 4700
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E28620B
P 10100 4200
AR Path="/5EAA846A/5E28620B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E28620B" Ref="C712"  Part="1" 
F 0 "C712" V 10128 4310 20  0000 L CNN
F 1 "22uF" V 10171 4310 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10100 4100 60  0001 C CNN
F 3 "" H 10100 4200 60  0000 C CNN
F 4 "22uF" V -2900 4600 60  0001 C CNN "ValueDisplayed"
	1    10100 4200
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E286219
P 10450 4200
AR Path="/5EAA846A/5E286219" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E286219" Ref="C714"  Part="1" 
F 0 "C714" V 10478 4310 20  0000 L CNN
F 1 "100nF" V 10521 4310 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10450 4100 60  0001 C CNN
F 3 "" H 10450 4200 60  0000 C CNN
F 4 "22uF" V -2550 4600 60  0001 C CNN "ValueDisplayed"
	1    10450 4200
	0    1    1    0   
$EndComp
Text Notes 8150 1900 0    20   ~ 0
in case we need more \ncurrent use another 5v dc/dc and\n open jumper to no overload the previos \nschitching power supply. if not, just chain and \ndo not place the extra 78E5
$Comp
L servo:Capacitor C?
U 1 1 5E2F90CF
P 9500 9350
AR Path="/5EAA846A/5E2F90CF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90CF" Ref="C708"  Part="1" 
F 0 "C708" V 9528 9460 20  0000 L CNN
F 1 "22uF" V 9571 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9500 9250 60  0001 C CNN
F 3 "" H 9500 9350 60  0000 C CNN
F 4 "22uF" V -3500 9750 60  0001 C CNN "ValueDisplayed"
	1    9500 9350
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDC4
P 9800 9350
AR Path="/5EAA846A/5E18DDC4" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDC4" Ref="C710"  Part="1" 
F 0 "C710" V 9828 9460 20  0000 L CNN
F 1 "100nF" V 9871 9460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9800 9250 60  0001 C CNN
F 3 "" H 9800 9350 60  0000 C CNN
F 4 "22uF" V -3200 9750 60  0001 C CNN "ValueDisplayed"
	1    9800 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 9350 9050 9850
Wire Wire Line
	8550 8950 8550 9050
$Comp
L servo:15VH #PWR0710
U 1 1 5E18DDC5
P 8550 8950
F 0 "#PWR0710" H 8550 8750 20  0001 C CNN
F 1 "15VH" H 8555 9107 28  0000 C CNN
F 2 "" H 8550 8950 50  0001 C CNN
F 3 "" H 8550 8950 50  0001 C CNN
	1    8550 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 9050 8750 9050
$Comp
L servo:5VH #PWR0717
U 1 1 5E309ABD
P 10200 8950
F 0 "#PWR0717" H 10200 8750 20  0001 C CNN
F 1 "5VH" H 10205 9107 28  0000 C CNN
F 2 "" H 10200 8950 50  0001 C CNN
F 3 "" H 10200 8950 50  0001 C CNN
	1    10200 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 9850 9200 9850
$Comp
L servo:Resistor R?
U 1 1 5E38D647
P 10200 9300
AR Path="/5EAA846A/5E38D647" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E38D647" Ref="R704"  Part="1" 
F 0 "R704" V 10178 9350 20  0000 L CNN
F 1 "680" V 10221 9350 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9700 9200 60  0001 C CNN
F 3 "" H 9800 9300 60  0001 C CNN
F 4 "680" V -2200 9700 60  0001 C CNN "ValueDisplayed"
	1    10200 9300
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E38D64F
P 10200 9600
AR Path="/5EAA846A/5E38D64F" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E38D64F" Ref="D704"  Part="1" 
F 0 "D704" V 10225 9730 20  0000 L CNN
F 1 "red" H 10200 9750 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 10000 9400 60  0001 C CNN
F 3 "" H 10000 9400 60  0000 C CNN
F 4 "red" V -2200 9500 60  0001 C CNN "VALUE"
	1    10200 9600
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 9750 10200 9850
Wire Wire Line
	10200 9100 10200 9050
$Comp
L servo:GND #PWR?
U 1 1 5E18DDCA
P 6100 2950
AR Path="/5DCD812E/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDCA" Ref="#PWR0701"  Part="1" 
F 0 "#PWR0701" H 6105 2801 20  0001 C CNN
F 1 "GND" H 6105 2792 30  0000 C CNN
F 2 "" H 6100 2950 70  0000 C CNN
F 3 "" H 6100 2950 70  0000 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:15VH #PWR0704
U 1 1 5E18DDCC
P 6600 8950
F 0 "#PWR0704" H 6600 8750 20  0001 C CNN
F 1 "15VH" H 6600 9100 28  0000 C CNN
F 2 "" H 6600 8950 50  0001 C CNN
F 3 "" H 6600 8950 50  0001 C CNN
	1    6600 8950
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0702
U 1 1 5E18DDCD
P 6100 9850
F 0 "#PWR0702" H 6100 9600 30  0001 C CNN
F 1 "GNDH" H 6100 9692 30  0000 C CNN
F 2 "" H 6100 9850 50  0001 C CNN
F 3 "" H 6100 9850 50  0001 C CNN
	1    6100 9850
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDCF
P 8550 9350
AR Path="/5EAA846A/5E18DDCF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDCF" Ref="C702"  Part="1" 
F 0 "C702" V 8578 9241 20  0000 R CNN
F 1 "220uF" V 8621 9241 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8550 9250 60  0001 C CNN
F 3 "" H 8550 9350 60  0000 C CNN
F 4 "22uF" V -4450 9750 60  0001 C CNN "ValueDisplayed"
	1    8550 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 9050 8550 9250
Connection ~ 8550 9050
Wire Wire Line
	9050 9850 8550 9850
Connection ~ 9050 9850
Text Notes 8100 1250 0    197  ~ 39
COLD SUPPLY\n
Text Notes 8250 8200 0    197  ~ 39
HOT SUPPLY
Wire Wire Line
	9850 3900 9900 3900
Wire Wire Line
	9850 4000 9900 4000
Wire Wire Line
	9900 4000 9900 3900
Connection ~ 9900 3900
Wire Wire Line
	9550 4300 9550 4700
Connection ~ 9550 4700
$Comp
L servo:AP2114 U705
U 1 1 5E18DDD0
P 9050 2350
F 0 "U705" H 9050 2691 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 9050 2616 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9150 2975 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 9100 2750 50  0001 C CNN
	1    9050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2250 9400 2250
Wire Wire Line
	9350 2350 9400 2350
Wire Wire Line
	9400 2350 9400 2250
Wire Wire Line
	9050 2650 9050 3050
Connection ~ 9400 2250
Connection ~ 9050 3050
Connection ~ 10200 9050
Wire Wire Line
	10200 8950 10200 9050
Connection ~ 4550 2450
Wire Wire Line
	4550 2450 4450 2450
Text Notes 4250 1100 0    197  ~ 39
Main Power
Text Notes 8700 8400 0    20   ~ 0
Take in account that hot doesn't mean that it is refered to high voltage\n AC socket input path like 220v/380v. It is intended to isolate the uC\n/logic/user interfase side from accidentally high voltage contact on the\n hot side and prevent injuries as to make the reinforced isolation\n possible with one single isolateion added
Text Notes 8850 8800 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 8000 3650 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 4600 1800 0    20   ~ 0
In case the control board have to be supply directly with socket voltage\n (220v) populate these. It's not a good idea cause I'll like to keep hight\n voltage outside these controller board, but it's a requeriment, so I let it\n as an option. But you have the low voltage input 15vc and 15vh\n connectors also\n\nI've choosen to add 2 power supply for Cold and Hot sides because\n it's cheaper than have only one double sized power supply and add\n a DC/DC isolated controller, and it has the advantage to choose\n which one to use and if there is some isue in the HOT side, the Cold\n side keeps working without affect. I've choosen 15W size beouse\n has similar price as 10.2W and is pin-to-pin compatible with 20W, so\n you could change if you need more power\n\n\nI wrote 15v on the DC voltage side, but it's better to use 12v. But the\n range coulg be from 8 to 18 more or less
Text Notes 8600 1500 0    20   ~ 0
It is inteded to use only, I mean ONLY inside the control board, none of\n these coopers wires has to leave the board. I isolate every single pin\n from these supply to go outside, take these in account\n
Text Notes 8700 2800 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:GNDH #PWR0713
U 1 1 5EC79A03
P 9200 9900
F 0 "#PWR0713" H 9200 9650 30  0001 C CNN
F 1 "GNDH" H 9200 9742 30  0000 C CNN
F 2 "" H 9200 9900 50  0001 C CNN
F 3 "" H 9200 9900 50  0001 C CNN
	1    9200 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 9900 9200 9850
Connection ~ 9200 9850
Wire Wire Line
	4550 2300 4550 2450
$Comp
L servo:GND #PWR?
U 1 1 5E18DDDC
P 9050 3100
AR Path="/5DCD812E/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDDC" Ref="#PWR0714"  Part="1" 
F 0 "#PWR0714" H 9055 2951 20  0001 C CNN
F 1 "GND" H 9050 2942 30  0000 C CNN
F 2 "" H 9050 3100 70  0000 C CNN
F 3 "" H 9050 3100 70  0000 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3100 9050 3050
Wire Wire Line
	8100 2750 8100 3050
Wire Wire Line
	8100 3050 8500 3050
Wire Wire Line
	8100 2250 8500 2250
Wire Wire Line
	8100 2250 8100 2450
Wire Wire Line
	8500 2450 8500 2250
Connection ~ 8500 2250
Wire Wire Line
	8500 2250 8750 2250
Wire Wire Line
	8500 2750 8500 3050
Connection ~ 8500 3050
Wire Wire Line
	8500 3050 9050 3050
Wire Wire Line
	9400 2250 9600 2250
Connection ~ 9600 2250
Wire Wire Line
	9600 2250 9950 2250
Wire Wire Line
	9050 3050 9600 3050
Wire Wire Line
	9600 2450 9600 2250
Wire Wire Line
	9600 2750 9600 3050
Connection ~ 9600 3050
Wire Wire Line
	9600 3050 9950 3050
Wire Wire Line
	9950 2450 9950 2250
Connection ~ 9950 3050
Wire Wire Line
	9950 3050 10300 3050
Wire Wire Line
	9950 2750 9950 3050
$Comp
L servo:R-78E3.3-1.0 U702
U 1 1 5E18DDB9
P 8200 3900
F 0 "U702" H 8200 4118 39  0000 C CNN
F 1 "R-78E3.3-1.0" H 8200 4043 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 8250 3650 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 8200 3900 50  0001 C CNN
	1    8200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3900 8650 3900
Wire Wire Line
	9900 3900 10100 3900
Wire Wire Line
	8650 4100 8650 3900
Connection ~ 8650 3900
Wire Wire Line
	8650 3900 9000 3900
Wire Wire Line
	9000 4100 9000 3900
Connection ~ 9000 3900
Wire Wire Line
	9000 3900 9250 3900
Wire Wire Line
	8200 4700 8650 4700
Wire Wire Line
	8650 4400 8650 4700
Connection ~ 8650 4700
Wire Wire Line
	8650 4700 9000 4700
Wire Wire Line
	9000 4400 9000 4700
Connection ~ 9000 4700
Wire Wire Line
	9000 4700 9550 4700
$Comp
L servo:AP2114 U706
U 1 1 5E28622B
P 9550 4000
F 0 "U706" H 9550 4341 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 9550 4266 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9650 4625 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 9600 4400 50  0001 C CNN
	1    9550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4400 10100 4700
Wire Wire Line
	9550 4700 10100 4700
Connection ~ 10100 4700
Wire Wire Line
	10100 4700 10450 4700
Wire Wire Line
	10450 4400 10450 4700
Connection ~ 10450 4700
Wire Wire Line
	10450 4700 10800 4700
Wire Wire Line
	10100 4100 10100 3900
Connection ~ 10100 3900
Wire Wire Line
	10450 4100 10450 3900
Wire Wire Line
	10100 3900 10450 3900
Connection ~ 10450 3900
Wire Wire Line
	10450 3900 10800 3900
Text Notes 9350 4500 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:R-78E5.0-1.0 U704
U 1 1 5E2CE6E1
P 9050 9050
F 0 "U704" H 9050 9268 39  0000 C CNN
F 1 "R-78E5.0-1.0" H 9050 9193 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 9100 8800 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 9050 9050 50  0001 C CNN
	1    9050 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 9050 9500 9050
Wire Wire Line
	9200 9850 9500 9850
Wire Wire Line
	8550 9550 8550 9850
Wire Wire Line
	9500 9250 9500 9050
Connection ~ 9500 9050
Wire Wire Line
	9500 9050 9800 9050
Wire Wire Line
	9800 9250 9800 9050
Connection ~ 9800 9050
Wire Wire Line
	9800 9050 10200 9050
Wire Wire Line
	9500 9550 9500 9850
Connection ~ 9500 9850
Wire Wire Line
	9500 9850 9800 9850
Wire Wire Line
	9800 9550 9800 9850
Connection ~ 9800 9850
Wire Wire Line
	9800 9850 10200 9850
$Comp
L servo:PWR_FLAG #FLG0701
U 1 1 5E1BE0A4
P 3800 2300
F 0 "#FLG0701" H 3800 2375 20  0001 C CNN
F 1 "PWR_FLAG" H 3800 2450 20  0000 C CNN
F 2 "" H 3800 2300 50  0001 C CNN
F 3 "~" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
$Comp
L servo:PWR_FLAG #FLG0702
U 1 1 5E1C8CE4
P 4550 2300
F 0 "#FLG0702" H 4550 2375 20  0001 C CNN
F 1 "PWR_FLAG" H 4550 2450 20  0000 C CNN
F 2 "" H 4550 2300 50  0001 C CNN
F 3 "~" H 4550 2300 50  0001 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F701
U 1 1 5E1D6E68
P 4300 2450
F 0 "F701" V 4127 2450 39  0000 C CNN
F 1 "Fuse" V 4202 2450 39  0000 C CNN
F 2 "servo:Fuse_1206_3216Metric" V 4230 2450 50  0001 C CNN
F 3 "~" V 4380 2450 50  0001 C CNN
	1    4300 2450
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E45F0A3
P 6100 2400
AR Path="/5EAA846A/5E45F0A3" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E45F0A3" Ref="R701"  Part="1" 
F 0 "R701" V 6078 2450 20  0000 L CNN
F 1 "680" V 6121 2450 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 2300 60  0001 C CNN
F 3 "" H 5700 2400 60  0001 C CNN
F 4 "680" V -6300 2800 60  0001 C CNN "ValueDisplayed"
	1    6100 2400
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E45F0AB
P 6100 2700
AR Path="/5EAA846A/5E45F0AB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E45F0AB" Ref="D701"  Part="1" 
F 0 "D701" V 6125 2830 20  0000 L CNN
F 1 "green" H 6100 2850 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 5900 2500 60  0001 C CNN
F 3 "" H 5900 2500 60  0000 C CNN
F 4 "red" V -6300 2600 60  0001 C CNN "VALUE"
	1    6100 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2850 6100 2900
Wire Wire Line
	6100 2900 5900 2900
Wire Wire Line
	5900 2900 5900 2650
Wire Wire Line
	5900 2450 5900 2150
Wire Wire Line
	5900 2150 6100 2150
Wire Wire Line
	6100 2200 6100 2150
Connection ~ 6100 2150
$Comp
L servo:jumper JP701
U 1 1 5E4E5EBD
P 6350 2150
F 0 "JP701" H 6350 2311 39  0000 C CNN
F 1 "jumper" H 6350 2236 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6250 2130 50  0001 C CNN
F 3 "~" H 6350 2230 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6500 2150
Wire Wire Line
	6100 2150 6250 2150
Wire Wire Line
	3800 2300 3800 2650
Connection ~ 4600 9350
Wire Wire Line
	4600 9350 4500 9350
Wire Wire Line
	4600 9200 4600 9350
$Comp
L servo:PWR_FLAG #FLG0703
U 1 1 5E548503
P 4600 9200
F 0 "#FLG0703" H 4600 9275 20  0001 C CNN
F 1 "PWR_FLAG" H 4600 9350 20  0000 C CNN
F 2 "" H 4600 9200 50  0001 C CNN
F 3 "~" H 4600 9200 50  0001 C CNN
	1    4600 9200
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F702
U 1 1 5E548509
P 4350 9350
F 0 "F702" V 4177 9350 39  0000 C CNN
F 1 "Fuse" V 4252 9350 39  0000 C CNN
F 2 "servo:Fuse_1206_3216Metric" V 4280 9350 50  0001 C CNN
F 3 "~" V 4430 9350 50  0001 C CNN
	1    4350 9350
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E548518
P 6100 9300
AR Path="/5EAA846A/5E548518" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E548518" Ref="R702"  Part="1" 
F 0 "R702" V 6078 9350 20  0000 L CNN
F 1 "680" V 6121 9350 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 9200 60  0001 C CNN
F 3 "" H 5700 9300 60  0001 C CNN
F 4 "680" V -6300 9700 60  0001 C CNN "ValueDisplayed"
	1    6100 9300
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E548520
P 6100 9600
AR Path="/5EAA846A/5E548520" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E548520" Ref="D702"  Part="1" 
F 0 "D702" V 6125 9730 20  0000 L CNN
F 1 "red" H 6100 9750 16  0000 C CNN
F 2 "servo:LED_0603_1608Metric" H 5900 9400 60  0001 C CNN
F 3 "" H 5900 9400 60  0000 C CNN
F 4 "red" V -6300 9500 60  0001 C CNN "VALUE"
	1    6100 9600
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 9750 6100 9800
Wire Wire Line
	5900 9800 5900 9550
Wire Wire Line
	5900 9350 5900 9050
Wire Wire Line
	5900 9050 6100 9050
Wire Wire Line
	6100 9100 6100 9050
Connection ~ 6100 9050
$Comp
L servo:jumper JP702
U 1 1 5E54852F
P 6350 9050
F 0 "JP702" H 6350 9211 39  0000 C CNN
F 1 "jumper" H 6350 9136 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6250 9030 50  0001 C CNN
F 3 "~" H 6350 9130 50  0001 C CNN
	1    6350 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 9050 6500 9050
Wire Wire Line
	6600 8950 6600 9050
Wire Wire Line
	6100 9050 6250 9050
Wire Wire Line
	6100 9850 6100 9800
Connection ~ 6100 9800
Wire Wire Line
	5900 9800 6100 9800
Wire Wire Line
	6100 2900 6100 2950
Connection ~ 6100 2900
Wire Wire Line
	6500 8950 6500 9050
$Comp
L servo:PWR_FLAG #FLG0705
U 1 1 5E6B6A83
P 6500 8950
F 0 "#FLG0705" H 6500 9025 20  0001 C CNN
F 1 "PWR_FLAG" H 6500 9100 20  0000 C CNN
F 2 "" H 6500 8950 50  0001 C CNN
F 3 "~" H 6500 8950 50  0001 C CNN
	1    6500 8950
	1    0    0    -1  
$EndComp
Connection ~ 6500 9050
Wire Wire Line
	6500 9050 6600 9050
$Comp
L servo:PWR_FLAG #FLG0704
U 1 1 5E6C456D
P 6500 2050
F 0 "#FLG0704" H 6500 2125 20  0001 C CNN
F 1 "PWR_FLAG" H 6500 2200 20  0000 C CNN
F 2 "" H 6500 2050 50  0001 C CNN
F 3 "~" H 6500 2050 50  0001 C CNN
	1    6500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2050 6500 2150
Connection ~ 6500 2150
Wire Wire Line
	6500 2150 6600 2150
Connection ~ 3800 2650
Wire Wire Line
	3800 6000 3350 6000
Wire Wire Line
	3800 2650 3800 6000
Wire Wire Line
	3350 6100 3900 6100
Wire Wire Line
	3900 6100 3900 2450
Wire Wire Line
	3900 2450 4150 2450
$Comp
L servo:PWR_FLAG #FLG0706
U 1 1 5E560C61
P 4000 9550
F 0 "#FLG0706" H 4000 9625 20  0001 C CNN
F 1 "PWR_FLAG" H 4000 9700 20  0000 C CNN
F 2 "" H 4000 9550 50  0001 C CNN
F 3 "~" H 4000 9550 50  0001 C CNN
	1    4000 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6300 3800 9550
Wire Wire Line
	3800 9550 4000 9550
Wire Wire Line
	3900 9350 3900 6200
Wire Wire Line
	3900 6200 3350 6200
Wire Wire Line
	3900 9350 4200 9350
Connection ~ 4000 9550
Wire Wire Line
	3350 6300 3800 6300
$Comp
L Connector_Generic:Conn_02x04_Row_Letter_Last J?
U 1 1 5E229E8E
P 3050 6100
AR Path="/5E21534F/5E229E8E" Ref="J?"  Part="1" 
AR Path="/5DD76B18/5E229E8E" Ref="J701"  Part="1" 
AR Path="/5EC40F3C/5E229E8E" Ref="J?"  Part="1" 
F 0 "J701" H 3100 6417 50  0000 C CNN
F 1 "tblock" H 3100 6326 50  0000 C CNN
F 2 "servo:tblock02x04" H 3050 6100 50  0001 C CNN
F 3 "~" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
Text GLabel 2700 6300 0    50   Input ~ 0
VBUS_B_N_H
Text GLabel 2700 6100 0    50   Input ~ 0
VBUS_A_N_H
Text GLabel 2700 6200 0    50   Input ~ 0
VBUS_B_P_H
Text GLabel 2700 6000 0    50   Input ~ 0
VBUS_A_P_H
Wire Wire Line
	2850 6200 2700 6200
Wire Wire Line
	2850 6300 2700 6300
Wire Wire Line
	2700 6000 2850 6000
Wire Wire Line
	2850 6100 2700 6100
$Comp
L servo:IRM-10-5 PS701
U 1 1 5E1F0CFB
P 5250 2550
F 0 "PS701" H 5250 2851 39  0000 C CNN
F 1 "IRM-10-5" H 5250 2776 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 5250 2250 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 5650 2200 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2450 4850 2450
Wire Wire Line
	5650 2450 5900 2450
$Comp
L servo:5VC #PWR0126
U 1 1 5E21C60D
P 6600 2050
F 0 "#PWR0126" H 6600 1850 20  0001 C CNN
F 1 "5VC" H 6605 2207 28  0000 C CNN
F 2 "" H 6600 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2050 6600 2150
Wire Wire Line
	3800 2650 4850 2650
Wire Wire Line
	5650 2650 5900 2650
Connection ~ 8100 2250
Wire Wire Line
	8100 2050 8100 2250
$Comp
L servo:5VC #PWR0712
U 1 1 5E18DDC0
P 8100 2050
F 0 "#PWR0712" H 8100 1850 20  0001 C CNN
F 1 "5VC" H 8105 2207 28  0000 C CNN
F 2 "" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0001 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
$Comp
L servo:irm-10-12 PS702
U 1 1 5E299A6A
P 5250 9450
F 0 "PS702" H 5250 9751 39  0000 C CNN
F 1 "irm-10-12" H 5250 9676 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 5250 9150 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 5650 9100 50  0001 C CNN
	1    5250 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9550 4850 9550
Wire Wire Line
	4600 9350 4850 9350
Wire Wire Line
	5650 9350 5900 9350
Wire Wire Line
	5650 9550 5900 9550
Wire Wire Line
	7700 3700 7700 3900
$Comp
L servo:5VC #PWR0127
U 1 1 5E2B6C0C
P 7700 3700
F 0 "#PWR0127" H 7700 3500 20  0001 C CNN
F 1 "5VC" H 7705 3857 28  0000 C CNN
F 2 "" H 7700 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
