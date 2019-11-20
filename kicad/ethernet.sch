EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 8
Title "ethernet"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8300 4100 7500 4100
Wire Wire Line
	10200 4100 8300 4100
Wire Wire Line
	10200 3400 10200 4100
Wire Wire Line
	11500 3400 10200 3400
Wire Wire Line
	8400 4200 7500 4200
Wire Wire Line
	11500 4200 8400 4200
Wire Wire Line
	9100 4400 7500 4400
Wire Wire Line
	11500 4400 9100 4400
Wire Wire Line
	9000 4500 7500 4500
Wire Wire Line
	10200 4500 9000 4500
Wire Wire Line
	10200 5200 10200 4500
Wire Wire Line
	11500 5200 10200 5200
Wire Wire Line
	9400 3100 9200 3100
Wire Wire Line
	9600 3100 9400 3100
$Comp
L servo:GND #GND_0205
U 1 1 5DB3905C
P 9400 3650
F 0 "#GND_0205" H 9405 3785 20  0000 C CNN
F 1 "GND" H 9405 3733 30  0000 C CNN
F 2 "" H 9400 3650 70  0000 C CNN
F 3 "" H 9400 3650 70  0000 C CNN
	1    9400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3500 9200 3650
Wire Wire Line
	9600 3500 9600 3650
Wire Wire Line
	9200 3200 9200 3100
Wire Wire Line
	9600 3200 9600 3100
$Comp
L servo:GND #GND_0206
U 1 1 5DB3905B
P 9800 5800
F 0 "#GND_0206" H 9888 5793 20  0000 L CNN
F 1 "GND" H 9888 5741 30  0000 L CNN
F 2 "" H 9800 5800 70  0000 C CNN
F 3 "" H 9800 5800 70  0000 C CNN
	1    9800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5200 9600 5100
Wire Wire Line
	10000 5200 10000 5100
Wire Wire Line
	8400 3000 8900 3000
Wire Wire Line
	8400 4200 8400 3000
Wire Wire Line
	8300 2800 8900 2800
Wire Wire Line
	8300 4100 8300 2800
Wire Wire Line
	9100 4800 9300 4800
Wire Wire Line
	9100 4400 9100 4800
Wire Wire Line
	9000 5000 9300 5000
Wire Wire Line
	9000 4500 9000 5000
Wire Wire Line
	9800 4800 9800 4700
Wire Wire Line
	9700 4800 9800 4800
Wire Wire Line
	9800 5000 9700 5000
Wire Wire Line
	9800 4800 9800 5000
Wire Wire Line
	9800 5100 9600 5100
Wire Wire Line
	10000 5100 9800 5100
Wire Wire Line
	9800 5000 9800 5100
Wire Wire Line
	9400 2800 9300 2800
Wire Wire Line
	9400 3000 9400 2800
Wire Wire Line
	9400 3100 9400 3000
Wire Wire Line
	9400 3000 9300 3000
Wire Wire Line
	9400 2800 9400 2700
Text Label 7600 4400 0    70   ~ 0
DIFFPAIR
Text Label 7600 4500 0    70   ~ 0
DIFFPAIR
Text Label 7700 4100 0    70   ~ 0
DIFFPAIR
Text Label 7700 4200 0    70   ~ 0
DIFFPAIR
Text Label 9000 4100 0    60   ~ 0
TD_P
Text Label 9000 4200 0    60   ~ 0
TD_N
Text Label 8100 4400 0    60   ~ 0
RD_P
Text Label 8100 4500 0    60   ~ 0
RD_N
$Comp
L servo:GND #GND_0209
U 1 1 5DB39058
P 12600 7600
F 0 "#GND_0209" H 12688 7593 20  0000 L CNN
F 1 "GND" H 12688 7541 30  0000 L CNN
F 2 "" H 12600 7600 70  0000 C CNN
F 3 "" H 12600 7600 70  0000 C CNN
	1    12600 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 7200 13900 6700
Wire Wire Line
	12600 7200 13900 7200
Wire Wire Line
	12600 7300 12600 7200
