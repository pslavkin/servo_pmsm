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
$Comp
L servo:15VC #PWR0156
U 1 1 5F44E52B
P 1950 1400
F 0 "#PWR0156" H 1950 1200 20  0001 C CNN
F 1 "15VC" H 1955 1557 28  0000 C CNN
F 2 "" H 1950 1400 50  0001 C CNN
F 3 "" H 1950 1400 50  0001 C CNN
	1    1950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4850 1950 4850
Wire Wire Line
	1950 4850 1950 3200
Wire Wire Line
	2150 3200 1950 3200
Connection ~ 1950 3200
$Comp
L servo:GND #PWR?
U 1 1 5DDBCF36
P 2450 2250
AR Path="/5DCD812E/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5DDBCF36" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5DDBCF36" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 2455 2101 20  0001 C CNN
F 1 "GND" H 2455 2092 30  0000 C CNN
F 2 "" H 2450 2250 70  0000 C CNN
F 3 "" H 2450 2250 70  0000 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L servo:5VC #PWR0158
U 1 1 5DDBEAD4
P 3650 1500
F 0 "#PWR0158" H 3650 1300 20  0001 C CNN
F 1 "5VC" H 3655 1657 28  0000 C CNN
F 2 "" H 3650 1500 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0159
U 1 1 5DDC15D8
P 5050 3100
F 0 "#PWR0159" H 5050 2900 20  0001 C CNN
F 1 "3V3" H 5055 3257 28  0000 C CNN
F 2 "" H 5050 3100 50  0001 C CNN
F 3 "" H 5050 3100 50  0001 C CNN
	1    5050 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR0160
U 1 1 5DDC3F59
P 5050 4750
F 0 "#PWR0160" H 5050 4550 20  0001 C CNN
F 1 "1V2C" H 5055 4907 28  0000 C CNN
F 2 "" H 5050 4750 50  0001 C CNN
F 3 "" H 5050 4750 50  0001 C CNN
	1    5050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3200 5050 3100
Wire Wire Line
	5050 3200 5050 3300
Connection ~ 5050 3200
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 5050 3500
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R702"  Part="1" 
F 0 "R702" V 5095 3450 60  0000 R CNN
F 1 "680" V 4997 3450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5050 3500 50  0001 C CNN
F 3 "" H 5050 3500 50  0001 C CNN
F 4 "680" V -7350 3900 60  0001 C CNN "ValueDisplayed"
	1    5050 3500
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDAAD7D
P 2850 3400
AR Path="/5EAA846A/5DDAAD7D" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDAAD7D" Ref="C702"  Part="1" 
F 0 "C702" V 2945 3290 60  0000 R CNN
F 1 "22uF" V 2847 3290 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2850 3400 50  0001 C CNN
F 3 "" H 2850 3400 50  0001 C CNN
F 4 "22uF" V -10150 3800 60  0001 C CNN "ValueDisplayed"
	1    2850 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDAAD85
P 5050 3800
AR Path="/5EAA846A/5DDAAD85" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDAAD85" Ref="D702"  Part="1" 
F 0 "D702" V 5000 3900 60  0000 L CNN
F 1 "green" V 5100 3950 50  0000 L CNN
F 2 "" H 5050 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0001 C CNN
F 4 "red" V -7350 3700 60  0001 C CNN "VALUE"
	1    5050 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1600 3650 1500
Wire Wire Line
	2900 1700 2900 1600
Connection ~ 3650 1600
$Comp
L servo:Resistor R?
U 1 1 5DDB545A
P 3650 1800
AR Path="/5EAA846A/5DDB545A" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDB545A" Ref="R701"  Part="1" 
F 0 "R701" V 3695 1750 60  0000 R CNN
F 1 "680" V 3597 1750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3650 1800 50  0001 C CNN
F 3 "" H 3650 1800 50  0001 C CNN
F 4 "680" V -8750 2200 60  0001 C CNN "ValueDisplayed"
	1    3650 1800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5DDB5462
