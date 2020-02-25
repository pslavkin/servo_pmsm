EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 20
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
L servo:3V3 #PWR0718
U 1 1 5DDC15D8
P 6000 5550
F 0 "#PWR0718" H 6000 5350 20  0001 C CNN
F 1 "3V3" H 6005 5707 28  0000 C CNN
F 2 "" H 6000 5550 50  0001 C CNN
F 3 "" H 6000 5550 50  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
$Comp
L servo:1V2C #PWR0719
U 1 1 5DDC3F59
P 8200 5550
F 0 "#PWR0719" H 8200 5350 20  0001 C CNN
F 1 "1V2C" H 8200 5700 28  0000 C CNN
F 2 "" H 8200 5550 50  0001 C CNN
F 3 "" H 8200 5550 50  0001 C CNN
	1    8200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5650 6000 5550
Wire Wire Line
	6000 5650 6000 5750
Connection ~ 6000 5650
$Comp
L servo:Resistor R?
U 1 1 5DDAAD75
P 6000 5950
AR Path="/5EAA846A/5DDAAD75" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5DDAAD75" Ref="R705"  Part="1" 
F 0 "R705" V 5978 6000 20  0000 L CNN
F 1 "680" V 6021 6000 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 5500 5850 60  0001 C CNN
F 3 "" H 5600 5950 60  0001 C CNN
	1    6000 5950
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E18DDA9
P 6000 6250
AR Path="/5EAA846A/5E18DDA9" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E18DDA9" Ref="D705"  Part="1" 
F 0 "D705" V 6006 6380 20  0000 L CNN
F 1 "green@2mA" V 6046 6380 16  0000 L CNN
F 2 "servo:LED_0603_1608Metric" H 5800 6050 60  0001 C CNN
F 3 "" H 5800 6050 60  0000 C CNN
F 4 "LG L29K-G2J1-24-Z " H 6000 6250 50  0001 C CNN "digikey"
F 5 "LG L29K-G2J1-24-Z" H 0   0   50  0001 C CNN "PartNumber"
	1    6000 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 6400 6000 6450
Wire Wire Line
	5650 5650 6000 5650
$Comp
L servo:Capacitor C?
U 1 1 5E18DDB7
P 5650 5950
AR Path="/5EAA846A/5E18DDB7" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDB7" Ref="C704"  Part="1" 
F 0 "C704" V 5678 6060 20  0000 L CNN
F 1 "10uF" V 5721 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 5650 5850 60  0001 C CNN
F 3 "" H 5650 5950 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
	1    5650 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 5950 5200 6450
$Comp
L servo:GND #PWR?
U 1 1 5E286204
P 7300 6550
AR Path="/5DCD812E/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E286204" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E286204" Ref="#PWR0715"  Part="1" 
F 0 "#PWR0715" H 7305 6401 20  0001 C CNN
F 1 "GND" H 7300 6392 30  0000 C CNN
F 2 "" H 7300 6550 70  0000 C CNN
F 3 "" H 7300 6550 70  0000 C CNN
	1    7300 6550
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E28620B
P 7850 5950
AR Path="/5EAA846A/5E28620B" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E28620B" Ref="C712"  Part="1" 
F 0 "C712" V 7878 6060 20  0000 L CNN
F 1 "10uF" V 7921 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 7850 5850 60  0001 C CNN
F 3 "" H 7850 5950 60  0000 C CNN
F 4 "490-10475-1-ND" H 0   0   50  0001 C CNN "digikey"
F 5 "GRM188R61A106ME69D " H 0   0   50  0001 C CNN "PartNumber"
	1    7850 5950
	0    1    1    0   
$EndComp
$Comp
L servo:5VH #PWR0717
U 1 1 5E309ABD
P 13350 5450
F 0 "#PWR0717" H 13350 5250 20  0001 C CNN
F 1 "5VH" H 13355 5607 28  0000 C CNN
F 2 "" H 13350 5450 50  0001 C CNN
F 3 "" H 13350 5450 50  0001 C CNN
	1    13350 5450
	1    0    0    -1  
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5E18DDCA
P 3050 6400
AR Path="/5DCD812E/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5E18DDCA" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5E18DDCA" Ref="#PWR0701"  Part="1" 
F 0 "#PWR0701" H 3055 6251 20  0001 C CNN
F 1 "GND" H 3055 6242 30  0000 C CNN
F 2 "" H 3050 6400 70  0000 C CNN
F 3 "" H 3050 6400 70  0000 C CNN
	1    3050 6400
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0702
U 1 1 5E18DDCD
P 12300 6400
F 0 "#PWR0702" H 12300 6150 30  0001 C CNN
F 1 "GNDH" H 12300 6242 30  0000 C CNN
F 2 "" H 12300 6400 50  0001 C CNN
F 3 "" H 12300 6400 50  0001 C CNN
	1    12300 6400
	1    0    0    -1  
