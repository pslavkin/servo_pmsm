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
P 4250 4550
F 0 "H1309" H 4350 4596 50  0000 L CNN
F 1 "Slot" H 4350 4505 50  0000 L CNN
F 2 "servo:slot2" H 4250 4550 50  0001 C CNN
F 3 "~" H 4250 4550 50  0001 C CNN
	1    4250 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1310
U 1 1 5ED46602
P 4650 4550
F 0 "H1310" H 4750 4596 50  0000 L CNN
F 1 "Slot" H 4750 4505 50  0000 L CNN
F 2 "servo:slot2" H 4650 4550 50  0001 C CNN
F 3 "~" H 4650 4550 50  0001 C CNN
	1    4650 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1311
U 1 1 5ED46646
P 5050 4550
F 0 "H1311" H 5150 4596 50  0000 L CNN
F 1 "Slot" H 5150 4505 50  0000 L CNN
F 2 "servo:slot2" H 5050 4550 50  0001 C CNN
F 3 "~" H 5050 4550 50  0001 C CNN
	1    5050 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1312
U 1 1 5ED4667E
P 5450 4550
F 0 "H1312" H 5550 4596 50  0000 L CNN
F 1 "Slot" H 5550 4505 50  0000 L CNN
F 2 "servo:slot2" H 5450 4550 50  0001 C CNN
F 3 "~" H 5450 4550 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1313
U 1 1 5E3A85CC
P 4250 4900
F 0 "H1313" H 4350 4946 50  0000 L CNN
F 1 "Slot" H 4350 4855 50  0000 L CNN
F 2 "servo:slot2" H 4250 4900 50  0001 C CNN
F 3 "~" H 4250 4900 50  0001 C CNN
	1    4250 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1319
U 1 1 5E3A85D3
P 4650 4900
F 0 "H1319" H 4750 4946 50  0000 L CNN
F 1 "Slot" H 4750 4855 50  0000 L CNN
F 2 "servo:slot2" H 4650 4900 50  0001 C CNN
F 3 "~" H 4650 4900 50  0001 C CNN
	1    4650 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1325
U 1 1 5E3A85DA
P 5050 4900
F 0 "H1325" H 5150 4946 50  0000 L CNN
F 1 "Slot" H 5150 4855 50  0000 L CNN
F 2 "servo:slot2" H 5050 4900 50  0001 C CNN
F 3 "~" H 5050 4900 50  0001 C CNN
	1    5050 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1331
U 1 1 5E3A85E1
P 5450 4900
F 0 "H1331" H 5550 4946 50  0000 L CNN
F 1 "Slot" H 5550 4855 50  0000 L CNN
F 2 "servo:slot2" H 5450 4900 50  0001 C CNN
F 3 "~" H 5450 4900 50  0001 C CNN
	1    5450 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1314
U 1 1 5E3A863A
P 4250 5200
F 0 "H1314" H 4350 5246 50  0000 L CNN
F 1 "Slot" H 4350 5155 50  0000 L CNN
F 2 "servo:slot2" H 4250 5200 50  0001 C CNN
F 3 "~" H 4250 5200 50  0001 C CNN
	1    4250 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1320
U 1 1 5E3A8641
P 4650 5200
F 0 "H1320" H 4750 5246 50  0000 L CNN
F 1 "Slot" H 4750 5155 50  0000 L CNN
F 2 "servo:slot2" H 4650 5200 50  0001 C CNN
F 3 "~" H 4650 5200 50  0001 C CNN
	1    4650 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1326
U 1 1 5E3A8648
P 5050 5200
F 0 "H1326" H 5150 5246 50  0000 L CNN
F 1 "Slot" H 5150 5155 50  0000 L CNN
F 2 "servo:slot2" H 5050 5200 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1332
U 1 1 5E3A864F
P 5450 5200
F 0 "H1332" H 5550 5246 50  0000 L CNN
F 1 "Slot" H 5550 5155 50  0000 L CNN
F 2 "servo:slot2" H 5450 5200 50  0001 C CNN
F 3 "~" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1315
U 1 1 5E3A86C0
P 4250 5550
F 0 "H1315" H 4350 5596 50  0000 L CNN
F 1 "Slot" H 4350 5505 50  0000 L CNN
F 2 "servo:slot2" H 4250 5550 50  0001 C CNN
F 3 "~" H 4250 5550 50  0001 C CNN
	1    4250 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1321
