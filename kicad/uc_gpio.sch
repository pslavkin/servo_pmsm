EESchema Schematic File Version 4
LIBS:servo-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 14 18
Title "gpio"
Date "2020-01-09"
Rev "1.0"
Comp "dci"
Comment1 "Pablo Slavkin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3950 10400 4800 10400
Wire Wire Line
	3950 10300 4800 10300
Wire Wire Line
	3950 10200 4800 10200
Wire Wire Line
	3950 10100 4800 10100
Wire Wire Line
	3950 10000 4800 10000
Wire Wire Line
	3950 9900 4800 9900
Wire Wire Line
	3950 9800 4800 9800
Text GLabel 3150 2100 0    50   Input ~ 0
PWM_A_1H_C
Text GLabel 3150 2300 0    50   Input ~ 0
PWM_A_2H_C
Text GLabel 3150 2500 0    50   Input ~ 0
PWM_A_3H_C
Text GLabel 3150 2200 0    50   Input ~ 0
PWM_A_1L_C
Text GLabel 3150 2400 0    50   Input ~ 0
PWM_A_2L_C
Text GLabel 3150 2600 0    50   Input ~ 0
PWM_A_3L_C
Text GLabel 3150 2900 0    50   Input ~ 0
PWM_B_2H_C
Text GLabel 3150 2700 0    50   Input ~ 0
PWM_B_1H_C
Text GLabel 3150 2800 0    50   Input ~ 0
PWM_B_1L_C
Text GLabel 3150 3100 0    50   Input ~ 0
PWM_B_3H_C
Text GLabel 3150 3200 0    50   Input ~ 0
PWM_B_3L_C
Text GLabel 3150 3000 0    50   Input ~ 0
PWM_B_2L_C
Wire Wire Line
	3150 5500 4800 5500
Wire Wire Line
	3150 5600 4800 5600
Text GLabel 3100 9300 0    50   Input ~ 0
BOOT1
Text GLabel 9750 2100 2    50   Input ~ 0
BOOT2
Wire Wire Line
	8350 2100 9750 2100
Wire Wire Line
	3100 9300 4800 9300
Text GLabel 3200 5000 0    60   Output ~ 0
SCIA_TX
Text GLabel 3200 4900 0    60   Input ~ 0
SCIA_RX
Text GLabel 9700 6600 2    50   Input ~ 0
ECAT1_TX_EN
Text GLabel 9700 6700 2    50   Input ~ 0
ECAT1_TX_CLK
Text GLabel 9700 6800 2    50   Input ~ 0
ECAT1_TX_D0
Text GLabel 9700 6900 2    50   Input ~ 0
ECAT1_TX_D1
Text GLabel 9700 7100 2    50   Input ~ 0
ECAT1_TX_D2
Text GLabel 9700 7200 2    50   Input ~ 0
ECAT1_TX_D3
Text GLabel 9700 9000 2    50   Input ~ 0
ECAT_MDIO
Text GLabel 9700 8900 2    50   Input ~ 0
ECAT_MDC
Text GLabel 9700 9200 2    50   Input ~ 0
ECAT_RST
Text GLabel 9700 8600 2    50   Input ~ 0
ECAT1_RJ_LED1
Text GLabel 9700 10100 2    50   Input ~ 0
ECAT0_RX_ER
Text GLabel 9700 9900 2    50   Input ~ 0
ECAT0_RX_DV
Text GLabel 9700 10000 2    50   Input ~ 0
ECAT0_RX_CLK
Text GLabel 9700 10200 2    50   Input ~ 0
ECAT0_RX_D0
Text GLabel 9700 10300 2    50   Input ~ 0
ECAT0_RX_D1
Text GLabel 9700 10400 2    50   Input ~ 0
ECAT0_RX_D2
Text GLabel 9700 10500 2    50   Input ~ 0
ECAT0_RX_D3
Text GLabel 9700 9300 2    50   Input ~ 0
ECAT0_TX_EN
Text GLabel 9700 9400 2    50   Input ~ 0
ECAT0_TX_CLK
Text GLabel 9700 9500 2    50   Input ~ 0
ECAT0_TX_D0
Text GLabel 9700 9600 2    50   Input ~ 0
ECAT0_TX_D1
Text GLabel 9700 9700 2    50   Input ~ 0
ECAT0_TX_D2
Text GLabel 9700 9800 2    50   Input ~ 0
ECAT0_TX_D3
Wire Wire Line
	8350 8900 9700 8900
