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
$Comp
L servo:15VC #PWR0703
U 1 1 5E18DDDE
P 8050 1950
F 0 "#PWR0703" H 8050 1750 20  0001 C CNN
F 1 "15VC" H 8055 2107 28  0000 C CNN
F 2 "" H 8050 1950 50  0001 C CNN
F 3 "" H 8050 1950 50  0001 C CNN
	1    8050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5400 8050 5400
Wire Wire Line
	8050 5400 8050 3750
Wire Wire Line
	8250 3750 8050 3750
Connection ~ 8050 3750
$Comp
L servo:GND #PWR?
U 1 1 5E18DDAD
P 8750 2800
AR Path="/5DCD812E/5E18DDAD" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDAD" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E18DDAD" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDAD" Ref="#PWR0704"  Part="1" 
F 0 "#PWR0704" H 8755 2651 20  0001 C CNN
F 1 "GND" H 8755 2642 30  0000 C CNN
F 2 "" H 8750 2800 70  0000 C CNN
F 3 "" H 8750 2800 70  0000 C CNN
	1    8750 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:5VC #PWR0708
U 1 1 5E18DDAE
P 9950 2050
F 0 "#PWR0708" H 9950 1850 20  0001 C CNN
F 1 "5VC" H 9955 2207 28  0000 C CNN
F 2 "" H 9950 2050 50  0001 C CNN
F 3 "" H 9950 2050 50  0001 C CNN
	1    9950 2050
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0709
U 1 1 5DDC15D8
P 11150 3650
F 0 "#PWR0709" H 11150 3450 20  0001 C CNN
F 1 "3V3" H 11155 3807 28  0000 C CNN
F 2 "" H 11150 3650 50  0001 C CNN
F 3 "" H 11150 3650 50  0001 C CNN
	1    11150 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR0710
U 1 1 5DDC3F59
P 11150 5300
F 0 "#PWR0710" H 11150 5100 20  0001 C CNN
F 1 "1V2C" H 11150 5450 28  0000 C CNN
F 2 "" H 11150 5300 50  0001 C CNN
F 3 "" H 11150 5300 50  0001 C CNN
	1    11150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 3750 11150 3650
Wire Wire Line
	11150 3750 11150 3850
Connection ~ 11150 3750
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 11150 4050
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R702"  Part="1" 
F 0 "R702" V 11128 4100 20  0000 L CNN
F 1 "680" V 11171 4100 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10650 3950 60  0001 C CNN
F 3 "" H 10750 4050 60  0001 C CNN
F 4 "680" V -1250 4450 60  0001 C CNN "ValueDisplayed"
	1    11150 4050
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDA8
P 8950 4050
AR Path="/5EAA846A/5E18DDA8" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDA8" Ref="C702"  Part="1" 
F 0 "C702" V 8978 4160 20  0000 L CNN
F 1 "22uF" V 9021 4160 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8950 3950 60  0001 C CNN
F 3 "" H 8950 4050 60  0000 C CNN
F 4 "22uF" V -4050 4450 60  0001 C CNN "ValueDisplayed"
	1    8950 4050
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDA9
P 11150 4350
AR Path="/5EAA846A/5E18DDA9" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDA9" Ref="D702"  Part="1" 
F 0 "D702" V 11175 4480 20  0000 L CNN
F 1 "green" H 11150 4500 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 10950 4150 60  0001 C CNN
F 3 "" H 10950 4150 60  0000 C CNN
F 4 "red" V -1250 4250 60  0001 C CNN "VALUE"
	1    11150 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 2150 9950 2050
Wire Wire Line
	9200 2250 9200 2150
Connection ~ 9950 2150
$Comp
L servo:Resistor R?
U 1 1 5DDB545A
P 9950 2350
AR Path="/5EAA846A/5DDB545A" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDB545A" Ref="R701"  Part="1" 
F 0 "R701" V 9928 2400 20  0000 L CNN
F 1 "680" V 9971 2400 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9450 2250 60  0001 C CNN
F 3 "" H 9550 2350 60  0001 C CNN
F 4 "680" V -2450 2750 60  0001 C CNN "ValueDisplayed"
	1    9950 2350
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDB5462
P 9200 2350
AR Path="/5EAA846A/5DDB5462" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDB5462" Ref="C704"  Part="1" 
F 0 "C704" V 9228 2460 20  0000 L CNN
F 1 "22uF" V 9271 2460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9200 2250 60  0001 C CNN
F 3 "" H 9200 2350 60  0000 C CNN
F 4 "22uF" V -3800 2750 60  0001 C CNN "ValueDisplayed"
	1    9200 2350
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDB546A
P 9950 2650
AR Path="/5EAA846A/5DDB546A" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDB546A" Ref="D701"  Part="1" 
F 0 "D701" V 9975 2780 20  0000 L CNN
F 1 "red" H 9950 2800 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 9750 2450 60  0001 C CNN
F 3 "" H 9750 2450 60  0000 C CNN
F 4 "red" V -2450 2550 60  0001 C CNN "VALUE"
	1    9950 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	11150 4500 11150 4550
