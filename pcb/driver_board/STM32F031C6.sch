EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6121C48B
P 1700 2550
AR Path="/6121C48B" Ref="J?"  Part="1" 
AR Path="/6121200F/6121C48B" Ref="J2"  Part="1" 
AR Path="/61228324/6121C48B" Ref="J?"  Part="1" 
AR Path="/61233186/6121C48B" Ref="JB1"  Part="1" 
F 0 "JB1" H 1750 2867 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1750 2776 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1700 2550 50  0001 C CNN
F 3 "~" H 1700 2550 50  0001 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6121C491
P 1750 2800
AR Path="/6121C491" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6121C491" Ref="#PWR0104"  Part="1" 
AR Path="/61228324/6121C491" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6121C491" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1750 2550 50  0001 C CNN
F 1 "GND" H 1755 2627 50  0000 C CNN
F 2 "" H 1750 2800 50  0001 C CNN
F 3 "" H 1750 2800 50  0001 C CNN
	1    1750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2650 1500 2800
Wire Wire Line
	1500 2800 1750 2800
Wire Wire Line
	2000 2650 2000 2800
Wire Wire Line
	2000 2800 1750 2800
Connection ~ 1750 2800
Text Label 1300 2450 0    50   ~ 0
V3.3
Text Label 2200 2450 2    50   ~ 0
V3.3
Wire Wire Line
	1300 2450 1500 2450
Wire Wire Line
	2200 2450 2000 2450
Text Label 3900 2350 0    50   ~ 0
BOOT0
Text Label 3900 3650 0    50   ~ 0
BOOT1
Wire Wire Line
	3900 2350 4200 2350
$Comp
L Device:R RA?
U 1 1 612376A7
P 1150 2550
AR Path="/6121200F/612376A7" Ref="RA?"  Part="1" 
AR Path="/61233186/612376A7" Ref="RB1"  Part="1" 
F 0 "RB1" V 943 2550 50  0000 C CNN
F 1 "100K" V 1034 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 2550 50  0001 C CNN
F 3 "~" H 1150 2550 50  0001 C CNN
	1    1150 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R RA?
U 1 1 61237883
P 2350 2550
AR Path="/6121200F/61237883" Ref="RA?"  Part="1" 
AR Path="/61233186/61237883" Ref="RB2"  Part="1" 
F 0 "RB2" V 2143 2550 50  0000 C CNN
F 1 "100K" V 2234 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2280 2550 50  0001 C CNN
F 3 "~" H 2350 2550 50  0001 C CNN
	1    2350 2550
	0    1    1    0   
$EndComp
Text Label 700  2550 0    50   ~ 0
BOOT0
Text Label 2800 2550 2    50   ~ 0
BOOT1
Wire Wire Line
	700  2550 1000 2550
Wire Wire Line
	1300 2550 1500 2550
Wire Wire Line
	2000 2550 2200 2550
Wire Wire Line
	2500 2550 2800 2550
$Comp
L Device:C CA?
U 1 1 6125FA6A
P 9300 2350
AR Path="/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA6A" Ref="CB5"  Part="1" 
F 0 "CB5" H 9415 2396 50  0000 L CNN
F 1 "0.1uF" H 9415 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9338 2200 50  0001 C CNN
F 3 "~" H 9300 2350 50  0001 C CNN
	1    9300 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA70
P 9300 2600
AR Path="/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA70" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 9300 2350 50  0001 C CNN
F 1 "GND" H 9305 2427 50  0000 C CNN
F 2 "" H 9300 2600 50  0001 C CNN
F 3 "" H 9300 2600 50  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
Text Label 9300 2000 3    50   ~ 0
V3.3
Wire Wire Line
	9300 2000 9300 2200
Wire Wire Line
	9300 2500 9300 2600
$Comp
L Device:C CA?
U 1 1 6125FA88
P 8400 2350
AR Path="/6125FA88" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA88" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA88" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA88" Ref="CB3"  Part="1" 
F 0 "CB3" H 8515 2396 50  0000 L CNN
F 1 "0.1uF" H 8515 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8438 2200 50  0001 C CNN
F 3 "~" H 8400 2350 50  0001 C CNN
	1    8400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA8E