Wire Wire Line
	8350 9000 9700 9000
Wire Wire Line
	8350 9100 9700 9100
Wire Wire Line
	8350 9400 9700 9400
Wire Wire Line
	8350 9300 9700 9300
Wire Wire Line
	8350 9200 9700 9200
Wire Wire Line
	8350 9700 9700 9700
Wire Wire Line
	8350 9500 9700 9500
Wire Wire Line
	8350 10000 9700 10000
Wire Wire Line
	8350 9900 9700 9900
Wire Wire Line
	8350 9800 9700 9800
Wire Wire Line
	8350 10300 9700 10300
Wire Wire Line
	8350 10200 9700 10200
Wire Wire Line
	8350 10100 9700 10100
Wire Wire Line
	8350 10500 9700 10500
Wire Wire Line
	8350 10400 9700 10400
Wire Wire Line
	8350 8600 9700 8600
Text GLabel 3150 5500 0    50   Output ~ 0
RUN_LED0
Text GLabel 3150 5600 0    50   Output ~ 0
RUN_LED1
Text GLabel 9700 5500 2    50   Input ~ 0
ENET_TX_EN
Text GLabel 9700 5900 2    50   Input ~ 0
ENET_TX_D1
Text GLabel 9700 6000 2    50   Input ~ 0
ENET_TX_D2
Text GLabel 9700 6100 2    50   Input ~ 0
ENET_TX_D3
Text GLabel 9700 5000 2    50   Input ~ 0
ENET_RX_ER
Text GLabel 9700 4900 2    50   Input ~ 0
ENET_RX_DV
Text GLabel 9700 4800 2    50   Input ~ 0
ENET_RX_CLK
Text GLabel 9700 5100 2    50   Input ~ 0
ENET_RX_D0
Text GLabel 9700 5200 2    50   Input ~ 0
ENET_RX_D1
Text GLabel 9700 5300 2    50   Input ~ 0
ENET_RX_D2
Text GLabel 9700 5400 2    50   Input ~ 0
ENET_RX_D3
Text GLabel 9700 4700 2    50   Input ~ 0
ENET_COL
Text GLabel 9700 4600 2    50   Input ~ 0
ENET_CRS
Text GLabel 9700 4300 2    50   Input ~ 0
ENET_MDIO
Text GLabel 9700 4200 2    50   Input ~ 0
ENET_MDC
Text GLabel 9700 5600 2    50   Input ~ 0
ENET_RST
Text GLabel 9700 4500 2    50   Input ~ 0
ENET_PWDN
Text GLabel 9700 9100 2    50   Input ~ 0
ENET_CAT_XI
Wire Wire Line
	8350 5900 9700 5900
Wire Wire Line
	8350 6000 9700 6000
Wire Wire Line
	8350 6100 9700 6100
Wire Wire Line
	8350 4200 9700 4200
Wire Wire Line
	8350 4300 9700 4300
Wire Wire Line
	8350 4500 9700 4500
Wire Wire Line
	8350 4600 9700 4600
Wire Wire Line
	8350 4700 9700 4700
Wire Wire Line
	8350 5000 9700 5000
Wire Wire Line
	8350 4900 9700 4900
Wire Wire Line
	8350 4800 9700 4800
Wire Wire Line
	8350 5300 9700 5300
Wire Wire Line
	8350 5200 9700 5200
Wire Wire Line
	8350 5100 9700 5100
Wire Wire Line
	8350 5600 9700 5600
