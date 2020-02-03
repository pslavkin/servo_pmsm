EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 12 20
Title ""
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L servo:ISO1050 U1201
U 1 1 5E217E51
P 5800 3650
F 0 "U1201" H 5750 4400 50  0000 C CNN
F 1 "ISO1050" H 5750 4300 50  0000 C CNN
F 2 "Package_SO:SSO-8_6.7x9.8mm_P2.54mm_Clearance8mm" H 5700 2950 50  0001 C CNN
F 3 "../doc/datasheets/iso1050.pdf" H 5850 4450 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E21DD67
P 5100 2750
AR Path="/5DE3DF56/5E21DD67" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD67" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E21DD67" Ref="#PWR01202"  Part="1" 
F 0 "#PWR01202" H 5105 2957 20  0001 C CNN
F 1 "3V3" H 5105 2907 28  0000 C CNN
F 2 "" H 5100 2750 50  0001 C CNN
F 3 "" H 5100 2750 50  0001 C CNN
	1    5100 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21DD6E
P 6800 3100
AR Path="/5DE3DF56/5E21DD6E" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD6E" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E21DD6E" Ref="C1202"  Part="1" 
F 0 "C1202" V 6828 3210 20  0000 L CNN
F 1 "100nF" V 6871 3210 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6800 3000 60  0001 C CNN
F 3 "" H 6800 3100 60  0000 C CNN
	1    6800 3100
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E21DD7B
P 4800 3100
AR Path="/5DE3DF56/5E21DD7B" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E21DD7B" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E21DD7B" Ref="C1201"  Part="1" 
F 0 "C1201" V 4828 3210 20  0000 L CNN
F 1 "100nF" V 4871 3210 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 4800 3000 60  0001 C CNN
F 3 "" H 4800 3100 60  0000 C CNN
	1    4800 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2900 5100 2900
Wire Wire Line
	6500 2750 6500 2800
Connection ~ 6500 2800
Wire Wire Line
	4400 3650 5250 3650
Wire Wire Line
	4400 3400 5250 3400
Text GLabel 4400 3650 0    50   Input ~ 0
CAN_TX
Text GLabel 4400 3400 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	5100 3200 5250 3200
Wire Wire Line
	6500 3200 6400 3200
Wire Wire Line
	6500 2800 6500 3200
$Comp
L servo:GND #PWR?
U 1 1 5E221639
P 5050 3900
AR Path="/5DE3DF56/5E221639" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E221639" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E221639" Ref="#PWR01201"  Part="1" 
F 0 "#PWR01201" H 5050 3650 30  0001 C CNN
F 1 "GND" H 5050 3742 30  0000 C CNN
F 2 "" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5050 3850
Wire Wire Line
	5050 3850 5050 3900
Wire Wire Line
	6400 3450 7050 3450
Wire Wire Line
	7050 3450 7050 3550
Text Notes 3950 1900 0    197  ~ 39
Isolated CAN interfase
$Comp
L servo:5VH #PWR?
U 1 1 5E32E6BC
P 6500 2750
AR Path="/5DE49152/5E32E6BC" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E32E6BC" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E32E6BC" Ref="#PWR01204"  Part="1" 
F 0 "#PWR01204" H 6500 2550 20  0001 C CNN
F 1 "5VH" H 6505 2907 28  0000 C CNN
F 2 "" H 6500 2750 50  0001 C CNN
F 3 "" H 6500 2750 50  0001 C CNN
	1    6500 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E3402F1
P 6800 3900
AR Path="/5DE49152/5E3402F1" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E3402F1" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E3402F1" Ref="#PWR01205"  Part="1" 
F 0 "#PWR01205" H 6800 3650 30  0001 C CNN
F 1 "GNDH" H 6800 3742 30  0000 C CNN
F 2 "" H 6800 3900 50  0001 C CNN
F 3 "" H 6800 3900 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3850 5050 3850
Connection ~ 5050 3850
Wire Wire Line
	6500 2800 6800 2800
Wire Wire Line
	6800 3000 6800 2800
Wire Wire Line
	4800 3300 4800 3850
Wire Wire Line
	6800 3300 6800 3850
Connection ~ 6800 3850
Wire Wire Line
	6800 3850 6800 3900
Wire Wire Line
	4800 2900 4800 3000
Connection ~ 5100 2900
Wire Wire Line
	5100 2900 5100 3200
Wire Wire Line
	5100 2750 5100 2900