Wire Wire Line
	11300 7200 12600 7200
Wire Wire Line
	11300 5800 11300 7200
Wire Wire Line
	11500 5800 11300 5800
$Comp
L servo:GND #GND_0204
U 1 1 5DB39057
P 8700 4700
F 0 "#GND_0204" H 8788 4693 20  0000 L CNN
F 1 "GND" H 8788 4641 30  0000 L CNN
F 2 "" H 8700 4700 70  0000 C CNN
F 3 "" H 8700 4700 70  0000 C CNN
	1    8700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5600 7500 5600
Wire Wire Line
	8300 5800 7500 5800
Text Label 7600 5800 0    60   ~ 0
ENET_PHY_CLK
$Comp
L servo:GND #GND_0203
U 1 1 5DB39056
P 7500 6900
F 0 "#GND_0203" H 7588 6893 20  0000 L CNN
F 1 "GND" H 7588 6841 30  0000 L CNN
F 2 "" H 7500 6900 70  0000 C CNN
F 3 "" H 7500 6900 70  0000 C CNN
	1    7500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6900 7500 6600
Wire Wire Line
	4700 4100 4500 4100
Wire Wire Line
	4000 4300 4700 4300
Wire Wire Line
	11500 6100 11200 6100
Wire Wire Line
	11500 6500 11200 6500
Wire Wire Line
	10600 5600 10600 5500
Wire Wire Line
	10600 6500 10600 6100
Wire Wire Line
	10800 6500 10600 6500
Wire Wire Line
	3900 4500 4700 4500
Wire Wire Line
	3900 4600 4700 4600
Wire Wire Line
	3900 4800 4700 4800
Wire Wire Line
	3900 4900 4700 4900
Wire Wire Line
	3900 5000 4700 5000
Wire Wire Line
	3900 5100 4700 5100
Wire Wire Line
	3900 5300 4700 5300
Wire Wire Line
	3900 5400 4700 5400
Wire Wire Line
	3900 5500 4700 5500
Wire Wire Line
	3900 5700 4700 5700
Wire Wire Line
	3900 5800 4700 5800
Wire Wire Line
	3900 5900 4700 5900
Wire Wire Line
	3900 6000 4700 6000
Wire Wire Line
	3900 6200 4700 6200
Wire Wire Line
	3900 6300 4700 6300
Text Label 3900 6200 0    60   ~ 0
MCU_GPIO110
Text Label 3900 6300 0    60   ~ 0
MCU_GPIO109
Text Label 3900 6000 0    60   ~ 0
MCU_GPIO117
Text Label 3900 5900 0    60   ~ 0
MCU_GPIO116
Text Label 3900 5800 0    60   ~ 0
MCU_GPIO115
Text Label 3900 5700 0    60   ~ 0
MCU_GPIO114
Text Label 3900 5500 0    60   ~ 0
MCU_GPIO111
Text Label 3900 5400 0    60   ~ 0
MCU_GPIO113
Text Label 3900 5300 0    60   ~ 0
MCU_GPIO112
Text Label 3900 5100 0    60   ~ 0
MCU_GPIO124
Text Label 3900 4900 0    60   ~ 0
MCU_GPIO122
Text Label 3900 4500 0    60   ~ 0
MCU_GPIO118
Text Label 7700 5100 0    60   ~ 0
MCU_GPIO105
Text Label 7700 5200 0    60   ~ 0
MCU_GPIO106
Wire Wire Line
	7500 5200 7600 5200
Wire Wire Line
	8100 4700 8700 4700
NoConn ~ 11400 5500
Wire Wire Line
	11400 5500 11500 5500
NoConn ~ 4600 6500
Wire Wire Line
	4600 6500 4700 6500
NoConn ~ 4600 6600
Wire Wire Line
	4600 6600 4700 6600
NoConn ~ 7600 6000
Wire Wire Line
	7600 6000 7500 6000
Wire Wire Line
	10300 5600 10600 5600
Wire Wire Line
	10300 5800 10300 5600
Wire Wire Line
	7500 5500 7500 5400