Wire Wire Line
	8050 2150 8300 2150
$Comp
L servo:R-78E5.0-1.0 U703
U 1 1 5E179B6F
P 8750 2150
F 0 "U703" H 8750 2368 39  0000 C CNN
F 1 "R-78E5.0-1.0" H 8750 2293 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 8800 1900 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 8750 2150 50  0001 C CNN
	1    8750 2150
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB2
P 9350 4050
AR Path="/5EAA846A/5E18DDB2" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB2" Ref="C705"  Part="1" 
F 0 "C705" V 9378 3941 20  0000 R CNN
F 1 "100nF" V 9421 3941 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9350 3950 60  0001 C CNN
F 3 "" H 9350 4050 60  0000 C CNN
F 4 "22uF" V -3650 4450 60  0001 C CNN "ValueDisplayed"
	1    9350 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4050 8550 4550
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD13
P 10450 4050
AR Path="/5EAA846A/5E1ADD13" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD13" Ref="C708"  Part="1" 
F 0 "C708" V 10478 4160 20  0000 L CNN
F 1 "22uF" V 10521 4160 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10450 3950 60  0001 C CNN
F 3 "" H 10450 4050 60  0000 C CNN
F 4 "22uF" V -2550 4450 60  0001 C CNN "ValueDisplayed"
	1    10450 4050
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD22
P 10800 4050
AR Path="/5EAA846A/5E1ADD22" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD22" Ref="C710"  Part="1" 
F 0 "C710" V 10828 4160 20  0000 L CNN
F 1 "100nF" V 10871 4160 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10800 3950 60  0001 C CNN
F 3 "" H 10800 4050 60  0000 C CNN
F 4 "22uF" V -2200 4450 60  0001 C CNN "ValueDisplayed"
	1    10800 4050
	0    1    1    0   
$EndComp
Connection ~ 10800 3750
Wire Wire Line
	10800 3750 11150 3750
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB7
P 9000 5700
AR Path="/5EAA846A/5E18DDB7" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB7" Ref="C703"  Part="1" 
F 0 "C703" V 9028 5810 20  0000 L CNN
F 1 "22uF" V 9071 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9000 5600 60  0001 C CNN
F 3 "" H 9000 5700 60  0000 C CNN
F 4 "22uF" V -4000 6100 60  0001 C CNN "ValueDisplayed"
	1    9000 5700
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E20776B
P 9350 5700
AR Path="/5EAA846A/5E20776B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E20776B" Ref="C706"  Part="1" 
F 0 "C706" V 9378 5810 20  0000 L CNN
F 1 "100nF" V 9421 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9350 5600 60  0001 C CNN
F 3 "" H 9350 5700 60  0000 C CNN
F 4 "22uF" V -3650 6100 60  0001 C CNN "ValueDisplayed"
	1    9350 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 5700 8550 6200
Wire Wire Line
	11150 5400 11150 5300
Wire Wire Line
	11150 5400 11150 5500
Connection ~ 11150 5400
$Comp
L servo:Resistor R?
U 1 1 5E18DDBA
P 11150 5700
AR Path="/5EAA846A/5E18DDBA" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E18DDBA" Ref="R703"  Part="1" 
F 0 "R703" V 11128 5750 20  0000 L CNN
F 1 "680" V 11171 5750 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10650 5600 60  0001 C CNN
F 3 "" H 10750 5700 60  0001 C CNN
F 4 "680" V -1250 6100 60  0001 C CNN "ValueDisplayed"
	1    11150 5700
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDBB
P 11150 6000
AR Path="/5EAA846A/5E18DDBB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDBB" Ref="D703"  Part="1" 
F 0 "D703" V 11175 6130 20  0000 L CNN
F 1 "blue" H 11150 6150 16  0001 C CNN
F 2 "servo:LED_0603_1608Metric" H 10950 5800 60  0001 C CNN
F 3 "" H 10950 5800 60  0000 C CNN
F 4 "red" V -1250 5900 60  0001 C CNN "VALUE"
	1    11150 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	11150 6150 11150 6200
