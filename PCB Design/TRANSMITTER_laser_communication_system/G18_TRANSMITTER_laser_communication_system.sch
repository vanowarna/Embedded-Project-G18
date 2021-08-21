EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Transmitter Circuit"
Date "2021-07-09"
Rev "2.0"
Comp "G18 - EE322 Project"
Comment1 "DEEE | Faculty of Engineering | University of Peradeniya"
Comment2 "E/17/408 WIJESOORIYA WMSD"
Comment3 "E/17/241 PERERA BPP"
Comment4 "E/17/372 WARNASOORIYA WAVG"
$EndDescr
$Comp
L Device:R R6
U 1 1 60DCFC41
P 6050 3050
F 0 "R6" H 5980 3004 50  0000 R CNN
F 1 "10k" H 5980 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5980 3050 50  0001 C CNN
F 3 "~" H 6050 3050 50  0001 C CNN
	1    6050 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C1
U 1 1 60DD3F3D
P 2350 2100
F 0 "C1" H 2465 2146 50  0000 L CNN
F 1 "100uF" H 2465 2055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2350 2100 50  0001 C CNN
F 3 "~" H 2350 2100 50  0001 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60DD4B23
P 3150 2100
F 0 "C2" H 3265 2146 50  0000 L CNN
F 1 "0.1uF" H 3265 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3188 1950 50  0001 C CNN
F 3 "~" H 3150 2100 50  0001 C CNN
	1    3150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60DDDDB3
P 2800 2400
F 0 "#PWR03" H 2800 2150 50  0001 C CNN
F 1 "GND" H 2805 2227 50  0000 C CNN
F 2 "" H 2800 2400 50  0001 C CNN
F 3 "" H 2800 2400 50  0001 C CNN
	1    2800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2400 2800 2350
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60DCE913
P 2800 1800
F 0 "U1" H 2800 2042 50  0000 C CNN
F 1 "L7805" H 2800 1951 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2825 1650 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2800 1750 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 60DE2F7B
P 2100 1800
F 0 "D1" H 2100 1583 50  0000 C CNN
F 1 "1N4007" H 2100 1674 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2100 1625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2100 1800 50  0001 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
Text GLabel 3400 1800 2    50   Input ~ 0
5V
$Comp
L Device:Crystal Y1
U 1 1 60DF5BD1
P 5650 3850
F 0 "Y1" V 5604 3981 50  0000 L CNN
F 1 "4MHz" V 5695 3981 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 5650 3850 50  0001 C CNN
F 3 "~" H 5650 3850 50  0001 C CNN
	1    5650 3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 60DF68AA
P 5350 3700
F 0 "C3" V 5098 3700 50  0000 C CNN
F 1 "22pF" V 5189 3700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5388 3550 50  0001 C CNN
F 3 "~" H 5350 3700 50  0001 C CNN
	1    5350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 60DF7852
P 5350 4000
F 0 "C4" V 5600 4000 50  0000 C CNN
F 1 "22pF" V 5500 4000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5388 3850 50  0001 C CNN
F 3 "~" H 5350 4000 50  0001 C CNN
	1    5350 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60DF82DF
P 5050 3900
F 0 "#PWR04" H 5050 3650 50  0001 C CNN
F 1 "GND" H 5055 3727 50  0000 C CNN
F 2 "" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3750 5950 3750
Wire Wire Line
	5950 3750 5950 3700
Wire Wire Line
	5950 3700 5650 3700
Wire Wire Line
	6050 3950 5950 3950
Wire Wire Line
	5950 3950 5950 4000
Wire Wire Line
	5950 4000 5650 4000
Wire Wire Line
	5200 3700 5200 3850
Wire Wire Line
	5500 4000 5650 4000
Connection ~ 5650 4000
Wire Wire Line
	5500 3700 5650 3700
Connection ~ 5650 3700
Wire Wire Line
	5050 3850 5200 3850
Connection ~ 5200 3850
Wire Wire Line
	5200 3850 5200 4000
$Comp
L power:GND #PWR05
U 1 1 60DFBE47
P 6750 5250
F 0 "#PWR05" H 6750 5000 50  0001 C CNN
F 1 "GND" H 6755 5077 50  0000 C CNN
F 2 "" H 6750 5250 50  0001 C CNN
F 3 "" H 6750 5250 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
Wire Notes Line
	1400 1400 3700 1400