Wire Wire Line
	8600 5500 7500 5500
Wire Wire Line
	8650 4900 7500 4900
Wire Wire Line
	8650 5100 8650 4900
Wire Wire Line
	10300 6700 11500 6700
Wire Wire Line
	9400 6700 10300 6700
Wire Wire Line
	2300 2900 2300 3000
Wire Wire Line
	2700 2900 2300 2900
Wire Wire Line
	3100 2900 2700 2900
Wire Wire Line
	3500 2900 3100 2900
Wire Wire Line
	3500 3000 3500 2900
Wire Wire Line
	3100 3000 3100 2900
Wire Wire Line
	2700 3000 2700 2900
Wire Wire Line
	3500 3400 3500 3300
Wire Wire Line
	3100 3400 3500 3400
Wire Wire Line
	2700 3400 3100 3400
Wire Wire Line
	2300 3400 2700 3400
Wire Wire Line
	2300 3300 2300 3400
Wire Wire Line
	2700 3400 2700 3300
Wire Wire Line
	3100 3400 3100 3300
Wire Wire Line
	2300 2900 2300 2800
Wire Wire Line
	6200 2900 6200 3000
Wire Wire Line
	5800 2900 6200 2900
Wire Wire Line
	5400 2900 5800 2900
Wire Wire Line
	5000 2900 5400 2900
Wire Wire Line
	5000 3000 5000 2900
Wire Wire Line
	5400 3000 5400 2900
Wire Wire Line
	5800 3000 5800 2900
Wire Wire Line
	5000 3400 5000 3300
Wire Wire Line
	5400 3400 5000 3400
Wire Wire Line
	5800 3400 5400 3400
Wire Wire Line
	6200 3400 5800 3400
Wire Wire Line
	6200 3300 6200 3400
Wire Wire Line
	5800 3400 5800 3300
Wire Wire Line
	5400 3400 5400 3300
Wire Wire Line
	6200 2900 6200 2800
Wire Wire Line
	9200 6200 9200 6300
Wire Wire Line
	9000 6200 9200 6200
Wire Wire Line
	7500 6200 9000 6200
Wire Wire Line
	9000 5600 9000 5400
Wire Wire Line
	7600 5300 8100 5300
Wire Wire Line
	7600 5200 7600 5300
Wire Wire Line
	9000 5300 8500 5300
Wire Wire Line
	9000 5400 9000 5300
Text Label 3900 4600 0    60   ~ 0
MCU_GPIO44
Text Label 3900 4800 0    60   ~ 0
MCU_GPIO75
Text Label 3900 5000 0    60   ~ 0
MCU_GPIO123
Text Label 8000 5600 0    60   ~ 0
MCU_GPIO119
Wire Wire Line
	9600 5600 9600 5500
Wire Wire Line
	9800 5600 9600 5600
Wire Wire Line
	10000 5600 9800 5600
Wire Wire Line
	10000 5500 10000 5600
Wire Wire Line
	9800 5800 9800 5600
Wire Wire Line
	10300 6700 10300 6200
$Comp
L servo:GND #GND_0207
U 1 1 5DB39050
P 10400 3900
F 0 "#GND_0207" H 10405 3751 20  0000 C CNN
F 1 "GND" H 10405 3699 30  0000 C CNN
F 2 "" H 10400 3900 70  0000 C CNN
F 3 "" H 10400 3900 70  0000 C CNN
	1    10400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3700 10700 3700
Wire Wire Line
	10500 3800 10500 3700
Wire Wire Line
	10500 3900 10500 3800
Wire Wire Line
	10700 3900 10500 3900
Wire Wire Line
	10400 3800 10400 3900
Wire Wire Line
	10500 3800 10400 3800
Wire Wire Line
	11200 3700 11000 3700
Wire Wire Line
	11200 3800 11200 3700
Wire Wire Line
	11200 3900 11200 3800
Wire Wire Line
	11000 3900 11200 3900
Wire Wire Line
	11400 3800 11200 3800
Wire Wire Line
	11400 3800 11400 3700