$EndComp
Text Notes 5550 4700 0    197  ~ 39
COLD SUPPLY\n
Text Notes 13050 4900 0    197  ~ 39
HOT SUPPLY
Wire Wire Line
	7600 5650 7650 5650
Wire Wire Line
	7600 5750 7650 5750
Wire Wire Line
	7650 5750 7650 5650
Connection ~ 7650 5650
Wire Wire Line
	7300 6050 7300 6450
Connection ~ 7300 6450
Connection ~ 1500 5900
Wire Wire Line
	1500 5900 1400 5900
Text Notes 7550 1650 0    197  ~ 39
Main Power
Text Notes 13500 5100 0    20   ~ 0
Take in account that hot doesn't mean that it is refered to high voltage\n AC socket input path like 220v/380v. It is intended to isolate the uC\n/logic/user interfase side from accidentally high voltage contact on the\n hot side and prevent injuries as to make the reinforced isolation\n possible with one single isolateion added
Text Notes 5000 5400 0    20   ~ 0
sip 3 package, cheap, easy to \nreplace and many options
Text Notes 7900 2350 0    20   ~ 0
In case the control board have to be supply directly with socket voltage\n (220v) populate these. It's not a good idea cause I'll like to keep hight\n voltage outside these controller board, but it's a requeriment, so I let it\n as an option. But you have the low voltage input 15vc and 15vh\n connectors also\n\nI've choosen to add 2 power supply for Cold and Hot sides because\n it's cheaper than have only one double sized power supply and add\n a DC/DC isolated controller, and it has the advantage to choose\n which one to use and if there is some isue in the HOT side, the Cold\n side keeps working without affect. I've choosen 15W size beouse\n has similar price as 10.2W and is pin-to-pin compatible with 20W, so\n you could change if you need more power\n\n\nI wrote 15v on the DC voltage side, but it's better to use 12v. But the\n range coulg be from 8 to 18 more or less
Text Notes 6050 4950 0    20   ~ 0
It is inteded to use only, I mean ONLY inside the control board, none of\n these coopers wires has to leave the board. I isolate every single pin\n from these supply to go outside, take these in account\n
Wire Wire Line
	1500 5750 1500 5900
Wire Wire Line
	5650 6450 6000 6450
$Comp
L servo:R-78E3.3-1.0 U702
U 1 1 5E18DDB9
P 5200 5650
F 0 "U702" H 5050 5775 39  0000 C CNN
F 1 "R-78B3.3-2.0" H 5200 5775 39  0000 L CNN
F 2 "servo:Converter_DCDC_RECOM_R-78E-0.5_THT" H 5250 5400 50  0001 L CIN
F 3 "../doc/datasheets/R-78B-2.0.pdf" H 5050 5775 50  0001 C CNN
	1    5200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5650 5650 5650
Wire Wire Line
	7650 5650 7850 5650
Wire Wire Line
	5650 5850 5650 5650
Wire Wire Line
	5200 6450 5650 6450
Wire Wire Line
	5650 6150 5650 6450
$Comp
L servo:AP2114 U706
U 1 1 5E28622B
P 7300 5750
F 0 "U706" H 7300 6091 39  0000 C CNN
F 1 "AP2114H-1.2TRG1" H 7300 6016 39  0000 C CNN
F 2 "servo:SOT-223" H 7400 6375 50  0001 C CNN
F 3 "../doc/datasheets/AP2114.pdf" H 7350 6150 50  0001 C CNN
	1    7300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 6150 7850 6450
Wire Wire Line
	7300 6450 7850 6450
Connection ~ 7850 6450
Wire Wire Line
	7850 5850 7850 5650
