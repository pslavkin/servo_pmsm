EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 13 20
Title "gpio"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6000 1100 0    20   ~ 0
I use these sheet to add all manufacutrer component including\n fiducials, sloted hloles and things like that
Text Notes 4100 850  0    197  ~ 39
Symbols Slots fiducials, and others\n
$Comp
L Mechanical:MountingHole H1301
U 1 1 5ED2BAA2
P 4100 2000
F 0 "H1301" H 4200 2046 50  0000 L CNN
F 1 "fiducials" H 4200 1955 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 4100 2000 50  0001 C CNN
F 3 "~" H 4100 2000 50  0001 C CNN
	1    4100 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Housing N?
U 1 1 5ED2FF88
P 2300 1850
AR Path="/5E72D841/5ED2FF88" Ref="N?"  Part="1" 
AR Path="/5E033FE4/5ED2FF88" Ref="N1301"  Part="1" 
F 0 "N1301" H 2453 1884 50  0000 L CNN
F 1 "Housing" H 2453 1793 50  0000 L CNN
F 2 "servo:case" H 2350 1900 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
Text Notes 4300 1700 0    118  ~ 24
Fiducials TOP\n
Text Notes 4350 2500 0    118  ~ 24
Fiducials Bottom\n
Text Notes 2050 1500 0    118  ~ 24
Case
$Comp
L Mechanical:MountingHole H1302
U 1 1 5ED41A7E
P 4150 2900
F 0 "H1302" H 4250 2946 50  0000 L CNN
F 1 "fiducials" H 4250 2855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperBottom" H 4150 2900 50  0001 C CNN
F 3 "~" H 4150 2900 50  0001 C CNN
	1    4150 2900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1303
U 1 1 5ED41B8F
P 4800 2000
F 0 "H1303" H 4900 2046 50  0000 L CNN
F 1 "fiducials" H 4900 1955 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 4800 2000 50  0001 C CNN
F 3 "~" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1305
U 1 1 5ED41BCB
P 5450 2000
F 0 "H1305" H 5550 2046 50  0000 L CNN
F 1 "fiducials" H 5550 1955 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 5450 2000 50  0001 C CNN
F 3 "~" H 5450 2000 50  0001 C CNN
	1    5450 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1307
U 1 1 5ED41C03
P 6150 2000
F 0 "H1307" H 6250 2046 50  0000 L CNN
F 1 "fiducials" H 6250 1955 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 6150 2000 50  0001 C CNN
F 3 "~" H 6150 2000 50  0001 C CNN
	1    6150 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1304
U 1 1 5ED41C41
P 4850 2900
F 0 "H1304" H 4950 2946 50  0000 L CNN
F 1 "fiducials" H 4950 2855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperBottom" H 4850 2900 50  0001 C CNN
F 3 "~" H 4850 2900 50  0001 C CNN
	1    4850 2900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1306
U 1 1 5ED41C7F
P 5500 2900
F 0 "H1306" H 5600 2946 50  0000 L CNN
F 1 "fiducials" H 5600 2855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperBottom" H 5500 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1308
U 1 1 5ED41CB5
P 6150 2900
F 0 "H1308" H 6250 2946 50  0000 L CNN
F 1 "fiducials" H 6250 2855 50  0000 L CNN
F 2 "Fiducial:Fiducial_1mm_Dia_2.54mm_Outer_CopperBottom" H 6150 2900 50  0001 C CNN
F 3 "~" H 6150 2900 50  0001 C CNN
	1    6150 2900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1309
U 1 1 5ED41DF3
P 4250 3700
F 0 "H1309" H 4350 3746 50  0000 L CNN
F 1 "Slot" H 4350 3655 50  0000 L CNN
F 2 "servo:slot" H 4250 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1310
U 1 1 5ED46602
P 4650 3700
F 0 "H1310" H 4750 3746 50  0000 L CNN
F 1 "Slot" H 4750 3655 50  0000 L CNN
F 2 "servo:slot" H 4650 3700 50  0001 C CNN
F 3 "~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1311
U 1 1 5ED46646
P 5050 3700
F 0 "H1311" H 5150 3746 50  0000 L CNN
F 1 "Slot" H 5150 3655 50  0000 L CNN
F 2 "servo:slot" H 5050 3700 50  0001 C CNN
F 3 "~" H 5050 3700 50  0001 C CNN
	1    5050 3700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1312
U 1 1 5ED4667E
P 5450 3700
F 0 "H1312" H 5550 3746 50  0000 L CNN
F 1 "Slot" H 5550 3655 50  0000 L CNN
F 2 "servo:slot" H 5450 3700 50  0001 C CNN
F 3 "~" H 5450 3700 50  0001 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