Wire Wire Line
	11500 3800 11400 3800
$Comp
L servo:GND #GND_0208
U 1 1 5DB3904E
P 10400 4900
F 0 "#GND_0208" H 10405 4751 20  0000 C CNN
F 1 "GND" H 10405 4699 30  0000 C CNN
F 2 "" H 10400 4900 70  0000 C CNN
F 3 "" H 10400 4900 70  0000 C CNN
	1    10400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4700 10700 4700
Wire Wire Line
	10500 4800 10500 4700
Wire Wire Line
	10500 4900 10500 4800
Wire Wire Line
	10700 4900 10500 4900
Wire Wire Line
	10400 4800 10400 4900
Wire Wire Line
	10500 4800 10400 4800
Wire Wire Line
	11200 4700 11000 4700
Wire Wire Line
	11200 4800 11200 4700
Wire Wire Line
	11200 4900 11200 4800
Wire Wire Line
	11000 4900 11200 4900
Wire Wire Line
	11400 4800 11200 4800
Wire Wire Line
	11400 4800 11400 4700
Wire Wire Line
	11500 4800 11400 4800
$Comp
L servo:GND #GND_0201
U 1 1 5DB3904D
P 2300 3400
F 0 "#GND_0201" H 2222 3393 20  0000 R CNN
F 1 "GND" H 2222 3341 30  0000 R CNN
F 2 "" H 2300 3400 70  0000 C CNN
F 3 "" H 2300 3400 70  0000 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #GND_0202
U 1 1 5DB3904C
P 6200 3400
F 0 "#GND_0202" H 6288 3393 20  0000 L CNN
F 1 "GND" H 6288 3341 30  0000 L CNN
F 2 "" H 6200 3400 70  0000 C CNN
F 3 "" H 6200 3400 70  0000 C CNN
	1    6200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2900 4500 2900
Wire Wire Line
	4000 2900 3500 2900
Wire Wire Line
	9000 6200 9000 6000
Wire Wire Line
	7700 5400 7500 5400
Wire Wire Line
	9000 5400 8100 5400
Text Label 8000 5500 0    60   ~ 0
MCU_GPIO108
Wire Wire Line
	7500 4700 7700 4700
Wire Wire Line
	9400 5100 9400 6700
Wire Wire Line
	8650 5100 9400 5100
Connection ~ 2300 2900
Connection ~ 2700 3400
Connection ~ 2700 2900
Connection ~ 3100 3400
Connection ~ 3100 2900
Connection ~ 3500 2900
Connection ~ 5000 2900
Connection ~ 5400 3400
Connection ~ 5400 2900
Connection ~ 5800 3400
Connection ~ 5800 2900
Connection ~ 6200 2900
Connection ~ 7500 5400
Connection ~ 7600 5200
Connection ~ 8300 4100
Connection ~ 8400 4200
Connection ~ 9000 6200
Connection ~ 9000 5400
Connection ~ 9000 4500
Connection ~ 9100 4400
Connection ~ 9400 3100
Connection ~ 9400 3000
Connection ~ 9400 2800
Connection ~ 9800 5600
Connection ~ 9800 5100
Connection ~ 9800 5000
Connection ~ 9800 4800
Connection ~ 10300 6700
Connection ~ 10500 4800
Connection ~ 10500 3800
Connection ~ 10600 6100
Connection ~ 10600 5600
Connection ~ 11200 4800
Connection ~ 11200 3800
Connection ~ 11400 4800
Connection ~ 11400 3800
Connection ~ 12600 7200
Connection ~ 13900 6700
$Comp
L servo:DP83822 U201
U 1 1 5DB3904B
P 6100 5300
F 0 "U201" H 6100 6873 60  0000 C CNN
F 1 "DP83822IRHBR" H 6100 6775 50  0000 C CNN
F 2 "" H 6100 5300 50  0001 C CNN
F 3 "../doc/datasheets/dp83822i.pdf" H 6100 5300 50  0001 C CNN
F 4 "DP83822IRHBR" V 1400 2000 60  0001 C CNN "PartNumber"
	1    6100 5300
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C204
U 1 1 5DB3904A
P 3500 3200
F 0 "C204" V 3595 3090 60  0000 R CNN
F 1 "0.01uF" V 3497 3090 50  0000 R CNN
F 2 "" H 3500 3200 50  0001 C CNN
F 3 "" H 3500 3200 50  0001 C CNN
F 4 "0.01uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    3500 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C203
U 1 1 5DB39049
P 3100 3200
F 0 "C203" V 3195 3090 60  0000 R CNN
F 1 "0.1uF" V 3097 3090 50  0000 R CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
F 4 "0.1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    3100 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C205
U 1 1 5DB39048
P 5000 3100
F 0 "C205" V 5005 3209 60  0000 L CNN
F 1 "0.01uF" V 5103 3209 50  0000 L CNN
F 2 "" H 5000 3100 50  0001 C CNN
F 3 "" H 5000 3100 50  0001 C CNN
F 4 "0.01uF" V 1400 1900 60  0001 C CNN "ValueDisplayed"
	1    5000 3100
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C206
U 1 1 5DB39047
P 5400 3100
F 0 "C206" V 5405 2990 60  0000 R CNN
F 1 "0.1uF" V 5503 2990 50  0000 R CNN
F 2 "" H 5400 3100 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
F 4 "0.1uF" V 1400 1900 60  0001 C CNN "ValueDisplayed"
	1    5400 3100
	0    -1   1    0   