U 1 1 5E3A86C7
P 4650 5550
F 0 "H1321" H 4750 5596 50  0000 L CNN
F 1 "Slot" H 4750 5505 50  0000 L CNN
F 2 "servo:slot2" H 4650 5550 50  0001 C CNN
F 3 "~" H 4650 5550 50  0001 C CNN
	1    4650 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1327
U 1 1 5E3A86CE
P 5050 5550
F 0 "H1327" H 5150 5596 50  0000 L CNN
F 1 "Slot" H 5150 5505 50  0000 L CNN
F 2 "servo:slot2" H 5050 5550 50  0001 C CNN
F 3 "~" H 5050 5550 50  0001 C CNN
	1    5050 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1333
U 1 1 5E3A86D5
P 5450 5550
F 0 "H1333" H 5550 5596 50  0000 L CNN
F 1 "Slot" H 5550 5505 50  0000 L CNN
F 2 "servo:slot2" H 5450 5550 50  0001 C CNN
F 3 "~" H 5450 5550 50  0001 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1316
U 1 1 5E3A8766
P 4250 5900
F 0 "H1316" H 4350 5946 50  0000 L CNN
F 1 "Slot" H 4350 5855 50  0000 L CNN
F 2 "servo:slot2" H 4250 5900 50  0001 C CNN
F 3 "~" H 4250 5900 50  0001 C CNN
	1    4250 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1322
U 1 1 5E3A876D
P 4650 5900
F 0 "H1322" H 4750 5946 50  0000 L CNN
F 1 "Slot" H 4750 5855 50  0000 L CNN
F 2 "servo:slot2" H 4650 5900 50  0001 C CNN
F 3 "~" H 4650 5900 50  0001 C CNN
	1    4650 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1328
U 1 1 5E3A8774
P 5050 5900
F 0 "H1328" H 5150 5946 50  0000 L CNN
F 1 "Slot" H 5150 5855 50  0000 L CNN
F 2 "servo:slot2" H 5050 5900 50  0001 C CNN
F 3 "~" H 5050 5900 50  0001 C CNN
	1    5050 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1334
U 1 1 5E3A877B
P 5450 5900
F 0 "H1334" H 5550 5946 50  0000 L CNN
F 1 "Slot" H 5550 5855 50  0000 L CNN
F 2 "servo:slot2" H 5450 5900 50  0001 C CNN
F 3 "~" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1317
U 1 1 5E3A87FC
P 4250 6200
F 0 "H1317" H 4350 6246 50  0000 L CNN
F 1 "Slot" H 4350 6155 50  0000 L CNN
F 2 "servo:slot2" H 4250 6200 50  0001 C CNN
F 3 "~" H 4250 6200 50  0001 C CNN
	1    4250 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1323
U 1 1 5E3A8803
P 4650 6200
F 0 "H1323" H 4750 6246 50  0000 L CNN
F 1 "Slot" H 4750 6155 50  0000 L CNN
F 2 "servo:slot2" H 4650 6200 50  0001 C CNN
F 3 "~" H 4650 6200 50  0001 C CNN
	1    4650 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1329
U 1 1 5E3A880A
P 5050 6200
F 0 "H1329" H 5150 6246 50  0000 L CNN
F 1 "Slot" H 5150 6155 50  0000 L CNN
F 2 "servo:slot2" H 5050 6200 50  0001 C CNN
F 3 "~" H 5050 6200 50  0001 C CNN
	1    5050 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1335
U 1 1 5E3A8811
P 5450 6200
F 0 "H1335" H 5550 6246 50  0000 L CNN
F 1 "Slot" H 5550 6155 50  0000 L CNN
F 2 "servo:slot2" H 5450 6200 50  0001 C CNN
F 3 "~" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1318
U 1 1 5E3A88A2
P 4250 6550
F 0 "H1318" H 4350 6596 50  0000 L CNN
F 1 "Slot" H 4350 6505 50  0000 L CNN
F 2 "servo:slot2" H 4250 6550 50  0001 C CNN
F 3 "~" H 4250 6550 50  0001 C CNN
	1    4250 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1324
U 1 1 5E3A88A9
P 4650 6550
F 0 "H1324" H 4750 6596 50  0000 L CNN
F 1 "Slot" H 4750 6505 50  0000 L CNN
F 2 "servo:slot2" H 4650 6550 50  0001 C CNN
F 3 "~" H 4650 6550 50  0001 C CNN
	1    4650 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1330