P 8400 2600
AR Path="/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA8E" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 8400 2350 50  0001 C CNN
F 1 "GND" H 8405 2427 50  0000 C CNN
F 2 "" H 8400 2600 50  0001 C CNN
F 3 "" H 8400 2600 50  0001 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
Text Label 8400 2000 3    50   ~ 0
V3.3
Wire Wire Line
	8400 2000 8400 2200
Wire Wire Line
	8400 2500 8400 2600
$Comp
L Device:C CA?
U 1 1 6125FA97
P 8850 2350
AR Path="/6125FA97" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA97" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA97" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA97" Ref="CB4"  Part="1" 
F 0 "CB4" H 8965 2396 50  0000 L CNN
F 1 "0.1uF" H 8965 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8888 2200 50  0001 C CNN
F 3 "~" H 8850 2350 50  0001 C CNN
	1    8850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA9D
P 8850 2600
AR Path="/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA9D" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 8850 2350 50  0001 C CNN
F 1 "GND" H 8855 2427 50  0000 C CNN
F 2 "" H 8850 2600 50  0001 C CNN
F 3 "" H 8850 2600 50  0001 C CNN
	1    8850 2600
	1    0    0    -1  
$EndComp
Text Label 8850 2000 3    50   ~ 0
V3.3
Wire Wire Line
	8850 2000 8850 2200
Wire Wire Line
	8850 2500 8850 2600
$Comp
L Device:Crystal YA?
U 1 1 61262268
P 1100 3700
AR Path="/6121200F/61262268" Ref="YA?"  Part="1" 
AR Path="/61233186/61262268" Ref="YB1"  Part="1" 
F 0 "YB1" V 1054 3831 50  0000 L CNN
F 1 "8MHZ" V 1145 3831 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 1100 3700 50  0001 C CNN
F 3 "~" H 1100 3700 50  0001 C CNN
	1    1100 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C CA?
U 1 1 6126226E
P 850 3500
AR Path="/6126226E" Ref="CA?"  Part="1" 
AR Path="/6121200F/6126226E" Ref="CA?"  Part="1" 
AR Path="/61228324/6126226E" Ref="CA?"  Part="1" 
AR Path="/61233186/6126226E" Ref="CB7"  Part="1" 
F 0 "CB7" H 965 3546 50  0000 L CNN
F 1 "20pF" H 965 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 888 3350 50  0001 C CNN
F 3 "~" H 850 3500 50  0001 C CNN
	1    850  3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C CA?
U 1 1 61262274
P 850 3900
AR Path="/61262274" Ref="CA?"  Part="1" 
AR Path="/6121200F/61262274" Ref="CA?"  Part="1" 
AR Path="/61228324/61262274" Ref="CA?"  Part="1" 
AR Path="/61233186/61262274" Ref="CB8"  Part="1" 
F 0 "CB8" H 965 3946 50  0000 L CNN
F 1 "20pF" H 965 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 888 3750 50  0001 C CNN
F 3 "~" H 850 3900 50  0001 C CNN
	1    850  3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	700  3500 700  3900
Wire Wire Line
	1000 3500 1100 3500
Wire Wire Line
	1100 3500 1100 3550
Wire Wire Line
	1000 3900 1100 3900
Wire Wire Line
	1100 3900 1100 3850
Text Label 1200 3500 0    50   ~ 0
RCC_OSC_IN
Text Label 1200 3900 0    50   ~ 0
RCC_OSC_OUT
Wire Wire Line
	1200 3500 1100 3500
Connection ~ 1100 3500
Wire Wire Line
	1200 3900 1100 3900
Connection ~ 1100 3900
Text Label 3900 2550 2    50   ~ 0
RCC_OSC_IN
Text Label 3850 2650 2    50   ~ 0
RCC_OSC_OUT
Wire Wire Line
	3900 2550 4200 2550
Wire Wire Line
	3850 2650 4200 2650
$Comp
L Connector_Generic:Conn_01x04 JA?
U 1 1 6127274F
P 750 4500
AR Path="/6121200F/6127274F" Ref="JA?"  Part="1" 
AR Path="/61233186/6127274F" Ref="JB2"  Part="1" 
F 0 "JB2" H 668 4167 50  0000 C CNN
F 1 "Conn_01x04" H 830 4401 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 750 4500 50  0001 C CNN
F 3 "~" H 750 4500 50  0001 C CNN
	1    750  4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61272755
