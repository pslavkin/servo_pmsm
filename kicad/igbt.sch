EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 8 19
Title "Igbt interface"
Date "25 10 2019"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5300 3450 0    50   ~ 0
PWM_A_BRK_MEC_H
Text Label 5300 3350 0    50   ~ 0
PWM_A_BRK_RES_H
Text GLabel 1700 2550 0    50   Input ~ 0
PWM_A2H_C
Text GLabel 1700 2750 0    50   Input ~ 0
PWM_A3H_C
Text GLabel 1700 2650 0    50   Input ~ 0
PWM_A2L_C
Text GLabel 1700 2850 0    50   Input ~ 0
PWM_A3L_C
Text GLabel 1700 3800 0    50   Input ~ 0
PWM_A_BRK_MEC_C
Text GLabel 1700 3700 0    50   Input ~ 0
PWM_A_BRK_RES_C
Text Label 5550 3250 0    50   ~ 0
PWM_A3L_H
Text Label 5550 3050 0    50   ~ 0
PWM_A2L_H
Text Label 5550 3150 0    50   ~ 0
PWM_A3H_H
Text Label 5550 2950 0    50   ~ 0
PWM_A2H_H
Text GLabel 1700 2350 0    50   Input ~ 0
PWM_A1H_C
Text GLabel 1700 2450 0    50   Input ~ 0
PWM_A1L_C
Text Label 5550 2850 0    50   ~ 0
PWM_A1L_H
Text Label 5550 2750 0    50   ~ 0
PWM_A1H_H
$Comp
L servo:3V3 #PWR?
U 1 1 5E190D17
P 2000 2150
F 0 "#PWR?" H 2005 2357 20  0001 C CNN
F 1 "3V3" H 2005 2307 28  0000 C CNN
F 2 "" H 2000 2150 50  0001 C CNN
F 3 "" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2250 2000 2150
Text Label 9150 3450 2    50   ~ 0
PWM_B_BRK_MEC_H
Text Label 9150 3350 2    50   ~ 0
PWM_B_BRK_RES_H
Text GLabel 12850 2550 2    50   Input ~ 0
PWM_B2H_C
Text GLabel 12850 2750 2    50   Input ~ 0
PWM_B3H_C
Text GLabel 12850 2650 2    50   Input ~ 0
PWM_A2BL_C
Text GLabel 12850 2850 2    50   Input ~ 0
PWM_B3L_C
Text GLabel 12800 3800 2    50   Input ~ 0
PWM_B_BRK_MEC_C
Text GLabel 12800 3700 2    50   Input ~ 0
PWM_B_BRK_RES_C
Text Label 8450 3250 0    50   ~ 0
PWM_B3L_H
Text Label 8900 3050 2    50   ~ 0
PWM_B2L_H
Text Label 8900 3150 2    50   ~ 0
PWM_B3H_H
Text Label 8900 2950 2    50   ~ 0
PWM_B2H_H
Text GLabel 12850 2350 2    50   Input ~ 0
PWM_B1H_C
Text GLabel 12850 2450 2    50   Input ~ 0
PWM_B1L_C
Text Label 8900 2850 2    50   ~ 0
PWM_B1L_H
Text Label 8900 2750 2    50   ~ 0
PWM_B1H_H
$Comp
L servo:SI8660BD U?
U 1 1 5E57B97F
P 2800 2550
F 0 "U?" H 2800 3139 60  0000 C CNN
F 1 "SI8660BD" H 2800 3033 60  0000 C CNN
F 2 "" H 2200 2850 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2700 3150 60  0001 C CNN
	1    2800 2550
	1    0    0    -1  
$EndComp
$Comp
L servo:SI8660BD U?
U 1 1 5E5A927C
P 2800 3900
F 0 "U?" H 2800 4489 60  0000 C CNN
F 1 "SI8660BD" H 2800 4383 60  0000 C CNN
F 2 "" H 2200 4200 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 2700 4500 60  0001 C CNN
	1    2800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2350 1700 2350
Wire Wire Line
	1700 2450 2100 2450
Wire Wire Line
	2100 2550 1700 2550
Wire Wire Line
	1700 2650 2100 2650
Wire Wire Line
	2100 2750 1700 2750
Wire Wire Line
	1700 2850 2100 2850
Wire Wire Line
	2100 3700 1700 3700
Wire Wire Line
	1700 3800 2100 3800
Wire Wire Line
	2100 2250 2000 2250
Wire Wire Line
	2100 2950 2000 2950