P 2900 1900
AR Path="/5EAA846A/5DDB5462" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5DDB5462" Ref="C704"  Part="1" 
F 0 "C704" V 2995 1790 60  0000 R CNN
F 1 "22uF" V 2897 1790 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2900 1900 50  0001 C CNN
F 3 "" H 2900 1900 50  0001 C CNN
F 4 "22uF" V -10100 2300 60  0001 C CNN "ValueDisplayed"
	1    2900 1900
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5DDB546A
P 3650 2100
AR Path="/5EAA846A/5DDB546A" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5DDB546A" Ref="D701"  Part="1" 
F 0 "D701" V 3630 2230 60  0000 L CNN
F 1 "red" V 3728 2230 50  0000 L CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
F 4 "red" V -8750 2000 60  0001 C CNN "VALUE"
	1    3650 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3950 5050 4000
Wire Wire Line
	1950 1600 2150 1600
$Comp
L Regulator_Switching:R-78E5.0-1.0 U701
U 1 1 5E179B6F
P 2450 1600
F 0 "U701" H 2450 1842 50  0000 C CNN
F 1 "R-78E5.0-1.0" H 2450 1751 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 2500 1350 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:R-78E5.0-1.0 U702
U 1 1 5E17FF73
P 2450 3200
F 0 "U702" H 2450 3442 50  0000 C CNN
F 1 "R-78E5.0-1.0" H 2450 3351 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 2500 2950 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 2450 3200 50  0001 C CNN
	1    2450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3200 2850 3200
$Comp
L servo:Capacitor C?
U 1 1 5E1925EE
P 3200 3400
AR Path="/5EAA846A/5E1925EE" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1925EE" Ref="C705"  Part="1" 
F 0 "C705" V 3295 3290 60  0000 R CNN
F 1 "100nF" V 3197 3290 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3200 3400 50  0001 C CNN
F 3 "" H 3200 3400 50  0001 C CNN
F 4 "22uF" V -9800 3800 60  0001 C CNN "ValueDisplayed"
	1    3200 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 3200 3200 3200
Connection ~ 2850 3200
Wire Wire Line
	2450 3500 2450 4000
Wire Wire Line
	2850 3500 2850 4000
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD13
P 4350 3400
AR Path="/5EAA846A/5E1ADD13" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD13" Ref="C708"  Part="1" 
F 0 "C708" V 4445 3290 60  0000 R CNN
F 1 "22uF" V 4347 3290 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 3400 50  0001 C CNN
F 3 "" H 4350 3400 50  0001 C CNN
F 4 "22uF" V -8650 3800 60  0001 C CNN "ValueDisplayed"
	1    4350 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E1ADD22
P 4700 3400
AR Path="/5EAA846A/5E1ADD22" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E1ADD22" Ref="C710"  Part="1" 
F 0 "C710" V 4795 3290 60  0000 R CNN
F 1 "100nF" V 4697 3290 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
F 4 "22uF" V -8300 3800 60  0001 C CNN "ValueDisplayed"
	1    4700 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 3500 4350 4000
Wire Wire Line
	4700 3500 4700 4000
Connection ~ 4700 3200
Wire Wire Line
	4700 3200 5050 3200
Wire Wire Line
	4350 3200 4700 3200
$Comp
L Regulator_Switching:R-78E3.3-1.0 U703
U 1 1 5E2037E9
P 2450 4850
F 0 "U703" H 2450 5092 50  0000 C CNN
F 1 "R-78E3.3-1.0" H 2450 5001 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 2500 4600 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 2450 4850 50  0001 C CNN
	1    2450 4850
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E207746
P 2850 5050
AR Path="/5EAA846A/5E207746" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E207746" Ref="C703"  Part="1" 
F 0 "C703" V 2945 4940 60  0000 R CNN
F 1 "22uF" V 2847 4940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2850 5050 50  0001 C CNN
F 3 "" H 2850 5050 50  0001 C CNN
F 4 "22uF" V -10150 5450 60  0001 C CNN "ValueDisplayed"
	1    2850 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 4850 2850 4850
