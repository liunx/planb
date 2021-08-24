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
U 1 1 6126226E
P 850 3500
AR Path="/6126226E" Ref="CA?"  Part="1" 
AR Path="/6121200F/6126226E" Ref="CA?"  Part="1" 
AR Path="/61228324/6126226E" Ref="CA?"  Part="1" 
AR Path="/61233186/6126226E" Ref="CB6"  Part="1" 
F 0 "CB6" H 965 3546 50  0000 L CNN
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
AR Path="/61233186/61262274" Ref="CB7"  Part="1" 
F 0 "CB7" H 965 3946 50  0000 L CNN
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
Text Label 1550 3500 0    50   ~ 0
RCC_OSC_IN
Text Label 1550 3900 0    50   ~ 0
RCC_OSC_OUT
Connection ~ 1100 3500
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
P 1000 5850
AR Path="/61272755" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61272755" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61272755" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61272755" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 1000 5600 50  0001 C CNN
F 1 "GND" H 1005 5677 50  0000 C CNN
F 2 "" H 1000 5850 50  0001 C CNN
F 3 "" H 1000 5850 50  0001 C CNN
	1    1000 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C CA?
U 1 1 6127275B
P 1550 4450
AR Path="/6127275B" Ref="CA?"  Part="1" 
AR Path="/6121200F/6127275B" Ref="CA?"  Part="1" 
AR Path="/61228324/6127275B" Ref="CA?"  Part="1" 
AR Path="/61233186/6127275B" Ref="CB8"  Part="1" 
F 0 "CB8" H 1665 4496 50  0000 L CNN
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
	1550 4600 1000 4600
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
P 2500 3700
F 0 "YB2" V 2454 3944 50  0000 L CNN
F 1 "32768HZ" V 2545 3944 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABS25-4Pin_8.0x3.8mm" H 2500 3700 50  0001 C CNN
F 3 "~" H 2500 3700 50  0001 C CNN
	1    2500 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C CA?
U 1 1 611E09CA
P 2250 3500
AR Path="/611E09CA" Ref="CA?"  Part="1" 
AR Path="/6121200F/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09CA" Ref="CB9"  Part="1" 
F 0 "CB9" H 2365 3546 50  0000 L CNN
F 1 "20pF" H 2365 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 3350 50  0001 C CNN
F 3 "~" H 2250 3500 50  0001 C CNN
	1    2250 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C CA?
U 1 1 611E09D4
P 2250 3900
AR Path="/611E09D4" Ref="CA?"  Part="1" 
AR Path="/6121200F/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09D4" Ref="CB10"  Part="1" 
F 0 "CB10" H 2365 3946 50  0000 L CNN
F 1 "20pF" H 2365 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 3750 50  0001 C CNN
F 3 "~" H 2250 3900 50  0001 C CNN
	1    2250 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 3500 2100 3900
Wire Wire Line
	2400 3500 2500 3500
Wire Wire Line
	2500 3500 2500 3550
Wire Wire Line
	2400 3900 2500 3900
Wire Wire Line
	2500 3900 2500 3850
Text Label 2600 3500 0    50   ~ 0
RCC_OSC32_IN
Text Label 2600 3900 0    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	2600 3500 2500 3500
Connection ~ 2500 3500
Wire Wire Line
	2600 3900 2500 3900
Connection ~ 2500 3900
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
Text GLabel 1250 1450 0    50   Input ~ 0
+3.3V_F031
Text Label 1400 1450 0    50   ~ 0
V3.3
Wire Wire Line
	1400 1450 1250 1450
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
AR Path="/61233186/612E8AC1" Ref="CB3"  Part="1" 
F 0 "CB3" H 4865 1146 50  0000 L CNN
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
AR Path="/61233186/612E8AC9" Ref="CB4"  Part="1" 
F 0 "CB4" H 5415 1146 50  0000 L CNN
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
AR Path="/61233186/612E8B07" Ref="CB5"  Part="1" 
F 0 "CB5" H 5865 1146 50  0000 L CNN
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
$Comp
L Connector_Generic:Conn_01x05 Motor1
U 1 1 61221D6F
P 800 5550
F 0 "Motor1" H 718 5217 50  0000 C CNN
F 1 "Conn_01x05" H 718 5216 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 800 5550 50  0001 C CNN
F 3 "~" H 800 5550 50  0001 C CNN
	1    800  5550
	-1   0    0    1   