$Comp
L servo:GND #PWR?
U 1 1 5E6075E6
P 2000 4350
F 0 "#PWR?" H 2000 4100 30  0001 C CNN
F 1 "GND" H 2000 4192 30  0000 C CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4300 2000 4300
Wire Wire Line
	2000 4300 2000 4350
Wire Wire Line
	3600 2250 3500 2250
Wire Wire Line
	3600 3600 3500 3600
Wire Wire Line
	3500 4300 3700 4300
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E0FED99
P 4700 2750
F 0 "U?" H 4900 2700 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 3133 60  0001 C CNN
F 2 "" H 4700 2750 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 3200 60  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E105632
P 4700 2300
F 0 "U?" H 4900 2250 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 2683 60  0001 C CNN
F 2 "" H 4700 2300 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 2750 60  0001 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E107877
P 4700 3200
F 0 "U?" H 4900 3150 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 3583 60  0001 C CNN
F 2 "" H 4700 3200 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 3650 60  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E109AEF
P 4700 3650
F 0 "U?" H 4900 3600 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 4033 60  0001 C CNN
F 2 "" H 4700 3650 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 4100 60  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E10BEA0
P 4700 4100
F 0 "U?" H 4900 4050 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 4483 60  0001 C CNN
F 2 "" H 4700 4100 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 4550 60  0001 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E10E2A0
P 4700 4550
F 0 "U?" H 4900 4500 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 4575 4933 60  0001 C CNN
F 2 "" H 4700 4550 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 4400 5000 60  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2350 3900 2100
Wire Wire Line
	3900 2100 4200 2100
Wire Wire Line
	3500 2350 3900 2350
Wire Wire Line
	4000 2450 4000 2300
Wire Wire Line
	4000 2300 4200 2300
Wire Wire Line
	3500 2450 4000 2450
Wire Wire Line
	3500 2550 4200 2550
Wire Wire Line
	4000 2650 4000 2750
Wire Wire Line
	4000 2750 4200 2750
Wire Wire Line
	3500 2650 4000 2650
Wire Wire Line
	3900 2750 3900 3000
Wire Wire Line
	3900 3000 4200 3000
Wire Wire Line
	3500 2750 3900 2750
Wire Wire Line
	3800 2850 3800 3200
Wire Wire Line
	3800 3200 4200 3200
Wire Wire Line
	3500 2850 3800 2850
Wire Wire Line
	3850 3700 3850 3450
Wire Wire Line
	3850 3450 4200 3450
Wire Wire Line
	3950 3800 3950 3650
Wire Wire Line
	3950 3650 4200 3650
Wire Wire Line
	3500 3800 3950 3800
Wire Wire Line
	3500 3900 4200 3900
Wire Wire Line
	3500 4000 4000 4000
Wire Wire Line
	4000 4000 4000 4100
Wire Wire Line
	4000 4100 4200 4100
Wire Wire Line
	3500 4100 3900 4100
Wire Wire Line
	3900 4100 3900 4350
Wire Wire Line
	3900 4350 4200 4350
Wire Wire Line
	3500 4200 3800 4200
Wire Wire Line
	3800 4200 3800 4550
Wire Wire Line
	3800 4550 4200 4550
Wire Wire Line
	4950 2100 5000 2100
Wire Wire Line
	5500 2100 5500 2750
Wire Wire Line
	4950 2300 5400 2300
Wire Wire Line
	5400 2300 5400 2850
Wire Wire Line
	4950 2550 5300 2550
Wire Wire Line
	5300 2550 5300 2950
Wire Wire Line
	4950 2750 5200 2750
Wire Wire Line
	5200 2750 5200 3050
Wire Wire Line
	4950 3000 5100 3000
Wire Wire Line
	5100 3000 5100 3150
Wire Wire Line
	4950 3200 5100 3200
Wire Wire Line
	5100 3200 5100 3250
Wire Wire Line
	4950 3450 5100 3450
Wire Wire Line
	5100 3450 5100 3350
Wire Wire Line
	4950 3650 5200 3650
Wire Wire Line
	5200 3650 5200 3450
Wire Wire Line
	4950 3900 5300 3900
Wire Wire Line
	5300 3900 5300 3550
Wire Wire Line
	4950 4100 5400 4100
Wire Wire Line
	5400 4100 5400 3650
Wire Wire Line
	4950 4350 5500 4350
Wire Wire Line
	5500 4350 5500 3750
Wire Wire Line
	4950 4550 5600 4550
Wire Wire Line
	5600 4550 5600 3850
Wire Wire Line
	3500 3700 3850 3700
Wire Wire Line
	4950 4450 5000 4450
Wire Wire Line
	5000 4450 5000 4000
Wire Wire Line
	5000 2200 4950 2200