$EndComp
$Comp
L servo:Resistor R204
U 1 1 5DB39046
P 9000 5800
F 0 "R204" V 9045 5750 60  0000 R CNN
F 1 "2.49k" V 8947 5750 50  0000 R CNN
F 2 "" H 9000 5800 50  0001 C CNN
F 3 "" H 9000 5800 50  0001 C CNN
F 4 "2.49k" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9000 5800
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R203
U 1 1 5DB39045
P 8300 5300
F 0 "R203" H 8550 5300 60  0000 R TNN
F 1 "2.2k" H 8100 5250 50  0000 C CNN
F 2 "" H 8300 5300 50  0001 C CNN
F 3 "" H 8300 5300 50  0001 C CNN
F 4 "2.2k" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    8300 5300
	-1   0    0    1   
$EndComp
$Comp
L servo:Capacitor C214
U 1 1 5DB39044
P 10900 3900
F 0 "C214" H 10950 4050 60  0000 C CNN
F 1 "0.1uF" H 10950 4150 50  0000 C CNN
F 2 "" H 10900 3900 50  0001 C CNN
F 3 "" H 10900 3900 50  0001 C CNN
F 4 "0.1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10900 3900
	-1   0    0    1   
$EndComp
$Comp
L servo:Capacitor C216
U 1 1 5DB39043
P 10900 4900
F 0 "C216" H 10950 5050 60  0000 C CNN
F 1 "0.1uF" H 10950 5150 50  0000 C CNN
F 2 "" H 10900 4900 50  0001 C CNN
F 3 "" H 10900 4900 50  0001 C CNN
F 4 "0.1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10900 4900
	-1   0    0    1   
