EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 5 8
Title "emu_interface"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4100 10800 4100 10500
Wire Wire Line
	9850 4350 10150 4350
Wire Wire Line
	9850 4550 9850 4350
$Comp
L servo:EMU_3V3 #PWR0501
U 1 1 5DB39106
P 8750 3350
F 0 "#PWR0501" H 8692 3417 20  0000 R CNN
F 1 "EMU_3V3" H 8692 3365 30  0000 R CNN
F 2 "" H 8750 3350 70  0000 C CNN
F 3 "" H 8750 3350 70  0000 C CNN
	1    8750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3450 8750 3650
Wire Wire Line
	9650 3450 8750 3450
$Comp
L servo:GND #PWR0502
U 1 1 5DB39105
P 10750 4550
F 0 "#PWR0502" H 10755 4401 20  0000 C CNN
F 1 "GND" H 10755 4349 30  0000 C CNN
F 2 "" H 10750 4550 70  0000 C CNN
F 3 "" H 10750 4550 70  0000 C CNN
	1    10750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4350 10450 4350
Wire Wire Line
	10750 4550 10750 4350
$Comp
L servo:GND #PWR0503
U 1 1 5DB39104
P 11250 3750
F 0 "#PWR0503" H 11255 3601 20  0000 C CNN
F 1 "GND" H 11255 3549 30  0000 C CNN
F 2 "" H 11250 3750 70  0000 C CNN
F 3 "" H 11250 3750 70  0000 C CNN
	1    11250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 3650 11050 3650
Wire Wire Line
	11250 3750 11250 3650
$Comp
L servo:VDD_3V3 #PWR0504
U 1 1 5DB390FF
P 12200 3400
F 0 "#PWR0504" H 12217 3609 20  0000 C CNN
F 1 "VDD_3V3" H 12217 3557 30  0000 C CNN
F 2 "" H 12200 3400 70  0000 C CNN
F 3 "" H 12200 3400 70  0000 C CNN
	1    12200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3450 11950 3450
Wire Wire Line
	11950 3650 11750 3650
Wire Wire Line
	11250 3650 11450 3650
Wire Wire Line
	8950 3650 8750 3650
Connection ~ 11250 3650
Connection ~ 11950 3650
$Comp
L servo:Capacitor C506
U 1 1 5DB390EC
P 10250 4350
F 0 "C506" H 10300 4603 60  0000 C CNN
F 1 "10pF" H 10300 4505 50  0000 C CNN
F 2 "" H 10250 4350 50  0001 C CNN
F 3 "" H 10250 4350 50  0001 C CNN
F 4 "10pF" V 8350 -2150 60  0001 C CNN "ValueDisplayed"
	1    10250 4350
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C507
U 1 1 5DB390EA
P 11550 3650
F 0 "C507" H 11600 3900 60  0000 C CNN
F 1 "0.1uF" H 11600 3800 50  0000 C CNN
F 2 "" H 11550 3650 50  0001 C CNN
F 3 "" H 11550 3650 50  0001 C CNN
F 4 "0.1uF" V 8350 -250 60  0001 C CNN "ValueDisplayed"
	1    11550 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C505
U 1 1 5DB390E9
P 9050 3650
F 0 "C505" H 9100 3487 60  0000 C CNN
F 1 "0.1uF" H 9100 3389 50  0000 C CNN
F 2 "" H 9050 3650 50  0001 C CNN
F 3 "" H 9050 3650 50  0001 C CNN
F 4 "0.1uF" V 8350 -250 60  0001 C CNN "ValueDisplayed"
	1    9050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3650 9500 3650
Wire Wire Line
	11950 3450 11950 3650
Wire Wire Line
	11050 3150 11300 3150
Wire Wire Line
	11050 3250 11300 3250
Wire Wire Line
	8750 3350 8750 3450
Connection ~ 8750 3450
Wire Wire Line
	11950 3650 12200 3650
Wire Wire Line
	12200 3650 12200 3400
Connection ~ 9500 3650
Wire Wire Line
	9500 3650 9650 3650