Wire Wire Line
	4950 2650 5000 2650
Connection ~ 5000 2650
Wire Wire Line
	5000 2650 5000 2200
Wire Wire Line
	4950 3100 5000 3100
Connection ~ 5000 3100
Wire Wire Line
	5000 3100 5000 2650
Wire Wire Line
	4950 3550 5000 3550
Connection ~ 5000 3550
Wire Wire Line
	5000 3550 5000 3100
Wire Wire Line
	4950 4000 5000 4000
Connection ~ 5000 4000
Wire Wire Line
	5000 4000 5000 3550
Wire Wire Line
	4200 4450 4150 4450
Wire Wire Line
	4150 4450 4150 4000
Wire Wire Line
	4150 2200 4200 2200
Wire Wire Line
	4200 2650 4150 2650
Connection ~ 4150 2650
Wire Wire Line
	4150 2650 4150 2200
Wire Wire Line
	4200 3100 4150 3100
Connection ~ 4150 3100
Wire Wire Line
	4150 3100 4150 2650
Wire Wire Line
	4200 3550 4150 3550
Connection ~ 4150 3550
Wire Wire Line
	4150 3550 4150 3100
Wire Wire Line
	4200 4000 4150 4000
Connection ~ 4150 4000
Wire Wire Line
	4150 4000 4150 3550
$Comp
L servo:GNDH #PWR?
U 1 1 5E218CF2
P 4150 4800
F 0 "#PWR?" H 4150 4550 30  0001 C CNN
F 1 "GNDH" H 4150 4642 30  0000 C CNN
F 2 "" H 4150 4800 50  0001 C CNN
F 3 "" H 4150 4800 50  0001 C CNN
	1    4150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4450 4150 4750
Connection ~ 4150 4450
Connection ~ 5000 2200
$Comp
L servo:5VH #PWR?
U 1 1 5E2257D5
P 7200 1800
F 0 "#PWR?" H 7200 1600 20  0001 C CNN
F 1 "5VH" H 7205 1957 28  0000 C CNN
F 2 "" H 7200 1800 50  0001 C CNN
F 3 "" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 5000 1900
Wire Wire Line
	5000 1900 5000 2100
Wire Wire Line
	3600 1900 3600 2250
$Comp
L servo:3V3 #PWR?
U 1 1 5E2853CF
P 12450 2150
F 0 "#PWR?" H 12455 2357 20  0000 C CNN
F 1 "3V3" H 12455 2307 28  0000 C CNN
F 2 "" H 12450 2150 50  0001 C CNN
F 3 "" H 12450 2150 50  0001 C CNN
	1    12450 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12450 2250 12450 2150
$Comp
L servo:SI8660BD U?
U 1 1 5E2853DE
P 11650 2550
F 0 "U?" H 11650 3139 60  0000 C CNN
F 1 "SI8660BD" H 11650 3033 60  0000 C CNN
F 2 "" H 11050 2850 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 11550 3150 60  0001 C CNN
	1    11650 2550
	-1   0    0    -1  
$EndComp
$Comp
L servo:SI8660BD U?
U 1 1 5E2853E5
P 11650 3900
F 0 "U?" H 11650 4489 60  0000 C CNN
F 1 "SI8660BD" H 11650 4383 60  0000 C CNN
F 2 "" H 11050 4200 60  0000 C CNN
F 3 "../doc/datasheets/Si8660.pdf" H 11550 4500 60  0001 C CNN
	1    11650 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12350 2350 12850 2350
Wire Wire Line
	12850 2450 12350 2450
Wire Wire Line
	12350 2550 12850 2550
Wire Wire Line
	12850 2650 12350 2650
Wire Wire Line
	12350 2750 12850 2750
Wire Wire Line
	12850 2850 12350 2850
Wire Wire Line
	12350 3700 12800 3700
Wire Wire Line
	12800 3800 12350 3800
Wire Wire Line
	12350 2250 12450 2250
Wire Wire Line
	12350 2950 12450 2950
$Comp
L servo:GND #PWR?
U 1 1 5E2853F7
P 12450 4500
F 0 "#PWR?" H 12450 4250 30  0001 C CNN
F 1 "GND" H 12450 4342 30  0000 C CNN
F 2 "" H 12450 4500 50  0001 C CNN
F 3 "" H 12450 4500 50  0001 C CNN
	1    12450 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12350 4300 12450 4300
Wire Wire Line
	10850 2250 10950 2250
Wire Wire Line
	10850 3600 10950 3600