$EndComp
$Comp
L servo:Resistor R205
U 1 1 5DB39042
P 9100 2800
F 0 "R205" H 8900 2850 60  0000 C CNN
F 1 "49.9" H 8900 2750 50  0000 C CNN
F 2 "" H 9100 2800 50  0001 C CNN
F 3 "" H 9100 2800 50  0001 C CNN
F 4 "49.9" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9100 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R206
U 1 1 5DB39041
P 9100 3000
F 0 "R206" H 8900 3050 60  0000 C CNN
F 1 "49.9" H 8900 2950 50  0000 C CNN
F 2 "" H 9100 3000 50  0001 C CNN
F 3 "" H 9100 3000 50  0001 C CNN
F 4 "49.9" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9100 3000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C209
U 1 1 5DB39040
P 9200 3400
F 0 "C209" V 9295 3509 60  0000 L CNN
F 1 "0.1uF" V 9197 3509 50  0000 L CNN
F 2 "" H 9200 3400 50  0001 C CNN
F 3 "" H 9200 3400 50  0001 C CNN
F 4 "0.1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9200 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Resistor R207
U 1 1 5DB3903F
P 9500 4800
F 0 "R207" H 9300 4900 60  0000 C CNN
F 1 "49.9" H 9500 4895 50  0000 C CNN
F 2 "" H 9500 4800 50  0001 C CNN
F 3 "" H 9500 4800 50  0001 C CNN
F 4 "49.9" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9500 4800
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R208
U 1 1 5DB3903E
P 9500 5000
F 0 "R208" H 9300 5100 60  0000 C CNN
F 1 "49.9" H 9500 5095 50  0000 C CNN
F 2 "" H 9500 5000 50  0001 C CNN
F 3 "" H 9500 5000 50  0001 C CNN
F 4 "49.9" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9500 5000
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C210
U 1 1 5DB3903D
P 9600 3400
F 0 "C210" V 9695 3290 60  0000 R CNN
F 1 "1uF" V 9597 3290 50  0000 R CNN
F 2 "" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0001 C CNN
F 4 "1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9600 3400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C212
U 1 1 5DB3903C
P 10000 5400
F 0 "C212" V 10095 5290 60  0000 R CNN
F 1 "1uF" V 9997 5290 50  0000 R CNN
F 2 "" H 10000 5400 50  0001 C CNN
F 3 "" H 10000 5400 50  0001 C CNN
F 4 "1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10000 5400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C213
U 1 1 5DB3903B
P 10900 3700
F 0 "C213" H 10950 3450 60  0000 C CNN
F 1 "1uF" H 10950 3550 50  0000 C CNN
F 2 "" H 10900 3700 50  0001 C CNN
F 3 "" H 10900 3700 50  0001 C CNN
F 4 "1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10900 3700
	-1   0    0    1   
$EndComp
$Comp
L servo:Capacitor C215
U 1 1 5DB3903A
P 10900 4700
F 0 "C215" H 10950 4450 60  0000 C CNN
F 1 "1uF" H 10950 4550 50  0000 C CNN
F 2 "" H 10900 4700 50  0001 C CNN
F 3 "" H 10900 4700 50  0001 C CNN
F 4 "1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10900 4700
	-1   0    0    1   
$EndComp
$Comp
L servo:Capacitor C201
U 1 1 5DB39039
P 2300 3200
F 0 "C201" V 2395 3090 60  0000 R CNN
F 1 "10" V 2297 3090 50  0000 R CNN
F 2 "" H 2300 3200 50  0001 C CNN
F 3 "" H 2300 3200 50  0001 C CNN
F 4 "10uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    2300 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C208
U 1 1 5DB39038
P 6200 3200
F 0 "C208" V 6295 3090 60  0000 R CNN
F 1 "10uF" V 6197 3090 50  0000 R CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
F 4 "10uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    6200 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C202
U 1 1 5DB39037
P 2700 3200
F 0 "C202" V 2795 3090 60  0000 R CNN
F 1 "1uF" V 2697 3090 50  0000 R CNN
F 2 "" H 2700 3200 50  0001 C CNN
F 3 "" H 2700 3200 50  0001 C CNN
F 4 "1uF" H 2651 3090 60  0001 R CNN "ValueDisplayed"
	1    2700 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C207
U 1 1 5DB39036
P 5800 3200
F 0 "C207" V 5895 3090 60  0000 R CNN
F 1 "1uF" V 5797 3090 50  0000 R CNN
F 2 "" H 5800 3200 50  0001 C CNN
F 3 "" H 5800 3200 50  0001 C CNN
F 4 "1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    5800 3200
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C211
U 1 1 5DB39035
P 9600 5400
F 0 "C211" V 9695 5290 60  0000 R CNN
F 1 "0.1uF" V 9597 5290 50  0000 R CNN
F 2 "" H 9600 5400 50  0001 C CNN
F 3 "" H 9600 5400 50  0001 C CNN
F 4 "0.1uF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    9600 5400
	0    -1   -1   0   
