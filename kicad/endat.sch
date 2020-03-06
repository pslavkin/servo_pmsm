EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 19 20
Title "ENDAT/BISS Interface"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5900 1350 0    197  ~ 39
2X Isolated diferential ENDAT interface
$Comp
L servo:SN75C1167DBR U?
U 1 1 5E26347A
P 6000 5100
AR Path="/5DE3DF56/5E26347A" Ref="U?"  Part="1" 
AR Path="/5F8D42C2/5E26347A" Ref="U1904"  Part="1" 
F 0 "U1904" H 6025 5712 60  0000 C CNN
F 1 "SN75C1168DBR" H 6025 5606 60  0000 C CNN
F 2 "servo:SOIC-16W_5.3x10.2mm_P1.27mm" H 5900 5665 60  0001 C CNN
F 3 "../doc/datasheets/sn65c1168.pdf" H 5900 5825 60  0001 C CNN
F 4 "2/2 Transceiver Full RS422, RS485 16-SSOP " H 0   0   50  0001 C CNN "Description"
F 5 "SN75C1168DBR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-SN75C1168DBRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "1.55300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6000 5100
	1    0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5E263A30
P 6350 3300
AR Path="/5DE3DF56/5E263A30" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5E263A30" Ref="C1905"  Part="1" 
F 0 "C1905" V 6378 3410 20  0000 L CNN
F 1 "0.1uF" V 6421 3410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 6350 3200 60  0001 C CNN
F 3 "" H 6350 3300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6350 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4950 6750 4950
Wire Wire Line
	6550 5050 6850 5050
Wire Wire Line
	6550 4850 7000 4850
Wire Wire Line
	7000 4850 7000 4150
Wire Wire Line
	6550 5450 6800 5450
Wire Wire Line
	6800 5450 6800 5800
Wire Wire Line
	6800 5800 4900 5800
Wire Wire Line
	4900 5800 4900 4450
$Comp
L servo:SI8662BD U?
U 1 1 5E3E25E7
P 3600 4350
AR Path="/5DE3DF56/5E3E25E7" Ref="U?"  Part="1" 
AR Path="/5F8D42C2/5E3E25E7" Ref="U1901"  Part="1" 
F 0 "U1901" H 3600 4939 60  0000 C CNN
F 1 "SI8662BD" H 3600 4833 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 3000 4650 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 3500 4950 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width)" H 0   0   50  0001 C CNN "Description"
F 5 "SI8662BD-B-IS" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-2125-5-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4750 5300 4750
Wire Wire Line
	5300 4750 5300 4400
Wire Wire Line
	5300 4400 6750 4400
Wire Wire Line
	6750 4400 6750 4950
Connection ~ 6750 4950
Wire Wire Line
	5500 4850 5200 4850
Wire Wire Line
	5200 4850 5200 4300
Wire Wire Line
	5200 4300 6850 4300
Wire Wire Line
	6850 4300 6850 5050
Connection ~ 6850 5050
Wire Wire Line
	5500 4950 5100 4950
Wire Wire Line
	6550 4750 6650 4750
Wire Wire Line
	6650 4750 6650 3150
Wire Wire Line
	6350 3200 6350 3150
Wire Wire Line
	6350 3150 6650 3150
Wire Wire Line
	5500 5450 5350 5450
Text Notes 5250 5300 0    20   ~ 0
free to use\n
Wire Wire Line
	8050 5400 8100 5400
$Comp
L servo:tblock2x6 J?
U 1 1 5E51D037
P 8300 5100
AR Path="/5DE3DF56/5E51D037" Ref="J?"  Part="1" 
AR Path="/5F8D42C2/5E51D037" Ref="J1901"  Part="1" 
F 0 "J1901" H 8350 5493 39  0000 C CNN
F 1 "tblock 2x6 3.81" H 8350 5418 39  0000 C CNN
F 2 "servo:tblock02x6_3.81" H 8250 5300 50  0001 C CNN
F 3 "../doc/datasheets/tblock2rows.pdf" H 8350 5400 50  0001 C CNN
F 4 "12 Position Terminal Block Header, Male Pins, Shrouded (4 Side) 0.150\" (3.81mm) 90°, Right Angle Through Hole " H 0   0   50  0001 C CNN "Description"
F 5 "1843114 " H 0   0   50  0001 C CNN "PartNumber"
F 6 "277-6009-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "7.50500" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8300 5100
	1    0    0    -1  
$EndComp
Text Label 4350 4550 0    39   ~ 0
ENDAT1_MISO_H
Text Label 3200 4000 0    39   ~ 0
ENDAT1_MOSI_H
Text Label 4350 4450 0    39   ~ 0
ENDAT1_CLK_H
$Comp
L servo:Capacitor C?
U 1 1 5E8EB4E9
P 4600 3300
AR Path="/5DE3DF56/5E8EB4E9" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5E8EB4E9" Ref="C1904"  Part="1" 
F 0 "C1904" V 4628 3190 20  0000 R CNN
F 1 "0.1uF" V 4671 3190 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 4600 3200 60  0001 C CNN
F 3 "" H 4600 3300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4600 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	4600 3200 4600 3150
Wire Wire Line
	4300 4750 4350 4750