P 950 4850
AR Path="/61272755" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61272755" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61272755" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61272755" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 950 4600 50  0001 C CNN
F 1 "GND" H 955 4677 50  0000 C CNN
F 2 "" H 950 4850 50  0001 C CNN
F 3 "" H 950 4850 50  0001 C CNN
	1    950  4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C CA?
U 1 1 6127275B
P 1550 4450
AR Path="/6127275B" Ref="CA?"  Part="1" 
AR Path="/6121200F/6127275B" Ref="CA?"  Part="1" 
AR Path="/61228324/6127275B" Ref="CA?"  Part="1" 
AR Path="/61233186/6127275B" Ref="CB9"  Part="1" 
F 0 "CB9" H 1665 4496 50  0000 L CNN
F 1 "0.1uF" H 1665 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 4300 50  0001 C CNN
F 3 "~" H 1550 4450 50  0001 C CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
Text Label 1150 4300 2    50   ~ 0
V3.3
Wire Wire Line
	950  4300 1550 4300
Wire Wire Line
	1550 4600 950  4600
Wire Wire Line
	950  4850 950  4600
Connection ~ 950  4600
Text Label 1200 4400 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 1200 4500 0    50   ~ 0
SYS_JTCK-SWCL
Wire Wire Line
	950  4400 1200 4400
Wire Wire Line
	950  4500 1200 4500
Text Label 5650 4750 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 5650 4850 0    50   ~ 0
SYS_JTCK-SWCL
$Comp
L MCU_ST_STM32F0:STM32F031C6Tx UB1
U 1 1 612773A3
P 4800 3550
F 0 "UB1" H 4800 3600 50  0000 C CNN
F 1 "STM32F031C6Tx" H 4800 3500 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4300 2050 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00104043.pdf" H 4800 3550 50  0001 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4750 5400 4750
Wire Wire Line
	5650 4850 5400 4850
Wire Wire Line
	4700 5150 4700 5200
Wire Wire Line
	4700 5200 4800 5200
Connection ~ 4800 5200
Wire Wire Line
	4800 5200 4800 5150
Wire Wire Line
	3900 3650 4200 3650
Text HLabel 6000 3650 2    50   Input ~ 0
F031_TX
Text HLabel 6000 4950 2    50   Input ~ 0
F031_RX
$Comp
L Device:Crystal_GND23 YB2
U 1 1 611DE5D3
P 2100 3700
F 0 "YB2" V 2054 3944 50  0000 L CNN
F 1 "32768HZ" V 2145 3944 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABS25-4Pin_8.0x3.8mm" H 2100 3700 50  0001 C CNN
F 3 "~" H 2100 3700 50  0001 C CNN
	1    2100 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C CA?
U 1 1 611E09CA
P 1850 3500
AR Path="/611E09CA" Ref="CA?"  Part="1" 
AR Path="/6121200F/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09CA" Ref="CB10"  Part="1" 
F 0 "CB10" H 1965 3546 50  0000 L CNN
F 1 "20pF" H 1965 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1888 3350 50  0001 C CNN
F 3 "~" H 1850 3500 50  0001 C CNN
	1    1850 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C CA?
U 1 1 611E09D4
P 1850 3900
AR Path="/611E09D4" Ref="CA?"  Part="1" 
AR Path="/6121200F/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09D4" Ref="CB11"  Part="1" 
F 0 "CB11" H 1965 3946 50  0000 L CNN
F 1 "20pF" H 1965 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1888 3750 50  0001 C CNN
F 3 "~" H 1850 3900 50  0001 C CNN
	1    1850 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 3500 1700 3900
Wire Wire Line
	2000 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3550
Wire Wire Line
	2000 3900 2100 3900
Wire Wire Line
	2100 3900 2100 3850
Text Label 2200 3500 0    50   ~ 0
RCC_OSC32_IN
Text Label 2200 3900 0    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	2200 3500 2100 3500
Connection ~ 2100 3500
Wire Wire Line
	2200 3900 2100 3900
Connection ~ 2100 3900
Text Label 3950 3150 2    50   ~ 0
RCC_OSC32_IN
Text Label 3950 3250 2    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	3950 3150 4200 3150
Wire Wire Line
	3950 3250 4200 3250