Wire Wire Line
	8350 5500 9700 5500
Wire Wire Line
	8350 5400 9700 5400
Text GLabel 9700 5800 2    50   Input ~ 0
ENET_TX_D0
Wire Wire Line
	8350 5800 9700 5800
Text GLabel 9700 5700 2    50   Input ~ 0
ENET_TX_CLK
Wire Wire Line
	8350 5700 9700 5700
Wire Wire Line
	9700 6600 8350 6600
Wire Wire Line
	8350 6700 9700 6700
Wire Wire Line
	9700 6800 8350 6800
Wire Wire Line
	8350 6900 9700 6900
Wire Wire Line
	8350 7200 9700 7200
Wire Wire Line
	8350 7100 9700 7100
Text GLabel 3150 8600 0    50   Output ~ 0
ENDAT2_CLK
Text GLabel 3150 8700 0    50   Output ~ 0
ENDAT2_CS
Wire Wire Line
	3150 8600 4800 8600
Wire Wire Line
	3150 8700 4800 8700
Text GLabel 4450 4500 0    50   Input ~ 0
QEP2_A
Text GLabel 4450 4600 0    50   Input ~ 0
QEP2_B
Text GLabel 4450 4700 0    50   Input ~ 0
QEP2_I
Text GLabel 4450 4100 0    50   Input ~ 0
QEP1_A
Text GLabel 4450 4200 0    50   Input ~ 0
QEP1_B
Text GLabel 4450 4400 0    50   Input ~ 0
QEP1_I
Wire Wire Line
	3150 7100 4800 7100
Wire Wire Line
	3150 7200 4800 7200
Text GLabel 3200 5200 0    50   Input ~ 0
CAN_TX
Text GLabel 3200 5100 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	3150 3900 4800 3900
Wire Wire Line
	3150 4000 4800 4000
Wire Wire Line
	3150 5700 4800 5700
Wire Wire Line
	3150 5800 4800 5800
Wire Wire Line
	3150 5900 4800 5900
Wire Wire Line
	3150 6000 4800 6000
Wire Wire Line
	3150 2200 4800 2200
Wire Wire Line
	3150 2300 4800 2300
Wire Wire Line
	3150 2400 4800 2400
Wire Wire Line
	3150 2500 4800 2500
Wire Wire Line
	3150 2600 4800 2600
Wire Wire Line
	3150 2700 4800 2700
Wire Wire Line
	3150 2800 4800 2800
Wire Wire Line
	3150 2900 4800 2900
Wire Wire Line
	3150 3000 4800 3000
Wire Wire Line
	3150 3100 4800 3100
Wire Wire Line
	3150 3200 4800 3200
Wire Wire Line
	3150 3400 4800 3400
Wire Wire Line
	3150 3300 4800 3300
Wire Wire Line
	3200 4900 4800 4900
Wire Wire Line
	3200 5000 4800 5000
Text GLabel 3150 5700 0    50   Input ~ 0
SD_A1
Text GLabel 3150 5800 0    50   Input ~ 0
SD_A2
Text GLabel 3150 5900 0    50   Input ~ 0
SD_A3
Text GLabel 3150 6000 0    50   Input ~ 0
SD_A4
Text GLabel 3150 3300 0    50   Input ~ 0
PWM_A_BRK_RES_C
Text GLabel 3150 3400 0    50   Input ~ 0
PWM_B_BRK_RES_C
Text GLabel 3150 7000 0    50   Input ~ 0
SD_B1
Text GLabel 3150 7100 0    50   Input ~ 0
SD_B2
Text GLabel 3150 7200 0    50   Input ~ 0
SD_B3
Wire Wire Line
	3150 7000 4800 7000
Text Notes 2400 3900 0    20   ~ 0
SD C2/3/4 goes \ndirectly inside uC\nonly and MUST  \nC1 required
Wire Wire Line
	3150 3800 4800 3800
