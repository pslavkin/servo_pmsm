EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 8 20
Title "Igbt interface"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5950 950  0    197  ~ 39
PWM OUT -> ISOLATOR -> BUFFER -> FILTER\n
Text Notes 8650 1600 0    39   ~ 0
these pins has isolation and a buffer. They could be directly connected\n to a IGBT module for test porpouses or to a power board and another\n isolation stage for production porpouses to have a reinforced isolation.\n In next stages of the development of the board, the buffers could be\n eliminated, but not the isolation Scmith trigger stage\n\nI left other multiporpouse IN/OUT using the free \npins on isolators
$Comp
L servo:3V3 #PWR0801
U 1 1 5E60CB33
P 2250 1900
F 0 "#PWR0801" H 2255 2107 20  0001 C CNN
F 1 "3V3" H 2255 2057 28  0000 C CNN
F 2 "" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2000 2250 1900
$Comp
L servo:SI8660BD U801
U 1 1 5E60CB3A
P 3050 2300
F 0 "U801" H 3050 2889 60  0000 C CNN
F 1 "SI8660BD" H 3050 2783 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 2450 2600 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2950 2900 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8660BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 336-4786-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2100 1950 2100
Wire Wire Line
	1950 2200 2350 2200
Wire Wire Line
	2350 2300 1950 2300
Wire Wire Line
	1950 2400 2350 2400
Wire Wire Line
	2350 2500 1950 2500
Wire Wire Line
	1950 2600 2350 2600
Wire Wire Line
	2350 3450 1950 3450
Wire Wire Line
	1950 3550 2350 3550
Wire Wire Line
	2350 2000 2250 2000
Wire Wire Line
	2350 2700 2250 2700
$Comp
L servo:GND #PWR0802
U 1 1 5E60CB4B
P 2250 4100
F 0 "#PWR0802" H 2250 3850 30  0001 C CNN
F 1 "GND" H 2250 3942 30  0000 C CNN
F 2 "" H 2250 4100 50  0001 C CNN
F 3 "" H 2250 4100 50  0001 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4050 2250 4050
Wire Wire Line
	2250 4050 2250 4100
Wire Wire Line
	3850 2000 3750 2000
Wire Wire Line
	3850 3350 3750 3350
Wire Wire Line
	3750 4050 3950 4050
Wire Wire Line
	4150 2100 4150 1850
Wire Wire Line
	3750 2100 4150 2100
Wire Wire Line
	3750 2200 4250 2200
Wire Wire Line
	4150 2500 4150 2750
Wire Wire Line
	4150 2750 4450 2750
Wire Wire Line
	3750 2500 4150 2500
Wire Wire Line
	4050 2600 4050 2950
Wire Wire Line
	4050 2950 4450 2950
Wire Wire Line
	3750 2600 4050 2600
Wire Wire Line
	4100 3450 4100 3200
Wire Wire Line
	4100 3200 4450 3200
Wire Wire Line
	4200 3550 4200 3400
Wire Wire Line
	4200 3400 4450 3400
Wire Wire Line
	3750 3550 4200 3550
Wire Wire Line
	3750 3650 4450 3650
Wire Wire Line
	3750 3750 4250 3750
Wire Wire Line
	4250 3750 4250 3850
Wire Wire Line
	4250 3850 4450 3850
Wire Wire Line
	3750 3850 4150 3850
Wire Wire Line
	4150 3850 4150 4100
Wire Wire Line
	3750 3950 4050 3950
Wire Wire Line
	4050 3950 4050 4300
Wire Wire Line
	5200 2300 5550 2300
Wire Wire Line
	5550 2300 5550 2700
Wire Wire Line
	5200 2500 5450 2500
Wire Wire Line
	5450 2500 5450 2800
Wire Wire Line
	5200 2750 5400 2750
Wire Wire Line
	5400 2750 5400 2900
Wire Wire Line
	5200 2950 5350 2950
Wire Wire Line
	5350 2950 5350 3000
Wire Wire Line
	5200 3200 5350 3200
Wire Wire Line
	5350 3200 5350 3100
Wire Wire Line
	5200 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3200
Wire Wire Line
	5200 3650 5550 3650
Wire Wire Line
	5550 3650 5550 3300
Wire Wire Line
	5200 3850 5650 3850
Wire Wire Line
	5650 3850 5650 3400
Wire Wire Line
	5750 4100 5750 3500
Wire Wire Line
	3750 3450 4100 3450
Wire Wire Line
	5300 1950 5200 1950
Wire Wire Line
	5200 2400 5300 2400
Connection ~ 5300 2400
Wire Wire Line
	5300 2400 5300 1950
Wire Wire Line
	5200 2850 5300 2850
Connection ~ 5300 2850
Wire Wire Line
	5300 2850 5300 2400
Wire Wire Line
	5200 3300 5300 3300
Connection ~ 5300 3300
Wire Wire Line
	5300 3300 5300 2850
Wire Wire Line
	5200 3750 5300 3750
Wire Wire Line
	5300 3750 5300 3300
Wire Wire Line
	4400 1950 4450 1950
Wire Wire Line
	4450 2400 4400 2400
Connection ~ 4400 2400
Wire Wire Line
	4400 2400 4400 1950
Wire Wire Line
	4450 2850 4400 2850
Connection ~ 4400 2850
Wire Wire Line
	4400 2850 4400 2400
Wire Wire Line
	4450 3300 4400 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4400 2850
Wire Wire Line
	4450 3750 4400 3750
Connection ~ 4400 3750
Wire Wire Line
	4400 3750 4400 3300
Wire Wire Line
	3850 1550 3850 2000
Wire Wire Line
	5750 2500 6500 2500
Wire Wire Line
	5650 2600 6500 2600
Wire Wire Line
	5550 2700 6500 2700
Wire Wire Line
	6500 2800 5450 2800
Wire Wire Line
	5400 2900 6500 2900
Wire Wire Line
	6500 3000 5350 3000
Wire Wire Line
	5350 3100 6500 3100
Wire Wire Line
	6500 3200 5450 3200
Wire Wire Line
	5550 3300 6500 3300
Wire Wire Line
	5650 3400 6500 3400
Wire Wire Line
	5750 3500 6400 3500
Text Notes 2700 4300 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Wire Wire Line
	3850 3350 3850 2000
Connection ~ 3850 2000
Wire Wire Line
	3750 2700 3950 2700
Wire Wire Line
	3950 2700 3950 4050
Connection ~ 3950 4050
Wire Wire Line
	3950 4500 4400 4500
Wire Wire Line
	3950 4050 3950 4500
Connection ~ 4400 4500
Wire Wire Line
	2150 3350 2150 2000
Wire Wire Line
	2150 2000 2250 2000
Connection ~ 2250 2000
Wire Wire Line
	2150 3350 2350 3350
Wire Wire Line
	2250 2700 2250 4050
Connection ~ 2250 4050
Text Notes 2700 2900 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Wire Wire Line
	2350 3650 1950 3650
Wire Wire Line
	2350 3750 1950 3750
Wire Wire Line
	1950 3850 2350 3850
Wire Wire Line
	2350 3950 1950 3950
Text Notes 950  4150 0    20   ~ 0
Free to other uses. If oyu choose another version of these IC that has\n some pins reverted to input, you could use these as an isolated general\n input also, just remember to bridge the output buffer or reverse it also
Wire Wire Line
	4050 4300 5850 4300
Wire Wire Line
	4150 4100 5750 4100
Wire Wire Line
	4400 3750 4400 4500