Connection ~ 7850 5650
Text Notes 6850 6350 0    20   ~ 0
the intention of the LCD it to clean \nthe noise without using big filters\n and L's. It's recommended and \ntested that these method works \npretty\nlow noise \nLDO <30uV
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
P 1500 5750
F 0 "#FLG0702" H 1500 5825 20  0001 C CNN
F 1 "PWR_FLAG" H 1500 5900 20  0000 C CNN
F 2 "" H 1500 5750 50  0001 C CNN
F 3 "~" H 1500 5750 50  0001 C CNN
	1    1500 5750
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F701
U 1 1 5E1D6E68
P 1250 5900
F 0 "F701" V 1330 5900 39  0000 C CNN
F 1 "Fuse" V 1175 5900 39  0000 C CNN
F 2 "servo:fuse_3912" V 1180 5900 50  0001 C CNN
F 3 "../doc/datasheets/fuse_3912pdf" V 1330 5900 50  0001 C CNN
	1    1250 5900
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E45F0A3
P 3050 5850
AR Path="/5EAA846A/5E45F0A3" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E45F0A3" Ref="R701"  Part="1" 
F 0 "R701" V 3028 5900 20  0000 L CNN
F 1 "1k2" V 3071 5900 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 2550 5750 60  0001 C CNN
F 3 "" H 2650 5850 60  0001 C CNN
	1    3050 5850
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E45F0AB
P 3050 6150
AR Path="/5EAA846A/5E45F0AB" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E45F0AB" Ref="D701"  Part="1" 
F 0 "D701" V 3056 6280 20  0000 L CNN
F 1 "red@2mA" V 3096 6280 16  0000 L CNN
F 2 "servo:LED_0603_1608Metric" H 2850 5950 60  0001 C CNN
F 3 "../doc/datasheets/LS L29K.pdf" H 2850 5950 60  0001 C CNN
F 4 "LS L29K-G1H2-1-Z " H 3050 6150 50  0001 C CNN "digikey"
F 5 "LS L29K-G1H2-1-Z" H 0   0   50  0001 C CNN "PartNumber"
	1    3050 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 6300 3050 6350
Wire Wire Line
	3050 6350 2850 6350
Wire Wire Line
	2850 6350 2850 6100
Wire Wire Line
	2850 5900 2850 5600
Wire Wire Line
	2850 5600 3050 5600
Wire Wire Line
	3050 5650 3050 5600
Connection ~ 3050 5600
$Comp
L servo:jumper JP701
U 1 1 5E4E5EBD
P 3300 5600
F 0 "JP701" H 3300 5761 39  0000 C CNN
F 1 "jumper" H 3300 5686 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3200 5580 50  0001 C CNN
F 3 "~" H 3300 5680 50  0001 C CNN
	1    3300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5600 3450 5600
Wire Wire Line
	3050 5600 3200 5600
Connection ~ 10800 5850
Wire Wire Line
	10800 5850 10700 5850
Wire Wire Line
	10800 5700 10800 5850
$Comp
L servo:PWR_FLAG #FLG0703
U 1 1 5E548503
P 10800 5700
F 0 "#FLG0703" H 10800 5775 20  0001 C CNN
F 1 "PWR_FLAG" H 10800 5850 20  0000 C CNN
F 2 "" H 10800 5700 50  0001 C CNN
F 3 "~" H 10800 5700 50  0001 C CNN
	1    10800 5700
	1    0    0    -1  
$EndComp
$Comp
L servo:Fuse F702
U 1 1 5E548509
P 10550 5850
F 0 "F702" V 10630 5850 39  0000 C CNN
F 1 "Fuse" V 10475 5850 39  0000 C CNN
F 2 "servo:fuse_3912" V 10480 5850 50  0001 C CNN
F 3 "../doc/datasheets/fuse_3912pdf" V 10630 5850 50  0001 C CNN
	1    10550 5850
	0    1    1    0   
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E548518
P 12300 5800
AR Path="/5EAA846A/5E548518" Ref="R?"  Part="1" 
AR Path="/5DD76B18/5E548518" Ref="R702"  Part="1" 
F 0 "R702" V 12278 5850 20  0000 L CNN
F 1 "1k2" V 12321 5850 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 11800 5700 60  0001 C CNN
F 3 "" H 11900 5800 60  0001 C CNN
	1    12300 5800
	0    1    1    0   