Wire Wire Line
	4300 4050 4450 4050
Wire Wire Line
	4450 4050 4450 3150
Wire Wire Line
	4450 3150 4600 3150
Wire Wire Line
	5500 5050 5000 5050
Wire Wire Line
	5000 5050 5000 4350
Wire Wire Line
	5100 4550 5100 4950
Text Label 4350 4350 0    39   ~ 0
ENDAT1_CS_H
Wire Wire Line
	8100 4900 8050 4900
Wire Wire Line
	8050 4900 8050 4650
Wire Wire Line
	8650 4650 8650 4900
Wire Wire Line
	8650 4900 8600 4900
Wire Wire Line
	4300 4150 7000 4150
Wire Wire Line
	4300 4350 5000 4350
Text GLabel 2750 4350 0    50   Input ~ 0
ENDAT1_CS
Text GLabel 2750 4150 0    50   Input ~ 0
ENDAT1_MOSI
Text GLabel 2750 4550 0    50   Input ~ 0
ENDAT1_MISO
Text GLabel 2300 5700 0    50   Input ~ 0
ENDAT1_CLK
Text GLabel 2350 5350 0    50   Output ~ 0
ENDAT1_N_SKEW_CLK
Text GLabel 2300 5500 0    50   Output ~ 0
ENDAT1_Y_SKEW_CLK
Wire Wire Line
	2350 5350 3100 5350
Wire Wire Line
	2300 5500 2700 5500
Wire Wire Line
	2700 5500 2700 5700
Text Notes 1800 6050 0    20   ~ 0
to choose between the spi clk out \ndirectly (useless for endat) or to \nsend a PWM clk and its pair acting\n as skewed spi clk input to the spi uC\n delayed and the SPI playing as a slave...\nvery strange, but it's a way to manage \nthe badly designed endat...\n
Wire Wire Line
	2900 4550 2750 4550
Wire Wire Line
	2900 4350 2750 4350
Wire Wire Line
	2900 4150 2850 4150
Wire Wire Line
	4300 4450 4900 4450
Wire Wire Line
	4300 4550 5100 4550
Wire Wire Line
	2900 4450 1950 4450
Wire Wire Line
	6550 5150 6650 5150
Wire Wire Line
	6650 5150 6650 4750
Connection ~ 6650 4750
$Comp
L servo:Capacitor C?
U 1 1 5F461362
P 2500 3700
AR Path="/5DE3DF56/5F461362" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5F461362" Ref="C1901"  Part="1" 
F 0 "C1901" V 2528 3810 20  0000 L CNN
F 1 "0.1uF" V 2571 3810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 2500 3600 60  0001 C CNN
F 3 "" H 2500 3700 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2500 3700
	0    1    1    0   
$EndComp
$Comp
L servo:GND #PWR_?
U 1 1 5F46136B
P 2700 4800
AR Path="/5DD4DF4C/5F46136B" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5F46136B" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5F46136B" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5F46136B" Ref="#PWR_?"  Part="1" 
AR Path="/5F8D42C2/5F46136B" Ref="#PWR_0105"  Part="1" 
F 0 "#PWR_0105" H 2705 4651 20  0001 C CNN
F 1 "GND" H 2700 4642 30  0000 C CNN
F 2 "" H 2700 4800 70  0000 C CNN
F 3 "" H 2700 4800 70  0000 C CNN
	1    2700 4800
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5F461371
P 2500 3450
AR Path="/5DCD812E/5F461371" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5F461371" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5F461371" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5F461371" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5F461371" Ref="#PWR?"  Part="1" 
AR Path="/5F8D42C2/5F461371" Ref="#PWR0228"  Part="1" 
F 0 "#PWR0228" H 2400 3550 20  0001 C CNN
F 1 "3V3" H 2500 3600 28  0000 C CNN
F 2 "" H 2500 3450 50  0001 C CNN
F 3 "" H 2500 3450 50  0001 C CNN
	1    2500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3450 2500 3500
Connection ~ 2500 3500
Wire Wire Line
	2500 3500 2500 3600
Wire Wire Line
	2500 3950 2500 3900
$Comp
L servo:GND #PWR?
U 1 1 5F461381
P 2500 3950
AR Path="/5DE3DF56/5F461381" Ref="#PWR?"  Part="1" 
AR Path="/5F8D42C2/5F461381" Ref="#PWR0229"  Part="1" 
F 0 "#PWR0229" H 2500 3700 30  0001 C CNN
F 1 "GND" H 2422 3907 30  0000 R CNN
F 2 "" H 2500 3950 50  0001 C CNN
F 3 "" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4050 2750 4050
Wire Wire Line
	2750 4050 2750 3500