Text Notes 4950 2050 0    20   ~ 0
A simple CAN driver. It also could be used as a RS485 driver in his \nspeed.. the minimum for CAN is 40kbos, so in RS485 at 9600 could be\n fine
$Comp
L servo:ADM2483 U?
U 1 1 5E28489F
P 10500 3500
AR Path="/5DE49152/5E28489F" Ref="U?"  Part="1" 
AR Path="/5E1BAEAA/5E28489F" Ref="U?"  Part="1" 
AR Path="/5E21534F/5E28489F" Ref="U1202"  Part="1" 
F 0 "U1202" H 10500 4117 50  0000 C CNN
F 1 "ADM2483" H 10500 4026 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 10500 2800 50  0001 C CNN
F 3 "../doc/datasheets/adm2483.pdf" H 9750 3400 50  0001 C CNN
	1    10500 3500
	-1   0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E2848A6
P 9800 2950
AR Path="/5DE49152/5E2848A6" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E2848A6" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E2848A6" Ref="#PWR01206"  Part="1" 
F 0 "#PWR01206" H 9800 2750 20  0001 C CNN
F 1 "5VH" H 9805 3107 28  0000 C CNN
F 2 "" H 9800 2950 50  0001 C CNN
F 3 "" H 9800 2950 50  0001 C CNN
	1    9800 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 3150 9900 3150
Wire Wire Line
	9550 3850 9550 3950
$Comp
L servo:GND #PWR_?
U 1 1 5E2848B7
P 11250 4000
AR Path="/5DD4DF4C/5E2848B7" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E2848B7" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5E2848B7" Ref="#PWR_?"  Part="1" 
AR Path="/5E21534F/5E2848B7" Ref="#PWR_01201"  Part="1" 
F 0 "#PWR_01201" H 11255 3851 20  0001 C CNN
F 1 "GND" H 11250 3842 30  0000 C CNN
F 2 "" H 11250 4000 70  0000 C CNN
F 3 "" H 11250 4000 70  0000 C CNN
	1    11250 4000
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E2848D9
P 11350 2950
AR Path="/5DCD812E/5E2848D9" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E2848D9" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E2848D9" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E2848D9" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E2848D9" Ref="#PWR01203"  Part="1" 
F 0 "#PWR01203" H 11367 3159 20  0001 C CNN
F 1 "3V3" H 11367 3107 30  0000 C CNN
F 2 "" H 11350 2950 70  0000 C CNN
F 3 "" H 11350 2950 70  0000 C CNN
	1    11350 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 3450 9650 3450
Wire Wire Line
	9650 3450 9650 3600
Wire Wire Line
	9900 3550 9550 3550
Wire Wire Line
	9550 3550 9550 3400
Wire Wire Line
	11750 3650 11100 3650
Wire Wire Line
	11100 3350 11750 3350
Wire Wire Line
	11100 3450 11150 3450
Wire Wire Line
	11150 3450 11150 3500
Wire Wire Line
	11150 3550 11100 3550
Wire Wire Line
	11750 3500 11150 3500
Connection ~ 11150 3500
Wire Wire Line
	11150 3500 11150 3550
Text Notes 8950 3200 2    20   ~ 0
Could be used by isolated: \n485, 1-wire bus, general IO pin
Text GLabel 11750 3500 2    50   Input ~ 0
RS485_EN
Text GLabel 11750 3650 2    50   Input ~ 0
RS485_TX
Text GLabel 11750 3350 2    50   Input ~ 0
RS485_RX
Wire Wire Line
	11250 3850 11250 4000
Wire Wire Line
	9900 3850 9750 3850
Wire Wire Line
	11350 2950 11350 3150
Text Notes 11750 2050 2    197  ~ 39
Isolated RS485
Wire Wire Line
	9900 3250 9750 3250
Wire Wire Line
	9750 3250 9750 3850
Connection ~ 9750 3850
Wire Wire Line
	9750 3850 9550 3850
Wire Wire Line
	11100 3250 11250 3250
Wire Wire Line
	11250 3250 11250 3850
Wire Wire Line
	11100 3750 11350 3750
Wire Wire Line
	11350 3750 11350 3150
Connection ~ 11350 3150
Wire Wire Line
	11350 3150 11100 3150
Connection ~ 11250 3850
Wire Wire Line
	11250 3850 11100 3850
Text Notes 11050 2200 2    20   ~ 0
With these interfase you could manage isolated RS485 or isolated \n GPIO or isolated 1-Wire, using 5H or 15H as a supply
Wire Wire Line
	7550 3400 7850 3400