$Comp
L servo:SI8662BD U802
U 1 1 5E60CBD7
P 3050 3650
F 0 "U802" H 3050 4239 60  0000 C CNN
F 1 "SI8662BD" H 3050 4133 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 2450 3950 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2950 4250 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width)" H 0   0   50  0001 C CNN "Description"
F 5 "SI8662BD-B-IS" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-2125-5-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    3050 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U807
U 1 1 5E60CBE0
P 4950 3850
F 0 "U807" H 4450 3800 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 5150 3800 20  0001 L BNN
F 2 "servo:SOT-23-6" H 4450 4050 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4650 4300 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4950 3850
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U806
U 1 1 5E60CBE7
P 4950 3400
F 0 "U806" H 4450 3350 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 5150 3350 20  0001 L BNN
F 2 "servo:SOT-23-6" H 4450 3600 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4650 3850 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4950 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U805
U 1 1 5E60CBEE
P 4950 2950
F 0 "U805" H 4350 2850 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 5150 2900 20  0001 L BNN
F 2 "servo:SOT-23-6" H 4450 3150 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4650 3400 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4950 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U804
U 1 1 5E60CBF5
P 4950 2500
F 0 "U804" H 4450 2450 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4825 2852 20  0001 C CNN
F 2 "servo:SOT-23-6" H 4450 2700 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4650 2950 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4950 2500
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R801
U 1 1 5E624A2C
P 6700 2500
F 0 "R801" H 6550 2550 20  0000 L BNN
F 1 "22" H 6800 2550 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2400 60  0001 C CNN
F 3 "" H 6300 2500 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 6200 3600
Wire Wire Line
	5850 3600 5850 4300
$Comp
L servo:Capacitor C801
U 1 1 5E66DFDC
P 6200 3900
F 0 "C801" V 6200 3950 20  0000 L BNN
F 1 "100pF" V 6300 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 6200 3800 60  0001 C CNN
F 3 "" H 6200 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6200 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C802
U 1 1 5E69E510
P 6400 3900
F 0 "C802" V 6400 3950 20  0000 L BNN
F 1 "100pF" V 6500 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 6400 3800 60  0001 C CNN
F 3 "" H 6400 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6400 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C803
U 1 1 5E69E5CE
P 7050 3900
F 0 "C803" V 7050 3950 20  0000 L BNN
F 1 "100pF" V 7150 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7050 3800 60  0001 C CNN
F 3 "" H 7050 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7050 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C804
U 1 1 5E69E64E
P 7250 3900
F 0 "C804" V 7250 3950 20  0000 L BNN
F 1 "100pF" V 7350 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7250 3800 60  0001 C CNN
F 3 "" H 7250 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7250 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C805
U 1 1 5E69E6C2
P 7450 3900
F 0 "C805" V 7450 3950 20  0000 L BNN
F 1 "100pF" V 7550 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7450 3800 60  0001 C CNN
F 3 "" H 7450 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7450 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C806
U 1 1 5E69E730
P 7650 3900
F 0 "C806" V 7650 3950 20  0000 L BNN
F 1 "100pF" V 7750 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7650 3800 60  0001 C CNN
F 3 "" H 7650 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C808
U 1 1 5E69E7A0
P 7850 3900
F 0 "C808" V 7850 3950 20  0000 L BNN
F 1 "100pF" V 7950 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7850 3800 60  0001 C CNN
F 3 "" H 7850 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7850 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C810
U 1 1 5E69E9BD
P 8050 3900
F 0 "C810" V 8050 3950 20  0000 L BNN
F 1 "100pF" V 8150 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8050 3800 60  0001 C CNN
F 3 "" H 8050 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8050 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C812
U 1 1 5E69EA31
P 8250 3900
F 0 "C812" V 8250 3950 20  0000 L BNN
F 1 "100pF" V 8350 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8250 3800 60  0001 C CNN
F 3 "" H 8250 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8250 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C814
U 1 1 5E69EAB3
P 8450 3900
F 0 "C814" V 8450 3950 20  0000 L BNN
F 1 "100pF" V 8550 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8450 3800 60  0001 C CNN
F 3 "" H 8450 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8450 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C816
U 1 1 5E69EB2B
P 8650 3900
F 0 "C816" V 8650 3950 20  0000 L BNN
F 1 "100pF" V 8750 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8650 3800 60  0001 C CNN
F 3 "" H 8650 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8650 3900
	0    1    1    0   
$EndComp
$Comp
L servo:Capacitor C818
U 1 1 5E69EBA5
P 8850 3900
F 0 "C818" V 8850 3950 20  0000 L BNN
F 1 "100pF" V 8950 3950 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8850 3800 60  0001 C CNN
F 3 "" H 8850 3900 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8850 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3800 6200 3600
Connection ~ 6200 3600
Wire Wire Line
	6200 3600 6500 3600
Wire Wire Line
	6400 3800 6400 3500
Connection ~ 6400 3500
Wire Wire Line
	6400 3500 6500 3500
Wire Wire Line
	7050 3800 7050 3400
Wire Wire Line
	6900 3300 7250 3300
Wire Wire Line
	7250 3300 7250 3800
Wire Wire Line
	6900 3200 7450 3200
Wire Wire Line
	7450 3200 7450 3800
Wire Wire Line
	6900 3100 7650 3100
Wire Wire Line
	7650 3100 7650 3800
Wire Wire Line
	6900 3000 7850 3000
Wire Wire Line
	7850 3000 7850 3800
Wire Wire Line
	6900 2900 8050 2900
Wire Wire Line
	8050 2900 8050 3800
Wire Wire Line
	6900 2800 8250 2800
Wire Wire Line
	8250 2800 8250 3800
Wire Wire Line
	6900 2700 8450 2700
Wire Wire Line
	8450 2700 8450 3800
Wire Wire Line
	6900 2600 8650 2600
Wire Wire Line
	8650 2600 8650 3800
Wire Wire Line
	6900 2500 8850 2500
Wire Wire Line
	8850 2500 8850 3800
Wire Wire Line
	8650 2600 9900 2600
Connection ~ 8650 2600
Wire Wire Line
	9900 2700 8450 2700
Connection ~ 8450 2700
Wire Wire Line
	8250 2800 9900 2800
Connection ~ 8250 2800
Wire Wire Line
	9900 2900 8050 2900
Connection ~ 8050 2900
Wire Wire Line
	7850 3000 9900 3000
Connection ~ 7850 3000
Connection ~ 7650 3100
Wire Wire Line
	7450 3200 9900 3200
Connection ~ 7450 3200
Wire Wire Line
	7650 3100 9900 3100
Wire Wire Line
	9900 3300 7250 3300
Connection ~ 7250 3300
Connection ~ 7050 3400
Wire Wire Line
	6900 3500 9900 3500
Wire Wire Line
	6900 3600 9900 3600
Wire Wire Line
	4400 4500 6200 4500
Wire Wire Line
	6200 4100 6200 4500
Connection ~ 6200 4500
Wire Wire Line
	6200 4500 6400 4500
Wire Wire Line
	6400 4100 6400 4500
Wire Wire Line
	7050 4100 7050 4500
Wire Wire Line
	7250 4100 7250 4500
Wire Wire Line
	7450 4100 7450 4500
Wire Wire Line
	7650 4100 7650 4500
Wire Wire Line
	7850 4100 7850 4500
Wire Wire Line
	8050 4100 8050 4500
Wire Wire Line
	8250 4100 8250 4500
Wire Wire Line
	8450 4100 8450 4500
Wire Wire Line
	8650 4100 8650 4500
Wire Wire Line
	8850 4100 8850 4500
Wire Wire Line
	8850 2500 9900 2500
Connection ~ 8850 2500
Connection ~ 6400 4500
Wire Wire Line
	6400 4500 7050 4500
Connection ~ 7050 4500
Wire Wire Line
	7050 4500 7250 4500
Connection ~ 7250 4500
Wire Wire Line
	7250 4500 7450 4500
Connection ~ 7450 4500
Wire Wire Line
	7450 4500 7650 4500
Connection ~ 7650 4500
Wire Wire Line
	7650 4500 7850 4500