$Comp
L servo:Capacitor C?
U 1 1 5E20776B
P 3200 5050
AR Path="/5EAA846A/5E20776B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E20776B" Ref="C706"  Part="1" 
F 0 "C706" V 3295 4940 60  0000 R CNN
F 1 "100nF" V 3197 4940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3200 5050 50  0001 C CNN
F 3 "" H 3200 5050 50  0001 C CNN
F 4 "22uF" V -9800 5450 60  0001 C CNN "ValueDisplayed"
	1    3200 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 4850 3200 4850
Connection ~ 2850 4850
Wire Wire Line
	2850 5150 2850 5650
Wire Wire Line
	3200 5150 3200 5650
Wire Wire Line
	2450 5150 2450 5650
Wire Wire Line
	5050 4850 5050 4750
Wire Wire Line
	5050 4850 5050 4950
Connection ~ 5050 4850
$Comp
L servo:Resistor R?
U 1 1 5E2861EE
P 5050 5150
AR Path="/5EAA846A/5E2861EE" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E2861EE" Ref="R703"  Part="1" 
F 0 "R703" V 5095 5100 60  0000 R CNN
F 1 "680" V 4997 5100 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5050 5150 50  0001 C CNN
F 3 "" H 5050 5150 50  0001 C CNN
F 4 "680" V -7350 5550 60  0001 C CNN "ValueDisplayed"
	1    5050 5150
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E2861F6
P 5050 5450
AR Path="/5EAA846A/5E2861F6" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E2861F6" Ref="D703"  Part="1" 
F 0 "D703" V 5030 5580 60  0000 L CNN
F 1 "blue" V 5128 5580 50  0000 L CNN
F 2 "" H 5050 5450 50  0001 C CNN
F 3 "" H 5050 5450 50  0001 C CNN
F 4 "red" V -7350 5350 60  0001 C CNN "VALUE"
	1    5050 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5600 5050 5650
$Comp
L servo:GND #PWR?
U 1 1 5E286204
P 3800 5650
AR Path="/5DCD812E/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E286204" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 3805 5501 20  0001 C CNN
F 1 "GND" H 3800 5492 30  0000 C CNN
F 2 "" H 3800 5650 70  0000 C CNN
F 3 "" H 3800 5650 70  0000 C CNN
	1    3800 5650
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E28620B
P 4350 5050
AR Path="/5EAA846A/5E28620B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E28620B" Ref="C709"  Part="1" 
F 0 "C709" V 4445 4940 60  0000 R CNN
F 1 "22uF" V 4347 4940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4350 5050 50  0001 C CNN
F 3 "" H 4350 5050 50  0001 C CNN
F 4 "22uF" V -8650 5450 60  0001 C CNN "ValueDisplayed"
	1    4350 5050
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E286219
P 4700 5050
AR Path="/5EAA846A/5E286219" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E286219" Ref="C711"  Part="1" 
F 0 "C711" V 4795 4940 60  0000 R CNN
F 1 "100nF" V 4697 4940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4700 5050 50  0001 C CNN
F 3 "" H 4700 5050 50  0001 C CNN
F 4 "22uF" V -8300 5450 60  0001 C CNN "ValueDisplayed"
	1    4700 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 5150 4350 5650
Wire Wire Line
	4700 5150 4700 5650
Connection ~ 4700 4850
Wire Wire Line
	4700 4850 5050 4850
Wire Wire Line
	4350 4850 4700 4850