U 1 1 5E3A88B0
P 5050 6550
F 0 "H1330" H 5150 6596 50  0000 L CNN
F 1 "Slot" H 5150 6505 50  0000 L CNN
F 2 "servo:slot2" H 5050 6550 50  0001 C CNN
F 3 "~" H 5050 6550 50  0001 C CNN
	1    5050 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1336
U 1 1 5E3A88B7
P 5450 6550
F 0 "H1336" H 5550 6596 50  0000 L CNN
F 1 "Slot" H 5550 6505 50  0000 L CNN
F 2 "servo:slot2" H 5450 6550 50  0001 C CNN
F 3 "~" H 5450 6550 50  0001 C CNN
	1    5450 6550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1337
U 1 1 5E3A8C26
P 4250 6900
F 0 "H1337" H 4350 6946 50  0000 L CNN
F 1 "Slot" H 4350 6855 50  0000 L CNN
F 2 "servo:slot2" H 4250 6900 50  0001 C CNN
F 3 "~" H 4250 6900 50  0001 C CNN
	1    4250 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1339
U 1 1 5E3A8C2D
P 4650 6900
F 0 "H1339" H 4750 6946 50  0000 L CNN
F 1 "Slot" H 4750 6855 50  0000 L CNN
F 2 "servo:slot2" H 4650 6900 50  0001 C CNN
F 3 "~" H 4650 6900 50  0001 C CNN
	1    4650 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1341
U 1 1 5E3A8C34
P 5050 6900
F 0 "H1341" H 5150 6946 50  0000 L CNN
F 1 "Slot" H 5150 6855 50  0000 L CNN
F 2 "servo:slot2" H 5050 6900 50  0001 C CNN
F 3 "~" H 5050 6900 50  0001 C CNN
	1    5050 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1343
U 1 1 5E3A8C3B
P 5450 6900
F 0 "H1343" H 5550 6946 50  0000 L CNN
F 1 "Slot" H 5550 6855 50  0000 L CNN
F 2 "servo:slot2" H 5450 6900 50  0001 C CNN
F 3 "~" H 5450 6900 50  0001 C CNN
	1    5450 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1338
U 1 1 5E3A8CE4
P 4250 7300
F 0 "H1338" H 4350 7346 50  0000 L CNN
F 1 "Slot" H 4350 7255 50  0000 L CNN
F 2 "servo:slot2" H 4250 7300 50  0001 C CNN
F 3 "~" H 4250 7300 50  0001 C CNN
	1    4250 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1340
U 1 1 5E3A8CEB
P 4650 7300
F 0 "H1340" H 4750 7346 50  0000 L CNN
F 1 "Slot" H 4750 7255 50  0000 L CNN
F 2 "servo:slot2" H 4650 7300 50  0001 C CNN
F 3 "~" H 4650 7300 50  0001 C CNN
	1    4650 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1342
U 1 1 5E3A8CF2
P 5050 7300
F 0 "H1342" H 5150 7346 50  0000 L CNN
F 1 "Slot" H 5150 7255 50  0000 L CNN
F 2 "servo:slot2" H 5050 7300 50  0001 C CNN
F 3 "~" H 5050 7300 50  0001 C CNN
	1    5050 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1344
U 1 1 5E3A8CF9
P 5450 7300
F 0 "H1344" H 5550 7346 50  0000 L CNN
F 1 "Slot" H 5550 7255 50  0000 L CNN
F 2 "servo:slot2" H 5450 7300 50  0001 C CNN
F 3 "~" H 5450 7300 50  0001 C CNN
	1    5450 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1345
U 1 1 5E41B625
P 7050 4500
F 0 "H1345" H 7150 4546 50  0000 L CNN
F 1 "Slot" H 7150 4455 50  0000 L CNN
F 2 "servo:slot_v" H 7050 4500 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1346
U 1 1 5E41B9B9
P 7550 4500
F 0 "H1346" H 7650 4546 50  0000 L CNN
F 1 "Slot" H 7650 4455 50  0000 L CNN
F 2 "servo:slot_v" H 7550 4500 50  0001 C CNN
F 3 "~" H 7550 4500 50  0001 C CNN
	1    7550 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1347