$Comp
L servo:GND #PWR?
U 1 1 5E286204
P 9900 6200
AR Path="/5DCD812E/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E286204" Ref="#PWR0707"  Part="1" 
F 0 "#PWR0707" H 9905 6051 20  0001 C CNN
F 1 "GND" H 9900 6042 30  0000 C CNN
F 2 "" H 9900 6200 70  0000 C CNN
F 3 "" H 9900 6200 70  0000 C CNN
	1    9900 6200
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E28620B
P 10450 5700
AR Path="/5EAA846A/5E28620B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E28620B" Ref="C709"  Part="1" 
F 0 "C709" V 10478 5810 20  0000 L CNN
F 1 "22uF" V 10521 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10450 5600 60  0001 C CNN
F 3 "" H 10450 5700 60  0000 C CNN
F 4 "22uF" V -2550 6100 60  0001 C CNN "ValueDisplayed"
	1    10450 5700
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E286219
P 10800 5700
AR Path="/5EAA846A/5E286219" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E286219" Ref="C711"  Part="1" 
F 0 "C711" V 10828 5810 20  0000 L CNN
F 1 "100nF" V 10871 5810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10800 5600 60  0001 C CNN
F 3 "" H 10800 5700 60  0000 C CNN
F 4 "22uF" V -2200 6100 60  0001 C CNN "ValueDisplayed"
	1    10800 5700
	0    1    1    0   
$EndComp
$Comp
L servo:5VC #PWR0705
U 1 1 5E18DDC0
P 8950 3250
F 0 "#PWR0705" H 8950 3050 20  0001 C CNN
F 1 "5VC" H 8955 3407 28  0000 C CNN
F 2 "" H 8950 3250 50  0001 C CNN
F 3 "" H 8950 3250 50  0001 C CNN
	1    8950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3350 8950 3250
Text Notes 9000 3400 0    20   ~ 0
in case we need more \ncurrent use another 5v dc/dc and\n open jumper to no overload the previos \nschitching power supply. if not, just chain and \ndo not place the extra 78E5
Text Notes 9100 2100 0    20   ~ 0
5v will have some switching \nnoise, but don't care, couse I'll use \n3v3 for the noise sensible logic.\nIf need some 5v clean supply just add\n a filter near your stuff
Wire Wire Line
	9050 2150 9200 2150
Connection ~ 9200 2150
Wire Wire Line
	9200 2150 9550 2150
$Comp
L servo:Capacitor C?
U 1 1 5E2B56EB
P 9550 2350
AR Path="/5EAA846A/5E2B56EB" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2B56EB" Ref="C707"  Part="1" 
F 0 "C707" V 9578 2460 20  0000 L CNN
F 1 "100nF" V 9621 2460 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9550 2250 60  0001 C CNN
F 3 "" H 9550 2350 60  0000 C CNN
F 4 "22uF" V -3450 2750 60  0001 C CNN "ValueDisplayed"
	1    9550 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 2250 9550 2150
Connection ~ 9550 2150
Wire Wire Line
	9550 2150 9950 2150
$Comp
L servo:Capacitor C?
U 1 1 5E2F90CF
P 9500 9350
AR Path="/5EAA846A/5E2F90CF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90CF" Ref="C713"  Part="1" 
F 0 "C713" V 9528 9460 20  0000 L CNN
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
AR Path="/5DD76B18/5E18DDC4" Ref="C714"  Part="1" 
F 0 "C714" V 9828 9460 20  0000 L CNN
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
L servo:15VH #PWR0713
U 1 1 5E18DDC5
P 8550 8950
F 0 "#PWR0713" H 8550 8750 20  0001 C CNN
F 1 "15VH" H 8555 9107 28  0000 C CNN
F 2 "" H 8550 8950 50  0001 C CNN
F 3 "" H 8550 8950 50  0001 C CNN
	1    8550 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 9050 8750 9050