Text GLabel 3150 3800 0    50   Input ~ 0
SD_A_CLK
Text GLabel 3150 3700 0    50   Input ~ 0
PWM4SD_CLK
Wire Wire Line
	3150 3700 4800 3700
Text Notes 2350 3750 0    20   ~ 0
one PWM channel \nfor all 8 SD
Text Notes 2400 5000 0    20   ~ 0
Sdefault gpio's for sciA \nboot, don't move
Wire Wire Line
	4450 4100 4800 4100
Wire Wire Line
	4450 4200 4800 4200
Wire Wire Line
	4450 4300 4800 4300
Text GLabel 4450 4300 0    50   Input ~ 0
QEP1_S
Wire Wire Line
	4450 4400 4800 4400
Text GLabel 4450 4800 0    50   Input ~ 0
QEP2_S
Wire Wire Line
	4450 4700 4800 4700
Wire Wire Line
	4450 4600 4800 4600
Wire Wire Line
	4450 4500 4800 4500
Wire Wire Line
	4450 4800 4800 4800
Wire Wire Line
	3150 6100 4800 6100
Wire Wire Line
	3150 6200 4800 6200
Wire Wire Line
	3150 6300 4800 6300
Wire Wire Line
	3150 6400 4800 6400
Wire Wire Line
	3150 6600 4800 6600
Wire Wire Line
	3150 6500 4800 6500
Wire Wire Line
	3150 6800 4800 6800
Wire Wire Line
	3150 6700 4800 6700
Text Notes 2400 7850 0    20   ~ 0
SD C2/3/4 goes\ndirectly inside uC\nonly and MUST  \nC1 required
Text GLabel 3150 7800 0    50   Input ~ 0
SD_B_CLK
Wire Wire Line
	3150 7300 4800 7300
Text GLabel 3150 7300 0    50   Input ~ 0
SD_B4
Text GLabel 3150 7600 0    50   Input ~ 0
RS485_RX
Text GLabel 3150 7500 0    50   Output ~ 0
RS485_TX
Text GLabel 3150 7400 0    50   Output ~ 0
RS485_EN
Wire Wire Line
	3150 7800 4800 7800
Wire Wire Line
	3150 7600 4800 7600
Wire Wire Line
	3150 7500 4800 7500
Wire Wire Line
	3150 7400 4800 7400
Wire Wire Line
	3150 8500 4800 8500
Wire Wire Line
	3150 8400 4800 8400
Wire Wire Line
	3150 8200 4800 8200
Wire Wire Line
	3150 8100 4800 8100
Wire Wire Line
	3150 8000 4800 8000
Wire Wire Line
	3150 7900 4800 7900
Text GLabel 3150 8000 0    50   Input ~ 0
ENDAT1_MISO
Text GLabel 3150 7900 0    50   Output ~ 0
ENDAT1_MOSI
Text GLabel 3150 8200 0    50   Output ~ 0
ENDAT1_CS
Text GLabel 3150 8100 0    50   Output ~ 0
ENDAT1_CLK
Text GLabel 3150 8500 0    50   Input ~ 0
ENDAT2_MISO
Text GLabel 3150 8400 0    50   Output ~ 0
ENDAT2_MOSI
Wire Wire Line
	8350 8300 9700 8300
Wire Wire Line
	8350 8200 9700 8200
Wire Wire Line
	9700 8100 8350 8100
Wire Wire Line
	8350 8000 9700 8000
Wire Wire Line
	9700 7900 8350 7900
Wire Wire Line
	8350 7800 9700 7800
Wire Wire Line
	9700 7700 8350 7700
Wire Wire Line
	8350 7600 9700 7600
Wire Wire Line
	9700 7500 8350 7500
Wire Wire Line
	8350 7400 9700 7400
Wire Wire Line
	9700 7300 8350 7300
Wire Wire Line
	8350 8500 9700 8500