Wire Notes Line
	3700 1400 3700 2700
Wire Notes Line
	3700 2700 1400 2700
Wire Notes Line
	1400 2700 1400 1400
Wire Wire Line
	6750 5150 6750 5200
Wire Wire Line
	5050 3900 5050 3850
Text GLabel 6750 2750 1    50   Input ~ 0
5V
$Comp
L Switch:SW_Push SW3
U 1 1 60E066AB
P 5650 3250
F 0 "SW3" H 5650 3535 50  0000 C CNN
F 1 "Reset" H 5650 3444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 5650 3450 50  0001 C CNN
F 3 "~" H 5650 3450 50  0001 C CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3250 6050 3250
Wire Wire Line
	6050 3250 6050 3550
Wire Wire Line
	5050 3250 5050 3850
Connection ~ 5050 3850
Wire Wire Line
	6750 2750 6750 2850
Wire Wire Line
	6050 2900 6050 2850
Wire Wire Line
	6050 2850 6750 2850
Wire Wire Line
	6050 3250 6050 3200
Connection ~ 6050 3250
Wire Wire Line
	6750 2850 6750 3250
Connection ~ 6750 2850
Text GLabel 7650 4550 2    50   Input ~ 0
BIT0
Text GLabel 7650 4450 2    50   Input ~ 0
BIT1
Text GLabel 7650 4350 2    50   Input ~ 0
BIT2
Text GLabel 7650 4250 2    50   Input ~ 0
BIT3
Wire Wire Line
	7450 4250 7650 4250
Wire Wire Line
	7450 4350 7650 4350
Wire Wire Line
	7450 4450 7650 4450
Wire Wire Line
	7650 4550 7450 4550
Text Notes 1450 2650 0    50   ~ 0
POWER SUPPLY
$Comp
L Switch:SW_DIP_x04 SW2
U 1 1 60E10399
P 2250 5700
F 0 "SW2" H 2250 5350 50  0000 C CNN
F 1 "SW_DIP_x04" H 2250 5450 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx04_Slide_9.78x12.34mm_W7.62mm_P2.54mm" H 2250 5700 50  0001 C CNN
F 3 "~" H 2250 5700 50  0001 C CNN
	1    2250 5700
	1    0    0    -1  
$EndComp
Text GLabel 1750 5650 0    50   Input ~ 0
5V
Wire Wire Line
	2850 6050 2850 5500
Wire Wire Line
	3100 5600 3100 6050
Wire Wire Line
	3350 6050 3350 5700
$Comp
L Switch:SW_Push SW1
U 1 1 60E2CD15
P 2250 5350
F 0 "SW1" H 2250 5635 50  0000 C CNN
F 1 "Send_button" H 2250 5544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2250 5550 50  0001 C CNN
F 3 "~" H 2250 5550 50  0001 C CNN
	1    2250 5350
	1    0    0    -1  
$EndComp
Text GLabel 7650 4150 2    50   Input ~ 0
SEND
Wire Wire Line
	7450 4150 7650 4150
Wire Wire Line
	1950 5800 1950 5700
Connection ~ 1950 5700
Wire Wire Line
	1750 5650 1850 5650
Wire Wire Line
	1950 5650 1950 5700
Wire Wire Line
	2050 5350 1850 5350
Wire Wire Line
	1850 5350 1850 5650
Connection ~ 1850 5650
Wire Wire Line
	1850 5650 1950 5650
$Comp
L Device:R R1
U 1 1 60E37DE3
P 2600 6200
F 0 "R1" H 2650 6250 50  0000 L CNN
F 1 "10k" H 2650 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2530 6200 50  0001 C CNN
F 3 "~" H 2600 6200 50  0001 C CNN
	1    2600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60E17DD0
P 3600 6200
F 0 "R5" H 3650 6250 50  0000 L CNN
F 1 "10k" H 3650 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3530 6200 50  0001 C CNN
F 3 "~" H 3600 6200 50  0001 C CNN
	1    3600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60E17DCA
P 3350 6200
F 0 "R4" H 3400 6250 50  0000 L CNN
F 1 "10k" H 3400 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 6200 50  0001 C CNN
F 3 "~" H 3350 6200 50  0001 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60E1659D
P 3100 6200
F 0 "R3" H 3150 6250 50  0000 L CNN
F 1 "10k" H 3150 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3030 6200 50  0001 C CNN
F 3 "~" H 3100 6200 50  0001 C CNN
	1    3100 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E157EC