Wire Wire Line
	10950 4300 10750 4300
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E28541A
P 9750 2750
F 0 "U?" H 9950 2700 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 3133 60  0001 C CNN
F 2 "" H 9750 2750 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 3200 60  0001 C CNN
	1    9750 2750
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E285421
P 9750 2300
F 0 "U?" H 9950 2250 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 2683 60  0001 C CNN
F 2 "" H 9750 2300 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 2750 60  0001 C CNN
	1    9750 2300
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E285428
P 9750 3200
F 0 "U?" H 9950 3150 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 3583 60  0001 C CNN
F 2 "" H 9750 3200 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 3650 60  0001 C CNN
	1    9750 3200
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E28542F
P 9750 3650
F 0 "U?" H 9950 3600 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 4033 60  0001 C CNN
F 2 "" H 9750 3650 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 4100 60  0001 C CNN
	1    9750 3650
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E285436
P 9750 4100
F 0 "U?" H 9950 4050 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 4483 60  0001 C CNN
F 2 "" H 9750 4100 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 4550 60  0001 C CNN
	1    9750 4100
	-1   0    0    -1  
$EndComp
$Comp
L servo:SN74LVC2G17DBVR U?
U 1 1 5E28543D
P 9750 4550
F 0 "U?" H 9950 4500 60  0000 C CNN
F 1 "SN74LVC2G17DBVR" H 9625 4933 60  0001 C CNN
F 2 "" H 9750 4550 60  0000 C CNN
F 3 "../doc/datasheets/sn74lvc2g17.pdf" H 9450 5000 60  0001 C CNN
	1    9750 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10550 2350 10550 2100
Wire Wire Line
	10550 2100 10250 2100
Wire Wire Line
	10950 2350 10550 2350
Wire Wire Line
	10450 2450 10450 2300
Wire Wire Line
	10450 2300 10250 2300
Wire Wire Line
	10950 2450 10450 2450
Wire Wire Line
	10950 2550 10250 2550
Wire Wire Line
	10450 2650 10450 2750
Wire Wire Line
	10450 2750 10250 2750
Wire Wire Line
	10950 2650 10450 2650
Wire Wire Line
	10550 2750 10550 3000
Wire Wire Line
	10550 3000 10250 3000
Wire Wire Line
	10950 2750 10550 2750
Wire Wire Line
	10650 2850 10650 3200
Wire Wire Line
	10650 3200 10250 3200
Wire Wire Line
	10950 2850 10650 2850
Wire Wire Line
	10600 3700 10600 3450
Wire Wire Line
	10600 3450 10250 3450
Wire Wire Line
	10500 3800 10500 3650
Wire Wire Line
	10500 3650 10250 3650
Wire Wire Line
	10950 3800 10500 3800
Wire Wire Line
	10950 3900 10250 3900
Wire Wire Line
	10950 4000 10450 4000
Wire Wire Line
	10450 4000 10450 4100
Wire Wire Line
	10450 4100 10250 4100
Wire Wire Line
	10950 4100 10550 4100
Wire Wire Line
	10550 4100 10550 4350
Wire Wire Line
	10550 4350 10250 4350
Wire Wire Line
	10950 4200 10650 4200
Wire Wire Line
	10650 4200 10650 4550
Wire Wire Line
	10650 4550 10250 4550
Wire Wire Line
	9500 2100 8950 2100
Wire Wire Line
	8950 2100 8950 2750
Wire Wire Line
	9500 2300 9050 2300
Wire Wire Line
	9050 2300 9050 2850
Wire Wire Line
	9500 2550 9150 2550
Wire Wire Line
	9150 2550 9150 2950
Wire Wire Line
	9500 2750 9250 2750
Wire Wire Line
	9250 2750 9250 3050
Wire Wire Line
	9500 3000 9350 3000
Wire Wire Line
	9350 3000 9350 3150
Wire Wire Line
	9500 3200 9350 3200
Wire Wire Line
	9350 3200 9350 3250
Wire Wire Line
	9500 3450 9350 3450
Wire Wire Line
	9350 3450 9350 3350
Wire Wire Line
	9500 3650 9250 3650
Wire Wire Line
	9250 3650 9250 3450
Wire Wire Line
	9500 3900 9150 3900
Wire Wire Line
	9150 3900 9150 3550
Wire Wire Line
	9500 4100 9050 4100
Wire Wire Line
	9050 4100 9050 3650
Wire Wire Line
	9500 4350 8950 4350
Wire Wire Line
	8950 4350 8950 3750
Wire Wire Line
	9500 4550 8850 4550
Wire Wire Line
	8850 4550 8850 3850
Wire Wire Line
	10950 3700 10600 3700
Wire Wire Line
	9500 4450 9450 4450
Wire Wire Line
	9450 4450 9450 4000