Wire Wire Line
	9500 3750 9500 3650
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD7E308
P 9850 4550
AR Path="/5DC1676A/5DD7E308" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DD7E308" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD7E308" Ref="#EMU_GND_0508"  Part="1" 
F 0 "#EMU_GND_0508" H 9855 4401 20  0000 C CNN
F 1 "EMU_GND" H 9855 4349 30  0000 C CNN
F 2 "" H 9850 4550 70  0000 C CNN
F 3 "" H 9850 4550 70  0000 C CNN
	1    9850 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD93DA3
P 9500 3750
AR Path="/5DC1676A/5DD93DA3" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DD93DA3" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD93DA3" Ref="#EMU_GND_0507"  Part="1" 
F 0 "#EMU_GND_0507" H 9505 3601 20  0000 C CNN
F 1 "EMU_GND" H 9505 3549 30  0000 C CNN
F 2 "" H 9500 3750 70  0000 C CNN
F 3 "" H 9500 3750 70  0000 C CNN
	1    9500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12900 2950 12900 3250
Wire Wire Line
	13500 2950 13500 3250
Wire Wire Line
	13500 3850 13500 3950
$Comp
L servo:Resistor R?
U 1 1 5DDA98D2
P 12900 4050
AR Path="/5DC1676A/5DDA98D2" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DDA98D2" Ref="R502"  Part="1" 
F 0 "R502" V 12847 4100 60  0000 L CNN
F 1 "1.0k" H 12900 4050 50  0001 C CNN
F 2 "" H 12900 4050 50  0001 C CNN
F 3 "" H 12900 4050 50  0001 C CNN
F 4 "1.0k" V 12953 4100 60  0000 L CNN "ValueDisplayed"
	1    12900 4050
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DDA98DA
P 13500 4050
AR Path="/5DC1676A/5DDA98DA" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DDA98DA" Ref="R503"  Part="1" 
F 0 "R503" V 13447 4100 60  0000 L CNN
F 1 "1.0k" H 13500 4050 50  0001 C CNN
F 2 "" H 13500 4050 50  0001 C CNN
F 3 "" H 13500 4050 50  0001 C CNN
F 4 "1.0k" V 13553 4100 60  0000 L CNN "ValueDisplayed"
	1    13500 4050
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D504
U 1 1 5DDA98E2
P 13500 3550
F 0 "D504" V 13447 3770 60  0000 L CNN
F 1 "green" H 13500 3550 50  0001 C CNN
F 2 "" H 13500 3550 50  0001 C CNN
F 3 "" H 13500 3550 50  0001 C CNN
F 4 "green@2mA" V 13553 3770 60  0000 L CNN "VALUE"
	1    13500 3550
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D503
U 1 1 5DDA98EA
P 12900 3550
F 0 "D503" V 12847 3421 60  0000 R CNN
F 1 "blue" H 12900 3550 50  0001 C CNN
F 2 "" H 12900 3550 50  0001 C CNN
F 3 "" H 12900 3550 50  0001 C CNN
F 4 "blue@2mA" V 12953 3421 60  0000 R CNN "VALUE"
	1    12900 3550
	0    1    1    0   
$EndComp
$Comp
L servo:VDD_3V3 #PWR0505
U 1 1 5DDAADCB
P 12900 2950
F 0 "#PWR0505" H 12917 3159 20  0000 C CNN
F 1 "VDD_3V3" H 12917 3107 30  0000 C CNN
F 2 "" H 12900 2950 70  0000 C CNN
F 3 "" H 12900 2950 70  0000 C CNN
	1    12900 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR0506
U 1 1 5DDAAF80
P 13500 2950
F 0 "#PWR0506" H 13517 3159 20  0000 C CNN
F 1 "VDD_3V3" H 13517 3107 30  0000 C CNN
F 2 "" H 13500 2950 70  0000 C CNN
F 3 "" H 13500 2950 70  0000 C CNN
	1    13500 2950
	1    0    0    -1  