$Comp
L servo:AP2114 U705
U 1 1 5E28622B
P 3800 4950
F 0 "U705" H 3800 5315 50  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 3800 5224 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3900 5575 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 3800 5050 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4850 3500 4850
$Comp
L servo:5VC #PWR0162
U 1 1 5E29B451
P 2850 2700
F 0 "#PWR0162" H 2850 2500 20  0001 C CNN
F 1 "5VC" H 2855 2857 28  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2800 2850 2700
$Comp
L Jumper:Jumper_2_Bridged JP701
U 1 1 5E29F6D0
P 2850 3000
F 0 "JP701" V 2804 3058 50  0000 L CNN
F 1 "Jumper" H 2650 2950 50  0000 L CNN
F 2 "" H 2850 3000 50  0001 C CNN
F 3 "~" H 2850 3000 50  0001 C CNN
	1    2850 3000
	0    1    1    0   
$EndComp
Text Notes 2950 2900 0    20   ~ 0
in case we need more \ncurrent use another 5v dc/dc and\n open jumper to no overload the previos \nschitching power supply. if not, just chain and \ndo not place the extra 78E5
Text Notes 3000 1550 0    20   ~ 0
5v will have some switching \nnoise, but don't care, couse I'll use \n3v3 for the noise sensible logic.\nIf need some 5v clean supply just add\n a filter near your stuff
Wire Wire Line
	2750 1600 2900 1600
Connection ~ 2900 1600
Wire Wire Line
	2900 1600 3250 1600
$Comp
L servo:Capacitor C?
U 1 1 5E2B56EB
P 3250 1900
AR Path="/5EAA846A/5E2B56EB" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2B56EB" Ref="C707"  Part="1" 
F 0 "C707" V 3345 1790 60  0000 R CNN
F 1 "100nF" V 3247 1790 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3250 1900 50  0001 C CNN
F 3 "" H 3250 1900 50  0001 C CNN
F 4 "22uF" V -9750 2300 60  0001 C CNN "ValueDisplayed"
	1    3250 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 1700 3250 1600
Connection ~ 3250 1600
Wire Wire Line
	3250 1600 3650 1600
Wire Wire Line
	2900 2000 2900 2250
Wire Wire Line
	3250 2000 3250 2250
$Comp
L servo:Capacitor C?
U 1 1 5E2F90CF
P 8150 2050
AR Path="/5EAA846A/5E2F90CF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90CF" Ref="C713"  Part="1" 
F 0 "C713" V 8245 1940 60  0000 R CNN
F 1 "22uF" V 8147 1940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8150 2050 50  0001 C CNN
F 3 "" H 8150 2050 50  0001 C CNN
F 4 "22uF" V -4850 2450 60  0001 C CNN "ValueDisplayed"
	1    8150 2050
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Switching:R-78E5.0-1.0 U706
U 1 1 5E2F90E5
P 7750 1850
F 0 "U706" H 7750 2092 50  0000 C CNN
F 1 "R-78E5.0-1.0" H 7750 2001 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 7800 1600 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-1.0.pdf" H 7750 1850 50  0001 C CNN
	1    7750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1850 8150 1850
$Comp
L servo:Capacitor C?
U 1 1 5E2F90F4
P 8500 2050
AR Path="/5EAA846A/5E2F90F4" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90F4" Ref="C714"  Part="1" 
F 0 "C714" V 8595 1940 60  0000 R CNN
F 1 "100nF" V 8497 1940 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8500 2050 50  0001 C CNN
F 3 "" H 8500 2050 50  0001 C CNN
F 4 "22uF" V -4500 2450 60  0001 C CNN "ValueDisplayed"
	1    8500 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1850 8500 1850
Connection ~ 8150 1850
Connection ~ 8500 1850
Wire Wire Line
	7750 2150 7750 2650
Wire Wire Line
	8150 2150 8150 2650
Wire Wire Line
	8500 2150 8500 2650
Wire Wire Line
	7150 1750 7150 1850
$Comp
L servo:15VH #PWR0163
U 1 1 5E2FE45E
P 7150 1750
F 0 "#PWR0163" H 7150 1550 20  0001 C CNN
F 1 "15VH" H 7155 1907 28  0000 C CNN
F 2 "" H 7150 1750 50  0001 C CNN
F 3 "" H 7150 1750 50  0001 C CNN
	1    7150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1850 7450 1850