Connection ~ 7850 4500
Wire Wire Line
	7850 4500 8050 4500
Connection ~ 8050 4500
Wire Wire Line
	8050 4500 8250 4500
Connection ~ 8250 4500
Wire Wire Line
	8250 4500 8450 4500
Connection ~ 8450 4500
Wire Wire Line
	8450 4500 8650 4500
Connection ~ 8650 4500
Wire Wire Line
	8650 4500 8850 4500
$Comp
L servo:3V3 #PWR0807
U 1 1 5ED182E0
P 14250 5550
F 0 "#PWR0807" H 14255 5757 20  0001 C CNN
F 1 "3V3" H 14255 5707 28  0000 C CNN
F 2 "" H 14250 5550 50  0001 C CNN
F 3 "" H 14250 5550 50  0001 C CNN
	1    14250 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14250 5650 14250 5550
$Comp
L servo:SI8660BD U813
U 1 1 5ED182E7
P 13450 5950
F 0 "U813" H 13450 6539 60  0000 C CNN
F 1 "SI8660BD" H 13450 6433 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 12850 6250 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 13350 6550 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width) " H 0   0   50  0001 C CNN "Description"
F 5 "SI8660BD-B-ISR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 336-4786-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13450 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14150 5750 14550 5750
Wire Wire Line
	14550 5850 14150 5850
Wire Wire Line
	14150 5950 14550 5950
Wire Wire Line
	14550 6050 14150 6050
Wire Wire Line
	14150 6150 14550 6150
Wire Wire Line
	14550 6250 14150 6250
Wire Wire Line
	14150 7100 14550 7100
Wire Wire Line
	14550 7200 14150 7200
Wire Wire Line
	14150 5650 14250 5650
Wire Wire Line
	14150 6350 14250 6350
$Comp
L servo:GND #PWR0808
U 1 1 5ED182F8
P 14250 7750
F 0 "#PWR0808" H 14250 7500 30  0001 C CNN
F 1 "GND" H 14250 7592 30  0000 C CNN
F 2 "" H 14250 7750 50  0001 C CNN
F 3 "" H 14250 7750 50  0001 C CNN
	1    14250 7750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	14150 7700 14250 7700
Wire Wire Line
	14250 7700 14250 7750
Wire Wire Line
	12650 5650 12750 5650
Wire Wire Line
	12650 7000 12750 7000
Wire Wire Line
	12750 7700 12550 7700
Wire Wire Line
	12350 5750 12350 5500
Wire Wire Line
	12350 5500 12050 5500
Wire Wire Line
	12750 5750 12350 5750
Wire Wire Line
	12250 5850 12250 5700
Wire Wire Line
	12250 5700 12050 5700
Wire Wire Line
	12750 5850 12250 5850
Wire Wire Line
	12750 5950 12050 5950
Wire Wire Line
	12250 6050 12250 6150
Wire Wire Line
	12250 6150 12050 6150
Wire Wire Line
	12750 6050 12250 6050
Wire Wire Line
	12350 6150 12350 6400
Wire Wire Line
	12350 6400 12050 6400
Wire Wire Line
	12750 6150 12350 6150
Wire Wire Line
	12450 6250 12450 6600
Wire Wire Line
	12450 6600 12050 6600
Wire Wire Line
	12750 6250 12450 6250
Wire Wire Line
	12400 7100 12400 6850
Wire Wire Line
	12400 6850 12050 6850
Wire Wire Line
	12300 7200 12300 7050
Wire Wire Line
	12300 7050 12050 7050
Wire Wire Line
	12750 7200 12300 7200
Wire Wire Line
	12750 7300 12050 7300
Wire Wire Line
	12750 7400 12250 7400
Wire Wire Line
	12250 7400 12250 7500
Wire Wire Line
	12250 7500 12050 7500
Wire Wire Line
	12750 7500 12350 7500
Wire Wire Line
	12350 7500 12350 7750
Wire Wire Line
	12750 7600 12450 7600
Wire Wire Line
	12450 7600 12450 7950
Wire Wire Line
	10750 5500 10750 6150
Wire Wire Line
	11300 5700 10850 5700
Wire Wire Line
	10850 5700 10850 6250
Wire Wire Line
	11300 5950 10950 5950
Wire Wire Line
	10950 5950 10950 6350
Wire Wire Line
	11300 6150 11050 6150
Wire Wire Line
	11050 6150 11050 6450
Wire Wire Line
	11300 6400 11100 6400
Wire Wire Line
	11100 6400 11100 6550
Wire Wire Line
	11300 6600 11150 6600
Wire Wire Line
	11150 6600 11150 6650
Wire Wire Line
	11300 6850 11150 6850
Wire Wire Line
	11150 6850 11150 6750
Wire Wire Line
	11300 7050 11050 7050
Wire Wire Line
	11050 7050 11050 6850
Wire Wire Line
	11300 7300 10950 7300
Wire Wire Line
	10950 7300 10950 6950
Wire Wire Line
	11300 7500 10850 7500
Wire Wire Line
	10850 7500 10850 7050
Wire Wire Line
	10750 7750 10750 7150
Wire Wire Line
	12750 7100 12400 7100
Wire Wire Line
	11200 5600 11300 5600
Wire Wire Line
	11300 6050 11200 6050
Connection ~ 11200 6050
Wire Wire Line
	11200 6050 11200 5600
Wire Wire Line
	11300 6500 11200 6500
Connection ~ 11200 6500
Wire Wire Line
	11200 6500 11200 6050
Wire Wire Line
	11300 6950 11200 6950
Connection ~ 11200 6950
Wire Wire Line
	11200 6950 11200 6500
Wire Wire Line
	11300 7400 11200 7400
Wire Wire Line
	11200 7400 11200 6950
Wire Wire Line
	12100 5600 12050 5600
Wire Wire Line
	12050 6050 12100 6050
Connection ~ 12100 6050
Wire Wire Line
	12100 6050 12100 5600
Wire Wire Line
	12050 6500 12100 6500
Connection ~ 12100 6500
Wire Wire Line
	12100 6500 12100 6050
Wire Wire Line
	12050 6950 12100 6950
Connection ~ 12100 6950
Wire Wire Line
	12100 6950 12100 6500
Wire Wire Line
	12050 7400 12100 7400
Connection ~ 12100 7400
Wire Wire Line
	12100 7400 12100 6950
Connection ~ 11200 5600
Wire Wire Line
	12650 5300 12650 5650
Wire Wire Line
	10850 6250 10000 6250
Wire Wire Line
	10950 6350 10000 6350
Wire Wire Line
	10000 6450 11050 6450
Wire Wire Line
	11100 6550 10000 6550
Wire Wire Line
	10000 6650 11150 6650
Wire Wire Line
	11150 6750 10000 6750
Wire Wire Line
	10000 6850 11050 6850
Wire Wire Line
	10950 6950 10000 6950
Wire Wire Line
	10850 7050 10000 7050
Wire Wire Line
	10750 7150 10100 7150
Text Notes 13800 7950 2    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Wire Wire Line
	12650 7000 12650 5650
Connection ~ 12650 5650
Wire Wire Line
	12750 6350 12550 6350
Wire Wire Line
	12550 6350 12550 7700
Connection ~ 12550 7700
Wire Wire Line
	12550 8150 12100 8150
Wire Wire Line
	12550 7700 12550 8150
Connection ~ 12100 8150
Wire Wire Line
	14350 7000 14350 5650
Wire Wire Line
	14350 5650 14250 5650
Connection ~ 14250 5650
Wire Wire Line
	14350 7000 14150 7000
Wire Wire Line
	14250 6350 14250 7700
Connection ~ 14250 7700
Text Notes 13800 6550 2    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Wire Wire Line
	14150 7300 14550 7300
Wire Wire Line
	14150 7400 14550 7400