$Comp
L servo:5VH #PWR0715
U 1 1 5E309ABD
P 10200 8950
F 0 "#PWR0715" H 10200 8750 20  0001 C CNN
F 1 "5VH" H 10205 9107 28  0000 C CNN
F 2 "" H 10200 8950 50  0001 C CNN
F 3 "" H 10200 8950 50  0001 C CNN
	1    10200 8950
	1    0    0    -1  
$EndComp
Connection ~ 8050 2150
Wire Wire Line
	8050 1950 8050 2150
Wire Wire Line
	8050 2150 8050 3750
Wire Wire Line
	9050 9850 9200 9850
Wire Wire Line
	8750 2450 8750 2800
Wire Wire Line
	9950 2800 9550 2800
Connection ~ 8750 2800
Connection ~ 9200 2800
Wire Wire Line
	9200 2800 8750 2800
Connection ~ 9550 2800
Wire Wire Line
	9550 2800 9200 2800
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
L servo:15VC #PWR0718
U 1 1 5E3CA8DA
P 6600 2050
F 0 "#PWR0718" H 6600 1850 20  0001 C CNN
F 1 "15VC" H 6605 2207 28  0000 C CNN
F 2 "" H 6600 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E18DDCA
P 6100 2950
AR Path="/5DCD812E/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDCA" Ref="#PWR0719"  Part="1" 
F 0 "#PWR0719" H 6105 2801 20  0001 C CNN
F 1 "GND" H 6105 2792 30  0000 C CNN
F 2 "" H 6100 2950 70  0000 C CNN
F 3 "" H 6100 2950 70  0000 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2450 5900 2450
Wire Wire Line
	5650 2650 5900 2650
$Comp
L servo:15VH #PWR0716
U 1 1 5E18DDCC
P 6600 8950
F 0 "#PWR0716" H 6600 8750 20  0001 C CNN
F 1 "15VH" H 6600 9100 28  0000 C CNN
F 2 "" H 6600 8950 50  0001 C CNN
F 3 "" H 6600 8950 50  0001 C CNN
	1    6600 8950
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0717
U 1 1 5E18DDCD
P 6100 9850
F 0 "#PWR0717" H 6100 9600 30  0001 C CNN
F 1 "GNDH" H 6100 9692 30  0000 C CNN
F 2 "" H 6100 9850 50  0001 C CNN
F 3 "" H 6100 9850 50  0001 C CNN
	1    6100 9850
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3D900F
P 8300 2400
AR Path="/5EAA846A/5E3D900F" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E3D900F" Ref="C701"  Part="1" 
F 0 "C701" V 8328 2510 20  0000 L CNN
F 1 "220uF" V 8371 2510 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8300 2300 60  0001 C CNN
F 3 "" H 8300 2400 60  0000 C CNN
F 4 "22uF" V -4700 2800 60  0001 C CNN "ValueDisplayed"
	1    8300 2400
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E18DDCF
P 8550 9350
AR Path="/5EAA846A/5E18DDCF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDCF" Ref="C712"  Part="1" 
F 0 "C712" V 8578 9241 20  0000 R CNN
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
Wire Wire Line
	8300 2150 8300 2300
Wire Wire Line
	8300 2800 8750 2800
Text Notes 8100 1250 0    197  ~ 39
COLD SUPPLY\n
Text Notes 8250 8200 0    197  ~ 39
HOT SUPPLY
Wire Wire Line
	10200 5400 10250 5400
Wire Wire Line
	10200 5500 10250 5500
Wire Wire Line
	10250 5500 10250 5400
Connection ~ 10250 5400
Wire Wire Line
	9900 5800 9900 6200
Connection ~ 9900 6200
$Comp
L servo:AP2114 U704
U 1 1 5E18DDD0
P 9900 3850
F 0 "U704" H 9900 4191 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 9900 4116 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 10000 4475 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 9950 4250 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3750 10250 3750
Wire Wire Line
	10200 3850 10250 3850
Wire Wire Line
	10250 3850 10250 3750
Wire Wire Line
	9900 4150 9900 4550
Connection ~ 10250 3750
Connection ~ 9900 4550
Connection ~ 10200 9050
Wire Wire Line
	10200 8950 10200 9050
Wire Wire Line
	4850 2450 4550 2450
Connection ~ 4550 2450
Wire Wire Line
	4550 2450 4450 2450