Text GLabel 9700 8500 2    50   Input ~ 0
ECAT0_RJ_LED1
Text GLabel 9700 8000 2    50   Input ~ 0
ECAT0_RJ_LED0
Text GLabel 9700 8300 2    50   Input ~ 0
ECAT_LED1
Text GLabel 9700 8200 2    50   Input ~ 0
ECAT_LED0
Text GLabel 9700 8100 2    50   Input ~ 0
ECAT1_RJ_LED0
Text GLabel 9700 7900 2    50   Input ~ 0
ECAT1_RX_D3
Text GLabel 9700 7800 2    50   Input ~ 0
ECAT1_RX_D2
Text GLabel 9700 7700 2    50   Input ~ 0
ECAT1_RX_D1
Text GLabel 9700 7600 2    50   Input ~ 0
ECAT1_RX_D0
Text GLabel 9700 7400 2    50   Input ~ 0
ECAT1_RX_CLK
Text GLabel 9700 7300 2    50   Input ~ 0
ECAT1_RX_DV
Text GLabel 9700 7500 2    50   Input ~ 0
ECAT1_RX_ER
Text GLabel 3150 3500 0    50   Output ~ 0
ENDAT1_N_SKEW_CLK
Text GLabel 3150 3600 0    50   Output ~ 0
ENDAT1_Y_SKEW_CLK
Wire Wire Line
	3150 3500 4800 3500
Wire Wire Line
	3150 3600 4800 3600
Text GLabel 3150 3900 0    50   Output ~ 0
ENDAT2_N_SKEW_CLK
Text GLabel 3150 4000 0    50   Output ~ 0
ENDAT2_Y_SKEW_CLK
Wire Wire Line
	3200 5100 4800 5100
Wire Wire Line
	3200 5200 4800 5200
Text Notes 5700 1300 0    20   ~ 0
I've spend hours to choose the GPIO's for each interfase trying to not\n crash one to the other, just pay attemtion if you wanna move some\n pieces...\nI've used global labels connector to go from one page to another\n instead the off-page connector because it's more proune to\n errors.. I know that is not too orthodox.. but it's better and fastly for now
Text Notes 5150 900  0    197  ~ 39
uC GPIO's pins\n
Text GLabel 9700 3900 2    50   Input ~ 0
FLASH_SPI_CLK
Text GLabel 9700 4000 2    50   Input ~ 0
FLASH_SPI_CS
Text GLabel 9700 3700 2    50   Input ~ 0
FLASH_SPI_MOSI
Text GLabel 9700 3800 2    50   Input ~ 0
FLASH_SPI_MISO
Wire Wire Line
	8350 3700 9700 3700
Wire Wire Line
	8350 3800 9700 3800
Wire Wire Line
	8350 3900 9700 3900
Wire Wire Line
	8350 4000 9700 4000
Text GLabel 9700 8800 2    50   Input ~ 0
ECAT_EEPROM_SCL
Text GLabel 9700 8700 2    50   Input ~ 0
ECAT_EEPROM_SDA
Wire Wire Line
	8350 8700 9700 8700
Wire Wire Line
	8350 8800 9700 8800
Text GLabel 9700 3000 2    50   Input ~ 0
LCD_SPI_CLK
Text GLabel 9700 2800 2    50   Input ~ 0
LCD_SPI_MOSI
Text GLabel 9700 2700 2    50   Input ~ 0
LCD_INT
Text GLabel 9700 2900 2    50   Input ~ 0
LCD_SPI_MISO
Text GLabel 9700 3100 2    50   Input ~ 0
LCD_SPI_CS
Wire Wire Line
	8350 2800 9700 2800
Wire Wire Line
	8350 2900 9700 2900
Wire Wire Line
	8350 3000 9700 3000
Wire Wire Line
	8350 3100 9700 3100
Text GLabel 9700 2600 2    50   Input ~ 0
LCD_SPI_PDW
Wire Wire Line
	8350 2700 9700 2700
Wire Wire Line
	8350 2600 9700 2600