Wire Wire Line
	2500 3500 2750 3500
Wire Wire Line
	2900 4750 2700 4750
Wire Wire Line
	2700 4750 2700 4800
Wire Wire Line
	3100 5700 3100 5350
Wire Wire Line
	3100 5050 1950 5050
Wire Wire Line
	1950 5050 1950 4450
Connection ~ 3100 5350
Wire Wire Line
	3100 5350 3100 5050
$Comp
L servo:SN75C1167DBR U?
U 1 1 5F749BC7
P 10750 5100
AR Path="/5DE3DF56/5F749BC7" Ref="U?"  Part="1" 
AR Path="/5F8D42C2/5F749BC7" Ref="U1905"  Part="1" 
F 0 "U1905" H 10775 5712 60  0000 C CNN
F 1 "SN75C1168DBR" H 10775 5606 60  0000 C CNN
F 2 "servo:SOIC-16W_5.3x10.2mm_P1.27mm" H 10650 5665 60  0001 C CNN
F 3 "../doc/datasheets/sn65c1168.pdf" H 10650 5825 60  0001 C CNN
F 4 "2/2 Transceiver Full RS422, RS485 16-SSOP " H 0   0   50  0001 C CNN "Description"
F 5 "SN75C1168DBR" H 0   0   50  0001 C CNN "PartNumber"
F 6 "296-SN75C1168DBRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "1.55300" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_2"
F 9 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10750 5100
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F749BEF
P 10400 3300
AR Path="/5DE3DF56/5F749BEF" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5F749BEF" Ref="C1910"  Part="1" 
F 0 "C1910" V 10428 3410 20  0000 L CNN
F 1 "0.1uF" V 10471 3410 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 10400 3200 60  0001 C CNN
F 3 "" H 10400 3300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10400 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	10200 4950 10000 4950
Wire Wire Line
	10200 5050 9900 5050
Wire Wire Line
	10200 4850 9750 4850
Wire Wire Line
	9750 4850 9750 4150
Wire Wire Line
	10200 5450 9950 5450
Wire Wire Line
	9950 5450 9950 5800
Wire Wire Line
	9950 5800 11850 5800
Wire Wire Line
	11850 5800 11850 4450
$Comp
L servo:SI8662BD U?
U 1 1 5F749C33
P 13150 4350
AR Path="/5DE3DF56/5F749C33" Ref="U?"  Part="1" 
AR Path="/5F8D42C2/5F749C33" Ref="U1908"  Part="1" 
F 0 "U1908" H 13150 4939 60  0000 C CNN
F 1 "SI8662BD" H 13150 4833 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 12550 4650 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 13050 4950 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width)" H 0   0   50  0001 C CNN "Description"
F 5 "SI8662BD-B-IS" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-2125-5-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13150 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11250 4750 11450 4750
Wire Wire Line
	11450 4750 11450 4400
Wire Wire Line
	11450 4400 10000 4400
Wire Wire Line
	10000 4400 10000 4950
Connection ~ 10000 4950
Wire Wire Line
	11250 4850 11550 4850
Wire Wire Line
	11550 4850 11550 4300
Wire Wire Line
	11550 4300 9900 4300
Wire Wire Line
	9900 4300 9900 5050
Connection ~ 9900 5050
Wire Wire Line
	11250 4950 11650 4950
Wire Wire Line
	10200 4750 10100 4750
Wire Wire Line
	10100 4750 10100 3150
Wire Wire Line
	10400 3200 10400 3150
Wire Wire Line
	11250 5450 11400 5450
Text Notes 11550 5250 2    20   ~ 0
free to use\n
Text Label 12400 4550 2    39   ~ 0
ENDAT2_MISO_H
Text Label 12400 4150 2    39   ~ 0
ENDAT2_MOSI_H
Text Label 12400 4450 2    39   ~ 0
ENDAT2_CLK_H
$Comp
L servo:Capacitor C?
U 1 1 5F749C6B
P 12150 3300
AR Path="/5DE3DF56/5F749C6B" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5F749C6B" Ref="C1913"  Part="1" 
F 0 "C1913" V 12178 3190 20  0000 R CNN
F 1 "0.1uF" V 12221 3190 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 12150 3200 60  0001 C CNN
F 3 "" H 12150 3300 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    12150 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	12150 3200 12150 3150
Wire Wire Line
	12450 4750 12400 4750
Wire Wire Line
	12450 4050 12300 4050
Wire Wire Line
	12300 4050 12300 3150
Wire Wire Line
	12300 3150 12150 3150
Connection ~ 12150 3150
Wire Wire Line
	11250 5050 11750 5050
Wire Wire Line
	11750 5050 11750 4350
Wire Wire Line
	11650 4550 11650 4950