$Comp
L servo:5VH #PWR0164
U 1 1 5E309ABD
P 8900 1750
F 0 "#PWR0164" H 8900 1550 20  0001 C CNN
F 1 "5VH" H 8905 1907 28  0000 C CNN
F 2 "" H 8900 1750 50  0001 C CNN
F 3 "" H 8900 1750 50  0001 C CNN
	1    8900 1750
	1    0    0    -1  
$EndComp
Connection ~ 1950 1600
Wire Wire Line
	1950 1400 1950 1600
Wire Wire Line
	1950 1600 1950 3200
Wire Wire Line
	7750 2650 7900 2650
Connection ~ 8150 2650
Wire Wire Line
	8150 2650 8500 2650
Connection ~ 8500 2650
Wire Wire Line
	8500 2650 8900 2650
Wire Wire Line
	2450 5650 2850 5650
Connection ~ 2850 5650
Wire Wire Line
	2850 5650 3200 5650
Connection ~ 3200 5650
Connection ~ 4350 5650
Wire Wire Line
	4350 5650 4700 5650
Connection ~ 4700 5650
Wire Wire Line
	4700 5650 5050 5650
Wire Wire Line
	2450 4000 2850 4000
Connection ~ 2850 4000
Wire Wire Line
	4350 4000 4700 4000
Connection ~ 4700 4000
Wire Wire Line
	4700 4000 5050 4000
Wire Wire Line
	2450 1900 2450 2250
Wire Wire Line
	3650 2250 3250 2250
Connection ~ 2450 2250
Connection ~ 2900 2250
Wire Wire Line
	2900 2250 2450 2250
Connection ~ 3250 2250
Wire Wire Line
	3250 2250 2900 2250
$Comp
L servo:Resistor R?
U 1 1 5E38D647
P 8900 2100
AR Path="/5EAA846A/5E38D647" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E38D647" Ref="R704"  Part="1" 
F 0 "R704" V 8945 2050 60  0000 R CNN
F 1 "680" V 8847 2050 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8900 2100 50  0001 C CNN
F 3 "" H 8900 2100 50  0001 C CNN
F 4 "680" V -3500 2500 60  0001 C CNN "ValueDisplayed"
	1    8900 2100
	0    -1   -1   0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E38D64F
P 8900 2400
AR Path="/5EAA846A/5E38D64F" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E38D64F" Ref="D704"  Part="1" 
F 0 "D704" V 8850 2500 60  0000 L CNN
F 1 "red" V 8950 2550 50  0000 L CNN
F 2 "" H 8900 2400 50  0001 C CNN
F 3 "" H 8900 2400 50  0001 C CNN
F 4 "red" V -3500 2300 60  0001 C CNN "VALUE"
	1    8900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2550 8900 2650
Wire Wire Line
	8900 1900 8900 1850
$Comp
L servo:15VC #PWR0165
U 1 1 5E3CA8DA
P 13750 2450
F 0 "#PWR0165" H 13750 2250 20  0001 C CNN
F 1 "15VC" H 13755 2607 28  0000 C CNN
F 2 "" H 13750 2450 50  0001 C CNN
F 3 "" H 13750 2450 50  0001 C CNN
	1    13750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 2450 13750 2450
$Comp
L servo:GND #PWR?
U 1 1 5E3CD93F
P 13750 2650
AR Path="/5DCD812E/5E3CD93F" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E3CD93F" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E3CD93F" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E3CD93F" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 13755 2501 20  0001 C CNN
F 1 "GND" H 13755 2492 30  0000 C CNN
F 2 "" H 13750 2650 70  0000 C CNN
F 3 "" H 13750 2650 70  0000 C CNN
	1    13750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 2650 13750 2650