Wire Wire Line
	7550 3500 7850 3500
Wire Wire Line
	8350 3500 8950 3500
Wire Wire Line
	8350 3600 8450 3600
$Comp
L servo:tblock2x4 J1201
U 1 1 5E248598
P 8050 3400
F 0 "J1201" H 8100 3693 39  0000 C CNN
F 1 "tblock2x4" H 8100 3618 39  0000 C CNN
F 2 "servo:tblock02x4_3.81" H 8000 3500 50  0001 C CNN
F 3 "../doc/datsheets/tblock2xrows.pdf" H 8100 3600 50  0001 C CNN
	1    8050 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:Jumper_3_Bridged12 JP?
U 1 1 5E4687DC
P 8100 3950
AR Path="/5E1BAEAA/5E4687DC" Ref="JP?"  Part="1" 
AR Path="/5E21534F/5E4687DC" Ref="JP1202"  Part="1" 
F 0 "JP1202" H 8100 4119 39  0000 C CNN
F 1 "jumper" H 8100 4044 39  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7900 3750 50  0001 C CNN
F 3 "~" H 8000 3850 50  0001 C CNN
	1    8100 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 3600 8450 3750
Wire Wire Line
	8450 3750 8100 3750
Wire Wire Line
	7750 3750 7750 3600
Wire Wire Line
	7750 3600 7850 3600
Wire Wire Line
	8100 3750 8100 3850
Connection ~ 8100 3750
Wire Wire Line
	8100 3750 7750 3750
$Comp
L servo:GNDH #PWR?
U 1 1 5E4752F1
P 8450 4000
AR Path="/5DE49152/5E4752F1" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E4752F1" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E4752F1" Ref="#PWR01212"  Part="1" 
F 0 "#PWR01212" H 8450 3750 30  0001 C CNN
F 1 "GNDH" H 8450 3842 30  0000 C CNN
F 2 "" H 8450 4000 50  0001 C CNN
F 3 "" H 8450 4000 50  0001 C CNN
	1    8450 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 3950 8450 3950
Wire Wire Line
	8450 3950 8450 4000
$Comp
L servo:Earth #PWR01210
U 1 1 5E47A129
P 7750 4000
F 0 "#PWR01210" H 7750 3750 20  0001 C CNN
F 1 "Earth" H 7750 3835 39  0000 C CNN
F 2 "" H 7750 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3950 7750 3950
Wire Wire Line
	7750 3950 7750 4000
$Comp
L servo:R_Small R?
U 1 1 5E47F52D
P 7300 3250
AR Path="/5E092156/5E47F52D" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E47F52D" Ref="R1201"  Part="1" 
F 0 "R1201" H 7359 3272 20  0000 L CNN
F 1 "10k" H 7359 3229 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 3250 50  0001 C CNN
F 3 "~" H 7300 3250 50  0001 C CNN
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E47F534
P 7300 3450
AR Path="/5E092156/5E47F534" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E47F534" Ref="R1202"  Part="1" 
F 0 "R1202" H 7359 3472 20  0000 L CNN
F 1 "1k" H 7359 3429 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
	1    7300 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E47F53B
P 7300 3650
AR Path="/5E092156/5E47F53B" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E47F53B" Ref="R1203"  Part="1" 
F 0 "R1203" H 7359 3672 20  0000 L CNN
F 1 "10k" H 7359 3629 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 3650 50  0001 C CNN
F 3 "~" H 7300 3650 50  0001 C CNN
	1    7300 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E47F542
P 7300 3150
AR Path="/5DE49152/5E47F542" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E47F542" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5E47F542" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E47F542" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E47F542" Ref="#PWR01207"  Part="1" 
F 0 "#PWR01207" H 7300 2950 20  0001 C CNN
F 1 "5VH" H 7305 3307 28  0000 C CNN
F 2 "" H 7300 3150 50  0001 C CNN
F 3 "" H 7300 3150 50  0001 C CNN
	1    7300 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E47F548
P 7300 3750
AR Path="/5DDE8C5E/5E47F548" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E47F548" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E47F548" Ref="#PWR01209"  Part="1" 
F 0 "#PWR01209" H 7300 3500 30  0001 C CNN
F 1 "GNDH" H 7300 3600 20  0000 C CNN
F 2 "" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
Connection ~ 7300 3550
Connection ~ 7300 3350
Wire Wire Line
	6400 3350 7300 3350
Wire Wire Line
	7300 3550 7550 3550
Wire Wire Line
	7550 3550 7550 3500
Wire Wire Line
	7550 3350 7550 3400