$EndComp
$Comp
L servo:Wurth_7498010210A J201
U 1 1 5DB39034
P 12700 5100
F 0 "J201" H 12700 7089 60  0000 C CNN
F 1 "7498010210A" H 12700 6983 60  0000 C CNN
F 2 "" H 11690 3200 60  0000 C CNN
F 3 "../doc/datasheets/7498010210A_rj45.pdf" H 11690 3200 60  0001 C CNN
	1    12700 5100
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C217
U 1 1 5DB39033
P 12600 7400
F 0 "C217" V 12605 7510 60  0000 L CNN
F 1 "4700pF" V 12703 7510 50  0000 L CNN
F 2 "" H 12600 7400 50  0001 C CNN
F 3 "" H 12600 7400 50  0001 C CNN
F 4 "4700pF" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    12600 7400
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R201
U 1 1 5DB39032
P 7900 4700
F 0 "R201" H 7700 4750 60  0000 C CNN
F 1 "4.87k" H 8100 4750 50  0000 C CNN
F 2 "" H 7900 4700 50  0001 C CNN
F 3 "" H 7900 4700 50  0001 C CNN
F 4 "4.87k" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    7900 4700
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R202
U 1 1 5DB39031
P 7900 5400
F 0 "R202" H 7650 5400 60  0000 L BNN
F 1 "10.0k" H 8000 5450 50  0000 C CNN
F 2 "" H 7900 5400 50  0001 C CNN
F 3 "" H 7900 5400 50  0001 C CNN
F 4 "10.0k" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    7900 5400
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R210
U 1 1 5DB39030
P 11000 6100
F 0 "R210" H 11000 6293 60  0000 C CNN
F 1 "470" H 11000 6195 50  0000 C CNN
F 2 "" H 11000 6100 50  0001 C CNN
F 3 "" H 11000 6100 50  0001 C CNN
F 4 "470" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    11000 6100
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R211
U 1 1 5DB3902F
P 11000 6500
F 0 "R211" H 11000 6750 60  0000 C CNN
F 1 "470" H 11000 6650 50  0000 C CNN
F 2 "" H 11000 6500 50  0001 C CNN
F 3 "" H 11000 6500 50  0001 C CNN
F 4 "470" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    11000 6500
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R209
U 1 1 5DB3902E
P 10300 6000
F 0 "R209" V 10345 5950 60  0000 R CNN
F 1 "2.2k" V 10247 5950 50  0000 R CNN
F 2 "" H 10300 6000 50  0001 C CNN
F 3 "" H 10300 6000 50  0001 C CNN
F 4 "2.2k" V 1400 2000 60  0001 C CNN "ValueDisplayed"
	1    10300 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10600 6100 10600 5600
Wire Wire Line
	13900 6700 13900 6600
Wire Wire Line
	9200 3650 9400 3650
Wire Wire Line
	7500 5100 8300 5100
Wire Wire Line
	7600 5200 8300 5200
Wire Wire Line
	4500 2900 4500 4100
Wire Wire Line
	4000 2900 4000 4300
Wire Wire Line
	9200 6300 11500 6300
Wire Wire Line
	10600 6100 10800 6100
Connection ~ 9400 3650
Wire Wire Line
	9400 3650 9600 3650