Wire Wire Line
	14550 7500 14150 7500
Wire Wire Line
	14150 7600 14550 7600
Text Notes 15550 7800 2    20   ~ 0
Free to other uses. If oyu choose another version of these IC that has\n some pins reverted to input, you could use these as an isolated general\n input also, just remember to bridge the output buffer or reverse it also
Wire Wire Line
	12450 7950 10650 7950
Wire Wire Line
	12350 7750 10750 7750
Wire Wire Line
	12100 7400 12100 8150
$Comp
L servo:SI8662BD U814
U 1 1 5ED18383
P 13450 7300
F 0 "U814" H 13450 7889 60  0000 C CNN
F 1 "SI8662BD" H 13450 7783 60  0000 C CNN
F 2 "servo:SOIC-16W_7.5x10.3mm_P1.27mm" H 12850 7600 60  0001 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 13350 7900 60  0001 C CNN
F 4 "General Purpose Digital Isolator 5000Vrms 6 Channel 150Mbps 35kV/µs CMTI 16-SOIC (0.295\", 7.50mm Width)" H 0   0   50  0001 C CNN "Description"
F 5 "SI8662BD-B-IS" H 0   0   50  0001 C CNN "PartNumber"
F 6 "336-2125-5-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "2.75000" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    13450 7300
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U812
U 1 1 5ED1838C
P 11550 7500
F 0 "U812" H 11800 7400 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 11750 7450 20  0000 L BNN
F 2 "servo:SOT-23-6" H 11050 7700 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 11250 7950 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 7500
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U811
U 1 1 5ED18393
P 11550 7050
F 0 "U811" H 11750 6950 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 11750 7000 20  0000 L BNN
F 2 "servo:SOT-23-6" H 11050 7250 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 11250 7500 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 7050
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U810
U 1 1 5ED1839A
P 11550 6600
F 0 "U810" H 11750 6500 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 11750 6550 20  0000 L BNN
F 2 "servo:SOT-23-6" H 11050 6800 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 11250 7050 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 6600
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U809
U 1 1 5ED183A1
P 11550 6150
F 0 "U809" H 11750 6050 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 11750 6100 20  0000 L BNN
F 2 "servo:SOT-23-6" H 11050 6350 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 11250 6600 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 6150
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U808
U 1 1 5ED183A8
P 11550 5700
F 0 "U808" H 11750 5600 39  0000 L BNN
F 1 "SN74LVC2G17DBVR" H 11750 5650 20  0000 L BNN
F 2 "servo:SOT-23-6" H 11050 5900 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 11250 6150 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    11550 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10650 7250 10300 7250
Wire Wire Line
	10650 7250 10650 7950
$Comp
L servo:Capacitor C824
U 1 1 5ED18405
P 10300 7550
F 0 "C824" V 10300 7600 20  0000 L BNN
F 1 "100pF" V 10400 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 10300 7450 60  0001 C CNN
F 3 "" H 10300 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10300 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C823
U 1 1 5ED1840C
P 10100 7550
F 0 "C823" V 10100 7600 20  0000 L BNN
F 1 "100pF" V 10200 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 10100 7450 60  0001 C CNN
F 3 "" H 10100 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10100 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C822
U 1 1 5ED18413
P 9450 7550
F 0 "C822" V 9450 7600 20  0000 L BNN
F 1 "100pF" V 9550 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 9450 7450 60  0001 C CNN
F 3 "" H 9450 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9450 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C821
U 1 1 5ED1841A
P 9250 7550
F 0 "C821" V 9250 7600 20  0000 L BNN
F 1 "100pF" V 9350 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 9250 7450 60  0001 C CNN
F 3 "" H 9250 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9250 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C820
U 1 1 5ED18421
P 9050 7550
F 0 "C820" V 9050 7600 20  0000 L BNN
F 1 "100pF" V 9150 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 9050 7450 60  0001 C CNN
F 3 "" H 9050 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9050 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C819
U 1 1 5ED18428
P 8850 7550
F 0 "C819" V 8850 7600 20  0000 L BNN
F 1 "100pF" V 8950 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8850 7450 60  0001 C CNN
F 3 "" H 8850 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8850 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C817
U 1 1 5ED1842F
P 8650 7550
F 0 "C817" V 8650 7600 20  0000 L BNN
F 1 "100pF" V 8750 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8650 7450 60  0001 C CNN
F 3 "" H 8650 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8650 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C815
U 1 1 5ED18436
P 8450 7550
F 0 "C815" V 8450 7600 20  0000 L BNN
F 1 "100pF" V 8550 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8450 7450 60  0001 C CNN
F 3 "" H 8450 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8450 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C813
U 1 1 5ED1843D
P 8250 7550
F 0 "C813" V 8250 7600 20  0000 L BNN
F 1 "100pF" V 8350 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8250 7450 60  0001 C CNN
F 3 "" H 8250 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8250 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C811
U 1 1 5ED18444
P 8050 7550
F 0 "C811" V 8050 7600 20  0000 L BNN
F 1 "100pF" V 8150 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 8050 7450 60  0001 C CNN
F 3 "" H 8050 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8050 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C809
U 1 1 5ED1844B
P 7850 7550
F 0 "C809" V 7850 7600 20  0000 L BNN
F 1 "100pF" V 7950 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7850 7450 60  0001 C CNN
F 3 "" H 7850 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7850 7550
	0    -1   1    0   
$EndComp
$Comp
L servo:Capacitor C807
U 1 1 5ED18452
P 7650 7550
F 0 "C807" V 7650 7600 20  0000 L BNN
F 1 "100pF" V 7750 7600 20  0000 C CNN
F 2 "servo:C_0603_1608Metric" H 7650 7450 60  0001 C CNN
F 3 "" H 7650 7550 60  0000 C CNN
F 4 "CAP CER 100PF 10V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "885012206003" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 732-7922-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7650 7550
	0    -1   1    0   
$EndComp
Wire Wire Line
	10300 7450 10300 7250
Connection ~ 10300 7250
Wire Wire Line
	10300 7250 10000 7250
Wire Wire Line
	10100 7450 10100 7150
Connection ~ 10100 7150
Wire Wire Line
	10100 7150 10000 7150
Wire Wire Line
	9450 7450 9450 7050
Wire Wire Line
	9450 7050 9600 7050
Wire Wire Line
	9600 6950 9250 6950
Wire Wire Line
	9250 6950 9250 7450
Wire Wire Line
	9600 6850 9050 6850
Wire Wire Line
	9050 6850 9050 7450
Wire Wire Line
	9600 6750 8850 6750
Wire Wire Line
	8850 6750 8850 7450
Wire Wire Line
	9600 6650 8650 6650
Wire Wire Line
	8650 6650 8650 7450
Wire Wire Line
	9600 6550 8450 6550
Wire Wire Line
	8450 6550 8450 7450
Wire Wire Line
	9600 6450 8250 6450
Wire Wire Line
	8250 6450 8250 7450
Wire Wire Line
	9600 6350 8050 6350
Wire Wire Line
	8050 6350 8050 7450
Wire Wire Line
	9600 6250 7850 6250
Wire Wire Line
	7850 6250 7850 7450
Wire Wire Line
	9600 6150 7650 6150
Wire Wire Line
	7650 6150 7650 7450
Wire Wire Line
	7850 6250 6750 6250
Connection ~ 7850 6250
Wire Wire Line
	6750 6350 8050 6350
Connection ~ 8050 6350
Wire Wire Line
	8250 6450 6750 6450
Connection ~ 8250 6450
Wire Wire Line
	6750 6550 8450 6550
Connection ~ 8450 6550
Wire Wire Line
	8650 6650 6750 6650
Connection ~ 8650 6650
Connection ~ 8850 6750
Wire Wire Line
	9050 6850 6750 6850