Text Notes 4250 1100 0    197  ~ 39
Main Power
Wire Wire Line
	3500 2650 3800 2650
$Comp
L servo:15VH #PWR0711
U 1 1 5E55E331
P 6950 8950
F 0 "#PWR0711" H 6950 8750 20  0001 C CNN
F 1 "15VH" H 6955 9107 28  0000 C CNN
F 2 "" H 6950 8950 50  0001 C CNN
F 3 "" H 6950 8950 50  0001 C CNN
	1    6950 8950
	-1   0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0712
U 1 1 5E55E474
P 6950 9850
F 0 "#PWR0712" H 6950 9600 30  0001 C CNN
F 1 "GNDH" H 6950 9692 30  0000 C CNN
F 2 "" H 6950 9850 50  0001 C CNN
F 3 "" H 6950 9850 50  0001 C CNN
	1    6950 9850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 2250 7100 2250
Wire Wire Line
	7100 2150 6950 2150
$Comp
L servo:15VC #PWR0701
U 1 1 5E5697F1
P 6950 2050
F 0 "#PWR0701" H 6950 1850 20  0001 C CNN
F 1 "15VC" H 6955 2207 28  0000 C CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 9050 7050 9050
$Comp
L servo:GND #PWR?
U 1 1 5E56D708
P 6950 2950
AR Path="/5DCD812E/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E56D708" Ref="#PWR0702"  Part="1" 
F 0 "#PWR0702" H 6955 2801 20  0001 C CNN
F 1 "GND" H 6955 2792 30  0000 C CNN
F 2 "" H 6950 2950 70  0000 C CNN
F 3 "" H 6950 2950 70  0000 C CNN
	1    6950 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 9150 6950 9150
Text Notes 8700 8400 0    20   ~ 0
Take in account that hot doesn't mean that it is refered to high voltage\n AC socket input path like 220v/380v. It is intended to isolate the uC\n/logic/user interfase side from accidentally high voltage contact on the\n hot side and prevent injuries as to make the reinforced isolation\n possible with one single isolateion added
Text Notes 8850 8800 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 8550 1850 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 8300 3450 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 8350 5150 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 4600 1800 0    20   ~ 0
In case the control board have to be supply directly with socket voltage\n (220v) populate these. It's not a good idea cause I'll like to keep hight\n voltage outside these controller board, but it's a requeriment, so I let it\n as an option. But you have the low voltage input 15vc and 15vh\n connectors also\n\nI've choosen to add 2 power supply for Cold and Hot sides because\n it's cheaper than have only one double sized power supply and add\n a DC/DC isolated controller, and it has the advantage to choose\n which one to use and if there is some isue in the HOT side, the Cold\n side keeps working without affect. I've choosen 15W size beouse\n has similar price as 10.2W and is pin-to-pin compatible with 20W, so\n you could change if you need more power\n\n\nI wrote 15v on the DC voltage side, but it's better to use 12v. But the\n range coulg be from 8 to 18 more or less
Text Notes 8600 1500 0    20   ~ 0
It is inteded to use only, I mean ONLY inside the control board, none of\n these coopers wires has to leave the board. I isolate every single pin\n from these supply to go outside, take these in account\n
Text Notes 9550 4300 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:GNDH #PWR0714
U 1 1 5EC79A03
P 9200 9900
F 0 "#PWR0714" H 9200 9650 30  0001 C CNN
F 1 "GNDH" H 9200 9742 30  0000 C CNN
F 2 "" H 9200 9900 50  0001 C CNN
F 3 "" H 9200 9900 50  0001 C CNN
	1    9200 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 9900 9200 9850
Connection ~ 9200 9850
NoConn ~ 3500 2550
Wire Wire Line
	4550 2300 4550 2450
$Comp
L servo:GND #PWR?
U 1 1 5E18DDDC
P 9900 4600
AR Path="/5DCD812E/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDDC" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDDC" Ref="#PWR0706"  Part="1" 
F 0 "#PWR0706" H 9905 4451 20  0001 C CNN
F 1 "GND" H 9900 4442 30  0000 C CNN
F 2 "" H 9900 4600 70  0000 C CNN
F 3 "" H 9900 4600 70  0000 C CNN
	1    9900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4600 9900 4550
Wire Wire Line
	9200 2550 9200 2800
Wire Wire Line
	9550 2550 9550 2800
Wire Wire Line
	8300 2600 8300 2800