$EndComp
$Comp
L servo:LED_A2_K1 D?
U 1 1 5E548520
P 12300 6100
AR Path="/5EAA846A/5E548520" Ref="D?"  Part="1" 
AR Path="/5DD76B18/5E548520" Ref="D702"  Part="1" 
F 0 "D702" V 12306 6230 20  0000 L CNN
F 1 "yellow@2mA" V 12346 6230 16  0000 L CNN
F 2 "servo:LED_0603_1608Metric" H 12100 5900 60  0001 C CNN
F 3 "../doc/datasheets/LY L29K.pdf" H 12100 5900 60  0001 C CNN
F 4 "475-1196-1-ND" H 12300 6100 50  0001 C CNN "digikey"
F 5 "LY L29K-H1K2-26-Z " H 0   0   50  0001 C CNN "PartNumber"
	1    12300 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	12300 6250 12300 6350
Wire Wire Line
	12100 6350 12100 6050
Wire Wire Line
	12100 5850 12100 5550
Wire Wire Line
	12100 5550 12300 5550
Wire Wire Line
	12300 5600 12300 5550
Connection ~ 12300 5550
Wire Wire Line
	12300 6400 12300 6350
Connection ~ 12300 6350
Wire Wire Line
	12100 6350 12300 6350
Wire Wire Line
	3050 6350 3050 6400
Connection ~ 3050 6350
$Comp
L servo:PWR_FLAG #FLG0704
U 1 1 5E6C456D
P 3450 5500
F 0 "#FLG0704" H 3450 5575 20  0001 C CNN
F 1 "PWR_FLAG" H 3450 5650 20  0000 C CNN
F 2 "" H 3450 5500 50  0001 C CNN
F 3 "~" H 3450 5500 50  0001 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5500 3450 5600
Connection ~ 3450 5600
Wire Wire Line
	3450 5600 3550 5600
Wire Wire Line
	850  5900 1100 5900
Wire Wire Line
	10100 5850 10400 5850
$Comp
L Connector_Generic:Conn_02x04_Row_Letter_Last J?
U 1 1 5E229E8E
P 8650 3400
AR Path="/5E21534F/5E229E8E" Ref="J?"  Part="1" 
AR Path="/5DD76B18/5E229E8E" Ref="J701"  Part="1" 
AR Path="/5EC40F3C/5E229E8E" Ref="J?"  Part="1" 
F 0 "J701" H 8700 3717 50  0000 C CNN
F 1 "tblock" H 8700 3626 50  0000 C CNN
F 2 "servo:tblock02x04" H 8650 3400 50  0001 C CNN
F 3 "" H 8650 3400 50  0001 C CNN
	1    8650 3400
	-1   0    0    -1  
$EndComp
$Comp
L servo:IRM-10-5 PS701
U 1 1 5E1F0CFB
P 2200 6000
F 0 "PS701" H 2200 6301 39  0000 C CNN
F 1 "IRM-10-5" H 2200 6226 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 2200 5700 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 2600 5650 50  0001 C CNN
	1    2200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5900 1800 5900
Wire Wire Line
	2600 5900 2850 5900
$Comp
L servo:5VC #PWR0126
U 1 1 5E21C60D
P 3550 5500
F 0 "#PWR0126" H 3550 5300 20  0001 C CNN
F 1 "5VC" H 3603 5544 28  0000 L CNN
F 2 "" H 3550 5500 50  0001 C CNN
F 3 "" H 3550 5500 50  0001 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5500 3550 5600
Wire Wire Line
	850  6100 1800 6100
Wire Wire Line
	2600 6100 2850 6100
$Comp
L servo:irm-10-12 PS702
U 1 1 5E299A6A
P 11450 5950
F 0 "PS702" H 11450 6251 39  0000 C CNN
F 1 "irm-10-12" H 11450 6176 39  0000 C CNN
F 2 "servo:Converter_ACDC_MeanWell_IRM-10-xx_THT" H 11450 5650 50  0001 C CNN
F 3 "../doc/datasheets/irm-10.pdf" H 11850 5600 50  0001 C CNN
	1    11450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5850 11050 5850
Wire Wire Line
	11850 5850 12100 5850
Wire Wire Line
	11850 6050 12100 6050
Wire Wire Line
	4700 5450 4700 5650
$Comp
L servo:5VC #PWR0127
U 1 1 5E2B6C0C
P 4700 5450
F 0 "#PWR0127" H 4700 5250 20  0001 C CNN
F 1 "5VC" H 4705 5607 28  0000 C CNN
F 2 "" H 4700 5450 50  0001 C CNN
F 3 "" H 4700 5450 50  0001 C CNN
	1    4700 5450
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
	10100 6050 11050 6050
Wire Wire Line
	9000 2850 9000 3500
Connection ~ 9000 3500
Wire Wire Line
	9000 3500 9300 3500