Connection ~ 9050 6850
Wire Wire Line
	8850 6750 6750 6750
Wire Wire Line
	6750 6950 9250 6950
Connection ~ 9250 6950
Wire Wire Line
	9450 7050 6750 7050
Connection ~ 9450 7050
Wire Wire Line
	9600 7150 6750 7150
Wire Wire Line
	9600 7250 6750 7250
Wire Wire Line
	12100 8150 10300 8150
Wire Wire Line
	10300 7750 10300 8150
Connection ~ 10300 8150
Wire Wire Line
	10300 8150 10100 8150
Wire Wire Line
	10100 7750 10100 8150
Wire Wire Line
	9450 7750 9450 8150
Wire Wire Line
	9250 7750 9250 8150
Wire Wire Line
	9050 7750 9050 8150
Wire Wire Line
	8850 7750 8850 8150
Wire Wire Line
	8650 7750 8650 8150
Wire Wire Line
	8450 7750 8450 8150
Wire Wire Line
	8250 7750 8250 8150
Wire Wire Line
	8050 7750 8050 8150
Wire Wire Line
	7850 7750 7850 8150
Wire Wire Line
	7650 7750 7650 8150
Wire Wire Line
	7650 6150 6750 6150
Connection ~ 7650 6150
Connection ~ 10100 8150
Wire Wire Line
	10100 8150 9450 8150
Connection ~ 9450 8150
Wire Wire Line
	9450 8150 9250 8150
Connection ~ 9250 8150
Wire Wire Line
	9250 8150 9050 8150
Connection ~ 9050 8150
Wire Wire Line
	9050 8150 8850 8150
Connection ~ 8850 8150
Wire Wire Line
	8850 8150 8650 8150
Connection ~ 8650 8150
Wire Wire Line
	8650 8150 8450 8150
Connection ~ 8450 8150
Wire Wire Line
	8450 8150 8250 8150
Connection ~ 8250 8150
Wire Wire Line
	8250 8150 8050 8150
Connection ~ 8050 8150
Wire Wire Line
	8050 8150 7850 8150
Connection ~ 7850 8150
Wire Wire Line
	7850 8150 7650 8150
Wire Wire Line
	7050 3400 6900 3400
Wire Wire Line
	7050 3400 9900 3400
$Comp
L servo:Resistor R802
U 1 1 5EFCB1E2
P 6700 2600
F 0 "R802" H 6550 2650 20  0000 L BNN
F 1 "22" H 6800 2650 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2500 60  0001 C CNN
F 3 "" H 6300 2600 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 2600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R803
U 1 1 5EFCB26E
P 6700 2700
F 0 "R803" H 6550 2750 20  0000 L BNN
F 1 "22" H 6800 2750 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2600 60  0001 C CNN
F 3 "" H 6300 2700 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R804
U 1 1 5EFCB2EC
P 6700 2800
F 0 "R804" H 6550 2850 20  0000 L BNN
F 1 "22" H 6800 2850 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2700 60  0001 C CNN
F 3 "" H 6300 2800 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 2800
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R805
U 1 1 5EFCB36C
P 6700 2900
F 0 "R805" H 6550 2950 20  0000 L BNN
F 1 "22" H 6800 2950 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2800 60  0001 C CNN
F 3 "" H 6300 2900 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 2900
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R806
U 1 1 5EFCB3F2
P 6700 3000
F 0 "R806" H 6550 3050 20  0000 L BNN
F 1 "22" H 6800 3050 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 2900 60  0001 C CNN
F 3 "" H 6300 3000 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R807
U 1 1 5EFCB476
P 6700 3100
F 0 "R807" H 6550 3150 20  0000 L BNN
F 1 "22" H 6800 3150 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3000 60  0001 C CNN
F 3 "" H 6300 3100 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3100
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R808
U 1 1 5EFCB623
P 6700 3200
F 0 "R808" H 6550 3250 20  0000 L BNN
F 1 "22" H 6800 3250 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3100 60  0001 C CNN
F 3 "" H 6300 3200 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R809
U 1 1 5EFCB6AB
P 6700 3300
F 0 "R809" H 6550 3350 20  0000 L BNN
F 1 "22" H 6800 3350 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3200 60  0001 C CNN
F 3 "" H 6300 3300 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3300
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R810
U 1 1 5EFCB735
P 6700 3400
F 0 "R810" H 6550 3450 20  0000 L BNN
F 1 "22" H 6800 3450 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3300 60  0001 C CNN
F 3 "" H 6300 3400 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3400
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R811
U 1 1 5EFCB7C1
P 6700 3500
F 0 "R811" H 6550 3550 20  0000 L BNN
F 1 "22" H 6800 3550 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3400 60  0001 C CNN
F 3 "" H 6300 3500 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R812
U 1 1 5EFCB853
P 6700 3600
F 0 "R812" H 6550 3650 20  0000 L BNN
F 1 "22" H 6800 3650 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 6200 3500 60  0001 C CNN
F 3 "" H 6300 3600 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6700 3600
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R814
U 1 1 5EFCBD63
P 9800 6250
F 0 "R814" H 9650 6300 20  0000 L BNN
F 1 "22" H 9900 6300 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6150 60  0001 C CNN
F 3 "" H 9400 6250 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R813
U 1 1 5EFCC39B
P 9800 6150
F 0 "R813" H 9650 6200 20  0000 L BNN
F 1 "22" H 9900 6200 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6050 60  0001 C CNN
F 3 "" H 9400 6150 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R815
U 1 1 5EFF091D
P 9800 6350
F 0 "R815" H 9650 6400 20  0000 L BNN
F 1 "22" H 9900 6400 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6250 60  0001 C CNN
F 3 "" H 9400 6350 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6350
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R816
U 1 1 5EFF099B
P 9800 6450
F 0 "R816" H 9650 6500 20  0000 L BNN
F 1 "22" H 9900 6500 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6350 60  0001 C CNN
F 3 "" H 9400 6450 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R817
U 1 1 5EFF0A1B
P 9800 6550
F 0 "R817" H 9650 6600 20  0000 L BNN
F 1 "22" H 9900 6600 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6450 60  0001 C CNN
F 3 "" H 9400 6550 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R818
U 1 1 5EFF0A9D
P 9800 6650
F 0 "R818" H 9650 6700 20  0000 L BNN
F 1 "22" H 9900 6700 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6550 60  0001 C CNN
F 3 "" H 9400 6650 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6650
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R819
U 1 1 5EFF0B25
P 9800 6750
F 0 "R819" H 9650 6800 20  0000 L BNN
F 1 "22" H 9900 6800 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6650 60  0001 C CNN
F 3 "" H 9400 6750 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R820
U 1 1 5EFF0BAF
P 9800 6850
F 0 "R820" H 9650 6900 20  0000 L BNN
F 1 "22" H 9900 6900 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6750 60  0001 C CNN
F 3 "" H 9400 6850 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6850
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R821
U 1 1 5EFF0C37
P 9800 6950
F 0 "R821" H 9650 7000 20  0000 L BNN
F 1 "22" H 9900 7000 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6850 60  0001 C CNN
F 3 "" H 9400 6950 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 6950
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R822
U 1 1 5EFF0CFE
P 9800 7050
F 0 "R822" H 9650 7100 20  0000 L BNN
F 1 "22" H 9900 7100 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 6950 60  0001 C CNN
F 3 "" H 9400 7050 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 7050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R823
U 1 1 5EFF0D8A
P 9800 7150
F 0 "R823" H 9650 7200 20  0000 L BNN
F 1 "22" H 9900 7200 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 7050 60  0001 C CNN
F 3 "" H 9400 7150 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 7150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R824
U 1 1 5EFF0E18
P 9800 7250
F 0 "R824" H 9650 7300 20  0000 L BNN
F 1 "22" H 9900 7300 20  0000 C CNN
F 2 "servo:R_0603_1608Metric" H 9300 7150 60  0001 C CNN
F 3 "" H 9400 7250 60  0001 C CNN
F 4 "22 Ohms ±5% 0.1W, 1/10W Chip Resistor 0603 (1608 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film " H 0   0   50  0001 C CNN "Description"
F 5 "CRGCQ0603J22R" H 0   0   50  0001 C CNN "PartNumber"
F 6 "A130081CT-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.02100" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11200 5300 11200 5600
$Comp
L servo:SN74LVC2G17DBVR U803
U 1 1 5E60CBFC
P 4950 2050
F 0 "U803" H 4450 2000 39  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 5250 2000 20  0001 C CNN
F 2 "servo:SOT-23-6" H 4450 2250 60  0001 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4650 2500 60  0001 C CNN
F 4 "Buffer, Non-Inverting 2 Element 1 Bit per Element Push-Pull Output SOT-23-6" H 0   0   50  0001 C CNN "Description"
F 5 "SN74LVC2G17DBVR" H 0   0   50  0001 C CNN "PartNumber"
F 6 " 296-SN74LVC2G17DBVRCT-ND " H 0   0   50  0001 C CNN "digikey"
F 7 "0.30200" H 0   0   50  0001 C CNN "price@10"
F 8 "0" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    4950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2400 4250 2400
Wire Wire Line
	4250 2400 4250 2500