Wire Wire Line
	9450 2200 9500 2200
Wire Wire Line
	9500 2650 9450 2650
Connection ~ 9450 2650
Wire Wire Line
	9450 2650 9450 2200
Wire Wire Line
	9500 3100 9450 3100
Connection ~ 9450 3100
Wire Wire Line
	9450 3100 9450 2650
Wire Wire Line
	9500 3550 9450 3550
Connection ~ 9450 3550
Wire Wire Line
	9450 3550 9450 3100
Wire Wire Line
	9500 4000 9450 4000
Connection ~ 9450 4000
Wire Wire Line
	9450 4000 9450 3550
Wire Wire Line
	10250 4450 10300 4450
Wire Wire Line
	10300 4450 10300 4000
Wire Wire Line
	10300 2200 10250 2200
Wire Wire Line
	10250 2650 10300 2650
Connection ~ 10300 2650
Wire Wire Line
	10300 2650 10300 2200
Wire Wire Line
	10250 3100 10300 3100
Connection ~ 10300 3100
Wire Wire Line
	10300 3100 10300 2650
Wire Wire Line
	10250 3550 10300 3550
Connection ~ 10300 3550
Wire Wire Line
	10300 3550 10300 3100
Wire Wire Line
	10250 4000 10300 4000
Connection ~ 10300 4000
Wire Wire Line
	10300 4000 10300 3550
$Comp
L servo:GNDH #PWR?
U 1 1 5E2854AE
P 7250 4900
F 0 "#PWR?" H 7250 4650 30  0001 C CNN
F 1 "GNDH" H 7250 4742 30  0000 C CNN
F 2 "" H 7250 4900 50  0001 C CNN
F 3 "" H 7250 4900 50  0001 C CNN
	1    7250 4900
	-1   0    0    -1  
$EndComp
Connection ~ 10300 4450
Connection ~ 9450 2200
Wire Wire Line
	10850 1900 9450 1900
Wire Wire Line
	9450 1900 9450 2200
Connection ~ 5000 2100
Wire Wire Line
	5000 2100 5500 2100
Wire Wire Line
	5000 2100 5000 2200
Connection ~ 5000 1900
Connection ~ 9450 1900
Text Notes 4900 1000 0    197  ~ 39
PWM OUT -> ISOLATOR -> BUFFER -> LED
$Comp
L servo:Resistor R?
U 1 1 5E46BE68
P 6450 2750
F 0 "R?" H 6350 2800 60  0000 C CNN
F 1 "22e" H 6450 2853 60  0001 C CNN
F 2 "" H 6450 2750 60  0000 C CNN
F 3 "" H 6450 2750 60  0000 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E46C0CD
P 6450 2850
F 0 "R?" H 6350 2900 60  0000 C CNN
F 1 "22e" H 6450 2953 60  0001 C CNN
F 2 "" H 6450 2850 60  0000 C CNN
F 3 "" H 6450 2850 60  0000 C CNN
	1    6450 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E47854A
P 6450 2950
F 0 "R?" H 6350 3000 60  0000 C CNN
F 1 "22e" H 6450 3053 60  0001 C CNN
F 2 "" H 6450 2950 60  0000 C CNN
F 3 "" H 6450 2950 60  0000 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4849CB
P 6450 3050
F 0 "R?" H 6350 3100 60  0000 C CNN
F 1 "22e" H 6450 3153 60  0001 C CNN
F 2 "" H 6450 3050 60  0000 C CNN
F 3 "" H 6450 3050 60  0000 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E490E4C
P 6450 3150
F 0 "R?" H 6350 3200 60  0000 C CNN
F 1 "22e" H 6450 3253 60  0001 C CNN
F 2 "" H 6450 3150 60  0000 C CNN
F 3 "" H 6450 3150 60  0000 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E49D2CD
P 6450 3250
F 0 "R?" H 6350 3300 60  0000 C CNN
F 1 "22e" H 6450 3353 60  0001 C CNN
F 2 "" H 6450 3250 60  0000 C CNN
F 3 "" H 6450 3250 60  0000 C CNN
	1    6450 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4A9752
P 6450 3350
F 0 "R?" H 6350 3400 60  0000 C CNN
F 1 "22e" H 6450 3453 60  0001 C CNN
F 2 "" H 6450 3350 60  0000 C CNN
F 3 "" H 6450 3350 60  0000 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4B5BD9
P 6450 3450
F 0 "R?" H 6350 3500 60  0000 C CNN
F 1 "22e" H 6450 3553 60  0001 C CNN
F 2 "" H 6450 3450 60  0000 C CNN
F 3 "" H 6450 3450 60  0000 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4C2064
P 6450 3550
F 0 "R?" H 6350 3600 60  0000 C CNN
F 1 "22e" H 6450 3653 60  0001 C CNN
F 2 "" H 6450 3550 60  0000 C CNN
F 3 "" H 6450 3550 60  0000 C CNN
	1    6450 3550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4CE543