Text Label 9100 3300 0    39   ~ 0
AC_L_C
Text Label 9100 3400 0    39   ~ 0
AC_L_H
Text Label 9100 3500 0    39   ~ 0
AC_N
Text Label 900  5900 0    39   ~ 0
AC_L_C
Text Label 10200 5850 0    39   ~ 0
AC_L_H
Text Label 10200 6050 0    39   ~ 0
AC_N
Text Label 900  6100 0    39   ~ 0
AC_N
Text Label 2650 5900 0    20   ~ 0
5VC_IN
Text GLabel 8200 3400 0    50   Input ~ 0
VBUS2_N_H
Text GLabel 8200 3600 0    50   Input ~ 0
VBUS1_N_H
Text GLabel 8200 3300 0    50   Input ~ 0
VBUS2_P_H
Text GLabel 8200 3500 0    50   Input ~ 0
VBUS1_P_H
$Comp
L servo:Capacitor C?
U 1 1 5F4D16C9
P 4700 5950
AR Path="/5EAA846A/5F4D16C9" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5F4D16C9" Ref="C701"  Part="1" 
F 0 "C701" V 4728 6060 20  0000 L CNN
F 1 "22uF" V 4771 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 4700 5850 60  0001 C CNN
F 3 "" H 4700 5950 60  0000 C CNN
	1    4700 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 6150 4700 6450
Wire Wire Line
	4700 6450 5200 6450
Wire Wire Line
	4700 5650 4700 5850
Connection ~ 4700 5650
Wire Wire Line
	4700 5650 4900 5650
Connection ~ 5650 5650
Connection ~ 5650 6450
Wire Wire Line
	6000 5650 6400 5650
Wire Wire Line
	7300 6450 6800 6450
Connection ~ 6000 6450
Wire Wire Line
	7300 6550 7300 6450
Connection ~ 5200 6450
Text Label 10900 5850 0    20   ~ 0
AC_L_H_FUSE
Text Label 1600 5900 0    20   ~ 0
AC_L_C_FUSE
Wire Wire Line
	8200 3500 8350 3500
Wire Wire Line
	8200 3600 8350 3600
Wire Wire Line
	8200 3300 8350 3300
Wire Wire Line
	8200 3400 8350 3400
$Comp
L servo:Capacitor C?
U 1 1 5E2B77D4
P 6800 5950
AR Path="/5EAA846A/5E2B77D4" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2B77D4" Ref="C703"  Part="1" 
F 0 "C703" V 6828 6060 20  0000 L CNN
F 1 "0.1uF" V 6871 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6800 5850 60  0001 C CNN
F 3 "" H 6800 5950 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
	1    6800 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 5850 6800 5650
Connection ~ 6800 5650
Wire Wire Line
	6800 5650 7000 5650
Wire Wire Line
	6800 6150 6800 6450
Connection ~ 6800 6450
Wire Wire Line
	6800 6450 6400 6450
Wire Wire Line
	12950 6050 12950 6350
Wire Wire Line
	12650 6350 12950 6350
Wire Wire Line
	13350 5450 13350 5550
Wire Wire Line
	12950 5550 13350 5550
Wire Wire Line
	12950 5750 12950 5550
Connection ~ 12950 5550
Wire Wire Line
	12650 5550 12950 5550
Wire Wire Line
	12650 5750 12650 5550
Connection ~ 12650 5550
$Comp
L servo:Capacitor C?
U 1 1 5E18DDC4
P 12950 5850
AR Path="/5EAA846A/5E18DDC4" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E18DDC4" Ref="C710"  Part="1" 
F 0 "C710" V 12978 5960 20  0000 L CNN
F 1 "2.2uF" V 13021 5960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 12950 5750 60  0001 C CNN
F 3 "" H 12950 5850 60  0000 C CNN
	1    12950 5850
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E2F90CF
P 12650 5850
AR Path="/5EAA846A/5E2F90CF" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E2F90CF" Ref="C708"  Part="1" 
F 0 "C708" V 12678 5960 20  0000 L CNN
F 1 "22uF" V 12721 5960 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 12650 5750 60  0001 C CNN
F 3 "" H 12650 5850 60  0000 C CNN
	1    12650 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	12300 6350 12650 6350
Connection ~ 12650 6350
Wire Wire Line
	7850 5650 8200 5650
Wire Wire Line
	8200 5850 8200 5650
Wire Wire Line
	7850 6450 8200 6450
Wire Wire Line
	8200 6150 8200 6450