Text Label 5550 3650 0    50   ~ 0
USART1_TX
Wire Wire Line
	5400 3650 6000 3650
Text Label 5550 4950 0    50   ~ 0
USART1_RX
Wire Wire Line
	5400 4950 6000 4950
Text GLabel 850  1550 0    50   Input ~ 0
+3.3V
Text Label 1000 1550 0    50   ~ 0
V3.3
Wire Wire Line
	1000 1550 850  1550
Text Label 4800 1900 1    50   ~ 0
VDD1
Text Label 4900 1900 1    50   ~ 0
VDD2
Wire Wire Line
	4800 1900 4800 1950
Wire Wire Line
	4900 1900 4900 1950
$Comp
L Device:C CA?
U 1 1 612E8AC1
P 4750 1100
AR Path="/612E8AC1" Ref="CA?"  Part="1" 
AR Path="/6121200F/612E8AC1" Ref="CA?"  Part="1" 
AR Path="/61228324/612E8AC1" Ref="CA?"  Part="1" 
AR Path="/61233186/612E8AC1" Ref="CB6"  Part="1" 
F 0 "CB6" H 4865 1146 50  0000 L CNN
F 1 "0.1uF" H 4865 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 950 50  0001 C CNN
F 3 "~" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
Text Label 4750 750  3    50   ~ 0
VDD2
Wire Wire Line
	4750 750  4750 950 
$Comp
L Device:C CA?
U 1 1 612E8AC9
P 5300 1100
AR Path="/612E8AC9" Ref="CA?"  Part="1" 
AR Path="/6121200F/612E8AC9" Ref="CA?"  Part="1" 
AR Path="/61228324/612E8AC9" Ref="CA?"  Part="1" 
AR Path="/61233186/612E8AC9" Ref="CB12"  Part="1" 
F 0 "CB12" H 5415 1146 50  0000 L CNN
F 1 "1uF" H 5415 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 950 50  0001 C CNN
F 3 "~" H 5300 1100 50  0001 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612E8ACF
P 5300 1350
AR Path="/612E8ACF" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612E8ACF" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612E8ACF" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612E8ACF" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 5300 1100 50  0001 C CNN
F 1 "GND" H 5305 1177 50  0000 C CNN
F 2 "" H 5300 1350 50  0001 C CNN
F 3 "" H 5300 1350 50  0001 C CNN
	1    5300 1350
	1    0    0    -1  
$EndComp
Text Label 5300 750  3    50   ~ 0
VDDA
Wire Wire Line
	5300 750  5300 950 
Wire Wire Line
	5300 1250 5300 1350
$Comp
L Device:C CA?
U 1 1 612E8AD8
P 3850 1100
AR Path="/612E8AD8" Ref="CA?"  Part="1" 
AR Path="/6121200F/612E8AD8" Ref="CA?"  Part="1" 
AR Path="/61228324/612E8AD8" Ref="CA?"  Part="1" 
AR Path="/61233186/612E8AD8" Ref="CB1"  Part="1" 
F 0 "CB1" H 3965 1146 50  0000 L CNN
F 1 "0.1uF" H 3965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 950 50  0001 C CNN
F 3 "~" H 3850 1100 50  0001 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612E8ADE
P 3850 1350
AR Path="/612E8ADE" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612E8ADE" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612E8ADE" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612E8ADE" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3850 1100 50  0001 C CNN
F 1 "GND" H 3855 1177 50  0000 C CNN
F 2 "" H 3850 1350 50  0001 C CNN
F 3 "" H 3850 1350 50  0001 C CNN
	1    3850 1350
	1    0    0    -1  
$EndComp
Text Label 3850 750  3    50   ~ 0
VDD1
Wire Wire Line
	3850 750  3850 950 
Wire Wire Line
	3850 1250 3850 1350
$Comp
L Device:C CA?
U 1 1 612E8AF6
P 4300 1100
AR Path="/612E8AF6" Ref="CA?"  Part="1" 
AR Path="/6121200F/612E8AF6" Ref="CA?"  Part="1" 
AR Path="/61228324/612E8AF6" Ref="CA?"  Part="1" 
AR Path="/61233186/612E8AF6" Ref="CB2"  Part="1" 
F 0 "CB2" H 4415 1146 50  0000 L CNN
F 1 "4.7uF" H 4415 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4338 950 50  0001 C CNN
F 3 "~" H 4300 1100 50  0001 C CNN
	1    4300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612E8AFC