Wire Wire Line
	7050 3550 7300 3550
$Comp
L servo:R_Small R?
U 1 1 5E496E7D
P 9200 3300
AR Path="/5E092156/5E496E7D" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E496E7D" Ref="R1204"  Part="1" 
F 0 "R1204" H 9259 3322 20  0000 L CNN
F 1 "10k" H 9259 3279 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9200 3300 50  0001 C CNN
F 3 "~" H 9200 3300 50  0001 C CNN
	1    9200 3300
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E496E84
P 9200 3500
AR Path="/5E092156/5E496E84" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E496E84" Ref="R1205"  Part="1" 
F 0 "R1205" H 9259 3522 20  0000 L CNN
F 1 "1k" H 9259 3479 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9200 3500 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E496E8B
P 9200 3700
AR Path="/5E092156/5E496E8B" Ref="R?"  Part="1" 
AR Path="/5E21534F/5E496E8B" Ref="R1206"  Part="1" 
F 0 "R1206" H 9259 3722 20  0000 L CNN
F 1 "10k" H 9259 3679 20  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9200 3700 50  0001 C CNN
F 3 "~" H 9200 3700 50  0001 C CNN
	1    9200 3700
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E496E92
P 9200 3200
AR Path="/5DE49152/5E496E92" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E496E92" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5E496E92" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E496E92" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E496E92" Ref="#PWR01213"  Part="1" 
F 0 "#PWR01213" H 9200 3000 20  0001 C CNN
F 1 "5VH" H 9205 3357 28  0000 C CNN
F 2 "" H 9200 3200 50  0001 C CNN
F 3 "" H 9200 3200 50  0001 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E496E98
P 9200 3800
AR Path="/5DDE8C5E/5E496E98" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E496E98" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E496E98" Ref="#PWR01214"  Part="1" 
F 0 "#PWR01214" H 9200 3550 30  0001 C CNN
F 1 "GNDH" H 9200 3650 20  0000 C CNN
F 2 "" H 9200 3800 50  0001 C CNN
F 3 "" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
Connection ~ 9200 3600
Connection ~ 9200 3400
Wire Wire Line
	8350 3400 9200 3400
Wire Wire Line
	8950 3500 8950 3600
Wire Wire Line
	8950 3600 9200 3600
Wire Wire Line
	9200 3600 9650 3600
$Comp
L servo:GNDH #PWR?
U 1 1 5E49ECBC
P 9550 3950
AR Path="/5DDE8C5E/5E49ECBC" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E49ECBC" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E49ECBC" Ref="#PWR01215"  Part="1" 
F 0 "#PWR01215" H 9550 3700 30  0001 C CNN
F 1 "GNDH" H 9550 3800 20  0000 C CNN
F 2 "" H 9550 3950 50  0001 C CNN
F 3 "" H 9550 3950 50  0001 C CNN
	1    9550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3850 6800 3850
$Comp
L servo:5VH #PWR?
U 1 1 5E4A49D1
P 7800 2850
AR Path="/5DE49152/5E4A49D1" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E4A49D1" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E4A49D1" Ref="#PWR01211"  Part="1" 
F 0 "#PWR01211" H 7800 2650 20  0001 C CNN
F 1 "5VH" H 7805 3007 28  0000 C CNN
F 2 "" H 7800 2850 50  0001 C CNN
F 3 "" H 7800 2850 50  0001 C CNN
	1    7800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2850 7800 2900
Wire Wire Line
	7800 2900 7900 2900
Wire Wire Line
	8350 3300 8400 3300
Wire Wire Line
	8400 3300 8400 3000
Wire Wire Line
	7750 3000 7750 3300
Wire Wire Line
	7750 3300 7850 3300
Wire Wire Line
	9800 2950 9800 3150
Wire Wire Line
	7300 3350 7550 3350
Wire Wire Line
	9200 3400 9550 3400
$Comp
L servo:Capacitor C?
U 1 1 5E4BC98A
P 9500 2900
AR Path="/5DE3DF56/5E4BC98A" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E4BC98A" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E4BC98A" Ref="C1203"  Part="1" 
F 0 "C1203" V 9528 3010 20  0000 L CNN
F 1 "100nF" V 9571 3010 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 9500 2800 60  0001 C CNN
F 3 "" H 9500 2900 60  0000 C CNN
	1    9500 2900
	0    1    1    0   