$EndComp
Text Label 13500 4250 3    60   ~ 0
MCU_GPIO29
$Comp
L servo:TI-ISO7221C-SOIC_D-8 U502
U 1 1 5DDAD2F0
P 10350 3350
F 0 "U502" H 10350 3939 60  0000 C CNN
F 1 "TI-ISO7221C-SOIC_D-8" H 10350 3833 60  0000 C CNN
F 2 "" H 9750 3650 60  0000 C CNN
F 3 "../doc/datasheets/iso7221c.pdf" H 10250 3950 60  0001 C CNN
	1    10350 3350
	1    0    0    -1  
$EndComp
Text Label 12900 4250 3    60   ~ 0
MCU_GPIO28
Connection ~ 13500 3850
Text HLabel 10650 6000 2    50   Input ~ 0
MCU_TCK
Text HLabel 10650 6100 2    50   Input ~ 0
MCU_TDI
Text HLabel 10650 6200 2    50   Input ~ 0
MCU_TDO
Text HLabel 10650 6300 2    50   Input ~ 0
MCU_TMS
Text HLabel 10650 6400 2    50   Input ~ 0
~MCU_TRST~
Text HLabel 11300 3150 2    50   Input ~ 0
MCU_SCI_RX
Text HLabel 11300 3250 2    50   Input ~ 0
MCU_SCI_TX
$Comp
L servo:EMU_USB_5V0 #EMU_USB_5V0_?
U 1 1 5DD2B509
P 1650 3200
AR Path="/5DC1676A/5DD2B509" Ref="#EMU_USB_5V0_?"  Part="1" 
AR Path="/5DCD812E/5DD2B509" Ref="#EMU_USB_5V0_0501"  Part="1" 
F 0 "#EMU_USB_5V0_0501" H 1738 3267 20  0000 L CNN
F 1 "EMU_USB_5V0" H 1738 3215 30  0000 L CNN
F 2 "" H 1650 3200 70  0000 C CNN
F 3 "" H 1650 3200 70  0000 C CNN
	1    1650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3500 1950 3500
Wire Wire Line
	1650 3200 1650 3500
$Comp
L servo:EMU_5V0 #EMU_5V0_0501
U 1 1 5DD2B512
P 2850 3200
F 0 "#EMU_5V0_0501" H 2865 3409 20  0000 C CNN
F 1 "EMU_5V0" H 2865 3357 30  0000 C CNN
F 2 "" H 2850 3200 70  0000 C CNN
F 3 "" H 2850 3200 70  0000 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3500 3400 3500
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD2B51D
P 5300 4600
AR Path="/5DC1676A/5DD2B51D" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD2B51D" Ref="#EMU_GND_0503"  Part="1" 
F 0 "#EMU_GND_0503" H 5305 4451 20  0000 C CNN
F 1 "EMU_GND" H 5305 4399 30  0000 C CNN
F 2 "" H 5300 4600 70  0000 C CNN
F 3 "" H 5300 4600 70  0000 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3900 5200 3900
Wire Wire Line
	5300 4400 5300 3900
Wire Wire Line
	5300 4600 5300 4400
Wire Wire Line
	3700 3700 3800 3700
Wire Wire Line
	3700 3500 3700 3700
Wire Wire Line
	5500 4400 5300 4400
Wire Wire Line
	5500 4300 5500 4400
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD2B52B
P 6200 4650
AR Path="/5DC1676A/5DD2B52B" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD2B52B" Ref="#EMU_GND_0504"  Part="1" 
F 0 "#EMU_GND_0504" H 6205 4501 20  0000 C CNN
F 1 "EMU_GND" H 6205 4449 30  0000 C CNN
F 2 "" H 6200 4650 70  0000 C CNN
F 3 "" H 6200 4650 70  0000 C CNN
	1    6200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3500 6200 3700
Wire Wire Line
	6200 4000 6200 4650