$Comp
L Connector:Screw_Terminal_01x03 J703
U 1 1 5E3D0C3C
P 11700 1750
F 0 "J703" H 11620 1425 50  0000 C CNN
F 1 "Screw" H 11620 1516 50  0000 C CNN
F 2 "" H 11700 1750 50  0001 C CNN
F 3 "~" H 11700 1750 50  0001 C CNN
	1    11700 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	13500 1650 13750 1650
Wire Wire Line
	13500 1850 13750 1850
$Comp
L servo:15VH #PWR0167
U 1 1 5E3D3E10
P 13750 1650
F 0 "#PWR0167" H 13750 1450 20  0001 C CNN
F 1 "15VH" H 13755 1807 28  0000 C CNN
F 2 "" H 13750 1650 50  0001 C CNN
F 3 "" H 13750 1650 50  0001 C CNN
	1    13750 1650
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0168
U 1 1 5E3D40D8
P 13750 1850
F 0 "#PWR0168" H 13750 1600 30  0001 C CNN
F 1 "GNDH" H 13750 1692 30  0000 C CNN
F 2 "" H 13750 1850 50  0001 C CNN
F 3 "" H 13750 1850 50  0001 C CNN
	1    13750 1850
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E3D900F
P 1550 1950
AR Path="/5EAA846A/5E3D900F" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E3D900F" Ref="C701"  Part="1" 
F 0 "C701" V 1645 1840 60  0000 R CNN
F 1 "220uF" V 1547 1840 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1550 1950 50  0001 C CNN
F 3 "" H 1550 1950 50  0001 C CNN
F 4 "22uF" V -11450 2350 60  0001 C CNN "ValueDisplayed"
	1    1550 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 1600 1550 1600
$Comp
L servo:Capacitor C?
U 1 1 5E3EC5F1
P 7150 2300
AR Path="/5EAA846A/5E3EC5F1" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E3EC5F1" Ref="C712"  Part="1" 
F 0 "C712" V 7245 2190 60  0000 R CNN
F 1 "220uF" V 7147 2190 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 2300 50  0001 C CNN
F 3 "" H 7150 2300 50  0001 C CNN
F 4 "22uF" V -5850 2700 60  0001 C CNN "ValueDisplayed"
	1    7150 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 1850 7150 2100
Connection ~ 7150 1850
Wire Wire Line
	7750 2650 7150 2650
Wire Wire Line
	7150 2650 7150 2400
Connection ~ 7750 2650
Wire Wire Line
	1550 1600 1550 1750
Wire Wire Line
	1550 2050 1550 2250
Wire Wire Line
	1550 2250 2450 2250
Text Notes 2000 950  0    197  ~ 39
COLD SUPPLY\n
Text Notes 6950 1000 0    197  ~ 39
HOT SUPPLY
Connection ~ 3200 4850
Wire Wire Line
	3200 5650 3800 5650
Wire Wire Line
	4100 4850 4150 4850
Connection ~ 4350 4850
Wire Wire Line
	4100 4950 4150 4950
Wire Wire Line
	4150 4950 4150 4850
Connection ~ 4150 4850
Wire Wire Line
	4150 4850 4350 4850
Wire Wire Line
	3800 5250 3800 5650
Connection ~ 3800 5650
Wire Wire Line
	3800 5650 4350 5650
$Comp
L servo:AP2114 U704
U 1 1 5E44A5E2
P 3800 3300
F 0 "U704" H 3800 3665 50  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 3800 3574 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3900 3925 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 3800 3400 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
Text Notes 4050 3550 0    20   ~ 0
low noise \nLDO <30uV
Wire Wire Line
	4100 3200 4150 3200
Wire Wire Line
	4100 3300 4150 3300
Wire Wire Line
	4150 3300 4150 3200
Wire Wire Line
	3800 3600 3800 4000
Wire Wire Line
	3200 3200 3500 3200
Connection ~ 3200 3200
Wire Wire Line
	4150 3200 4350 3200