Text Label 12400 4350 2    39   ~ 0
ENDAT2_CS_H
Wire Wire Line
	12450 4150 9750 4150
Wire Wire Line
	12450 4350 11750 4350
Text GLabel 14000 4350 2    50   Input ~ 0
ENDAT2_CS
Text GLabel 14000 4150 2    50   Input ~ 0
ENDAT2_MOSI
Text GLabel 14000 4550 2    50   Input ~ 0
ENDAT2_MISO
Text GLabel 14450 5700 2    50   Input ~ 0
ENDAT2_CLK
Text GLabel 14400 5350 2    50   Output ~ 0
ENDAT2_N_SKEW_CLK
Text GLabel 14450 5500 2    50   Output ~ 0
ENDAT2_Y_SKEW_CLK
Wire Wire Line
	14400 5350 13650 5350
Wire Wire Line
	14450 5500 14050 5500
Wire Wire Line
	14050 5500 14050 5700
Text Notes 15400 6050 2    20   ~ 0
to choose between the spi clk out \ndirectly (useless for endat) or to \nsend a PWM clk and its pair acting\n as skewed spi clk input to the spi uC\n delayed and the SPI playing as a slave...\nvery strange, but it's a way to manage \nthe badly designed endat...\n
Wire Wire Line
	13850 4550 14000 4550
Wire Wire Line
	13850 4350 14000 4350
Wire Wire Line
	13850 4150 13900 4150
Wire Wire Line
	12450 4450 11850 4450
Wire Wire Line
	12450 4550 11650 4550
Wire Wire Line
	13850 4450 14800 4450
Wire Wire Line
	10200 5150 10100 5150
Wire Wire Line
	10100 5150 10100 4750
Connection ~ 10100 4750
$Comp
L servo:Capacitor C?
U 1 1 5F749CAE
P 14250 3700
AR Path="/5DE3DF56/5F749CAE" Ref="C?"  Part="1" 
AR Path="/5F8D42C2/5F749CAE" Ref="C1914"  Part="1" 
F 0 "C1914" V 14278 3810 20  0000 L CNN
F 1 "0.1uF" V 14321 3810 20  0000 L CNN
F 2 "servo:C_0603_1608Metric" H 14250 3600 60  0001 C CNN
F 3 "" H 14250 3700 60  0000 C CNN
F 4 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 5 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 6 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14250 3700
	0    -1   1    0   
$EndComp
$Comp
L servo:GND #PWR_?
U 1 1 5F749CB5
P 14050 4800
AR Path="/5DD4DF4C/5F749CB5" Ref="#PWR_?"  Part="1" 
AR Path="/5DE49152/5F749CB5" Ref="#PWR_?"  Part="1" 
AR Path="/5E1BAEAA/5F749CB5" Ref="#PWR_?"  Part="1" 
AR Path="/5DE3DF56/5F749CB5" Ref="#PWR_?"  Part="1" 
AR Path="/5F8D42C2/5F749CB5" Ref="#PWR_0106"  Part="1" 
F 0 "#PWR_0106" H 14055 4651 20  0001 C CNN
F 1 "GND" H 14050 4642 30  0000 C CNN
F 2 "" H 14050 4800 70  0000 C CNN
F 3 "" H 14050 4800 70  0000 C CNN
	1    14050 4800
	-1   0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR?
U 1 1 5F749CBB
P 14250 3450
AR Path="/5DCD812E/5F749CBB" Ref="#PWR?"  Part="1" 
AR Path="/5DD4DF4C/5F749CBB" Ref="#PWR?"  Part="1" 
AR Path="/5DE49152/5F749CBB" Ref="#PWR?"  Part="1" 
AR Path="/5E1BAEAA/5F749CBB" Ref="#PWR?"  Part="1" 
AR Path="/5DE3DF56/5F749CBB" Ref="#PWR?"  Part="1" 
AR Path="/5F8D42C2/5F749CBB" Ref="#PWR0239"  Part="1" 
F 0 "#PWR0239" H 14150 3550 20  0001 C CNN
F 1 "3V3" H 14250 3600 28  0000 C CNN
F 2 "" H 14250 3450 50  0001 C CNN
F 3 "" H 14250 3450 50  0001 C CNN
	1    14250 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14250 3450 14250 3500
Connection ~ 14250 3500
Wire Wire Line
	14250 3500 14250 3600
Wire Wire Line
	14250 3950 14250 3900
$Comp
L servo:GND #PWR?
U 1 1 5F749CC5
P 14250 3950
AR Path="/5DE3DF56/5F749CC5" Ref="#PWR?"  Part="1" 
AR Path="/5F8D42C2/5F749CC5" Ref="#PWR0240"  Part="1" 
F 0 "#PWR0240" H 14250 3700 30  0001 C CNN
F 1 "GND" H 14172 3907 30  0000 R CNN
F 2 "" H 14250 3950 50  0001 C CNN
F 3 "" H 14250 3950 50  0001 C CNN
	1    14250 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13850 4050 14000 4050