$Comp
L power:GND #EMU_GND_0502
U 1 1 5DD2B534
P 3400 4600
F 0 "#EMU_GND_0502" H 3405 4451 20  0000 C CNN
F 1 "EMU_GND" H 3405 4399 30  0000 C CNN
F 2 "" H 3400 4600 70  0000 C CNN
F 3 "" H 3400 4600 70  0000 C CNN
	1    3400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3500 3400 3700
Wire Wire Line
	3400 4000 3400 4600
$Comp
L power:GND #EMU_GND_0501
U 1 1 5DD2B53D
P 3050 4600
F 0 "#EMU_GND_0501" H 3055 4451 20  0000 C CNN
F 1 "EMU_GND" H 3055 4399 30  0000 C CNN
F 2 "" H 3050 4600 70  0000 C CNN
F 3 "" H 3050 4600 70  0000 C CNN
	1    3050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4200 3050 4600
Wire Wire Line
	3050 3500 3050 3900
Wire Wire Line
	5500 3700 5200 3700
Wire Wire Line
	5500 4000 5500 3700
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD2B548
P 6800 4650
AR Path="/5DC1676A/5DD2B548" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD2B548" Ref="#EMU_GND_0505"  Part="1" 
F 0 "#EMU_GND_0505" H 6805 4501 20  0000 C CNN
F 1 "EMU_GND" H 6805 4449 30  0000 C CNN
F 2 "" H 6800 4650 70  0000 C CNN
F 3 "" H 6800 4650 70  0000 C CNN
	1    6800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3500 6800 3600
Wire Wire Line
	6800 4650 6800 4600
$Comp
L power:GND #EMU_GND_0506
U 1 1 5DD2B552
P 7250 3400
F 0 "#EMU_GND_0506" H 7255 3251 20  0000 C CNN
F 1 "EMU_GND" H 7255 3199 30  0000 C CNN
F 2 "" H 7250 3400 70  0000 C CNN
F 3 "" H 7250 3400 70  0000 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3500 6200 3500
Wire Wire Line
	6800 3300 6800 3500
Wire Wire Line
	7250 3400 7250 3300
Wire Wire Line
	2850 3500 2450 3500
Wire Wire Line
	3050 3500 2850 3500
Wire Wire Line
	2850 3500 2850 3300
Connection ~ 2850 3500
Connection ~ 3050 3500
Connection ~ 3400 3500
Connection ~ 3700 3500
Connection ~ 5300 4400
Connection ~ 6200 3500
Connection ~ 6800 3500
$Comp
L servo:Capacitor C502
U 1 1 5DD2B569
P 3400 3800
F 0 "C502" V 3405 3910 60  0000 L CNN
F 1 "0.1uF" V 3503 3910 50  0000 L CNN
F 2 "" H 3400 3800 50  0001 C CNN
F 3 "" H 3400 3800 50  0001 C CNN
F 4 "0.1uF" V -6600 4200 60  0001 C CNN "ValueDisplayed"
	1    3400 3800
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C503
U 1 1 5DD2B571
P 5500 4100
F 0 "C503" V 5497 4210 60  0000 L CNN
F 1 "0.01uF" H 5500 4100 50  0001 C CNN
F 2 "" H 5500 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0001 C CNN
F 4 "0.01uF" V 5603 4210 60  0000 L CNN "ValueDisplayed"
	1    5500 4100
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5DD2B579
P 6800 3800
AR Path="/5DC1676A/5DD2B579" Ref="R?"  Part="1" 
AR Path="/5DCD812E/5DD2B579" Ref="R501"  Part="1" 
F 0 "R501" V 6747 3850 60  0000 L CNN
F 1 "680" H 6800 3800 50  0001 C CNN
F 2 "" H 6800 3800 50  0001 C CNN
F 3 "" H 6800 3800 50  0001 C CNN
F 4 "680" V 6853 3850 60  0000 L CNN "ValueDisplayed"
	1    6800 3800
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DD2B581
P 6800 4300
AR Path="/5DC1676A/5DD2B581" Ref="D?"  Part="1" 
AR Path="/5DCD812E/5DD2B581" Ref="D502"  Part="1" 
F 0 "D502" V 6747 4520 60  0000 L CNN
F 1 "red" H 6800 4300 50  0001 C CNN
F 2 "" H 6800 4300 50  0001 C CNN
F 3 "" H 6800 4300 50  0001 C CNN
F 4 "red" V 6853 4520 60  0000 L CNN "VALUE"
	1    6800 4300
	0    1    1    0   