P 4300 1350
AR Path="/612E8AFC" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612E8AFC" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612E8AFC" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612E8AFC" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 4300 1100 50  0001 C CNN
F 1 "GND" H 4305 1177 50  0000 C CNN
F 2 "" H 4300 1350 50  0001 C CNN
F 3 "" H 4300 1350 50  0001 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1250 4300 1350
Wire Wire Line
	4300 950  4750 950 
Connection ~ 4750 950 
Wire Wire Line
	4750 1250 4300 1250
Connection ~ 4300 1250
$Comp
L Device:C CA?
U 1 1 612E8B07
P 5750 1100
AR Path="/612E8B07" Ref="CA?"  Part="1" 
AR Path="/6121200F/612E8B07" Ref="CA?"  Part="1" 
AR Path="/61228324/612E8B07" Ref="CA?"  Part="1" 
AR Path="/61233186/612E8B07" Ref="CB13"  Part="1" 
F 0 "CB13" H 5865 1146 50  0000 L CNN
F 1 "10nF" H 5865 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 950 50  0001 C CNN
F 3 "~" H 5750 1100 50  0001 C CNN
	1    5750 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 950  5300 950 
Connection ~ 5300 950 
Wire Wire Line
	5750 1250 5300 1250
Connection ~ 5300 1250
Text Label 5000 1850 1    50   ~ 0
VDDA
Wire Wire Line
	5000 1950 5000 1850
Wire Wire Line
	5100 1850 5000 1850
$Comp
L power:+3.3VA #PWR?
U 1 1 613039DD
P 5100 1850
AR Path="/6121200F/613039DD" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613039DD" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 5100 1700 50  0001 C CNN
F 1 "+3.3VA" H 5115 2023 50  0000 C CNN
F 2 "" H 5100 1850 50  0001 C CNN
F 3 "" H 5100 1850 50  0001 C CNN
	1    5100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1850 5500 1850
$Comp
L Device:L LA?
U 1 1 613039E4
P 5350 1850
AR Path="/6121200F/613039E4" Ref="LA?"  Part="1" 
AR Path="/61233186/613039E4" Ref="LB1"  Part="1" 
F 0 "LB1" V 5540 1850 50  0000 C CNN
F 1 "10uH" V 5449 1850 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 5350 1850 50  0001 C CNN
F 3 "~" H 5350 1850 50  0001 C CNN
	1    5350 1850
	0    -1   -1   0   
$EndComp
Text Label 5550 1850 0    50   ~ 0
V3.3
Wire Wire Line
	5200 1850 5100 1850
Connection ~ 5100 1850
$Comp
L power:GNDA #PWR?
U 1 1 61308A9A
P 5250 5200
AR Path="/6121200F/61308A9A" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61308A9A" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 5250 4950 50  0001 C CNN
F 1 "GNDA" H 5255 5027 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R RA?
U 1 1 61308AA0
P 4900 5400
AR Path="/6121200F/61308AA0" Ref="RA?"  Part="1" 
AR Path="/61233186/61308AA0" Ref="RB3"  Part="1" 
F 0 "RB3" V 4900 5400 50  0000 C CNN
F 1 "0R" V 4784 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 5400 50  0001 C CNN
F 3 "~" H 4900 5400 50  0001 C CNN
	1    4900 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61308AA7
P 4900 5550
AR Path="/61308AA7" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61308AA7" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61308AA7" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61308AA7" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 4900 5300 50  0001 C CNN
F 1 "GND" H 4905 5377 50  0000 C CNN
F 2 "" H 4900 5550 50  0001 C CNN
F 3 "" H 4900 5550 50  0001 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5150 4900 5200
Wire Wire Line
	4800 5550 4900 5550
Wire Wire Line
	4800 5200 4800 5550
Connection ~ 4900 5550
Wire Wire Line
	5250 5200 4900 5200
Connection ~ 4900 5200
Wire Wire Line
	4900 5200 4900 5250
$EndSCHEMATC