Wire Wire Line
	14000 4050 14000 3500
Wire Wire Line
	14250 3500 14000 3500
Wire Wire Line
	13850 4750 14050 4750
Wire Wire Line
	14050 4750 14050 4800
Wire Wire Line
	13650 5700 13650 5350
Wire Wire Line
	13650 5050 14800 5050
Wire Wire Line
	14800 5050 14800 4450
Connection ~ 13650 5350
Wire Wire Line
	13650 5350 13650 5050
$Comp
L servo:R_Small R?
U 1 1 635F868D
P 7300 3250
AR Path="/5E092156/635F868D" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/635F868D" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/635F868D" Ref="R1911"  Part="1" 
F 0 "R1911" H 7359 3272 20  0000 L CNN
F 1 "10k" H 7359 3229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 3250 50  0001 C CNN
F 3 "~" H 7300 3250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 635F8694
P 7300 3450
AR Path="/5E092156/635F8694" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/635F8694" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/635F8694" Ref="R1912"  Part="1" 
F 0 "R1912" H 7359 3472 20  0000 L CNN
F 1 "1k" H 7359 3429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 3450 50  0001 C CNN
F 3 "~" H 7300 3450 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 635F869B
P 7300 3650
AR Path="/5E092156/635F869B" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/635F869B" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/635F869B" Ref="R1913"  Part="1" 
F 0 "R1913" H 7359 3672 20  0000 L CNN
F 1 "10k" H 7359 3629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7300 3650 50  0001 C CNN
F 3 "~" H 7300 3650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3550 7200 3550
Connection ~ 7300 3550
Wire Wire Line
	7100 3350 7300 3350
Connection ~ 7300 3350
$Comp
L servo:R_Small R?
U 1 1 6375BF43
P 7650 3250
AR Path="/5E092156/6375BF43" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6375BF43" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/6375BF43" Ref="R1914"  Part="1" 
F 0 "R1914" H 7709 3272 20  0000 L CNN
F 1 "10k" H 7709 3229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7650 3250 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6375BF4A
P 7650 3450
AR Path="/5E092156/6375BF4A" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6375BF4A" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/6375BF4A" Ref="R1915"  Part="1" 
F 0 "R1915" H 7709 3472 20  0000 L CNN
F 1 "1k" H 7709 3429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7650 3450 50  0001 C CNN
F 3 "~" H 7650 3450 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 6375BF51
P 7650 3650
AR Path="/5E092156/6375BF51" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/6375BF51" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/6375BF51" Ref="R1916"  Part="1" 
F 0 "R1916" H 7709 3672 20  0000 L CNN
F 1 "10k" H 7709 3629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 7650 3650 50  0001 C CNN
F 3 "~" H 7650 3650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3550 7550 3550
Connection ~ 7650 3550
Wire Wire Line
	7450 3350 7650 3350
Connection ~ 7650 3350
NoConn ~ 12450 4250
NoConn ~ 4300 4250
NoConn ~ 2900 4650
NoConn ~ 5500 5150
NoConn ~ 11250 5150
$Comp
L servo:R_Small R?
U 1 1 5E3D483F
P 9400 3250
AR Path="/5E092156/5E3D483F" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D483F" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D483F" Ref="R1906"  Part="1" 
F 0 "R1906" H 9459 3272 20  0000 L CNN
F 1 "10k" H 9459 3229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9400 3250 50  0001 C CNN
F 3 "~" H 9400 3250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9400 3250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E3D4846
P 9400 3450
AR Path="/5E092156/5E3D4846" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D4846" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D4846" Ref="R1907"  Part="1" 
F 0 "R1907" H 9459 3472 20  0000 L CNN
F 1 "1k" H 9459 3429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9400 3450 50  0001 C CNN
F 3 "~" H 9400 3450 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9400 3450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E3D484D
P 9400 3650
AR Path="/5E092156/5E3D484D" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D484D" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D484D" Ref="R1908"  Part="1" 
F 0 "R1908" H 9459 3672 20  0000 L CNN
F 1 "10k" H 9459 3629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9400 3650 50  0001 C CNN
F 3 "~" H 9400 3650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9400 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 3550 9500 3550
Connection ~ 9400 3550
Wire Wire Line
	9600 3350 9400 3350
Connection ~ 9400 3350
$Comp
L servo:R_Small R?
U 1 1 5E3D486C
P 9050 3250
AR Path="/5E092156/5E3D486C" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D486C" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D486C" Ref="R1903"  Part="1" 
F 0 "R1903" H 9109 3272 20  0000 L CNN
F 1 "10k" H 9109 3229 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9050 3250 50  0001 C CNN
F 3 "~" H 9050 3250 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9050 3250
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E3D4873
P 9050 3450
AR Path="/5E092156/5E3D4873" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D4873" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D4873" Ref="R1904"  Part="1" 
F 0 "R1904" H 9109 3472 20  0000 L CNN
F 1 "1k" H 9109 3429 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9050 3450 50  0001 C CNN
F 3 "~" H 9050 3450 50  0001 C CNN
F 4 "1 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-071KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9050 3450
	-1   0    0    -1  