P 2850 6200
F 0 "R2" H 2900 6250 50  0000 L CNN
F 1 "10k" H 2900 6150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2780 6200 50  0001 C CNN
F 3 "~" H 2850 6200 50  0001 C CNN
	1    2850 6200
	1    0    0    -1  
$EndComp
Connection ~ 3350 5700
Connection ~ 3100 5600
Connection ~ 2850 5500
Wire Wire Line
	2450 5350 2600 5350
Wire Wire Line
	3600 5800 3650 5800
Connection ~ 3600 5800
Wire Wire Line
	3350 5700 3650 5700
Wire Wire Line
	3100 5600 3650 5600
Text GLabel 3650 5350 2    50   Input ~ 0
SEND
Wire Wire Line
	3600 6050 3600 5800
Wire Wire Line
	3650 5500 2850 5500
Text GLabel 3650 5500 2    50   Input ~ 0
BIT0
Text GLabel 3650 5600 2    50   Input ~ 0
BIT1
Text GLabel 3650 5700 2    50   Input ~ 0
BIT2
Text GLabel 3650 5800 2    50   Input ~ 0
BIT3
Wire Wire Line
	2550 5500 2850 5500
Wire Wire Line
	2550 5600 3100 5600
Wire Wire Line
	2550 5700 3350 5700
Wire Wire Line
	2550 5800 3600 5800
Wire Wire Line
	2600 6050 2600 5350
Connection ~ 2600 5350
Wire Wire Line
	2600 5350 3650 5350
Connection ~ 1950 5650
Wire Wire Line
	1950 5600 1950 5650
Wire Wire Line
	1950 5500 1950 5600
Connection ~ 1950 5600
$Comp
L power:GND #PWR02
U 1 1 60E51528
P 3100 6500
F 0 "#PWR02" H 3100 6250 50  0001 C CNN
F 1 "GND" H 3105 6327 50  0000 C CNN
F 2 "" H 3100 6500 50  0001 C CNN
F 3 "" H 3100 6500 50  0001 C CNN
	1    3100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6350 2600 6450
Wire Wire Line
	2600 6450 2850 6450
Wire Wire Line
	3100 6450 3100 6500
Wire Wire Line
	3600 6350 3600 6450
Wire Wire Line
	3600 6450 3350 6450
Connection ~ 3100 6450
Wire Wire Line
	2850 6350 2850 6450
Connection ~ 2850 6450
Wire Wire Line
	2850 6450 3100 6450
Wire Wire Line
	3350 6350 3350 6450
Connection ~ 3350 6450
Wire Wire Line
	3350 6450 3100 6450
Wire Wire Line
	3100 6350 3100 6450
Text GLabel 7650 3550 2    50   Input ~ 0
LASER
Wire Wire Line
	7450 3550 7650 3550
Wire Notes Line
	4800 2400 8050 2400
Wire Notes Line
	8050 2400 8050 5600
Wire Notes Line
	8050 5600 4800 5600
Wire Notes Line
	4800 5600 4800 2400
Text Notes 4850 5550 0    50   ~ 0
CONTROLLER
Wire Notes Line
	4100 4850 4100 6850
Wire Notes Line
	4100 6850 1400 6850
Wire Notes Line
	1400 6850 1400 4850
Wire Notes Line
	1400 4850 4100 4850
Text Notes 1450 6800 0    50   ~ 0
INPUT SIGNAL
NoConn ~ 7450 3650
NoConn ~ 7450 3750
NoConn ~ 7450 3850
NoConn ~ 7450 3950
Text GLabel 8950 1500 0    50   Input ~ 0
LASER
Text GLabel 8950 1600 0    50   Input ~ 0
5V
Text GLabel 6850 5200 2    50   Input ~ 0
GND
Wire Wire Line
	6850 5200 6750 5200
Connection ~ 6750 5200
Wire Wire Line
	6750 5200 6750 5250
Text GLabel 8950 1700 0    50   Input ~ 0
GND
Wire Notes Line
	8550 1350 10150 1350
Text Notes 8600 1850 0    50   ~ 0
KY-008 LASER MODULE 
Wire Notes Line
	8550 1350 8550 1900
Wire Notes Line
	10150 1350 10150 1900
Wire Notes Line
	8550 1900 10150 1900