$Comp
L servo:R-78E5.0-1.0 U701
U 1 1 5E1C01BD
P 8550 3750
F 0 "U701" H 8550 3968 39  0000 C CNN
F 1 "R-78E5.0-1.0" H 8550 3893 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 8600 3500 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 8550 3750 50  0001 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
$Comp
L servo:Jumper_2_Bridged JP701
U 1 1 5E18DDB6
P 8950 3550
F 0 "JP701" V 8928 3608 20  0000 L CNN
F 1 "Jumper_2_Bridged" V 8971 3608 20  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8950 3550 50  0001 C CNN
F 3 "~" H 8950 3550 50  0001 C CNN
	1    8950 3550
	0    1    1    0   
$EndComp
Connection ~ 8300 2150
Wire Wire Line
	8300 2150 8450 2150
Wire Wire Line
	8550 4550 8950 4550
Wire Wire Line
	8950 4250 8950 4550
Connection ~ 8950 4550
Wire Wire Line
	8950 4550 9350 4550
Wire Wire Line
	8850 3750 8950 3750
Connection ~ 8950 3750
Wire Wire Line
	8950 3750 9350 3750
Wire Wire Line
	8950 3750 8950 3950
Wire Wire Line
	9350 3950 9350 3750
Connection ~ 9350 3750
Wire Wire Line
	9350 3750 9600 3750
Wire Wire Line
	9350 4250 9350 4550
Connection ~ 9350 4550
Wire Wire Line
	9350 4550 9900 4550
Wire Wire Line
	10250 3750 10450 3750
Connection ~ 10450 3750
Wire Wire Line
	10450 3750 10800 3750
Wire Wire Line
	9900 4550 10450 4550
Wire Wire Line
	10450 3950 10450 3750
Wire Wire Line
	10450 4250 10450 4550
Connection ~ 10450 4550
Wire Wire Line
	10450 4550 10800 4550
Wire Wire Line
	10800 3950 10800 3750
Connection ~ 10800 4550
Wire Wire Line
	10800 4550 11150 4550
Wire Wire Line
	10800 4250 10800 4550
$Comp
L servo:R-78E3.3-1.0 U702
U 1 1 5E18DDB9
P 8550 5400
F 0 "U702" H 8550 5618 39  0000 C CNN
F 1 "R-78E3.3-1.0" H 8550 5543 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 8600 5150 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 8550 5400 50  0001 C CNN
	1    8550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5400 9000 5400
Wire Wire Line
	10250 5400 10450 5400
Wire Wire Line
	9000 5600 9000 5400
Connection ~ 9000 5400
Wire Wire Line
	9000 5400 9350 5400
Wire Wire Line
	9350 5600 9350 5400
Connection ~ 9350 5400
Wire Wire Line
	9350 5400 9600 5400
Wire Wire Line
	8550 6200 9000 6200
Wire Wire Line
	9000 5900 9000 6200
Connection ~ 9000 6200
Wire Wire Line
	9000 6200 9350 6200
Wire Wire Line
	9350 5900 9350 6200
Connection ~ 9350 6200
Wire Wire Line
	9350 6200 9900 6200
$Comp
L servo:AP2114 U705
U 1 1 5E28622B
P 9900 5500
F 0 "U705" H 9900 5841 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 9900 5766 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 10000 6125 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 9950 5900 50  0001 C CNN
	1    9900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5900 10450 6200
Wire Wire Line
	9900 6200 10450 6200
Connection ~ 10450 6200
Wire Wire Line
	10450 6200 10800 6200
Wire Wire Line
	10800 5900 10800 6200
Connection ~ 10800 6200
Wire Wire Line
	10800 6200 11150 6200
Wire Wire Line
	10450 5600 10450 5400
Connection ~ 10450 5400
Wire Wire Line
	10800 5600 10800 5400
Wire Wire Line
	10450 5400 10800 5400
Connection ~ 10800 5400
Wire Wire Line
	10800 5400 11150 5400