$EndComp
$Comp
L servo:R_Small R?
U 1 1 5E3D487A
P 9050 3650
AR Path="/5E092156/5E3D487A" Ref="R?"  Part="1" 
AR Path="/5DE3DF56/5E3D487A" Ref="R?"  Part="1" 
AR Path="/5F8D42C2/5E3D487A" Ref="R1905"  Part="1" 
F 0 "R1905" H 9109 3672 20  0000 L CNN
F 1 "10k" H 9109 3629 20  0000 L CNN
F 2 "servo:R_0603_1608Metric" H 9050 3650 50  0001 C CNN
F 3 "~" H 9050 3650 50  0001 C CNN
F 4 "10 kOhms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "RC0603JR-0710KL" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-10KGRCT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.01900" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9050 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 3550 9150 3550
Connection ~ 9050 3550
Wire Wire Line
	9250 3350 9050 3350
Connection ~ 9050 3350
Wire Wire Line
	8050 5400 8050 5600
Wire Wire Line
	8750 5400 8750 5600
Text Label 6900 4950 0    39   ~ 0
ENDAT1_DATA_H_P
Text Label 6900 5050 0    39   ~ 0
ENDAT1_DATA_H_N
Text Label 6850 5350 0    39   ~ 0
ENDAT1_CLK_H_P
Text Label 6850 5250 0    39   ~ 0
ENDAT1_CLK_H_N
Wire Wire Line
	6750 4950 7450 4950
Wire Wire Line
	7450 3350 7450 4950
Wire Wire Line
	7550 3550 7550 5050
Wire Wire Line
	6850 5050 7550 5050
Connection ~ 7550 5050
Wire Wire Line
	7550 5050 7800 5050
Wire Wire Line
	6550 5250 7200 5250
Wire Wire Line
	6550 5350 7100 5350
Wire Wire Line
	7100 3350 7100 5350
Wire Wire Line
	7200 3550 7200 5250
Wire Wire Line
	7100 5350 7950 5350
Wire Wire Line
	7950 5350 7950 5000
Wire Wire Line
	7950 5000 8100 5000
Connection ~ 7100 5350
Wire Wire Line
	7200 5250 8000 5250
Wire Wire Line
	8000 5250 8000 5100
Wire Wire Line
	8000 5100 8100 5100
Connection ~ 7200 5250
Wire Wire Line
	7450 4950 7900 4950
Wire Wire Line
	7900 4950 7900 5200
Wire Wire Line
	7900 5200 8100 5200
Connection ~ 7450 4950
Wire Wire Line
	7800 5050 7800 5300
Wire Wire Line
	7800 5300 8100 5300
Wire Wire Line
	8600 5000 8900 5000
Wire Wire Line
	8900 5000 8900 5350
Wire Wire Line
	8850 5250 8850 5100
Wire Wire Line
	8850 5100 8600 5100
Wire Wire Line
	9000 4950 9000 5200
Wire Wire Line
	9000 5200 8600 5200
Wire Wire Line
	8600 5300 9050 5300
Wire Wire Line
	9050 5300 9050 5050
Wire Wire Line
	8850 5250 9500 5250
Wire Wire Line
	9150 3550 9150 5050
Wire Wire Line
	9050 5050 9150 5050
Connection ~ 9150 5050
Wire Wire Line
	9150 5050 9900 5050
Wire Wire Line
	9250 3350 9250 4950
Wire Wire Line
	9000 4950 9250 4950
Connection ~ 9250 4950
Wire Wire Line
	9250 4950 10000 4950
Wire Wire Line
	9500 3550 9500 5250
Connection ~ 9500 5250
Wire Wire Line
	9500 5250 10200 5250
Wire Wire Line
	9600 3350 9600 5350
Wire Wire Line
	8900 5350 9600 5350
Connection ~ 9600 5350
Wire Wire Line
	9600 5350 10200 5350
Text Label 9350 4950 0    39   ~ 0
ENDAT2_DATA_H_P
Text Label 9350 5050 0    39   ~ 0
ENDAT2_DATA_H_N
Text Label 9250 5250 0    39   ~ 0
ENDAT2_CLK_H_N
Text Label 9250 5350 0    39   ~ 0
ENDAT2_CLK_H_P
Wire Wire Line
	8600 5400 8750 5400