P 6450 3650
F 0 "R?" H 6350 3700 60  0000 C CNN
F 1 "22e" H 6450 3753 60  0001 C CNN
F 2 "" H 6450 3650 60  0000 C CNN
F 3 "" H 6450 3650 60  0000 C CNN
	1    6450 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4DA9D0
P 6450 3750
F 0 "R?" H 6350 3800 60  0000 C CNN
F 1 "22e" H 6450 3853 60  0001 C CNN
F 2 "" H 6450 3750 60  0000 C CNN
F 3 "" H 6450 3750 60  0000 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E4E6E5F
P 6450 3850
F 0 "R?" H 6350 3900 60  0000 C CNN
F 1 "22e" H 6450 3953 60  0001 C CNN
F 2 "" H 6450 3850 60  0000 C CNN
F 3 "" H 6450 3850 60  0000 C CNN
	1    6450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2750 6250 2750
Wire Wire Line
	5400 2850 6250 2850
Wire Wire Line
	5300 2950 6250 2950
Wire Wire Line
	6250 3050 5200 3050
Wire Wire Line
	5100 3150 6250 3150
Wire Wire Line
	6250 3250 5100 3250
Wire Wire Line
	5100 3350 6250 3350
Wire Wire Line
	6250 3450 5200 3450
Wire Wire Line
	5300 3550 6250 3550
Wire Wire Line
	5400 3650 6250 3650
Wire Wire Line
	5500 3750 6250 3750
Wire Wire Line
	6250 3850 5600 3850
$Comp
L servo:Resistor R?
U 1 1 5E5AF06C
P 8000 2750
F 0 "R?" H 7900 2800 60  0000 C CNN
F 1 "22e" H 8000 2853 60  0001 C CNN
F 2 "" H 8000 2750 60  0000 C CNN
F 3 "" H 8000 2750 60  0000 C CNN
	1    8000 2750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF073
P 8000 2850
F 0 "R?" H 7900 2900 60  0000 C CNN
F 1 "22e" H 8000 2953 60  0001 C CNN
F 2 "" H 8000 2850 60  0000 C CNN
F 3 "" H 8000 2850 60  0000 C CNN
	1    8000 2850
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF07A
P 8000 2950
F 0 "R?" H 7900 3000 60  0000 C CNN
F 1 "22e" H 8000 3053 60  0001 C CNN
F 2 "" H 8000 2950 60  0000 C CNN
F 3 "" H 8000 2950 60  0000 C CNN
	1    8000 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF081
P 8000 3050
F 0 "R?" H 7900 3100 60  0000 C CNN
F 1 "22e" H 8000 3153 60  0001 C CNN
F 2 "" H 8000 3050 60  0000 C CNN
F 3 "" H 8000 3050 60  0000 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF088
P 8000 3150
F 0 "R?" H 7900 3200 60  0000 C CNN
F 1 "22e" H 8000 3253 60  0001 C CNN
F 2 "" H 8000 3150 60  0000 C CNN
F 3 "" H 8000 3150 60  0000 C CNN
	1    8000 3150
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF08F
P 8000 3250
F 0 "R?" H 7900 3300 60  0000 C CNN
F 1 "22e" H 8000 3353 60  0001 C CNN
F 2 "" H 8000 3250 60  0000 C CNN
F 3 "" H 8000 3250 60  0000 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF096
P 8000 3350
F 0 "R?" H 7900 3400 60  0000 C CNN
F 1 "22e" H 8000 3453 60  0001 C CNN
F 2 "" H 8000 3350 60  0000 C CNN
F 3 "" H 8000 3350 60  0000 C CNN
	1    8000 3350
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF09D
P 8000 3450
F 0 "R?" H 7900 3500 60  0000 C CNN
F 1 "22e" H 8000 3553 60  0001 C CNN
F 2 "" H 8000 3450 60  0000 C CNN
F 3 "" H 8000 3450 60  0000 C CNN
	1    8000 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF0A4