$EndComp
Text Label 5450 4350 0    50   ~ 0
TIM1_CH2
Text Label 5450 4450 0    50   ~ 0
TIM1_CH3
Text Label 5450 4550 0    50   ~ 0
TIM1_CH4
Text Label 5450 4250 0    50   ~ 0
TIM1_CH1
Wire Wire Line
	5450 4250 5400 4250
Wire Wire Line
	5450 4350 5400 4350
Wire Wire Line
	5450 4450 5400 4450
Wire Wire Line
	5450 4550 5400 4550
Text Label 5450 3750 0    50   ~ 0
TIM2_CH4
Text Label 4100 4450 2    50   ~ 0
TIM2_CH3
Text Label 5450 3950 0    50   ~ 0
TIM2_CH1
Text Label 5450 3550 0    50   ~ 0
TIM2_CH2
Wire Wire Line
	4100 4450 4200 4450
Wire Wire Line
	5400 3950 5450 3950
Wire Wire Line
	5400 3750 5450 3750
Wire Wire Line
	5400 3550 5450 3550
Text Label 4150 3850 2    50   ~ 0
TIM3_CH1
Text Label 4150 3950 2    50   ~ 0
TIM3_CH2
Text Label 4150 3450 2    50   ~ 0
TIM3_CH3
Text Label 4150 3550 2    50   ~ 0
TIM3_CH4
Wire Wire Line
	4150 3850 4200 3850
Wire Wire Line
	4150 3950 4200 3950
Wire Wire Line
	4150 3450 4200 3450
Wire Wire Line
	4150 3550 4200 3550
Text Label 1050 5350 0    50   ~ 0
TIM1_CH1
Text Label 1050 5450 0    50   ~ 0
TIM1_CH2
Text Label 1050 5550 0    50   ~ 0
TIM1_CH3
Text Label 1050 5650 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	1000 5350 1050 5350
Wire Wire Line
	1000 5450 1050 5450
Wire Wire Line
	1000 5550 1050 5550
Wire Wire Line
	1000 5650 1050 5650
Wire Wire Line
	1000 5750 1000 5850
$Comp
L power:GND #PWR?
U 1 1 612511EF
P 1850 5850
AR Path="/612511EF" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612511EF" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612511EF" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612511EF" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 1850 5600 50  0001 C CNN
F 1 "GND" H 1855 5677 50  0000 C CNN
F 2 "" H 1850 5850 50  0001 C CNN
F 3 "" H 1850 5850 50  0001 C CNN
	1    1850 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 Motor2
U 1 1 612514C3
P 1650 5550
F 0 "Motor2" H 1568 5217 50  0000 C CNN
F 1 "Conn_01x05" H 1568 5216 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1650 5550 50  0001 C CNN
F 3 "~" H 1650 5550 50  0001 C CNN
	1    1650 5550
	-1   0    0    1   
$EndComp
Text Label 1900 5350 0    50   ~ 0
TIM2_CH1
Text Label 1900 5450 0    50   ~ 0
TIM2_CH2
Text Label 1900 5550 0    50   ~ 0
TIM2_CH3
Text Label 1900 5650 0    50   ~ 0
TIM2_CH4
Wire Wire Line
	1850 5350 1900 5350
Wire Wire Line
	1850 5450 1900 5450
Wire Wire Line
	1850 5550 1900 5550
Wire Wire Line
	1850 5650 1900 5650
Wire Wire Line
	1850 5750 1850 5850
$Comp
L power:GND #PWR?
U 1 1 612546AA
P 2700 5850
AR Path="/612546AA" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612546AA" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612546AA" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612546AA" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 2700 5600 50  0001 C CNN
F 1 "GND" H 2705 5677 50  0000 C CNN
F 2 "" H 2700 5850 50  0001 C CNN
F 3 "" H 2700 5850 50  0001 C CNN
	1    2700 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 Motor3