$EndComp
$Comp
L servo:CMP-0078143-2 TP501
U 1 1 5DD2B588
P 6800 3200
F 0 "TP501" H 6700 3300 60  0000 L BNN
F 1 "~" H 6800 3200 50  0001 C CNN
F 2 "" H 6800 3200 50  0001 C CNN
F 3 "" H 6800 3200 50  0001 C CNN
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:CMP-0078143-2 TP502
U 1 1 5DD2B58F
P 7250 3200
F 0 "TP502" H 7150 3300 60  0000 L BNN
F 1 "~" H 7250 3200 50  0001 C CNN
F 2 "" H 7250 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
	1    7250 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C501
U 1 1 5DD2B59E
P 3050 4100
F 0 "C501" V 3153 4209 60  0000 L CNN
F 1 "4.7uF" H 3050 4100 50  0001 C CNN
F 2 "" H 3050 4100 50  0001 C CNN
F 3 "" H 3050 4100 50  0001 C CNN
F 4 "4.7uF" V 3047 4209 60  0000 L CNN "ValueDisplayed"
	1    3050 4100
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C504
U 1 1 5DD2B5A6
P 6200 3900
F 0 "C504" V 6303 3790 60  0000 R CNN
F 1 "4.7uF" H 6200 3900 50  0001 C CNN
F 2 "" H 6200 3900 50  0001 C CNN
F 3 "" H 6200 3900 50  0001 C CNN
F 4 "4.7uF" V 6197 3790 60  0000 R CNN "ValueDisplayed"
	1    6200 3900
	0    -1   -1   0   
$EndComp
$Comp
L servo:DIODE_SCHOTTKY D501
U 1 1 5DD2B5AD
P 2250 3500
F 0 "D501" H 2300 3789 60  0000 C CNN
F 1 "MBRM110ET1G" H 2300 3683 60  0000 C CNN
F 2 "" H 2140 3290 60  0000 C CNN
F 3 "" H 2140 3290 60  0000 C CNN
	1    2250 3500
	-1   0    0    -1  
$EndComp
$Comp
L servo:TPS730XXDBV U501
U 1 1 5DD2B5B4
P 4500 3700
F 0 "U501" H 4500 4289 60  0000 C CNN
F 1 "TPS73033DBVR" H 4500 4183 60  0000 C CNN
F 2 "" H 4000 3200 60  0000 C CNN
F 3 "../doc/datasheets/tps730.pdf" H 4000 3200 60  0001 C CNN
	1    4500 3700
	1    0    0    -1  
$EndComp
$Comp
L servo:PWR_FLAG #FLG0501
U 1 1 5DD2B5BB
P 2650 3200
F 0 "#FLG0501" H 2650 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 3350 50  0000 C CNN
F 2 "" H 2650 3200 50  0001 C CNN
F 3 "~" H 2650 3200 50  0001 C CNN
	1    2650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3200 2650 3300
Wire Wire Line
	2650 3300 2850 3300
Connection ~ 2850 3300
Wire Wire Line
	2850 3300 2850 3200
Wire Wire Line
	5700 3300 5700 3200
Wire Wire Line
	5450 3300 5700 3300
Wire Wire Line
	5450 3200 5450 3300
$Comp
L servo:PWR_FLAG #FLG0502
U 1 1 5DD2B5C8
P 5450 3200
F 0 "#FLG0502" H 5450 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 3400 50  0000 C CNN
F 2 "" H 5450 3200 50  0001 C CNN
F 3 "~" H 5450 3200 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
Connection ~ 5700 3300
Wire Wire Line
	6200 3500 5700 3500
Wire Wire Line
	5700 3500 5200 3500
Connection ~ 5700 3500
Wire Wire Line
	5700 3500 5700 3300