P 8000 3550
F 0 "R?" H 7900 3600 60  0000 C CNN
F 1 "22e" H 8000 3653 60  0001 C CNN
F 2 "" H 8000 3550 60  0000 C CNN
F 3 "" H 8000 3550 60  0000 C CNN
	1    8000 3550
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF0AB
P 8000 3650
F 0 "R?" H 7900 3700 60  0000 C CNN
F 1 "22e" H 8000 3753 60  0001 C CNN
F 2 "" H 8000 3650 60  0000 C CNN
F 3 "" H 8000 3650 60  0000 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF0B2
P 8000 3750
F 0 "R?" H 7900 3800 60  0000 C CNN
F 1 "22e" H 8000 3853 60  0001 C CNN
F 2 "" H 8000 3750 60  0000 C CNN
F 3 "" H 8000 3750 60  0000 C CNN
	1    8000 3750
	1    0    0    -1  
$EndComp
$Comp
L servo:Resistor R?
U 1 1 5E5AF0B9
P 8000 3850
F 0 "R?" H 7900 3900 60  0000 C CNN
F 1 "22e" H 8000 3953 60  0001 C CNN
F 2 "" H 8000 3850 60  0000 C CNN
F 3 "" H 8000 3850 60  0000 C CNN
	1    8000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2750 8200 2750
Wire Wire Line
	9050 2850 8200 2850
Wire Wire Line
	9150 2950 8200 2950
Wire Wire Line
	8200 3050 9250 3050
Wire Wire Line
	9350 3150 8200 3150
Wire Wire Line
	8200 3250 9350 3250
Wire Wire Line
	9350 3350 8200 3350
Wire Wire Line
	8200 3450 9250 3450
Wire Wire Line
	9150 3550 8200 3550
Wire Wire Line
	9050 3650 8200 3650
Wire Wire Line
	8950 3750 8200 3750
Wire Wire Line
	8200 3850 8850 3850
Wire Wire Line
	7800 2750 7700 2750
Wire Wire Line
	7800 2850 7700 2850
Wire Wire Line
	7800 2950 7700 2950
Wire Wire Line
	7800 3150 7700 3150
Wire Wire Line
	7800 3350 7700 3350
Wire Wire Line
	7800 3550 7700 3550
Wire Wire Line
	7800 3850 7700 3850
Text Notes 2450 4550 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text Notes 7200 1400 0    39   ~ 0
these pins has isolation and a buffer. They could be directly connected\n to a IGBT module for test porpouses or to a power board and another\n isolation stage for production porpouses to have a reinforced isolation.\n In next stages of the development of the board, the buffers could be\n eliminated, but not the isolation Scmith trigger stage
Wire Wire Line
	5000 1900 6600 1900
Wire Wire Line
	7200 1800 7200 1900
Wire Wire Line
	3600 3600 3600 2250
Connection ~ 3600 2250
Wire Wire Line
	3500 2950 3700 2950
Wire Wire Line
	3700 2950 3700 4300
Connection ~ 3700 4300
Wire Wire Line
	3700 4750 4150 4750
Wire Wire Line
	3700 4300 3700 4750
Connection ~ 4150 4750
Wire Wire Line
	4150 4750 4150 4800
Wire Wire Line
	1900 3600 1900 2250
Wire Wire Line
	1900 2250 2000 2250
Connection ~ 2000 2250
Wire Wire Line
	1900 3600 2100 3600
Wire Wire Line
	2000 2950 2000 4300
Connection ~ 2000 4300
Wire Wire Line
	6650 3050 6700 3050
Wire Wire Line
	6650 3250 6700 3250
Wire Wire Line
	6650 3450 6700 3450
Wire Wire Line
	6650 3650 6700 3650
Wire Wire Line
	6650 3750 6700 3750
Wire Wire Line
	6650 2750 6700 2750
Wire Wire Line
	6650 2850 6700 2850
Wire Wire Line
	6650 2950 6700 2950
Wire Wire Line
	6650 3150 6700 3150
Wire Wire Line
	6650 3350 6700 3350
Wire Wire Line
	6650 3550 6700 3550
Wire Wire Line
	6650 3850 6700 3850
$Comp
L Connector:Screw_Terminal_01x15 J?
U 1 1 5E5BEFFE
P 6900 3350
F 0 "J?" H 6980 3346 50  0000 L CNN
F 1 "Screw_Terminal_01x15" H 6980 3301 50  0001 L CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "~" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3950 6350 3950
Wire Wire Line
	6350 3950 6350 4750
Connection ~ 6350 4750
Wire Wire Line
	6350 4750 4150 4750
Wire Wire Line
	6700 2650 6600 2650
Wire Wire Line
	6600 2650 6600 1900
Connection ~ 6600 1900
$Comp
L servo:15VH #PWR?
U 1 1 5E60C4E3
P 7250 4300
F 0 "#PWR?" H 7250 4100 20  0001 C CNN
F 1 "15VH" H 7255 4457 28  0000 C CNN
F 2 "" H 7250 4300 50  0001 C CNN
F 3 "" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4450 10300 4750
Connection ~ 10300 4750
Wire Wire Line
	7250 4750 7250 4900