U 1 1 5E41BB6F
P 8650 4500
F 0 "H1347" H 8750 4546 50  0000 L CNN
F 1 "Slot" H 8750 4455 50  0000 L CNN
F 2 "servo:slot_v" H 8650 4500 50  0001 C CNN
F 3 "~" H 8650 4500 50  0001 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1348
U 1 1 5E41BBF1
P 8100 4500
F 0 "H1348" H 8200 4546 50  0000 L CNN
F 1 "Slot" H 8200 4455 50  0000 L CNN
F 2 "servo:slot_v" H 8100 4500 50  0001 C CNN
F 3 "~" H 8100 4500 50  0001 C CNN
	1    8100 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1349
U 1 1 5E41C227
P 7050 4800
F 0 "H1349" H 7150 4846 50  0000 L CNN
F 1 "Slot" H 7150 4755 50  0000 L CNN
F 2 "servo:slot_v" H 7050 4800 50  0001 C CNN
F 3 "~" H 7050 4800 50  0001 C CNN
	1    7050 4800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1351
U 1 1 5E41C22E
P 7550 4800
F 0 "H1351" H 7650 4846 50  0000 L CNN
F 1 "Slot" H 7650 4755 50  0000 L CNN
F 2 "servo:slot_v" H 7550 4800 50  0001 C CNN
F 3 "~" H 7550 4800 50  0001 C CNN
	1    7550 4800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1355
U 1 1 5E41C235
P 8650 4800
F 0 "H1355" H 8750 4846 50  0000 L CNN
F 1 "Slot" H 8750 4755 50  0000 L CNN
F 2 "servo:slot_v" H 8650 4800 50  0001 C CNN
F 3 "~" H 8650 4800 50  0001 C CNN
	1    8650 4800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1353
U 1 1 5E41C23C
P 8100 4800
F 0 "H1353" H 8200 4846 50  0000 L CNN
F 1 "Slot" H 8200 4755 50  0000 L CNN
F 2 "servo:slot_v" H 8100 4800 50  0001 C CNN
F 3 "~" H 8100 4800 50  0001 C CNN
	1    8100 4800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1350
U 1 1 5E41C3B7
P 7050 5100
F 0 "H1350" H 7150 5146 50  0000 L CNN
F 1 "Slot" H 7150 5055 50  0000 L CNN
F 2 "servo:slot_v" H 7050 5100 50  0001 C CNN
F 3 "~" H 7050 5100 50  0001 C CNN
	1    7050 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1352
U 1 1 5E41C3BE
P 7550 5100
F 0 "H1352" H 7650 5146 50  0000 L CNN
F 1 "Slot" H 7650 5055 50  0000 L CNN
F 2 "servo:slot_v" H 7550 5100 50  0001 C CNN
F 3 "~" H 7550 5100 50  0001 C CNN
	1    7550 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1356
U 1 1 5E41C3C5
P 8650 5100
F 0 "H1356" H 8750 5146 50  0000 L CNN
F 1 "Slot" H 8750 5055 50  0000 L CNN
F 2 "servo:slot_v" H 8650 5100 50  0001 C CNN
F 3 "~" H 8650 5100 50  0001 C CNN
	1    8650 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1354
U 1 1 5E41C3CC
P 8100 5100
F 0 "H1354" H 8200 5146 50  0000 L CNN
F 1 "Slot" H 8200 5055 50  0000 L CNN
F 2 "servo:slot_v" H 8100 5100 50  0001 C CNN
F 3 "~" H 8100 5100 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
Text Notes 7400 4400 0    118  ~ 24
SLOT V LEMs\n\n
Text Notes 4200 4700 0    118  ~ 24
SLOT 'I' anyware\n\n\n
$Comp
L servo:high_voltage ref1302
U 1 1 5E38C9D6
P 13200 3450
F 0 "ref1302" V 13110 3450 50  0001 C CNN
F 1 "high_voltage" V 13290 3450 50  0001 C CNN
F 2 "servo:Symbol_Highvoltage_Type1_CopperTop_Small" H 13400 3950 50  0001 C CNN
F 3 "~" H 13600 3350 50  0001 C CNN
	1    13200 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:logo ref1301
U 1 1 5E392BDD
P 13350 2650
F 0 "ref1301" H 13350 2850 50  0001 C CNN
F 1 "kicad" H 13678 2650 50  0000 L CNN
F 2 "Symbol:KiCad-Logo_6mm_SilkScreen" H 13350 2650 50  0001 C CNN
F 3 "~" H 13350 2650 50  0001 C CNN
	1    13350 2650
	1    0    0    -1  