Wire Wire Line
	4250 2500 4450 2500
Wire Wire Line
	3750 2300 4450 2300
Wire Wire Line
	5750 1850 5750 2500
Wire Wire Line
	5650 2050 5650 2600
Wire Wire Line
	5200 2050 5650 2050
Wire Wire Line
	4250 2200 4250 2050
Wire Wire Line
	4150 1850 4450 1850
Wire Wire Line
	4250 2050 4450 2050
$Comp
L servo:Capacitor C?
U 1 1 5F157327
P 14550 5300
AR Path="/5E092156/5F157327" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F157327" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F157327" Ref="C834"  Part="1" 
F 0 "C834" V 14622 5190 20  0000 R CNN
F 1 "0.1uF" V 14579 5190 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 14550 5200 60  0001 C CNN
F 3 "" H 14550 5300 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14550 5300
	0    -1   -1   0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5F15732E
P 14550 5400
AR Path="/5DCD812E/5F15732E" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5F15732E" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5F15732E" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5F15732E" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5F15732E" Ref="#PWR?"  Part="1" 
AR Path="/5DDE8C5E/5F15732E" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 14555 5251 20  0001 C CNN
F 1 "GND" H 14555 5242 30  0000 C CNN
F 2 "" H 14550 5400 70  0000 C CNN
F 3 "" H 14550 5400 70  0000 C CNN
	1    14550 5400
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0109
U 1 1 5F17931B
P 14550 5100
F 0 "#PWR0109" H 14555 5307 20  0001 C CNN
F 1 "3V3" H 14555 5257 28  0000 C CNN
F 2 "" H 14550 5100 50  0001 C CNN
F 3 "" H 14550 5100 50  0001 C CNN
	1    14550 5100
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F1795FC
P 14500 6800
AR Path="/5E092156/5F1795FC" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F1795FC" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F1795FC" Ref="C833"  Part="1" 
F 0 "C833" V 14572 6690 20  0000 R CNN
F 1 "0.1uF" V 14529 6690 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 14500 6700 60  0001 C CNN
F 3 "" H 14500 6800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    14500 6800
	0    -1   -1   0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5F179603
P 14500 6900
AR Path="/5DCD812E/5F179603" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5F179603" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5F179603" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5F179603" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5F179603" Ref="#PWR?"  Part="1" 
AR Path="/5DDE8C5E/5F179603" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 14505 6751 20  0001 C CNN
F 1 "GND" H 14505 6742 30  0000 C CNN
F 2 "" H 14500 6900 70  0000 C CNN
F 3 "" H 14500 6900 70  0000 C CNN
	1    14500 6900
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0120
U 1 1 5F179609
P 14500 6600
F 0 "#PWR0120" H 14505 6807 20  0001 C CNN
F 1 "3V3" H 14505 6757 28  0000 C CNN
F 2 "" H 14500 6600 50  0001 C CNN
F 3 "" H 14500 6600 50  0001 C CNN
	1    14500 6600
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F19B896
P 2000 1650
AR Path="/5E092156/5F19B896" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F19B896" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F19B896" Ref="C826"  Part="1" 
F 0 "C826" V 2072 1540 20  0000 R CNN
F 1 "0.1uF" V 2029 1540 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 2000 1550 60  0001 C CNN
F 3 "" H 2000 1650 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    2000 1650
	0    -1   -1   0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5F19B89D
P 2000 1750
AR Path="/5DCD812E/5F19B89D" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5F19B89D" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5F19B89D" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5F19B89D" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5F19B89D" Ref="#PWR?"  Part="1" 
AR Path="/5DDE8C5E/5F19B89D" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 2005 1601 20  0001 C CNN
F 1 "GND" H 2005 1592 30  0000 C CNN
F 2 "" H 2000 1750 70  0000 C CNN
F 3 "" H 2000 1750 70  0000 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0251
U 1 1 5F19B8A3
P 2000 1450
F 0 "#PWR0251" H 2005 1657 20  0001 C CNN
F 1 "3V3" H 2005 1607 28  0000 C CNN
F 2 "" H 2000 1450 50  0001 C CNN
F 3 "" H 2000 1450 50  0001 C CNN
	1    2000 1450
	-1   0    0    -1  
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F1BD8B6
P 1950 3100
AR Path="/5E092156/5F1BD8B6" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F1BD8B6" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F1BD8B6" Ref="C825"  Part="1" 
F 0 "C825" V 2022 2990 20  0000 R CNN
F 1 "0.1uF" V 1979 2990 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 1950 3000 60  0001 C CNN
F 3 "" H 1950 3100 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    1950 3100
	0    -1   -1   0   
$EndComp
$Comp
L servo:GND #PWR?
U 1 1 5F1BD8BD
P 1950 3200
AR Path="/5DCD812E/5F1BD8BD" Ref="#PWR?"  Part="1" 
AR Path="/5EAA846A/5F1BD8BD" Ref="#PWR?"  Part="1" 
AR Path="/5F1E3CD5/5F1BD8BD" Ref="#PWR?"  Part="1" 
AR Path="/5DD76B18/5F1BD8BD" Ref="#PWR?"  Part="1" 
AR Path="/5E72D841/5F1BD8BD" Ref="#PWR?"  Part="1" 
AR Path="/5DDE8C5E/5F1BD8BD" Ref="#PWR0252"  Part="1" 
F 0 "#PWR0252" H 1955 3051 20  0001 C CNN
F 1 "GND" H 1955 3042 30  0000 C CNN
F 2 "" H 1950 3200 70  0000 C CNN
F 3 "" H 1950 3200 70  0000 C CNN
	1    1950 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:3V3 #PWR0253
U 1 1 5F1BD8C3
P 1950 2900
F 0 "#PWR0253" H 1955 3107 20  0001 C CNN
F 1 "3V3" H 1955 3057 28  0000 C CNN
F 2 "" H 1950 2900 50  0001 C CNN
F 3 "" H 1950 2900 50  0001 C CNN
	1    1950 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 1900 6050 1950
Wire Wire Line
	6050 1600 6050 1550