Wire Wire Line
	10750 4750 10300 4750
Wire Wire Line
	10750 4300 10750 4750
Wire Wire Line
	10750 2950 10750 4300
Wire Wire Line
	10750 2950 10950 2950
Connection ~ 10750 4300
Wire Wire Line
	10850 1900 10850 2250
Connection ~ 10850 2250
Wire Wire Line
	10850 2250 10850 3600
Wire Wire Line
	12450 2250 12550 2250
Wire Wire Line
	12550 2250 12550 3600
Wire Wire Line
	12350 3600 12550 3600
Connection ~ 12450 2250
Wire Wire Line
	12450 2950 12450 4300
Connection ~ 12450 4300
Wire Wire Line
	12450 4300 12450 4500
Connection ~ 7250 4750
Wire Wire Line
	7250 4400 7250 4300
Wire Wire Line
	6700 4050 6700 4400
$Comp
L Connector:Screw_Terminal_01x15 J?
U 1 1 5E811401
P 7500 3350
F 0 "J?" H 7580 3346 50  0000 L CNN
F 1 "Screw_Terminal_01x15" H 7580 3301 50  0001 L CNN
F 2 "" H 7500 3350 50  0001 C CNN
F 3 "~" H 7500 3350 50  0001 C CNN
	1    7500 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 3050 7800 3050
Wire Wire Line
	7700 3250 7800 3250
Wire Wire Line
	7700 3450 7800 3450
Wire Wire Line
	7700 3650 7800 3650
Wire Wire Line
	7700 3750 7800 3750
Wire Wire Line
	7700 2650 7750 2650
Wire Wire Line
	7750 2650 7750 1900
Connection ~ 7750 1900
Wire Wire Line
	7750 1900 9450 1900
Wire Wire Line
	7800 4400 7800 4050
Wire Wire Line
	7800 4050 7700 4050
Wire Wire Line
	7700 3950 8050 3950
Wire Wire Line
	8050 3950 8050 4750
Connection ~ 8050 4750
Wire Wire Line
	8050 4750 10300 4750
Connection ~ 7250 4400
Wire Wire Line
	7250 4400 7800 4400
Wire Wire Line
	6700 4400 7250 4400
Wire Wire Line
	6350 4750 7250 4750
Wire Wire Line
	7250 4750 8050 4750
Connection ~ 7200 1900
Wire Wire Line
	7200 1900 7750 1900
Wire Wire Line
	6600 1900 7200 1900
Text Notes 2450 3150 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text Notes 11300 3150 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text Notes 11350 4550 0    20   ~ 0
Choose a package pin-to-pin compatible with\nTI ISO7760. But SIlabs cost halt the price as TI
Text GLabel 12800 3900 2    50   Input ~ 0
FREE_OUT_B1
Wire Wire Line
	12800 3900 12350 3900
Text GLabel 12800 4000 2    50   Input ~ 0
FREE_OUT_B2
Wire Wire Line
	12800 4000 12350 4000
Text GLabel 12800 4100 2    50   Input ~ 0
FREE_OUT_B3
Wire Wire Line
	12800 4100 12350 4100
Text GLabel 12800 4200 2    50   Input ~ 0
FREE_OUT_B4
Wire Wire Line
	12800 4200 12350 4200
Text GLabel 1700 3900 0    50   Input ~ 0
FREE_OUT_A1
Text GLabel 1700 4000 0    50   Input ~ 0
FREE_OUT_A2
Text GLabel 1700 4100 0    50   Input ~ 0
FREE_OUT_A3
Text GLabel 1700 4200 0    50   Input ~ 0
FREE_OUT_A4
Wire Wire Line
	2100 3900 1700 3900
Wire Wire Line
	2100 4000 1700 4000
Wire Wire Line
	1700 4100 2100 4100
Wire Wire Line
	2100 4200 1700 4200
Text Notes 700  4400 0    20   ~ 0
Free to other uses. If oyu choose another version of these IC that has\n some pins reverted to input, you could use these as an isolated general\n input also, just remember to bridge the output buffer or reverse it also
Text Notes 12650 4400 0    20   ~ 0
Free to other uses. If oyu choose another version of these IC that has\n some pins reverted to input, you could use these as an isolated general\n input also, just remember to bridge the output buffer or reverse it also
Text Notes 7000 4500 0    20   ~ 0
is an optionally 15vh out if the\n power board wanna use it
$EndSCHEMATC