U 1 1 612549AA
P 2500 5550
F 0 "Motor3" H 2418 5217 50  0000 C CNN
F 1 "Conn_01x05" H 2418 5216 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2500 5550 50  0001 C CNN
F 3 "~" H 2500 5550 50  0001 C CNN
	1    2500 5550
	-1   0    0    1   
$EndComp
Text Label 2750 5350 0    50   ~ 0
TIM3_CH1
Text Label 2750 5450 0    50   ~ 0
TIM3_CH2
Text Label 2750 5550 0    50   ~ 0
TIM3_CH3
Text Label 2750 5650 0    50   ~ 0
TIM3_CH4
Wire Wire Line
	2700 5350 2750 5350
Wire Wire Line
	2700 5450 2750 5450
Wire Wire Line
	2700 5550 2750 5550
Wire Wire Line
	2700 5650 2750 5650
Wire Wire Line
	2700 5750 2700 5850
Text GLabel 4200 2150 0    50   Input ~ 0
RESET
Text Label 4450 1900 0    50   ~ 0
V3.3
Wire Wire Line
	4450 1900 4800 1900
Wire Wire Line
	4800 1900 4900 1900
Connection ~ 4800 1900
$Comp
L Device:R RA?
U 1 1 6125AD0F
P 1500 3700
AR Path="/6121200F/6125AD0F" Ref="RA?"  Part="1" 
AR Path="/61233186/6125AD0F" Ref="RB4"  Part="1" 
F 0 "RB4" V 1293 3700 50  0000 C CNN
F 1 "10M" V 1384 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1430 3700 50  0001 C CNN
F 3 "~" H 1500 3700 50  0001 C CNN
	1    1500 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 3500 1500 3500
Wire Wire Line
	1100 3900 1500 3900
Wire Wire Line
	1500 3550 1500 3500
Connection ~ 1500 3500
Wire Wire Line
	1500 3500 1550 3500
Wire Wire Line
	1500 3850 1500 3900
Connection ~ 1500 3900
Wire Wire Line
	1500 3900 1550 3900
$Comp
L power:GND #PWR?
U 1 1 61267254
P 700 3950
AR Path="/61267254" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61267254" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61267254" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61267254" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 700 3700 50  0001 C CNN
F 1 "GND" H 705 3777 50  0000 C CNN
F 2 "" H 700 3950 50  0001 C CNN
F 3 "" H 700 3950 50  0001 C CNN
	1    700  3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612676CC
P 2100 3950
AR Path="/612676CC" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612676CC" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612676CC" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612676CC" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 2100 3700 50  0001 C CNN
F 1 "GND" H 2105 3777 50  0000 C CNN
F 2 "" H 2100 3950 50  0001 C CNN
F 3 "" H 2100 3950 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3950 700  3900
Connection ~ 700  3900
Wire Wire Line
	2100 3950 2100 3900
Connection ~ 2100 3900
$Comp
L power:GND #PWR?
U 1 1 6129D483
P 1000 4650
AR Path="/6129D483" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6129D483" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6129D483" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6129D483" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 1000 4400 50  0001 C CNN
F 1 "GND" H 1005 4477 50  0000 C CNN
F 2 "" H 1000 4650 50  0001 C CNN
F 3 "" H 1000 4650 50  0001 C CNN
	1    1000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4650 1000 4600
Connection ~ 1000 4600
Wire Wire Line
	1000 4600 950  4600
$Comp
L Device:Crystal_GND23 YB1
U 1 1 613D3F65
P 1100 3700
F 0 "YB1" V 1054 3944 50  0000 L CNN
F 1 "8M" V 1145 3944 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1100 3700 50  0001 C CNN
F 3 "~" H 1100 3700 50  0001 C CNN
	1    1100 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1850 5150 1850
Text Label 5150 1750 1    50   ~ 0
3.3VA
Wire Wire Line
	5150 1750 5150 1850
Connection ~ 5150 1850
Wire Wire Line
	5150 1850 5200 1850
Text Label 5250 5200 0    50   ~ 0
GNDA
$EndSCHEMATC