$Comp
L servo:Capacitor C?
U 1 1 5F4A4CA1
P 6300 1800
AR Path="/5E092156/5F4A4CA1" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A4CA1" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A4CA1" Ref="C828"  Part="1" 
F 0 "C828" V 6400 1750 20  0000 R CNN
F 1 "0.1uF" V 6300 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6300 1700 60  0001 C CNN
F 3 "" H 6300 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6300 1800
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F4A4DD3
P 6550 1800
AR Path="/5E092156/5F4A4DD3" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A4DD3" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A4DD3" Ref="C829"  Part="1" 
F 0 "C829" V 6650 1750 20  0000 R CNN
F 1 "0.1uF" V 6550 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6550 1700 60  0001 C CNN
F 3 "" H 6550 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6550 1800
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F4A4E79
P 6800 1800
AR Path="/5E092156/5F4A4E79" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A4E79" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A4E79" Ref="C830"  Part="1" 
F 0 "C830" V 6900 1750 20  0000 R CNN
F 1 "0.1uF" V 6800 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 6800 1700 60  0001 C CNN
F 3 "" H 6800 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    6800 1800
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F4A4F21
P 7050 1800
AR Path="/5E092156/5F4A4F21" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A4F21" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A4F21" Ref="C831"  Part="1" 
F 0 "C831" V 7150 1750 20  0000 R CNN
F 1 "0.1uF" V 7050 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7050 1700 60  0001 C CNN
F 3 "" H 7050 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7050 1800
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F4A4FCB
P 7300 1800
AR Path="/5E092156/5F4A4FCB" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A4FCB" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A4FCB" Ref="C832"  Part="1" 
F 0 "C832" V 7400 1750 20  0000 R CNN
F 1 "0.1uF" V 7300 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7300 1700 60  0001 C CNN
F 3 "" H 7300 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7300 1800
	0    1    -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F4A510D
P 7550 1800
AR Path="/5E092156/5F4A510D" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F4A510D" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F4A510D" Ref="C835"  Part="1" 
F 0 "C835" V 7650 1750 20  0000 R CNN
F 1 "0.1uF" V 7550 1750 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 7550 1700 60  0001 C CNN
F 3 "" H 7550 1800 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    7550 1800
	0    1    -1   0   
$EndComp
Wire Wire Line
	6050 1550 6300 1550
Wire Wire Line
	7550 1550 7550 1600
Connection ~ 6050 1550
Wire Wire Line
	6050 1550 6050 1500
Wire Wire Line
	7300 1600 7300 1550
Connection ~ 7300 1550
Wire Wire Line
	7300 1550 7550 1550
Wire Wire Line
	7050 1600 7050 1550
Connection ~ 7050 1550
Wire Wire Line
	7050 1550 7300 1550
Wire Wire Line
	6800 1600 6800 1550
Connection ~ 6800 1550
Wire Wire Line
	6800 1550 7050 1550
Wire Wire Line
	6550 1600 6550 1550
Connection ~ 6550 1550
Wire Wire Line
	6550 1550 6800 1550
Wire Wire Line
	6300 1600 6300 1550
Connection ~ 6300 1550
Wire Wire Line
	6300 1550 6550 1550
Wire Wire Line
	6050 1950 6300 1950
Wire Wire Line
	7550 1950 7550 1900
Wire Wire Line
	7300 1900 7300 1950
Connection ~ 7300 1950
Wire Wire Line
	7300 1950 7550 1950
Wire Wire Line
	7050 1900 7050 1950
Connection ~ 7050 1950
Wire Wire Line
	7050 1950 7300 1950
Wire Wire Line
	6800 1900 6800 1950
Connection ~ 6800 1950
Wire Wire Line
	6800 1950 7050 1950
Wire Wire Line
	6550 1900 6550 1950
Connection ~ 6550 1950
Wire Wire Line
	6550 1950 6800 1950
Wire Wire Line
	6300 1900 6300 1950
Connection ~ 6300 1950
Wire Wire Line
	6300 1950 6550 1950
$Comp
L servo:Capacitor C?
U 1 1 5F66FBE0
P 10400 5550
AR Path="/5E092156/5F66FBE0" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FBE0" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FBE0" Ref="C842"  Part="1" 
F 0 "C842" V 10500 5500 20  0000 R CNN
F 1 "0.1uF" V 10400 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10400 5450 60  0001 C CNN
F 3 "" H 10400 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10400 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 5650 10400 5700
Wire Wire Line
	10400 5350 10400 5300
$Comp
L servo:Capacitor C?
U 1 1 5F66FBF5
P 10150 5550
AR Path="/5E092156/5F66FBF5" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FBF5" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FBF5" Ref="C841"  Part="1" 
F 0 "C841" V 10250 5500 20  0000 R CNN
F 1 "0.1uF" V 10150 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 10150 5450 60  0001 C CNN
F 3 "" H 10150 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    10150 5550
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F66FBFC
P 9900 5550
AR Path="/5E092156/5F66FBFC" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FBFC" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FBFC" Ref="C840"  Part="1" 
F 0 "C840" V 10000 5500 20  0000 R CNN
F 1 "0.1uF" V 9900 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9900 5450 60  0001 C CNN
F 3 "" H 9900 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9900 5550
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F66FC03
P 9650 5550
AR Path="/5E092156/5F66FC03" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FC03" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FC03" Ref="C839"  Part="1" 
F 0 "C839" V 9750 5500 20  0000 R CNN
F 1 "0.1uF" V 9650 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9650 5450 60  0001 C CNN
F 3 "" H 9650 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9650 5550
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F66FC0A
P 9400 5550
AR Path="/5E092156/5F66FC0A" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FC0A" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FC0A" Ref="C838"  Part="1" 
F 0 "C838" V 9500 5500 20  0000 R CNN
F 1 "0.1uF" V 9400 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9400 5450 60  0001 C CNN
F 3 "" H 9400 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9400 5550
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F66FC11
P 9150 5550
AR Path="/5E092156/5F66FC11" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FC11" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FC11" Ref="C837"  Part="1" 
F 0 "C837" V 9250 5500 20  0000 R CNN
F 1 "0.1uF" V 9150 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 9150 5450 60  0001 C CNN
F 3 "" H 9150 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    9150 5550
	0    -1   -1   0   
$EndComp
$Comp
L servo:Capacitor C?
U 1 1 5F66FC18
P 8900 5550
AR Path="/5E092156/5F66FC18" Ref="C?"  Part="1" 
AR Path="/5E72D841/5F66FC18" Ref="C?"  Part="1" 
AR Path="/5DDE8C5E/5F66FC18" Ref="C836"  Part="1" 
F 0 "C836" V 9000 5500 20  0000 R CNN
F 1 "0.1uF" V 8900 5500 20  0000 R CNN
F 2 "servo:C_0603_1608Metric" H 8900 5450 60  0001 C CNN
F 3 "" H 8900 5550 60  0000 C CNN
F 4 "CAP CER 0.1UF 16V X7R 0603 " H 0   0   50  0001 C CNN "Description"
F 5 "CC0603KPX7R7BB104" H 0   0   50  0001 C CNN "PartNumber"
F 6 "311-1335-1-ND" H 0   0   50  0001 C CNN "digikey"
F 7 "0.05800" H 0   0   50  0001 C CNN "price@10"
F 8 "1" H 0   0   50  0001 C CNN "bom_1"
F 9 "1" H 0   0   50  0001 C CNN "bom_2"
F 10 "1" H 0   0   50  0001 C CNN "bom_3"
	1    8900 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 5300 10150 5300
Wire Wire Line
	8900 5300 8900 5350
Connection ~ 10400 5300
Wire Wire Line
	10400 5300 10400 5250
Wire Wire Line
	9150 5350 9150 5300
Connection ~ 9150 5300
Wire Wire Line
	9150 5300 8900 5300
Wire Wire Line
	9400 5350 9400 5300
Connection ~ 9400 5300
Wire Wire Line
	9400 5300 9150 5300
Wire Wire Line
	9650 5350 9650 5300
Connection ~ 9650 5300
Wire Wire Line
	9650 5300 9400 5300
Wire Wire Line
	9900 5350 9900 5300
Connection ~ 9900 5300
Wire Wire Line
	9900 5300 9650 5300