Text Label 4350 4150 0    39   ~ 0
ENDAT1_MOSI_H
$Comp
L servo:5VI #PWR?
U 1 1 5E5DC4DB
P 8350 2950
AR Path="/5DD76B18/5E5DC4DB" Ref="#PWR?"  Part="1" 
AR Path="/5F8D42C2/5E5DC4DB" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 8350 2750 20  0001 C CNN
F 1 "5VI" H 8350 3107 28  0000 C CNN
F 2 "" H 8350 2950 50  0001 C CNN
F 3 "" H 8350 2950 50  0001 C CNN
	1    8350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2950 8350 3150
Wire Wire Line
	9400 3150 9050 3150
Connection ~ 7650 3150
Wire Wire Line
	7650 3150 7300 3150
Connection ~ 9050 3150
Wire Wire Line
	9050 3150 8350 3150
Wire Wire Line
	7300 3150 6650 3150
Connection ~ 7300 3150
Connection ~ 6650 3150
Wire Wire Line
	6350 3500 6350 3750
Wire Wire Line
	6350 3750 7300 3750
Connection ~ 7300 3750
Wire Wire Line
	7300 3750 7650 3750
Connection ~ 9400 3150
Wire Wire Line
	9400 3150 10100 3150
Connection ~ 10100 3150
Wire Wire Line
	10100 3150 10400 3150
Wire Wire Line
	10400 3500 10400 3750
Connection ~ 9400 3750
Wire Wire Line
	9400 3750 9050 3750
Connection ~ 9050 3750
Connection ~ 7650 3750
$Comp
L servo:GNDI #PWR0149
U 1 1 5E670415
P 8350 6300
F 0 "#PWR0149" H 8350 6050 30  0001 C CNN
F 1 "GNDI" H 8350 6151 20  0000 C CNN
F 2 "" H 8350 6300 50  0001 C CNN
F 3 "" H 8350 6300 50  0001 C CNN
	1    8350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 5450 11400 6150
Wire Wire Line
	8350 6150 8350 6300
Wire Wire Line
	5350 6150 8350 6150
Wire Wire Line
	5350 5450 5350 6150
Wire Wire Line
	4350 6150 5350 6150
Wire Wire Line
	4350 4750 4350 6150
Connection ~ 5350 6150
Wire Wire Line
	12400 6150 11400 6150
Wire Wire Line
	12400 4750 12400 6150
Connection ~ 11400 6150
Wire Wire Line
	12150 3150 11350 3150
Connection ~ 10400 3150
Wire Wire Line
	12150 3500 12150 3750
Wire Wire Line
	9400 3750 10400 3750
Connection ~ 10400 3750
Wire Wire Line
	10400 3750 12150 3750
Wire Wire Line
	6350 3750 4600 3750
Wire Wire Line
	4600 3750 4600 3500
Connection ~ 6350 3750
Wire Wire Line
	4600 3150 5400 3150
Connection ~ 4600 3150
Connection ~ 6350 3150
Wire Wire Line
	8050 4650 8350 4650
Connection ~ 8350 4650
Wire Wire Line
	8350 4650 8650 4650
Wire Wire Line
	8350 3150 8350 4650
Connection ~ 8350 3150
Wire Wire Line
	7650 3150 8350 3150
Wire Wire Line
	8050 5600 8350 5600
Connection ~ 8350 6150
Wire Wire Line
	8350 6150 11400 6150
Wire Wire Line
	8350 5600 8350 6150
Connection ~ 8350 5600
Wire Wire Line
	8350 5600 8750 5600
Wire Wire Line
	8750 5400 8750 3750
Wire Wire Line
	7650 3750 8750 3750
Connection ~ 8750 5400
Connection ~ 8750 3750
Wire Wire Line
	8750 3750 9050 3750
$Comp
L servo:jumper JP?
U 1 1 5E65DC22
P 2900 5700
AR Path="/5DD76B18/5E65DC22" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E65DC22" Ref="JP?"  Part="1" 
AR Path="/5F8D42C2/5E65DC22" Ref="JP1902"  Part="1" 
F 0 "JP1902" H 2900 5539 39  0000 C CNN
F 1 "jumper" H 2900 5614 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2800 5680 50  0001 C CNN
F 3 "~" H 2900 5780 50  0001 C CNN
F 4 "jumper smd bridge using tin" H -400 100 50  0001 C CNN "Description"
F 5 "-" H -400 100 50  0001 C CNN "PartNumber"
F 6 "-" H -400 100 50  0001 C CNN "digikey"
F 7 "0" H -400 100 50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "" H 0   0   50  0001 C CNN "bom_2"
	1    2900 5700
	-1   0    0    1   