Text GLabel 3150 6100 0    50   Input ~ 0
FREE_OUT_A1
Text GLabel 3150 6200 0    50   Input ~ 0
FREE_OUT_A2
Text GLabel 3150 6300 0    50   Input ~ 0
FREE_IN_A3
Text GLabel 3150 6400 0    50   Input ~ 0
FREE_IN_A4
Text GLabel 3150 6500 0    50   Input ~ 0
FREE_OUT_B1
Text GLabel 3150 6600 0    50   Input ~ 0
FREE_OUT_B2
Text GLabel 3150 6700 0    50   Input ~ 0
FREE_IN_B3
Text GLabel 3150 6800 0    50   Input ~ 0
FREE_IN_B4
Wire Wire Line
	3150 2100 4800 2100
Text GLabel 3150 5400 0    50   Input ~ 0
BRK_B_MEC_C
Text GLabel 3150 5300 0    50   Input ~ 0
BRK_A_MEC_C
Wire Wire Line
	3150 5300 4800 5300
Wire Wire Line
	3150 5400 4800 5400
Wire Wire Line
	8350 9600 9700 9600
Text GLabel 3950 10400 0    50   Input ~ 0
1Wire_OUT
Text GLabel 3950 10200 0    50   Input ~ 0
1Wire_IN
Text GLabel 3950 10300 0    50   Input ~ 0
1Wire_EN
Text GLabel 3950 9800 0    50   Input ~ 0
QEP2_OUT1
Text GLabel 3950 9900 0    50   Input ~ 0
QEP2_OUT2
Text GLabel 3950 10000 0    50   Input ~ 0
QEP1_OUT1
Text GLabel 3950 10100 0    50   Input ~ 0
QEP1_OUT2
NoConn ~ 4800 8800
NoConn ~ 4800 8900
NoConn ~ 4800 9000
NoConn ~ 4800 9100
NoConn ~ 4800 9200
NoConn ~ 4800 9400
NoConn ~ 4800 9500
NoConn ~ 4800 9600
NoConn ~ 4800 9700
NoConn ~ 4800 6900
NoConn ~ 4800 7700
NoConn ~ 4800 8300
NoConn ~ 8350 3400
NoConn ~ 8350 3500
NoConn ~ 8350 3600
NoConn ~ 8350 4100
NoConn ~ 8350 4400
NoConn ~ 8350 6200
NoConn ~ 8350 6300
NoConn ~ 8350 6400
NoConn ~ 8350 6500
NoConn ~ 8350 7000
NoConn ~ 8350 8400
Text GLabel 9700 2500 2    50   Input ~ 0
LCD_GPIO0
Text GLabel 9700 2400 2    50   Input ~ 0
LCD_GPIO1
Text GLabel 9700 2300 2    50   Input ~ 0
LCD_GPIO2
Text GLabel 9700 2200 2    50   Input ~ 0
LCD_GPIO3
Wire Wire Line
	8350 2200 9700 2200
Wire Wire Line
	9700 2300 8350 2300
Wire Wire Line
	8350 2400 9700 2400
Wire Wire Line
	9700 2500 8350 2500
Text GLabel 9700 3300 2    50   Input ~ 0
LCD_GPIO5
Text GLabel 9700 3200 2    50   Input ~ 0
LCD_GPIO4
$Comp
L servo:TMS320F28388 U301
U 2 1 5DB38FFC
P 5900 6300
F 0 "U301" H 5900 10873 60  0000 C CNN
F 1 "TMS320F28388DZWTS" H 5900 10775 50  0000 C CNN
F 2 "servo:BGA337CP80_19X19_1600X1600X140B50N" H 5900 6300 50  0001 C CNN
F 3 "../doc/datasheets/tms320f28388d_datasheet.pdf" H 5900 6300 50  0001 C CNN
F 4 "TMS320F28388DZWTS" V 4300 3200 60  0001 C CNN "PartNumber"
	2    5900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3200 8350 3200
Wire Wire Line
	8350 3300 9700 3300
$EndSCHEMATC