Text Notes 9700 6000 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
$Comp
L servo:R-78E5.0-1.0 U706
U 1 1 5E2CE6E1
P 9050 9050
F 0 "U706" H 9050 9268 39  0000 C CNN
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
L servo:IRM-15-12 PS701
U 1 1 5E45438F
P 5250 2550
F 0 "PS701" H 5250 2851 39  0000 C CNN
F 1 "IRM-15-12" H 5250 2776 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 5250 2250 50  0001 C CNN
F 3 "../doc/datasheets/IRM-15-SPEC.PDF" H 5650 2200 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E45F0A3
P 6100 2400
AR Path="/5EAA846A/5E45F0A3" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E45F0A3" Ref="R705"  Part="1" 
F 0 "R705" V 6078 2450 20  0000 L CNN
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
AR Path="/5DD76B18/5E45F0AB" Ref="D705"  Part="1" 
F 0 "D705" V 6125 2830 20  0000 L CNN
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
L servo:jumper JP702
U 1 1 5E4E5EBD
P 6350 2150
F 0 "JP702" H 6350 2311 39  0000 C CNN
F 1 "jumper" H 6350 2236 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6250 2130 50  0001 C CNN
F 3 "~" H 6350 2230 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 6500 2150
Wire Wire Line
	6600 2050 6600 2150
Wire Wire Line
	6100 2150 6250 2150
Wire Wire Line
	3800 2300 3800 2650
Wire Wire Line
	5650 9350 5900 9350
Wire Wire Line
	5650 9550 5900 9550
Wire Wire Line
	4850 9350 4600 9350
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
L servo:IRM-15-12 PS702
U 1 1 5E548510
P 5250 9450
F 0 "PS702" H 5250 9751 39  0000 C CNN
F 1 "IRM-15-12" H 5250 9676 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 5250 9150 50  0001 C CNN
F 3 "../doc/datasheets/IRM-15-SPEC.PDF" H 5650 9100 50  0001 C CNN
	1    5250 9450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E548518
P 6100 9300
AR Path="/5EAA846A/5E548518" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E548518" Ref="R706"  Part="1" 
F 0 "R706" V 6078 9350 20  0000 L CNN
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
AR Path="/5DD76B18/5E548520" Ref="D706"  Part="1" 
F 0 "D706" V 6125 9730 20  0000 L CNN
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
L servo:jumper JP703
U 1 1 5E54852F
P 6350 9050
F 0 "JP703" H 6350 9211 39  0000 C CNN
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
	3950 9350 3950 2450
Wire Wire Line
	3500 2450 3950 2450
Wire Wire Line
	3950 9350 4200 9350
Connection ~ 3950 2450
Wire Wire Line
	3950 2450 4150 2450
Wire Wire Line
	3800 9550 3800 2650
Connection ~ 3800 2650
Wire Wire Line
	6100 9850 6100 9800
Connection ~ 6100 9800
Wire Wire Line
	5900 9800 6100 9800
Wire Wire Line
	6100 2900 6100 2950
Connection ~ 6100 2900
Wire Wire Line
	6950 2250 6950 2950
Wire Wire Line
	6950 2050 6950 2150
Wire Wire Line
	6950 8950 6950 9050
Wire Wire Line
	6950 9150 6950 9850
Wire Wire Line
	3800 9550 4850 9550
Wire Wire Line
	3800 2650 4850 2650
Wire Wire Line
	6500 8950 6500 9050
$Comp
L servo:PWR_FLAG #FLG0105
U 1 1 5E6B6A83
P 6500 8950
F 0 "#FLG0105" H 6500 9025 20  0001 C CNN
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
L servo:PWR_FLAG #FLG0106
U 1 1 5E6C456D
P 6500 2050
F 0 "#FLG0106" H 6500 2125 20  0001 C CNN
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
$Comp
L servo:Screw_Terminal_01x02 J701
U 1 1 5E753FDC
P 7250 9050
F 0 "J701" H 7329 9038 39  0000 L CNN
F 1 "tBlock" H 7329 8963 39  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 7150 9050 50  0001 C CNN
F 3 "~" H 7250 9150 50  0001 C CNN
	1    7250 9050
	1    0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x02 J702
U 1 1 5E76F5EC
P 7300 2150
F 0 "J702" H 7379 2138 39  0000 L CNN
F 1 "tBlock" H 7379 2063 39  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00287_1x02_P5.08mm_Horizontal" H 7200 2150 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L servo:Screw_Terminal_01x03 J703
U 1 1 5E797E8A
P 3300 2550
F 0 "J703" H 3379 2584 39  0000 L CNN
F 1 "tBlock" H 3379 2509 39  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00288_1x03_P5.08mm_Horizontal" H 3300 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