$Comp
L servo:Capacitor C?
U 1 1 5E286219
P 8200 5950
AR Path="/5EAA846A/5E286219" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E286219" Ref="C714"  Part="1" 
F 0 "C714" V 8228 6060 20  0000 L CNN
F 1 "0.1uF" V 8271 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 8200 5850 60  0001 C CNN
F 3 "" H 8200 5950 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
	1    8200 5950
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E4CBAA0
P 4400 5950
AR Path="/5EAA846A/5E4CBAA0" Ref="C?"  Part="1" 
AR Path="/5DD76B18/5E4CBAA0" Ref="C702"  Part="1" 
F 0 "C702" V 4428 6060 20  0000 L CNN
F 1 "2.2uF" V 4471 6060 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 4400 5850 60  0001 C CNN
F 3 "" H 4400 5950 60  0000 C CNN
	1    4400 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5850 4400 5650
Wire Wire Line
	4400 5650 4700 5650
Wire Wire Line
	4700 6450 4400 6450
Wire Wire Line
	4400 6450 4400 6150
Connection ~ 4700 6450
$Comp
L servo:GNDP #PWR0255
U 1 1 5ECD5091
P 14600 8150
F 0 "#PWR0255" H 14600 7900 30  0001 C CNN
F 1 "GNDP" H 14600 8001 20  0000 C CNN
F 2 "" H 14600 8150 50  0001 C CNN
F 3 "" H 14600 8150 50  0001 C CNN
	1    14600 8150
	1    0    0    -1  
$EndComp
$Comp
L servo:5VP #PWR0256
U 1 1 5ECD5194
P 14600 7650
F 0 "#PWR0256" H 14600 7450 20  0001 C CNN
F 1 "5VP" H 14600 7807 28  0000 C CNN
F 2 "" H 14600 7650 50  0001 C CNN
F 3 "" H 14600 7650 50  0001 C CNN
	1    14600 7650
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP703
U 1 1 5ECD557D
P 14300 8100
F 0 "JP703" H 14300 8261 39  0000 C CNN
F 1 "jumper" H 14300 8186 39  0000 C CNN
F 2 "servo:wire_bridge_38mm" H 14200 8080 50  0001 C CNN
F 3 "~" H 14300 8180 50  0001 C CNN
	1    14300 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 8100 14600 8100
Wire Wire Line
	14600 8100 14600 8150
Wire Wire Line
	14200 8100 14000 8100
Wire Wire Line
	14000 8100 14000 8150
Wire Wire Line
	14200 7700 14000 7700
Wire Wire Line
	14000 7700 14000 7650
Wire Wire Line
	14400 7700 14600 7700
Wire Wire Line
	14600 7700 14600 7650
Text Notes 13900 5900 0    39   ~ 0
5VH_IN = internal isolated 5V power supply\n5VH = for VBUS measurement logic\n5VP  = for share 5v to the IGBT and power board connecors\n5VI = fot supply 5V to encoders and external interfases\n
$Comp
L servo:GNDH #PWR0270
U 1 1 5ECEC7F4
P 14000 6850
F 0 "#PWR0270" H 14000 6600 30  0001 C CNN
F 1 "GNDH" H 14000 6700 20  0000 C CNN
F 2 "" H 14000 6850 50  0001 C CNN
F 3 "" H 14000 6850 50  0001 C CNN
	1    14000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 6800 14600 6800
Wire Wire Line
	14600 6800 14600 6850
Wire Wire Line
	14200 6800 14000 6800
Wire Wire Line
	14000 6800 14000 6850
Wire Wire Line
	14200 6400 14000 6400
Wire Wire Line
	14000 6400 14000 6350
Wire Wire Line
	14400 6400 14600 6400
Wire Wire Line
	14600 6400 14600 6350
$Comp
L servo:GNDI #PWR0272
U 1 1 5ECFE9BB
P 14600 6850
F 0 "#PWR0272" H 14600 6600 30  0001 C CNN
F 1 "GNDI" H 14600 6701 20  0000 C CNN
F 2 "" H 14600 6850 50  0001 C CNN
F 3 "" H 14600 6850 50  0001 C CNN
	1    14600 6850
	1    0    0    -1  