Text HLabel 3900 4800 0    50   Output ~ 0
ETH_TX_D0
Text HLabel 3900 4900 0    50   Output ~ 0
ETH_TX_D1
Text HLabel 3900 5000 0    50   Output ~ 0
ETH_TX_D2
Text HLabel 3900 5100 0    50   Output ~ 0
ETH_TX_D3
Text HLabel 3900 5700 0    50   Output ~ 0
ETH_RX_D0
Text HLabel 3900 5800 0    50   Output ~ 0
ETH_RX_D1
Text HLabel 3900 5900 0    50   Output ~ 0
ETH_RX_D2
Text HLabel 3900 6000 0    50   Output ~ 0
ETH_RX_D3
Text HLabel 3900 5300 0    50   Output ~ 0
ETH_RX_DV
Text HLabel 3900 5400 0    50   Output ~ 0
ETH_RX_ER
Text HLabel 3900 5500 0    50   Output ~ 0
ETH_RX_CLK
Text HLabel 3900 6200 0    50   Output ~ 0
ETH_COL
Text HLabel 3900 6300 0    50   Output ~ 0
ETH_CRS
Text HLabel 8300 5800 2    50   Output ~ 0
ETH_CLK
Text HLabel 8600 5600 2    50   Output ~ 0
ETH_RST
Text HLabel 8600 5500 2    50   Output ~ 0
~ETH_PWDN
Text HLabel 8300 5200 2    50   Output ~ 0
ETH_MDIO
Text HLabel 8300 5100 2    50   Output ~ 0
ETH_MDC
Text HLabel 3900 4600 0    50   Output ~ 0
ETH_TX_CLK
Text HLabel 3900 4500 0    50   Output ~ 0
ETH_TX_EN
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E172528
P 2300 2800
AR Path="/5EAA846A/5E172528" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E172528" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2305 3010 20  0000 C CNN
F 1 "VDD_3V3" H 2305 2958 30  0000 C CNN
F 2 "" H 2300 2800 70  0000 C CNN
F 3 "" H 2300 2800 70  0000 C CNN
	1    2300 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17A831
P 6200 2800
AR Path="/5EAA846A/5E17A831" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17A831" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6205 3010 20  0000 C CNN
F 1 "VDD_3V3" H 6205 2958 30  0000 C CNN
F 2 "" H 6200 2800 70  0000 C CNN
F 3 "" H 6200 2800 70  0000 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17AC6E
P 9400 2700
AR Path="/5EAA846A/5E17AC6E" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17AC6E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9405 2910 20  0000 C CNN
F 1 "VDD_3V3" H 9405 2858 30  0000 C CNN
F 2 "" H 9400 2700 70  0000 C CNN
F 3 "" H 9400 2700 70  0000 C CNN
	1    9400 2700
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17B0BB
P 11400 3700
AR Path="/5EAA846A/5E17B0BB" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17B0BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11405 3910 20  0000 C CNN
F 1 "VDD_3V3" H 11405 3858 30  0000 C CNN
F 2 "" H 11400 3700 70  0000 C CNN
F 3 "" H 11400 3700 70  0000 C CNN
	1    11400 3700
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17B48E
P 11400 4700
AR Path="/5EAA846A/5E17B48E" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17B48E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11405 4910 20  0000 C CNN
F 1 "VDD_3V3" H 11405 4858 30  0000 C CNN
F 2 "" H 11400 4700 70  0000 C CNN
F 3 "" H 11400 4700 70  0000 C CNN
	1    11400 4700
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17B79B
P 10600 5500
AR Path="/5EAA846A/5E17B79B" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17B79B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10605 5710 20  0000 C CNN
F 1 "VDD_3V3" H 10605 5658 30  0000 C CNN
F 2 "" H 10600 5500 70  0000 C CNN
F 3 "" H 10600 5500 70  0000 C CNN
	1    10600 5500
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17BB32
P 9800 4700
AR Path="/5EAA846A/5E17BB32" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17BB32" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9805 4910 20  0000 C CNN
F 1 "VDD_3V3" H 9805 4858 30  0000 C CNN
F 2 "" H 9800 4700 70  0000 C CNN
F 3 "" H 9800 4700 70  0000 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD_3V3 #PWR?
U 1 1 5E17BF8D
P 9000 5300
AR Path="/5EAA846A/5E17BF8D" Ref="#PWR?"  Part="1" 
AR Path="/5DC3DC9E/5E17BF8D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9005 5510 20  0000 C CNN
F 1 "VDD_3V3" H 9005 5458 30  0000 C CNN
F 2 "" H 9000 5300 70  0000 C CNN
F 3 "" H 9000 5300 70  0000 C CNN
	1    9000 5300
	1    0    0    -1  
$EndComp
Connection ~ 9000 5300
$EndSCHEMATC