$EndComp
$Comp
L servo:5VH #PWR?
U 1 1 5E4BE616
P 9500 2800
AR Path="/5DE49152/5E4BE616" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E4BE616" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E4BE616" Ref="#PWR0247"  Part="1" 
F 0 "#PWR0247" H 9500 2600 20  0001 C CNN
F 1 "5VH" H 9505 2957 28  0000 C CNN
F 2 "" H 9500 2800 50  0001 C CNN
F 3 "" H 9500 2800 50  0001 C CNN
	1    9500 2800
	-1   0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR?
U 1 1 5E4BE675
P 9500 3100
AR Path="/5DDE8C5E/5E4BE675" Ref="#PWR?"  Part="1" 
AR Path="/5E092156/5E4BE675" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E4BE675" Ref="#PWR0248"  Part="1" 
F 0 "#PWR0248" H 9500 2850 30  0001 C CNN
F 1 "GNDH" H 9500 2950 20  0000 C CNN
F 2 "" H 9500 3100 50  0001 C CNN
F 3 "" H 9500 3100 50  0001 C CNN
	1    9500 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E4C0B93
P 11650 3000
AR Path="/5DE3DF56/5E4C0B93" Ref="C?"  Part="1" 
AR Path="/5E1BAEAA/5E4C0B93" Ref="C?"  Part="1" 
AR Path="/5E21534F/5E4C0B93" Ref="C1204"  Part="1" 
F 0 "C1204" V 11678 3110 20  0000 L CNN
F 1 "100nF" V 11721 3110 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 11650 2900 60  0001 C CNN
F 3 "" H 11650 3000 60  0000 C CNN
	1    11650 3000
	0    1    1    0   
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5E4C0C24
P 11650 2900
AR Path="/5DCD812E/5E4C0C24" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5E4C0C24" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5E4C0C24" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5E4C0C24" Ref="#PWR?"  Part="1" 
AR Path="/5E21534F/5E4C0C24" Ref="#PWR0249"  Part="1" 
F 0 "#PWR0249" H 11667 3109 20  0001 C CNN
F 1 "3V3" H 11667 3057 30  0000 C CNN
F 2 "" H 11650 2900 70  0000 C CNN
F 3 "" H 11650 2900 70  0000 C CNN
	1    11650 2900
	-1   0    0    -1  
$EndComp
$Comp
L servo:GND #PWR_?
U 1 1 5E4C0C89
P 11650 3200
AR Path="/5DD4DF4C/5E4C0C89" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5E4C0C89" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5E4C0C89" Ref="#PWR_?"  Part="1" 
AR Path="/5E21534F/5E4C0C89" Ref="#PWR_0102"  Part="1" 
F 0 "#PWR_0102" H 11655 3051 20  0001 C CNN
F 1 "GND" H 11650 3042 30  0000 C CNN
F 2 "" H 11650 3200 70  0000 C CNN
F 3 "" H 11650 3200 70  0000 C CNN
	1    11650 3200
	-1   0    0    -1  
$EndComp
Connection ~ 7750 4000
Wire Wire Line
	7750 4000 7750 4050
Text Notes 10050 2450 0    20   ~ 0
at endat page the isolator has 4 pins free, so I'd use them plus an\n SN651167 to make a RS485 isolated driver  cheaper.. The thing is\n that I will need to have endat chip to have 485, what if I need 485\n without endat.. and what if I need more isolated I/O next... so my\n decision now is to use these IC, that has one only mision, and if I\n depopulate it, nothing change.. and also has more driver current..\n
$Comp
L servo:jumper JP?
U 1 1 5E33CFFA
P 8000 2900
AR Path="/5DD76B18/5E33CFFA" Ref="JP?"  Part="1" 
AR Path="/5E21534F/5E33CFFA" Ref="JP1201"  Part="1" 
F 0 "JP1201" H 8000 3061 39  0000 C CNN
F 1 "jumper" H 8000 2986 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7900 2880 50  0001 C CNN
F 3 "~" H 8000 2980 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3000 8100 3000
Wire Wire Line
	8100 2900 8100 3000
Connection ~ 8100 3000
Wire Wire Line
	8100 3000 8400 3000
Text Label 6900 3350 0    20   ~ 0
CAN_P_H
Text Label 6900 3450 0    20   ~ 0
CAN_N_H
Text Label 8200 3000 0    20   ~ 0
CAN_5VH
Text Label 8250 3750 0    20   ~ 0
CAN_GND
Text Label 8600 3400 0    20   ~ 0
RS485_P_H
Text Label 8600 3500 0    20   ~ 0
RS485_N_H
$EndSCHEMATC
