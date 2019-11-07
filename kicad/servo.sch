EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "usb_emulator"
Date "25 10 2019"
Rev "1.0"
Comp "pablo slavkin"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3900 2750 1100 1150
U 5DC1676A
F0 "usb_emulator" 50
F1 "usb_emulator.sch" 50
$EndSheet
Wire Wire Line
	8300 1900 8300 1800
Wire Wire Line
	8050 1900 8300 1900
Wire Wire Line
	8050 1800 8050 1900
$Comp
L servo:PWR_FLAG #FLG?
U 1 1 5DE2AC58
P 8050 1800
AR Path="/5DC1676A/5DE2AC58" Ref="#FLG?"  Part="1" 
AR Path="/5DE2AC58" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 8050 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 8050 1974 50  0000 C CNN
F 2 "" H 8050 1800 50  0001 C CNN
F 3 "~" H 8050 1800 50  0001 C CNN
	1    8050 1800
	1    0    0    -1  
$EndComp
$Comp
L servo:VDD #VDD_3V3_?
U 1 1 5DE2AE9F
P 8300 1800
AR Path="/5DC3DC9E/5DE2AE9F" Ref="#VDD_3V3_?"  Part="1" 
AR Path="/5DE2AE9F" Ref="#VDD_3V3_0101"  Part="1" 
F 0 "#VDD_3V3_0101" H 8388 1867 20  0000 L CNN
F 1 "VDD" H 8388 1815 30  0000 L CNN
F 2 "" H 8300 1800 70  0000 C CNN
F 3 "" H 8300 1800 70  0000 C CNN
	1    8300 1800
	1    0    0    -1  
$EndComp
$Sheet
S 6050 2400 1550 2000
U 5DC3DC9E
F0 "ethernet" 50
F1 "ethernet.sch" 50
F2 "TX_D0" O L 6050 2900 50 
F3 "TX_D1" O L 6050 3000 50 
F4 "TX_D2" O L 6050 3100 50 
F5 "TX_D3" O L 6050 3200 50 
F6 "RX_D0" O L 6050 3450 50 
F7 "RX_D1" O L 6050 3550 50 
F8 "RX_D2" O L 6050 3650 50 
F9 "RX_D3" O L 6050 3750 50 
F10 "RX_DV" O L 6050 3950 50 
F11 "RX_ER" O L 6050 4050 50 
F12 "RX_CLK" O L 6050 4150 50 
F13 "COL" O R 7600 3450 50 
F14 "CRS" O R 7600 3550 50 
F15 "RST" O R 7600 3100 50 
F16 "~PWDN" O R 7600 3000 50 
F17 "MDIO" O R 7600 3800 50 
F18 "MDC" O R 7600 3700 50 
F19 "TX_CLK" O L 6050 2750 50 
F20 "TX_EN" O L 6050 2650 50 
F21 "CLK" O R 7600 3350 50 
$EndSheet
$Sheet
S 1800 4850 1050 950 
U 5DE49152
F0 "gpio" 50
F1 "gpio.sch" 50
$EndSheet
$EndSCHEMATC