$Comp
L servo:EMU_3V3 #EMU_3V3_?
U 1 1 5DD2B5D3
P 5700 3200
AR Path="/5DC1676A/5DD2B5D3" Ref="#EMU_3V3_?"  Part="1" 
AR Path="/5DCD812E/5DD2B5D3" Ref="#EMU_3V3_0501"  Part="1" 
F 0 "#EMU_3V3_0501" H 5715 3409 20  0000 C CNN
F 1 "EMU_3V3" H 5715 3357 30  0000 C CNN
F 2 "" H 5700 3200 70  0000 C CNN
F 3 "" H 5700 3200 70  0000 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3500 3400 3500
Wire Wire Line
	3700 3500 3800 3500
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J501
U 1 1 5DD48AB5
P 10350 6200
F 0 "J501" H 10400 6617 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 10400 6526 50  0000 C CNN
F 2 "" H 10350 6200 50  0001 C CNN
F 3 "~" H 10350 6200 50  0001 C CNN
	1    10350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3150 9000 3150
Wire Wire Line
	9650 3250 9000 3250
$Comp
L servo:EMU_USB_5V0 #EMU_USB_5V0_?
U 1 1 5DD5A4D2
P 9500 5850
AR Path="/5DC1676A/5DD5A4D2" Ref="#EMU_USB_5V0_?"  Part="1" 
AR Path="/5DCD812E/5DD5A4D2" Ref="#EMU_USB_5V0_0502"  Part="1" 
F 0 "#EMU_USB_5V0_0502" H 9515 6059 20  0000 C CNN
F 1 "EMU_USB_5V0" H 9515 6007 30  0000 C CNN
F 2 "" H 9500 5850 70  0000 C CNN
F 3 "" H 9500 5850 70  0000 C CNN
	1    9500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 6000 9500 6000
Wire Wire Line
	9500 6000 9500 5850
$Comp
L power:GND #EMU_GND_?
U 1 1 5DD61DA5
P 10000 6500
AR Path="/5DC1676A/5DD61DA5" Ref="#EMU_GND_?"  Part="1" 
AR Path="/5DCD812E/5DD61DA5" Ref="#EMU_GND_0509"  Part="1" 
F 0 "#EMU_GND_0509" H 10005 6351 20  0000 C CNN
F 1 "EMU_GND" H 10005 6299 30  0000 C CNN
F 2 "" H 10000 6500 70  0000 C CNN
F 3 "" H 10000 6500 70  0000 C CNN
	1    10000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 6400 10000 6400
Wire Wire Line
	10000 6400 10000 6500
$Comp
L servo:EMU_3V3 #EMU_3V3_?
U 1 1 5DD63C4C
P 9150 5850
AR Path="/5DC1676A/5DD63C4C" Ref="#EMU_3V3_?"  Part="1" 
AR Path="/5DCD812E/5DD63C4C" Ref="#EMU_3V3_0502"  Part="1" 
F 0 "#EMU_3V3_0502" H 9165 6059 20  0000 C CNN
F 1 "EMU_3V3" H 9165 6007 30  0000 C CNN
F 2 "" H 9150 5850 70  0000 C CNN
F 3 "" H 9150 5850 70  0000 C CNN
	1    9150 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 6300 10150 6300
Wire Wire Line
	9150 5850 9150 6300
Text Label 9000 3150 0    50   ~ 0
EMU_SCI_TX
Text Label 9000 3250 0    50   ~ 0
EMU_SCI_RX
Wire Wire Line
	10150 6100 9500 6100
Wire Wire Line
	10150 6200 9500 6200
Text Label 9500 6100 0    50   ~ 0
EMU_SCI_TX
Text Label 9500 6200 0    50   ~ 0
EMU_SCI_RX
Text Notes 9900 5650 0    50   ~ 0
IDC connector to plug \nan external isolated jtag interface
Text Notes 9650 2650 0    50   ~ 0
I decided to keep the sci interface \nisolated onboard for debug and share with rs485
$EndSCHEMATC