$EndComp
$Comp
L servo:logo logo1301
U 1 1 5E3976AE
P 13350 2350
F 0 "logo1301" H 13350 2550 50  0001 C CNN
F 1 "nanocut" H 13678 2350 50  0000 L CNN
F 2 "servo:logo_nanocut" H 13350 2350 50  0001 C CNN
F 3 "~" H 13350 2350 50  0001 C CNN
	1    13350 2350
	1    0    0    -1  
$EndComp
$Comp
L servo:logo logo1302
U 1 1 5E399FD9
P 13400 2950
F 0 "logo1302" H 13400 3150 50  0001 C CNN
F 1 "pslavkin" H 13728 2950 50  0000 L CNN
F 2 "servo:logo_pslavkin" H 13400 2950 50  0001 C CNN
F 3 "~" H 13400 2950 50  0001 C CNN
	1    13400 2950
	1    0    0    -1  
$EndComp
$Comp
L servo:logo logo1303
U 1 1 5E39C5EE
P 13350 2050
F 0 "logo1303" H 13350 2250 50  0001 C CNN
F 1 "recycler" H 13678 2050 50  0000 L CNN
F 2 "Symbol:WEEE-Logo_5.6x8mm_SilkScreen" H 13350 2050 50  0001 C CNN
F 3 "~" H 13350 2050 50  0001 C CNN
	1    13350 2050
	1    0    0    -1  
$EndComp
$Comp
L servo:high_voltage ref1303
U 1 1 5E39D206
P 13350 3450
F 0 "ref1303" V 13260 3450 50  0001 C CNN
F 1 "high_voltage" V 13440 3450 50  0001 C CNN
F 2 "servo:Symbol_Highvoltage_Type1_CopperTop_Small" H 13550 3950 50  0001 C CNN
F 3 "~" H 13750 3350 50  0001 C CNN
	1    13350 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:high_voltage ref1304
U 1 1 5E39D283
P 13500 3450
F 0 "ref1304" V 13410 3450 50  0001 C CNN
F 1 "high_voltage" V 13590 3450 50  0001 C CNN
F 2 "servo:Symbol_Highvoltage_Type1_CopperTop_Small" H 13700 3950 50  0001 C CNN
F 3 "~" H 13900 3350 50  0001 C CNN
	1    13500 3450
	1    0    0    -1  
$EndComp
$Comp
L servo:high_voltage ref1305
U 1 1 5E39D300
P 13650 3450
F 0 "ref1305" V 13560 3450 50  0001 C CNN
F 1 "high_voltage" V 13740 3450 50  0001 C CNN
F 2 "servo:Symbol_Highvoltage_Type1_CopperTop_Small" H 13850 3950 50  0001 C CNN
F 3 "~" H 14050 3350 50  0001 C CNN
	1    13650 3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1357
U 1 1 5E39587A
P 5450 7600
F 0 "H1357" H 5550 7646 50  0000 L CNN
F 1 "Slot" H 5550 7555 50  0000 L CNN
F 2 "servo:slot2" H 5450 7600 50  0001 C CNN
F 3 "~" H 5450 7600 50  0001 C CNN
	1    5450 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1358
U 1 1 5E397C76
P 5050 7600
F 0 "H1358" H 5150 7646 50  0000 L CNN
F 1 "Slot" H 5150 7555 50  0000 L CNN
F 2 "servo:slot2" H 5050 7600 50  0001 C CNN
F 3 "~" H 5050 7600 50  0001 C CNN
	1    5050 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1359
U 1 1 5E3A215E
P 10250 4400
F 0 "H1359" H 10350 4446 50  0000 L CNN
F 1 "Slot" H 10350 4355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10250 4400 50  0001 C CNN
F 3 "~" H 10250 4400 50  0001 C CNN
	1    10250 4400
	1    0    0    -1  
$EndComp
Text Notes 9750 4100 0    118  ~ 24
mounting holes\n
$Comp
L servo:logo logo1304
U 1 1 5E3A5304
P 13350 3900
F 0 "logo1304" H 13350 4100 50  0001 C CNN
F 1 "servo_driver" H 13678 3900 50  0000 L CNN
F 2 "servo:logo_pslavkin" H 13350 3900 50  0001 C CNN
F 3 "~" H 13350 3900 50  0001 C CNN
	1    13350 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