$EndComp
$Comp
L servo:5VI #PWR0273
U 1 1 5ECFEA79
P 14600 6350
F 0 "#PWR0273" H 14600 6150 20  0001 C CNN
F 1 "5VI" H 14600 6507 28  0000 C CNN
F 2 "" H 14600 6350 50  0001 C CNN
F 3 "" H 14600 6350 50  0001 C CNN
	1    14600 6350
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP704
U 1 1 5E38023B
P 14300 7700
F 0 "JP704" H 14300 7861 39  0000 C CNN
F 1 "jumper" H 14300 7786 39  0000 C CNN
F 2 "servo:wire_bridge_44mm" H 14200 7680 50  0001 C CNN
F 3 "~" H 14300 7780 50  0001 C CNN
	1    14300 7700
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP705
U 1 1 5E380332
P 14300 6400
F 0 "JP705" H 14300 6561 39  0000 C CNN
F 1 "jumper" H 14300 6486 39  0000 C CNN
F 2 "servo:R_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 14200 6380 50  0001 C CNN
F 3 "~" H 14300 6480 50  0001 C CNN
	1    14300 6400
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDI #PWR0150
U 1 1 5E8D1CFB
P 14000 8150
F 0 "#PWR0150" H 14000 7900 30  0001 C CNN
F 1 "GNDI" H 14000 8000 20  0000 C CNN
F 2 "" H 14000 8150 50  0001 C CNN
F 3 "" H 14000 8150 50  0001 C CNN
	1    14000 8150
	1    0    0    -1  
$EndComp
$Comp
L servo:5VI #PWR0151
U 1 1 5E8D7BF0
P 14000 7650
F 0 "#PWR0151" H 14000 7450 20  0001 C CNN
F 1 "5VI" H 14000 7807 28  0000 C CNN
F 2 "" H 14000 7650 50  0001 C CNN
F 3 "" H 14000 7650 50  0001 C CNN
	1    14000 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 5450 12100 5550
Connection ~ 12100 5550
$Comp
L servo:5VH_IN #PWR0152
U 1 1 5E8EC18B
P 12100 5450
F 0 "#PWR0152" H 12100 5250 20  0001 C CNN
F 1 "5VH_IN" H 12100 5607 28  0000 C CNN
F 2 "" H 12100 5450 50  0001 C CNN
F 3 "" H 12100 5450 50  0001 C CNN
	1    12100 5450
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH_IN #PWR0153
U 1 1 5E8EFE9A
P 14000 6350
F 0 "#PWR0153" H 14000 6150 20  0001 C CNN
F 1 "5VH_IN" H 14000 6507 28  0000 C CNN
F 2 "" H 14000 6350 50  0001 C CNN
F 3 "" H 14000 6350 50  0001 C CNN
	1    14000 6350
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP706
U 1 1 5E3ACEAA
P 14300 6800
F 0 "JP706" H 14300 6961 39  0000 C CNN
F 1 "jumper" H 14300 6886 39  0000 C CNN
F 2 "servo:R_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 14200 6780 50  0001 C CNN
F 3 "~" H 14300 6880 50  0001 C CNN
	1    14300 6800
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDH #PWR0154
U 1 1 5E3EA06F
P 14000 9250
F 0 "#PWR0154" H 14000 9000 30  0001 C CNN
F 1 "GNDH" H 14000 9100 20  0000 C CNN
F 2 "" H 14000 9250 50  0001 C CNN
F 3 "" H 14000 9250 50  0001 C CNN
	1    14000 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 9200 14600 9200
Wire Wire Line
	14600 9200 14600 9250
Wire Wire Line
	14200 9200 14000 9200
Wire Wire Line
	14000 9200 14000 9250
Wire Wire Line
	14200 8800 14000 8800
Wire Wire Line
	14000 8800 14000 8750
Wire Wire Line
	14400 8800 14600 8800
Wire Wire Line
	14600 8800 14600 8750
$Comp
L servo:jumper JP702
U 1 1 5E3EA089
P 14300 8800
F 0 "JP702" H 14300 8961 39  0000 C CNN
F 1 "jumper" H 14300 8886 39  0000 C CNN
F 2 "servo:R_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 14200 8780 50  0001 C CNN
F 3 "~" H 14300 8880 50  0001 C CNN
	1    14300 8800
	1    0    0    -1  
$EndComp
$Comp
L servo:5VH_IN #PWR0155
U 1 1 5E3EA090
P 14000 8750
F 0 "#PWR0155" H 14000 8550 20  0001 C CNN
F 1 "5VH_IN" H 14000 8907 28  0000 C CNN
F 2 "" H 14000 8750 50  0001 C CNN
F 3 "" H 14000 8750 50  0001 C CNN
	1    14000 8750
	1    0    0    -1  