Connection ~ 4150 3200
Connection ~ 4350 3200
Wire Wire Line
	4350 4000 3800 4000
Connection ~ 4350 4000
Connection ~ 3800 4000
Wire Wire Line
	2850 4000 3200 4000
Wire Wire Line
	3200 3500 3200 4000
Connection ~ 3200 4000
Wire Wire Line
	3200 4000 3800 4000
Wire Wire Line
	8500 1850 8900 1850
Connection ~ 8900 1850
Wire Wire Line
	8900 1750 8900 1850
$Comp
L servo:IRM-20-12 PS701
U 1 1 5E5160DF
P 13100 1750
F 0 "PS701" H 13100 2075 50  0000 C CNN
F 1 "IRM-20-12" H 13100 1984 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 13100 1450 50  0001 C CNN
F 3 "../doc/datasheets/IRM-20-SPEC.PDF" H 13500 1400 50  0001 C CNN
	1    13100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 1650 12450 1650
$Comp
L servo:IRM-20-12 PS702
U 1 1 5E535720
P 13100 2550
F 0 "PS702" H 13100 2875 50  0000 C CNN
F 1 "IRM-20-12" H 13100 2784 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-20-xx_THT" H 13100 2250 50  0001 C CNN
F 3 "../doc/datasheets/IRM-20-SPEC.PDF" H 13500 2200 50  0001 C CNN
	1    13100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 1650 12450 2450
Wire Wire Line
	12450 2450 12700 2450
Connection ~ 12450 1650
Wire Wire Line
	12450 1650 12350 1650
Wire Wire Line
	12550 2650 12700 2650
Wire Wire Line
	12550 1850 12550 2650
Connection ~ 12550 1850
Wire Wire Line
	12550 1850 12700 1850
Text Notes 12050 1050 0    197  ~ 39
Main Power
$Comp
L Device:Fuse F701
U 1 1 5E553611
P 12200 1650
F 0 "F701" V 12003 1650 50  0000 C CNN
F 1 "Fuse" V 12094 1650 50  0000 C CNN
F 2 "" V 12130 1650 50  0001 C CNN
F 3 "~" H 12200 1650 50  0001 C CNN
	1    12200 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	11900 1850 12100 1850
$Comp
L Connector:Screw_Terminal_01x03 J702
U 1 1 5E55DF68
P 6450 2250
F 0 "J702" H 6370 1925 50  0000 C CNN
F 1 "Screw" H 6370 2016 50  0000 C CNN
F 2 "" H 6450 2250 50  0001 C CNN
F 3 "~" H 6450 2250 50  0001 C CNN
	1    6450 2250
	-1   0    0    1   
$EndComp
$Comp
L servo:15VH #PWR0169
U 1 1 5E55E331
P 6800 2100
F 0 "#PWR0169" H 6800 1900 20  0001 C CNN
F 1 "15VH" H 6805 2257 28  0000 C CNN
F 2 "" H 6800 2100 50  0001 C CNN
F 3 "" H 6800 2100 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0170
U 1 1 5E55E474
P 6800 2350
F 0 "#PWR0170" H 6800 2100 30  0001 C CNN
F 1 "GNDH" H 6800 2192 30  0000 C CNN
F 2 "" H 6800 2350 50  0001 C CNN
F 3 "" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2350 6650 2350
Wire Wire Line
	6650 2150 6800 2150
Wire Wire Line
	6800 2150 6800 2100
$Comp
L Connector:Screw_Terminal_01x03 J701
U 1 1 5E5695BF
P 950 1900
F 0 "J701" H 870 1575 50  0000 C CNN
F 1 "Screw" H 870 1666 50  0000 C CNN
F 2 "" H 950 1900 50  0001 C CNN
F 3 "~" H 950 1900 50  0001 C CNN
	1    950  1900
	-1   0    0    1   