Wire Wire Line
	10150 5350 10150 5300
Connection ~ 10150 5300
Wire Wire Line
	10150 5300 9900 5300
Wire Wire Line
	10400 5700 10150 5700
Wire Wire Line
	8900 5700 8900 5650
Wire Wire Line
	9150 5650 9150 5700
Connection ~ 9150 5700
Wire Wire Line
	9150 5700 8900 5700
Wire Wire Line
	9400 5650 9400 5700
Connection ~ 9400 5700
Wire Wire Line
	9400 5700 9150 5700
Wire Wire Line
	9650 5650 9650 5700
Connection ~ 9650 5700
Wire Wire Line
	9650 5700 9400 5700
Wire Wire Line
	9900 5650 9900 5700
Connection ~ 9900 5700
Wire Wire Line
	9900 5700 9650 5700
Wire Wire Line
	10150 5650 10150 5700
Connection ~ 10150 5700
Wire Wire Line
	10150 5700 9900 5700
Text GLabel 1950 2600 0    50   Input ~ 0
IGBT1_UH
Text GLabel 1950 2500 0    50   Input ~ 0
IGBT1_UL
Text GLabel 1950 2400 0    50   Input ~ 0
IGBT1_VH
Text GLabel 1950 2300 0    50   Input ~ 0
IGBT1_VL
Text GLabel 1950 2200 0    50   Input ~ 0
IGBT1_WH
Text GLabel 1950 2100 0    50   Input ~ 0
IGBT1_WL
Text GLabel 1950 3750 0    50   Input ~ 0
BRK_RES1
Text GLabel 1950 3450 0    50   Input ~ 0
FREE_OUT1_2
Text GLabel 1950 3950 0    50   Input ~ 0
FAN_RPM1
Text GLabel 1950 3650 0    50   Input ~ 0
BRK_MEC1
Text GLabel 1950 3550 0    50   Input ~ 0
FREE_OUT1_1
Text GLabel 1950 3850 0    50   Input ~ 0
IGBT_ALARM1
Text GLabel 9900 3000 2    50   Input ~ 0
IGBT1_UH_H
Text GLabel 9900 2900 2    50   Input ~ 0
IGBT1_UL_H
Text GLabel 9900 2800 2    50   Input ~ 0
IGBT1_VH_H
Text GLabel 9900 2700 2    50   Input ~ 0
IGBT1_VL_H
Text GLabel 9900 2600 2    50   Input ~ 0
IGBT1_WH_H
Text GLabel 9900 2500 2    50   Input ~ 0
IGBT1_WL_H
Text GLabel 9900 3400 2    50   Input ~ 0
BRK_RES1_H
Text GLabel 9900 3100 2    50   Input ~ 0
FREE_OUT1_2_H
Text GLabel 9900 3600 2    50   Input ~ 0
FAN_RPM1_H
Text GLabel 9900 3300 2    50   Input ~ 0
BRK_MEC1_H
Text GLabel 9900 3200 2    50   Input ~ 0
FREE_OUT1_1_H
Text GLabel 9900 3500 2    50   Input ~ 0
IGBT_ALARM1_H
Text GLabel 6750 6150 0    50   Input ~ 0
IGBT2_UH_H
Text GLabel 6750 6250 0    50   Input ~ 0
IGBT2_UL_H
Text GLabel 6750 6350 0    50   Input ~ 0
IGBT2_VH_H
Text GLabel 6750 6450 0    50   Input ~ 0
IGBT2_VL_H
Text GLabel 6750 6550 0    50   Input ~ 0
IGBT2_WH_H
Text GLabel 6750 6650 0    50   Input ~ 0
IGBT2_WL_H
Text GLabel 6750 6850 0    50   Input ~ 0
BRK_RES2_H
Text GLabel 6750 7050 0    50   Input ~ 0
FREE_OUT2_2_H
Text GLabel 6750 7150 0    50   Input ~ 0
FAN_RPM2_H
Text GLabel 6750 6750 0    50   Input ~ 0
BRK_MEC2_H
Text GLabel 6750 6950 0    50   Input ~ 0
FREE_OUT2_1_H
Text GLabel 6750 7250 0    50   Input ~ 0
IGBT_ALARM2_H
Text GLabel 14550 5750 2    50   Input ~ 0
IGBT2_UH
Text GLabel 14550 5850 2    50   Input ~ 0
IGBT2_UL
Text GLabel 14550 5950 2    50   Input ~ 0
IGBT2_VH
Text GLabel 14550 6050 2    50   Input ~ 0
IGBT2_VL
Text GLabel 14550 6150 2    50   Input ~ 0
IGBT2_WH
Text GLabel 14550 6250 2    50   Input ~ 0
IGBT2_WL
Text GLabel 14550 7200 2    50   Input ~ 0
BRK_RES2
Text GLabel 14550 7400 2    50   Input ~ 0
FREE_OUT2_2
Text GLabel 14550 7500 2    50   Input ~ 0
FAN_RPM2
Text GLabel 14550 7100 2    50   Input ~ 0
BRK_MEC2
Text GLabel 14550 7300 2    50   Input ~ 0
FREE_OUT2_1
Text GLabel 14550 7600 2    50   Input ~ 0
IGBT_ALARM2
$Comp
L servo:5VP #PWR0138
U 1 1 5E3A1F46
P 6050 1500
F 0 "#PWR0138" H 6050 1300 20  0001 C CNN
F 1 "5VP" H 6050 1657 28  0000 C CNN
F 2 "" H 6050 1500 50  0001 C CNN
F 3 "" H 6050 1500 50  0001 C CNN
	1    6050 1500
	1    0    0    -1  
$EndComp
$Comp
L servo:5VP #PWR0140
U 1 1 5E3A231C
P 10400 5250
F 0 "#PWR0140" H 10400 5050 20  0001 C CNN
F 1 "5VP" H 10400 5407 28  0000 C CNN
F 2 "" H 10400 5250 50  0001 C CNN
F 3 "" H 10400 5250 50  0001 C CNN
	1    10400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5300 11200 5300
Connection ~ 11200 5300
Wire Wire Line
	11200 5300 12650 5300
Wire Wire Line
	10750 5500 11300 5500
Wire Wire Line
	3850 1550 5300 1550
Wire Wire Line
	5200 1850 5750 1850
Wire Wire Line
	5300 1950 5300 1550
Connection ~ 5300 1950
Connection ~ 5300 1550
Wire Wire Line
	5300 1550 6050 1550
$Comp
L servo:GNDP #PWR0137
U 1 1 5E8FBE61
P 10100 8500
F 0 "#PWR0137" H 10100 8250 30  0001 C CNN
F 1 "GNDP" H 10100 8351 20  0000 C CNN
F 2 "" H 10100 8500 50  0001 C CNN
F 3 "" H 10100 8500 50  0001 C CNN
	1    10100 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 8150 10100 8500
Wire Wire Line
	7650 8150 7450 8150
Wire Wire Line
	7450 8150 7450 5700
Wire Wire Line
	7450 5700 8900 5700
Connection ~ 7650 8150
Connection ~ 8900 5700
$Comp
L servo:GNDP #PWR0139
U 1 1 5E9E0460
P 6400 4850
F 0 "#PWR0139" H 6400 4600 30  0001 C CNN
F 1 "GNDP" H 6400 4701 20  0000 C CNN
F 2 "" H 6400 4850 50  0001 C CNN
F 3 "" H 6400 4850 50  0001 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4500 6400 4850
Wire Wire Line
	8850 4500 9150 4500
Wire Wire Line
	9150 4500 9150 1950
Wire Wire Line
	9150 1950 7550 1950
Connection ~ 8850 4500
Connection ~ 7550 1950
Wire Wire Line
	10750 6150 10000 6150
$EndSCHEMATC