Wire Wire Line
	5450 3250 5050 3250
Wire Wire Line
	8950 1500 9200 1500
Wire Wire Line
	8950 1600 9200 1600
Wire Wire Line
	8950 1700 9200 1700
Wire Wire Line
	2150 2350 2800 2350
Connection ~ 2800 2350
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 60E72E63
P 9400 1600
F 0 "J2" H 9500 1700 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9300 1800 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-3-2.54_1x03_P2.54mm_Horizontal" H 9400 1600 50  0001 C CNN
F 3 "~" H 9400 1600 50  0001 C CNN
	1    9400 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 60E74EF9
P 10350 4050
F 0 "J3" H 10322 3982 50  0000 R CNN
F 1 "Conn_01x05_Male" H 10322 4073 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x05_P1.00mm_Vertical" H 10350 4050 50  0001 C CNN
F 3 "~" H 10350 4050 50  0001 C CNN
	1    10350 4050
	-1   0    0    1   
$EndComp
Text GLabel 5950 3550 0    50   Input ~ 0
MCLR
Wire Wire Line
	6050 3550 5950 3550
Text GLabel 9550 4250 0    50   Input ~ 0
MCLR
Text GLabel 9550 4150 0    50   Input ~ 0
5V
Text GLabel 9550 4050 0    50   Input ~ 0
GND
Connection ~ 6050 3550
$Comp
L MCU_Microchip_PIC16:PIC16F84A-XXP U2
U 1 1 60DCDA03
P 6750 4150
F 0 "U2" H 6850 5050 50  0000 C CNN
F 1 "PIC16F84A-XXP" H 7100 4950 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 6750 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/35007b.pdf" H 6750 4150 50  0001 C CNN
	1    6750 4150
	1    0    0    -1  
$EndComp
Text GLabel 7650 4850 2    50   Input ~ 0
DATA
Text GLabel 7650 4750 2    50   Input ~ 0
CLOCK
Wire Wire Line
	7650 4750 7450 4750
Wire Wire Line
	7450 4850 7650 4850
Text GLabel 9550 3850 0    50   Input ~ 0
CLOCK
Text GLabel 9550 3950 0    50   Input ~ 0
DATA
Wire Notes Line
	10650 3550 10650 4600
Wire Notes Line
	10650 4600 9050 4600
Wire Notes Line
	9050 4600 9050 3550
Wire Notes Line
	9050 3550 10650 3550
Text Notes 9100 4550 0    50   ~ 0
PICKIT
Wire Wire Line
	2250 1800 2350 1800
Wire Wire Line
	2350 2250 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	2800 2250 2800 2350
Wire Wire Line
	3100 1800 3150 1800
Wire Wire Line
	3150 1950 3150 1800
Connection ~ 3150 1800
Wire Wire Line
	3150 1800 3400 1800
Wire Wire Line
	3150 2250 2800 2250
Wire Wire Line
	2350 1950 2350 1800
Connection ~ 2350 1800
Wire Wire Line
	2350 1800 2500 1800
NoConn ~ 7450 4650
Wire Wire Line
	2800 2100 2800 2250
$Comp
L Device:C C5
U 1 1 60F1B0A5
P 9800 4450
F 0 "C5" V 9850 4550 50  0000 L CNN
F 1 "0.1uF" V 9850 4150 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9838 4300 50  0001 C CNN
F 3 "~" H 9800 4450 50  0001 C CNN
	1    9800 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 3850 10150 3850
Wire Wire Line
	9550 3950 10150 3950
Wire Wire Line
	9550 4050 9950 4050
Wire Wire Line
	9550 4150 9650 4150
Wire Wire Line
	9550 4250 10150 4250
Wire Wire Line
	9650 4450 9650 4150
Connection ~ 9650 4150
Wire Wire Line
	9650 4150 10150 4150
Wire Wire Line
	9950 4450 9950 4050
Connection ~ 9950 4050
Wire Wire Line
	9950 4050 10150 4050
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60E71938
P 1550 2100
F 0 "J1" H 1550 2300 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1250 2200 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 1550 2100 50  0001 C CNN
F 3 "~" H 1550 2100 50  0001 C CNN
	1    1550 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1800 1950 2100
Wire Wire Line
	1950 2100 1750 2100
Wire Wire Line
	2150 2000 1750 2000
Wire Wire Line
	2150 2000 2150 2350
$EndSCHEMATC