$EndComp
$Comp
L servo:jumper JP707
U 1 1 5E3EA096
P 14300 9200
F 0 "JP707" H 14300 9361 39  0000 C CNN
F 1 "jumper" H 14300 9286 39  0000 C CNN
F 2 "servo:R_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 14200 9180 50  0001 C CNN
F 3 "~" H 14300 9280 50  0001 C CNN
	1    14300 9200
	1    0    0    -1  
$EndComp
$Comp
L servo:5VB #PWR0156
U 1 1 5E3EE2FF
P 14600 8750
F 0 "#PWR0156" H 14600 8550 20  0001 C CNN
F 1 "5VB" H 14600 8907 28  0000 C CNN
F 2 "" H 14600 8750 50  0001 C CNN
F 3 "" H 14600 8750 50  0001 C CNN
	1    14600 8750
	1    0    0    -1  
$EndComp
$Comp
L servo:GNDB #PWR0157
U 1 1 5E3F25DD
P 14600 9250
F 0 "#PWR0157" H 14600 9000 30  0001 C CNN
F 1 "GNDB" H 14600 9101 20  0000 C CNN
F 2 "" H 14600 9250 50  0001 C CNN
F 3 "" H 14600 9250 50  0001 C CNN
	1    14600 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 5550 12650 5550
Wire Wire Line
	12650 6300 12650 6350
Wire Wire Line
	12650 6050 12650 6350
$Comp
L servo:zener D704
U 1 1 5E3BEF67
P 14950 7900
F 0 "D704" V 14928 7979 20  0000 L CNN
F 1 "5v1" V 14971 7979 20  0000 L CNN
F 2 "servo:D_SMA" H 14950 7725 20  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/z1sma1.pdf" H 14950 8000 50  0001 C CNN
	1    14950 7900
	0    1    1    0   
$EndComp
Wire Wire Line
	14600 7700 14950 7700
Wire Wire Line
	14950 7700 14950 7750
Connection ~ 14600 7700
Wire Wire Line
	14600 8100 14950 8100
Wire Wire Line
	14950 8100 14950 8050
Connection ~ 14600 8100
$Comp
L servo:zener D703
U 1 1 5E3CE25B
P 14900 6600
F 0 "D703" V 14878 6679 20  0000 L CNN
F 1 "5v1" V 14921 6679 20  0000 L CNN
F 2 "servo:D_SMA" H 14900 6425 20  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/z1sma1.pdf" H 14900 6700 50  0001 C CNN
	1    14900 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	14600 6400 14900 6400
Wire Wire Line
	14900 6400 14900 6450
Connection ~ 14600 6400
Wire Wire Line
	14600 6800 14900 6800
Wire Wire Line
	14900 6800 14900 6750
Connection ~ 14600 6800
Text Notes 14700 6250 0    20   ~ 0
5v interfaces\n
Text Notes 14750 7550 0    20   ~ 0
5V power
Text Notes 14650 8650 0    20   ~ 0
5v bus measurement
$Comp
L servo:zener D707
U 1 1 5E5CEB8C
P 4150 6000
F 0 "D707" V 4128 6079 20  0000 L CNN
F 1 "5v1" V 4171 6079 20  0000 L CNN
F 2 "servo:D_SMA" H 4150 5825 20  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/z1sma1.pdf" H 4150 6100 50  0001 C CNN
	1    4150 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5850 4150 5650
Wire Wire Line
	4150 5650 4400 5650
Connection ~ 4400 5650
Wire Wire Line
	4150 6150 4150 6450
Wire Wire Line
	4150 6450 4400 6450
Connection ~ 4400 6450
$Comp
L servo:zener D708
U 1 1 5E600820
P 6400 6050
F 0 "D708" V 6378 6129 20  0000 L CNN
F 1 "3v5" V 6421 6129 20  0000 L CNN
F 2 "servo:D_SMA" H 6400 5875 20  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/z1sma1.pdf" H 6400 6150 50  0001 C CNN
	1    6400 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 5900 6400 5650
Connection ~ 6400 5650
Wire Wire Line
	6400 5650 6800 5650
Wire Wire Line
	6400 6200 6400 6450
Connection ~ 6400 6450
Wire Wire Line
	6400 6450 6000 6450
Wire Wire Line
	8200 5550 8200 5650
Connection ~ 8200 5650
$EndSCHEMATC
