EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 18
Title "servo drive"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 12350 5450 1300 1100
U 5DC3DC9E
F0 "ethernet" 50
F1 "ethernet.sch" 50
$EndSheet
$Sheet
S 7050 6950 1300 1150
U 5DD0E9D6
F0 "uc_adc" 50
F1 "uc_adc.sch" 50
$EndSheet
$Sheet
S 12350 6950 1300 1150
U 5DC4A59D
F0 "ethercat" 50
F1 "ethercat.sch" 50
$EndSheet
$Sheet
S 7050 5400 1300 1150
U 5EAA846A
F0 "uc_power" 50
F1 "uc_power.sch" 50
$EndSheet
$Sheet
S 7050 3900 1300 1150
U 5DD4DF4C
F0 "uc_clk_dbg" 50
F1 "uc_clk_dbg.sch" 50
$EndSheet
$Sheet
S 5350 3900 1300 1150
U 5DD76B18
F0 "ac_in" 50
F1 "ac_in.sch" 50
$EndSheet
Text Notes 7350 7800 0    197  ~ 39
uC\nADC
$Sheet
S 3600 6950 1300 1150
U 5DDE8C5E
F0 "igbt" 50
F1 "igbt.sch" 50
$EndSheet
Text Notes 3950 7600 0    197  ~ 39
IGBT
Text Notes 7250 6250 0    197  ~ 39
uC \nPower
Text Notes 12650 7800 0    197  ~ 39
Ether\nCAT
$Sheet
S 8800 3900 1300 1150
U 5DE49152
F0 "temp" 50
F1 "temp.sch" 50
$EndSheet
Text Notes 9050 4600 0    197  ~ 39
TEMP
Text Notes 5800 4700 0    197  ~ 39
AC\nIN
Text Notes 12600 6250 0    197  ~ 39
Ether\nNET
Text Notes 7300 4900 0    197  ~ 39
uC\nCLK\nDbg
Text Notes 10700 4500 0    197  ~ 39
ENDAT
$Sheet
S 10500 3850 1300 1150
U 5DE3DF56
F0 "endat" 50
F1 "endat.sch" 50
$EndSheet
$Sheet
S 10550 5350 1300 1150
U 5E092156
F0 "qep" 50
F1 "qep.sch" 50
$EndSheet
Text Notes 10900 6000 0    197  ~ 39
QEP
$Sheet
S 12300 3850 1300 1150
U 5E1BAEAA
F0 "rs485" 50
F1 "rs485.sch" 50
$EndSheet
Text Notes 12500 4550 0    197  ~ 39
RS485
$Sheet
S 12300 2350 1300 1150
U 5E21534F
F0 "can" 50
F1 "can.sch" 50
$EndSheet
Text Notes 12600 3000 0    197  ~ 39
CAN
$Sheet
S 7050 2400 1300 1150
U 5E033FE4
F0 "uc_gpio" 50
F1 "uc_gpio.sch" 50
$EndSheet
Text Notes 7350 3250 0    197  ~ 39
uC\nGPIO
$Sheet
S 8800 5400 1300 1150
U 5E72D841
F0 "ui" 50
F1 "ui.sch" 50
$EndSheet
Text Notes 9250 6100 0    197  ~ 39
UI
$Sheet
S 3600 3900 1300 1150
U 605B70F2
F0 "lem" 50
F1 "lem.sch" 50
$EndSheet
Text Notes 3900 4650 0    197  ~ 39
LEM
$Sheet
S 3600 5350 1300 1150
U 605BEC04
F0 "Vbus measurement" 50
F1 "vbus_meas.sch" 50
$EndSheet
Text Notes 3850 6200 0    197  ~ 39
VBUS\nMEAS
$Sheet
S 3550 2400 1300 1150
U 5EC40F3C
F0 "sigma delta interface" 50
F1 "sd_interface.sch" 50
$EndSheet
Text Notes 3700 3300 0    197  ~ 39
SDELTA\nIFACE
Text Notes 5700 1300 0    394  ~ 79
SERVO DRIVER BLOCKS
Text Notes 8350 1650 0    20   ~ 0
The project is divided in blocks. Each block join a group os signals and\n circuits depending on his function. The project is intended to have\n reinforced insulation using double simple isolation. For that reason,\n the uC circuitery is on a cold supply and the output logic is at hot\n supply, BUT take in account that HOT is not 220, is just a name\n indicating the first isolation stage\n
$EndSCHEMATC