$EndComp
$Comp
L servo:15VC #PWR0171
U 1 1 5E5697F1
P 1250 1700
F 0 "#PWR0171" H 1250 1500 20  0001 C CNN
F 1 "15VC" H 1255 1857 28  0000 C CNN
F 2 "" H 1250 1700 50  0001 C CNN
F 3 "" H 1250 1700 50  0001 C CNN
	1    1250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1700 1250 1800
Wire Wire Line
	1250 1800 1150 1800
$Comp
L servo:GND #PWR?
U 1 1 5E56D708
P 1250 2050
AR Path="/5DCD812E/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E56D708" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E56D708" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 1255 1901 20  0001 C CNN
F 1 "GND" H 1255 1892 30  0000 C CNN
F 2 "" H 1250 2050 70  0000 C CNN
F 3 "" H 1250 2050 70  0000 C CNN
	1    1250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2000 1250 2000
Wire Wire Line
	1250 2000 1250 2050
Text Notes 7400 1200 0    20   ~ 0
Take in account that hot doesn't mean that it is refered to high voltage\n AC socket input path like 220v/380v. It is intended to isolate the uC\n/logic/user interfase side from accidentally high voltage contact on the\n hot side and prevent injuries as to make the reinforced isolation\n possible with one single isolateion added
Text Notes 7550 1500 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 2150 1900 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 2000 3550 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 1950 5200 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 3900 5250 0    20   ~ 0
low noise \nLDO <30uV
Text Notes 12400 1250 0    20   ~ 0
In case the control board have to be supply directly with socket voltage\n (220v) populate these. It's not a good idea cause I'll like to keep hight\n voltage outside these controller board, but it's a requeriment, so I let it\n as an option. But you have the low voltage input 15vc and 15vh\n connectors also
Text Notes 2500 1050 0    20   ~ 0
It is inteded to use only, I mean ONLY inside the control board, none of\n these coopers wires has to leave the board. I isolate every single pin\n from these supply to go outside, take these in account\n
Text Notes 3450 3650 0    20   ~ 0
the intention of the LCD it to clean the noise without using big filters\n and L's. It's recommended and tested that these method works pretty\n
Text Notes 3500 5350 0    20   ~ 0
the intention of the LCD it to clean the noise without using big filters\n and L's. It's recommended and tested that these method works pretty\n
$Comp
L servo:GNDH #PWR0173
U 1 1 5EC79A03
P 7900 2700
F 0 "#PWR0173" H 7900 2450 30  0001 C CNN
F 1 "GNDH" H 7900 2542 30  0000 C CNN
F 2 "" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2700 7900 2650
Connection ~ 7900 2650
Wire Wire Line
	7900 2650 8150 2650
NoConn ~ 6650 2250
NoConn ~ 11900 1750
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5E8649AC
P 11800 2150
F 0 "#FLG0105" H 11800 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 11800 2324 50  0000 C CNN
F 2 "" H 11800 2150 50  0001 C CNN
F 3 "~" H 11800 2150 50  0001 C CNN
	1    11800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 2150 12100 2150
Wire Wire Line
	12100 2150 12100 1850
Connection ~ 12100 1850
Wire Wire Line
	12100 1850 12550 1850
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 5E86F581
P 12450 1450
F 0 "#FLG0106" H 12450 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 12450 1624 50  0000 C CNN
F 2 "" H 12450 1450 50  0001 C CNN
F 3 "~" H 12450 1450 50  0001 C CNN
	1    12450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 1450 12450 1650
Wire Wire Line
	11900 1650 12050 1650
NoConn ~ 1150 1900
$Comp
L servo:GND #PWR?
U 1 1 5E8914E3
P 3800 4050
AR Path="/5DCD812E/5E8914E3" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E8914E3" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E8914E3" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 3805 3901 20  0001 C CNN
F 1 "GND" H 3800 3892 30  0000 C CNN
F 2 "" H 3800 4050 70  0000 C CNN
F 3 "" H 3800 4050 70  0000 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4050 3800 4000
$EndSCHEMATC