$EndComp
$Comp
L servo:jumper JP?
U 1 1 5E668E7F
P 2500 5700
AR Path="/5DD76B18/5E668E7F" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E668E7F" Ref="JP?"  Part="1" 
AR Path="/5F8D42C2/5E668E7F" Ref="JP1901"  Part="1" 
F 0 "JP1901" H 2500 5450 39  0000 C CNN
F 1 "jumper" H 2500 5550 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2400 5680 50  0001 C CNN
F 3 "~" H 2500 5780 50  0001 C CNN
F 4 "jumper smd bridge using tin" H -800 100 50  0001 C CNN "Description"
F 5 "-" H -800 100 50  0001 C CNN "PartNumber"
F 6 "-" H -800 100 50  0001 C CNN "digikey"
F 7 "0" H -800 100 50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "" H 0   0   50  0001 C CNN "bom_2"
	1    2500 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5700 2600 5700
Wire Wire Line
	2700 5700 2800 5700
Connection ~ 2700 5700
Wire Wire Line
	3000 5700 3100 5700
Wire Wire Line
	2400 5700 2300 5700
$Comp
L servo:jumper JP?
U 1 1 5E69BAAE
P 13850 5700
AR Path="/5DD76B18/5E69BAAE" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E69BAAE" Ref="JP?"  Part="1" 
AR Path="/5F8D42C2/5E69BAAE" Ref="JP1903"  Part="1" 
F 0 "JP1903" H 13850 5539 39  0000 C CNN
F 1 "jumper" H 13850 5614 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 13750 5680 50  0001 C CNN
F 3 "~" H 13850 5780 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 10550 100 50  0001 C CNN "Description"
F 5 "-" H 10550 100 50  0001 C CNN "PartNumber"
F 6 "-" H 10550 100 50  0001 C CNN "digikey"
F 7 "0" H 10550 100 50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "" H 0   0   50  0001 C CNN "bom_2"
	1    13850 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	13650 5700 13750 5700
Wire Wire Line
	13950 5700 14050 5700
$Comp
L servo:jumper JP?
U 1 1 5E6BF75A
P 14250 5700
AR Path="/5DD76B18/5E6BF75A" Ref="JP?"  Part="1" 
AR Path="/5DC4A59D/5E6BF75A" Ref="JP?"  Part="1" 
AR Path="/5F8D42C2/5E6BF75A" Ref="JP1904"  Part="1" 
F 0 "JP1904" H 14250 5785 39  0000 C CNN
F 1 "jumper" H 14250 5860 39  0000 C CNN
F 2 "servo:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 14150 5680 50  0001 C CNN
F 3 "~" H 14250 5780 50  0001 C CNN
F 4 "jumper smd bridge using tin" H 10950 100 50  0001 C CNN "Description"
F 5 "-" H 10950 100 50  0001 C CNN "PartNumber"
F 6 "-" H 10950 100 50  0001 C CNN "digikey"
F 7 "0" H 10950 100 50  0001 C CNN "price@10"
F 8 "" H 0   0   50  0001 C CNN "bom_1"
F 9 "" H 0   0   50  0001 C CNN "bom_2"
	1    14250 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	14050 5700 14150 5700
Connection ~ 14050 5700
Wire Wire Line
	14350 5700 14450 5700
Wire Wire Line
	5500 5350 5350 5350
Wire Wire Line
	5350 5350 5350 5450
Connection ~ 5350 5450
Wire Wire Line
	11250 5350 11400 5350
Wire Wire Line
	11400 5350 11400 5450
Connection ~ 11400 5450
Wire Wire Line
	4300 4650 4350 4650
Wire Wire Line
	4350 4650 4350 4750
Connection ~ 4350 4750
Wire Wire Line
	2900 4250 2850 4250
Wire Wire Line
	2850 4250 2850 4150
Connection ~ 2850 4150
Wire Wire Line
	2850 4150 2750 4150
Text Notes 2600 4250 0    20   ~ 0
free to use\n
Text Notes 4450 4250 0    20   ~ 0
free to use\n
Text Notes 4400 4700 0    20   ~ 0
free to use\n
Text Notes 2650 4700 0    20   ~ 0
free to use\n
Text Notes 12100 4650 0    20   ~ 0
free to use\n
Wire Wire Line
	12450 4650 12400 4650
Wire Wire Line
	12400 4650 12400 4750
Connection ~ 12400 4750
Text Notes 14000 4650 0    20   ~ 0
free to use\n
Text Notes 14000 4250 0    20   ~ 0
free to use\n
Text Notes 12200 4250 0    20   ~ 0
free to use\n
Wire Wire Line
	13850 4250 13900 4250
Wire Wire Line
	13900 4250 13900 4150
Connection ~ 13900 4150
Wire Wire Line
	13900 4150 14000 4150
Wire Wire Line
	11250 5250 11350 5250
Wire Wire Line
	11350 5250 11350 3150
Connection ~ 11350 3150
Wire Wire Line
	11350 3150 10400 3150
Wire Wire Line
	5500 5250 5400 5250
Wire Wire Line
	5400 5250 5400 3150
Connection ~ 5400 3150
Wire Wire Line
	5400 3150 6350 3150
$EndSCHEMATC
