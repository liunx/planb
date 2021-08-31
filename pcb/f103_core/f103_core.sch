EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 6121C48B
P 1600 1500
AR Path="/6121C48B" Ref="J5"  Part="1" 
AR Path="/6121200F/6121C48B" Ref="J2"  Part="1" 
AR Path="/61228324/6121C48B" Ref="J?"  Part="1" 
AR Path="/61233186/6121C48B" Ref="JB1"  Part="1" 
F 0 "J5" H 1650 1750 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1650 1726 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1600 1500 50  0001 C CNN
F 3 "~" H 1600 1500 50  0001 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6121C491
P 1650 1750
AR Path="/6121C491" Ref="#PWR0101"  Part="1" 
AR Path="/6121200F/6121C491" Ref="#PWR0104"  Part="1" 
AR Path="/61228324/6121C491" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6121C491" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1650 1500 50  0001 C CNN
F 1 "GND" H 1655 1577 50  0000 C CNN
F 2 "" H 1650 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1600 1400 1750
Wire Wire Line
	1400 1750 1650 1750
Wire Wire Line
	1900 1600 1900 1750
Wire Wire Line
	1900 1750 1650 1750
Connection ~ 1650 1750
$Comp
L Device:R RA?
U 1 1 612376A7
P 1050 1500
AR Path="/6121200F/612376A7" Ref="RA?"  Part="1" 
AR Path="/61233186/612376A7" Ref="RB1"  Part="1" 
AR Path="/612376A7" Ref="R1"  Part="1" 
F 0 "R1" V 843 1500 50  0000 C CNN
F 1 "100K" V 934 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 980 1500 50  0001 C CNN
F 3 "~" H 1050 1500 50  0001 C CNN
	1    1050 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R RA?
U 1 1 61237883
P 2250 1500
AR Path="/6121200F/61237883" Ref="RA?"  Part="1" 
AR Path="/61233186/61237883" Ref="RB2"  Part="1" 
AR Path="/61237883" Ref="R2"  Part="1" 
F 0 "R2" V 2043 1500 50  0000 C CNN
F 1 "100K" V 2134 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 1500 50  0001 C CNN
F 3 "~" H 2250 1500 50  0001 C CNN
	1    2250 1500
	0    1    1    0   
$EndComp
Text Label 600  1500 0    50   ~ 0
BOOT0
Text Label 2700 1500 2    50   ~ 0
BOOT1
Wire Wire Line
	600  1500 900  1500
Wire Wire Line
	1900 1500 2100 1500
Wire Wire Line
	2400 1500 2700 1500
$Comp
L Device:C C1
U 1 1 6126226E
P 800 2250
AR Path="/6126226E" Ref="C1"  Part="1" 
AR Path="/6121200F/6126226E" Ref="CA?"  Part="1" 
AR Path="/61228324/6126226E" Ref="CA?"  Part="1" 
AR Path="/61233186/6126226E" Ref="CB6"  Part="1" 
F 0 "C1" H 900 2250 50  0000 L CNN
F 1 "20pF" H 900 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 838 2100 50  0001 C CNN
F 3 "~" H 800 2250 50  0001 C CNN
	1    800  2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 61262274
P 800 2650
AR Path="/61262274" Ref="C2"  Part="1" 
AR Path="/6121200F/61262274" Ref="CA?"  Part="1" 
AR Path="/61228324/61262274" Ref="CA?"  Part="1" 
AR Path="/61233186/61262274" Ref="CB7"  Part="1" 
F 0 "C2" H 550 2650 50  0000 L CNN
F 1 "20pF" H 550 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 838 2500 50  0001 C CNN
F 3 "~" H 800 2650 50  0001 C CNN
	1    800  2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	650  2250 650  2500
Wire Wire Line
	950  2250 1050 2250
Wire Wire Line
	1050 2250 1050 2300
Wire Wire Line
	950  2650 1050 2650
Wire Wire Line
	1050 2650 1050 2600
Text Label 1650 2250 0    50   ~ 0
RCC_OSC_IN
Text Label 1650 2650 0    50   ~ 0
RCC_OSC_OUT
Connection ~ 1050 2250
Connection ~ 1050 2650
$Comp
L Connector_Generic:Conn_01x04 JA?
U 1 1 6127274F
P 750 4500
AR Path="/6121200F/6127274F" Ref="JA?"  Part="1" 
AR Path="/61233186/6127274F" Ref="JB2"  Part="1" 
AR Path="/6127274F" Ref="J4"  Part="1" 
F 0 "J4" H 668 4167 50  0000 C CNN
F 1 "Conn_01x04" H 830 4401 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 750 4500 50  0001 C CNN
F 3 "~" H 750 4500 50  0001 C CNN
	1    750  4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 6127275B
P 1750 4450
AR Path="/6127275B" Ref="C5"  Part="1" 
AR Path="/6121200F/6127275B" Ref="CA?"  Part="1" 
AR Path="/61228324/6127275B" Ref="CA?"  Part="1" 
AR Path="/61233186/6127275B" Ref="CB8"  Part="1" 
F 0 "C5" H 1865 4496 50  0000 L CNN
F 1 "0.1uF" H 1865 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1788 4300 50  0001 C CNN
F 3 "~" H 1750 4450 50  0001 C CNN
	1    1750 4450
	1    0    0    -1  
$EndComp
Text Label 1000 4400 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 1000 4500 0    50   ~ 0
SYS_JTCK-SWCL
$Comp
L Device:Crystal_GND23 Y2
U 1 1 611DE5D3
P 1250 3500
F 0 "Y2" V 1204 3744 50  0000 L CNN
F 1 "32768HZ" V 1295 3744 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABS25-4Pin_8.0x3.8mm" H 1250 3500 50  0001 C CNN
F 3 "~" H 1250 3500 50  0001 C CNN
	1    1250 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 611E09CA
P 800 3300
AR Path="/611E09CA" Ref="C3"  Part="1" 
AR Path="/6121200F/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09CA" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09CA" Ref="CB9"  Part="1" 
F 0 "C3" H 915 3346 50  0000 L CNN
F 1 "20pF" H 915 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 838 3150 50  0001 C CNN
F 3 "~" H 800 3300 50  0001 C CNN
	1    800  3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 611E09D4
P 800 3700
AR Path="/611E09D4" Ref="C4"  Part="1" 
AR Path="/6121200F/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61228324/611E09D4" Ref="CA?"  Part="1" 
AR Path="/61233186/611E09D4" Ref="CB10"  Part="1" 
F 0 "C4" H 915 3746 50  0000 L CNN
F 1 "20pF" H 915 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 838 3550 50  0001 C CNN
F 3 "~" H 800 3700 50  0001 C CNN
	1    800  3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	650  3300 650  3700
Text Label 1400 3300 0    50   ~ 0
RCC_OSC32_IN
Text Label 1400 3700 0    50   ~ 0
RCC_OSC32_OUT
$Comp
L Device:L LA?
U 1 1 613039E4
P 2250 5450
AR Path="/6121200F/613039E4" Ref="LA?"  Part="1" 
AR Path="/61233186/613039E4" Ref="LB1"  Part="1" 
AR Path="/613039E4" Ref="L1"  Part="1" 
F 0 "L1" V 2440 5450 50  0000 C CNN
F 1 "10uH" V 2349 5450 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 2250 5450 50  0001 C CNN
F 3 "~" H 2250 5450 50  0001 C CNN
	1    2250 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R RA?
U 1 1 6125AD0F
P 1550 2450
AR Path="/6121200F/6125AD0F" Ref="RA?"  Part="1" 
AR Path="/61233186/6125AD0F" Ref="RB4"  Part="1" 
AR Path="/6125AD0F" Ref="R3"  Part="1" 
F 0 "R3" V 1343 2450 50  0000 C CNN
F 1 "10M" V 1434 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1480 2450 50  0001 C CNN
F 3 "~" H 1550 2450 50  0001 C CNN
	1    1550 2450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61267254
P 650 2700
AR Path="/61267254" Ref="#PWR0109"  Part="1" 
AR Path="/6121200F/61267254" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61267254" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61267254" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0109" H 650 2450 50  0001 C CNN
F 1 "GND" H 655 2527 50  0000 C CNN
F 2 "" H 650 2700 50  0001 C CNN
F 3 "" H 650 2700 50  0001 C CNN
	1    650  2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 612676CC
P 650 3750
AR Path="/612676CC" Ref="#PWR0110"  Part="1" 
AR Path="/6121200F/612676CC" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612676CC" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612676CC" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0110" H 650 3500 50  0001 C CNN
F 1 "GND" H 655 3577 50  0000 C CNN
F 2 "" H 650 3750 50  0001 C CNN
F 3 "" H 650 3750 50  0001 C CNN
	1    650  3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2700 650  2650
Connection ~ 650  2650
Wire Wire Line
	650  3750 650  3700
Connection ~ 650  3700
$Comp
L power:GND #PWR0111
U 1 1 6129D483
P 1000 4650
AR Path="/6129D483" Ref="#PWR0111"  Part="1" 
AR Path="/6121200F/6129D483" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6129D483" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6129D483" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0111" H 1000 4400 50  0001 C CNN
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
L power:+3.3VA #PWR0112
U 1 1 61287508
P 2500 5350
F 0 "#PWR0112" H 2500 5200 50  0001 C CNN
F 1 "+3.3VA" H 2515 5523 50  0000 C CNN
F 2 "" H 2500 5350 50  0001 C CNN
F 3 "" H 2500 5350 50  0001 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1500 1400 1500
Wire Wire Line
	1050 2250 1550 2250
Wire Wire Line
	1050 2650 1550 2650
Wire Wire Line
	1550 2300 1550 2250
Connection ~ 1550 2250
Wire Wire Line
	1550 2250 1650 2250
Wire Wire Line
	1550 2600 1550 2650
Connection ~ 1550 2650
Wire Wire Line
	1550 2650 1650 2650
Wire Wire Line
	950  3300 1250 3300
Wire Wire Line
	950  3700 1250 3700
Wire Wire Line
	1250 3350 1250 3300
Connection ~ 1250 3300
Wire Wire Line
	1250 3300 1400 3300
Wire Wire Line
	1250 3650 1250 3700
Connection ~ 1250 3700
Wire Wire Line
	1250 3700 1400 3700
Wire Wire Line
	950  4400 1000 4400
Wire Wire Line
	950  4500 1000 4500
Wire Wire Line
	1000 4600 1750 4600
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 6127F5CD
P 1100 5450
F 0 "U2" H 1100 5692 50  0000 C CNN
F 1 "AMS1117-3.3" H 1100 5601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1100 5650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1200 5200 50  0001 C CNN
	1    1100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6128005C
P 1100 5850
AR Path="/6128005C" Ref="#PWR0114"  Part="1" 
AR Path="/6121200F/6128005C" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6128005C" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6128005C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 1100 5600 50  0001 C CNN
F 1 "GND" H 1105 5677 50  0000 C CNN
F 2 "" H 1100 5850 50  0001 C CNN
F 3 "" H 1100 5850 50  0001 C CNN
	1    1100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5450 700  5450
Wire Wire Line
	700  5450 700  5350
Wire Wire Line
	1100 5750 1100 5800
$Comp
L Device:C C11
U 1 1 6128832F
P 1450 5650
AR Path="/6128832F" Ref="C11"  Part="1" 
AR Path="/6121200F/6128832F" Ref="C?"  Part="1" 
AR Path="/61228324/6128832F" Ref="C?"  Part="1" 
AR Path="/61233186/6128832F" Ref="C?"  Part="1" 
F 0 "C11" H 1450 5750 50  0000 L CNN
F 1 "10uF" H 1450 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1488 5500 50  0001 C CNN
F 3 "~" H 1450 5650 50  0001 C CNN
	1    1450 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61288B1E
P 1700 5650
AR Path="/61288B1E" Ref="C12"  Part="1" 
AR Path="/6121200F/61288B1E" Ref="C?"  Part="1" 
AR Path="/61228324/61288B1E" Ref="C?"  Part="1" 
AR Path="/61233186/61288B1E" Ref="C?"  Part="1" 
F 0 "C12" H 1700 5750 50  0000 L CNN
F 1 "0.1uF" H 1700 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 5500 50  0001 C CNN
F 3 "~" H 1700 5650 50  0001 C CNN
	1    1700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5450 1450 5450
Wire Wire Line
	1450 5450 1450 5500
Wire Wire Line
	1450 5800 1100 5800
Connection ~ 1100 5800
Wire Wire Line
	1100 5800 1100 5850
Wire Wire Line
	1700 5800 1450 5800
Connection ~ 1450 5800
Connection ~ 1450 5450
Wire Wire Line
	1700 5500 1700 5450
Connection ~ 1700 5450
Wire Wire Line
	1700 5450 1450 5450
$Comp
L Device:LED D1
U 1 1 612AA7D3
P 1950 5950
F 0 "D1" V 1989 5832 50  0000 R CNN
F 1 "LED" V 1898 5832 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 1950 5950 50  0001 C CNN
F 3 "~" H 1950 5950 50  0001 C CNN
	1    1950 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R RA?
U 1 1 612ABAD5
P 1950 5600
AR Path="/6121200F/612ABAD5" Ref="RA?"  Part="1" 
AR Path="/61233186/612ABAD5" Ref="RA?"  Part="1" 
AR Path="/612ABAD5" Ref="R5"  Part="1" 
F 0 "R5" V 1950 5600 50  0000 C CNN
F 1 "510R" V 1834 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 5600 50  0001 C CNN
F 3 "~" H 1950 5600 50  0001 C CNN
	1    1950 5600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 612B10FC
P 1950 6100
AR Path="/612B10FC" Ref="#PWR0116"  Part="1" 
AR Path="/6121200F/612B10FC" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612B10FC" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612B10FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 1950 5850 50  0001 C CNN
F 1 "GND" H 1955 5927 50  0000 C CNN
F 2 "" H 1950 6100 50  0001 C CNN
F 3 "" H 1950 6100 50  0001 C CNN
	1    1950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5800 1950 5750
Wire Wire Line
	1700 5450 1950 5450
Connection ~ 1950 5450
$Comp
L Switch:SW_Push SW1
U 1 1 6140434D
P 950 7100
F 0 "SW1" V 950 7052 50  0000 R CNN
F 1 "SW_Push" V 905 7052 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 950 7300 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
	1    950  7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61404A02
P 1250 6750
AR Path="/6121200F/61404A02" Ref="R?"  Part="1" 
AR Path="/61233186/61404A02" Ref="R?"  Part="1" 
AR Path="/61404A02" Ref="R11"  Part="1" 
F 0 "R11" V 1250 6750 50  0000 C CNN
F 1 "510R" V 1134 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 6750 50  0001 C CNN
F 3 "~" H 1250 6750 50  0001 C CNN
	1    1250 6750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C15
U 1 1 61404DE1
P 1250 7100
AR Path="/61404DE1" Ref="C15"  Part="1" 
AR Path="/6121200F/61404DE1" Ref="C?"  Part="1" 
AR Path="/61228324/61404DE1" Ref="C?"  Part="1" 
AR Path="/61233186/61404DE1" Ref="C?"  Part="1" 
F 0 "C15" H 1365 7146 50  0000 L CNN
F 1 "10pF" H 1365 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1288 6950 50  0001 C CNN
F 3 "~" H 1250 7100 50  0001 C CNN
	1    1250 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61406E96
P 1250 7300
AR Path="/61406E96" Ref="#PWR0125"  Part="1" 
AR Path="/6121200F/61406E96" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61406E96" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61406E96" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 1250 7050 50  0001 C CNN
F 1 "GND" H 1255 7127 50  0000 C CNN
F 2 "" H 1250 7300 50  0001 C CNN
F 3 "" H 1250 7300 50  0001 C CNN
	1    1250 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6900 1250 6900
Wire Wire Line
	1250 6950 1250 6900
Connection ~ 1250 6900
Wire Wire Line
	950  7300 1250 7300
Wire Wire Line
	1250 7250 1250 7300
Connection ~ 1250 7300
Text GLabel 1400 6900 2    50   Input ~ 0
RESET
Wire Wire Line
	1400 6900 1250 6900
$Comp
L Device:Crystal_GND24 Y1
U 1 1 612CA721
P 1050 2450
F 0 "Y1" V 1004 2694 50  0000 L CNN
F 1 "8M" V 1095 2694 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1050 2450 50  0001 C CNN
F 3 "~" H 1050 2450 50  0001 C CNN
	1    1050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2450 1250 2500
Wire Wire Line
	1250 2500 850  2500
Connection ~ 650  2500
Wire Wire Line
	650  2500 650  2650
Wire Wire Line
	850  2450 850  2500
Connection ~ 850  2500
Wire Wire Line
	850  2500 650  2500
$Comp
L power:VCC #PWR0102
U 1 1 61334C6F
P 700 5350
F 0 "#PWR0102" H 700 5200 50  0001 C CNN
F 1 "VCC" H 715 5523 50  0000 C CNN
F 2 "" H 700 5350 50  0001 C CNN
F 3 "" H 700 5350 50  0001 C CNN
	1    700  5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 613355FC
P 1950 5350
F 0 "#PWR0107" H 1950 5200 50  0001 C CNN
F 1 "+3.3V" H 1965 5523 50  0000 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5450 1950 5350
$Comp
L power:+3.3V #PWR0108
U 1 1 6133BAC2
P 1750 4200
F 0 "#PWR0108" H 1750 4050 50  0001 C CNN
F 1 "+3.3V" H 1765 4373 50  0000 C CNN
F 2 "" H 1750 4200 50  0001 C CNN
F 3 "" H 1750 4200 50  0001 C CNN
	1    1750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4300 1750 4300
Wire Wire Line
	1750 4200 1750 4300
Connection ~ 1750 4300
$Comp
L power:+3.3V #PWR0115
U 1 1 61349020
P 1650 1150
F 0 "#PWR0115" H 1650 1000 50  0001 C CNN
F 1 "+3.3V" H 1665 1323 50  0000 C CNN
F 2 "" H 1650 1150 50  0001 C CNN
F 3 "" H 1650 1150 50  0001 C CNN
	1    1650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 1400 1150
Wire Wire Line
	1400 1150 1650 1150
Wire Wire Line
	1900 1400 1900 1150
Wire Wire Line
	1900 1150 1650 1150
Connection ~ 1650 1150
Wire Wire Line
	2100 5450 1950 5450
Wire Wire Line
	2500 5350 2500 5450
Wire Wire Line
	2500 5450 2400 5450
$Comp
L power:+3.3V #PWR0119
U 1 1 613978F0
P 1250 6500
F 0 "#PWR0119" H 1250 6350 50  0001 C CNN
F 1 "+3.3V" H 1265 6673 50  0000 C CNN
F 2 "" H 1250 6500 50  0001 C CNN
F 3 "" H 1250 6500 50  0001 C CNN
	1    1250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6600 1250 6500
Text Label 7700 2100 0    50   ~ 0
PC13
$Comp
L power:+3.3V #PWR0120
U 1 1 613D36BE
P 7900 1900
F 0 "#PWR0120" H 7900 1750 50  0001 C CNN
F 1 "+3.3V" H 7915 2073 50  0000 C CNN
F 2 "" H 7900 1900 50  0001 C CNN
F 3 "" H 7900 1900 50  0001 C CNN
	1    7900 1900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0121
U 1 1 613D411F
P 7750 1650
F 0 "#PWR0121" H 7750 1500 50  0001 C CNN
F 1 "+3.3VA" H 7765 1823 50  0000 C CNN
F 2 "" H 7750 1650 50  0001 C CNN
F 3 "" H 7750 1650 50  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 613D48B5
P 6900 2000
AR Path="/613D48B5" Ref="#PWR0122"  Part="1" 
AR Path="/6121200F/613D48B5" Ref="#PWR?"  Part="1" 
AR Path="/61228324/613D48B5" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613D48B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0122" H 6900 1750 50  0001 C CNN
F 1 "GND" H 6905 1827 50  0000 C CNN
F 2 "" H 6900 2000 50  0001 C CNN
F 3 "" H 6900 2000 50  0001 C CNN
	1    6900 2000
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0123
U 1 1 613DB105
P 7050 1650
F 0 "#PWR0123" H 7050 1400 50  0001 C CNN
F 1 "GNDA" H 7055 1477 50  0000 C CNN
F 2 "" H 7050 1650 50  0001 C CNN
F 3 "" H 7050 1650 50  0001 C CNN
	1    7050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 2100 7150 2100
Wire Wire Line
	7150 2000 7100 2000
Text Label 7100 2200 2    50   ~ 0
PA1
Wire Wire Line
	7100 2100 7100 2000
Connection ~ 7100 2000
Wire Wire Line
	7100 2000 6900 2000
Wire Wire Line
	7650 2100 7700 2100
Wire Wire Line
	7150 2200 7100 2200
Text Label 7700 2200 0    50   ~ 0
PA0
Text Label 7100 2300 2    50   ~ 0
PA3
Text Label 7700 2300 0    50   ~ 0
PA2
Wire Wire Line
	7100 2300 7150 2300
Wire Wire Line
	7700 2200 7650 2200
Wire Wire Line
	7700 2300 7650 2300
Text Label 7100 2400 2    50   ~ 0
PA5
Text Label 7100 2500 2    50   ~ 0
PA7
Text Label 7100 2600 2    50   ~ 0
PB0
Text Label 7700 2400 0    50   ~ 0
PA4
Text Label 7700 2500 0    50   ~ 0
PA6
Text Label 7700 2600 0    50   ~ 0
PB1
Text Label 7100 2700 2    50   ~ 0
PB10
Text Label 7700 2700 0    50   ~ 0
PB11
Wire Wire Line
	7100 2400 7150 2400
Wire Wire Line
	7100 2500 7150 2500
Wire Wire Line
	7100 2600 7150 2600
Wire Wire Line
	7100 2700 7150 2700
Wire Wire Line
	7700 2400 7650 2400
Wire Wire Line
	7700 2500 7650 2500
Wire Wire Line
	7700 2600 7650 2600
Wire Wire Line
	7700 2700 7650 2700
Text Label 7100 4450 2    50   ~ 0
PB13
Text Label 7700 4450 0    50   ~ 0
PB12
Wire Wire Line
	7700 4450 7650 4450
Wire Wire Line
	7100 4450 7150 4450
Text Label 7700 4550 0    50   ~ 0
PB14
Text Label 7100 4550 2    50   ~ 0
PB15
Wire Wire Line
	7150 4550 7100 4550
Wire Wire Line
	7700 4550 7650 4550
Text Label 7700 4650 0    50   ~ 0
PA8
Text Label 7100 4650 2    50   ~ 0
PA9
Text Label 7100 4750 2    50   ~ 0
PA11
Text Label 7700 4750 0    50   ~ 0
PA10
Text Label 7100 5050 2    50   ~ 0
PA15
Wire Wire Line
	7700 4650 7650 4650
Wire Wire Line
	7150 4650 7100 4650
Wire Wire Line
	7150 4750 7100 4750
Wire Wire Line
	7150 4850 7100 4850
Wire Wire Line
	7150 5050 7100 5050
Wire Wire Line
	7650 4750 7700 4750
Wire Wire Line
	7650 4850 7700 4850
Wire Wire Line
	7650 5050 7700 5050
Text Label 7700 5150 0    50   ~ 0
PB3
Text Label 7100 5150 2    50   ~ 0
PB4
Wire Wire Line
	7150 5150 7100 5150
Wire Wire Line
	7700 5150 7650 5150
Text Label 7100 5250 2    50   ~ 0
PB6
Text Label 7700 5250 0    50   ~ 0
PB5
Text Label 7700 5350 0    50   ~ 0
PB7
Text Label 7100 5350 2    50   ~ 0
PB8
Wire Wire Line
	7700 5250 7650 5250
Wire Wire Line
	7150 5250 7100 5250
Wire Wire Line
	7150 5350 7100 5350
Wire Wire Line
	7650 5350 7700 5350
Text Label 7700 5450 0    50   ~ 0
PB9
Wire Wire Line
	7700 5450 7650 5450
$Comp
L Connector_Generic:Conn_02x13_Odd_Even J1
U 1 1 615E043C
P 7350 2300
F 0 "J1" H 7400 3025 50  0000 C CNN
F 1 "Conn_02x13_Odd_Even" H 7400 3026 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x13_P2.54mm_Vertical" H 7350 2300 50  0001 C CNN
F 3 "~" H 7350 2300 50  0001 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x13_Odd_Even J2
U 1 1 615E2C9E
P 7350 4950
F 0 "J2" H 7400 5675 50  0000 C CNN
F 1 "Conn_02x13_Odd_Even" H 7400 5676 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x13_P2.54mm_Vertical" H 7350 4950 50  0001 C CNN
F 3 "~" H 7350 4950 50  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 615F3E06
P 7650 4350
F 0 "#PWR0124" H 7650 4200 50  0001 C CNN
F 1 "+3.3V" H 7665 4523 50  0000 C CNN
F 2 "" H 7650 4350 50  0001 C CNN
F 3 "" H 7650 4350 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 615F442C
P 7150 4350
AR Path="/615F442C" Ref="#PWR0126"  Part="1" 
AR Path="/6121200F/615F442C" Ref="#PWR?"  Part="1" 
AR Path="/61228324/615F442C" Ref="#PWR?"  Part="1" 
AR Path="/61233186/615F442C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 7150 4100 50  0001 C CNN
F 1 "GND" H 7155 4177 50  0000 C CNN
F 2 "" H 7150 4350 50  0001 C CNN
F 3 "" H 7150 4350 50  0001 C CNN
	1    7150 4350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 6162C0FE
P 7150 5650
AR Path="/6162C0FE" Ref="#PWR0127"  Part="1" 
AR Path="/6121200F/6162C0FE" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6162C0FE" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6162C0FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0127" H 7150 5400 50  0001 C CNN
F 1 "GND" H 7155 5477 50  0000 C CNN
F 2 "" H 7150 5650 50  0001 C CNN
F 3 "" H 7150 5650 50  0001 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 6162CDBF
P 7650 5550
F 0 "#PWR0128" H 7650 5400 50  0001 C CNN
F 1 "+3.3V" H 7665 5723 50  0000 C CNN
F 2 "" H 7650 5550 50  0001 C CNN
F 3 "" H 7650 5550 50  0001 C CNN
	1    7650 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 5450 7150 5550
Connection ~ 7150 5550
Wire Wire Line
	7150 5550 7150 5650
$Comp
L power:GND #PWR0129
U 1 1 616488FE
P 7650 3000
AR Path="/616488FE" Ref="#PWR0129"  Part="1" 
AR Path="/6121200F/616488FE" Ref="#PWR?"  Part="1" 
AR Path="/61228324/616488FE" Ref="#PWR?"  Part="1" 
AR Path="/61233186/616488FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 7650 2750 50  0001 C CNN
F 1 "GND" H 7655 2827 50  0000 C CNN
F 2 "" H 7650 3000 50  0001 C CNN
F 3 "" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2800 7650 2900
Connection ~ 7650 2900
Wire Wire Line
	7650 2900 7650 3000
Wire Wire Line
	7150 2800 7150 2900
Wire Wire Line
	7050 2900 7150 2900
Wire Wire Line
	7800 1900 7650 1900
Wire Wire Line
	7150 1900 7100 1900
$Comp
L power:+3.3V #PWR0103
U 1 1 6167DD8D
P 7050 2900
F 0 "#PWR0103" H 7050 2750 50  0001 C CNN
F 1 "+3.3V" H 7065 3073 50  0000 C CNN
F 2 "" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B_Mini J3
U 1 1 612EA73B
P 2900 6550
F 0 "J3" H 2957 6925 50  0000 C CNN
F 1 "USB_B_Mini" H 2957 6926 50  0001 C CNN
F 2 "Connector_USB:USB_Mini-B_AdamTech_MUSB-B5-S-VT-TSMT-1_SMD_Vertical" H 3050 6500 50  0001 C CNN
F 3 "~" H 3050 6500 50  0001 C CNN
	1    2900 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 612F5306
P 2900 7000
AR Path="/612F5306" Ref="#PWR0104"  Part="1" 
AR Path="/6121200F/612F5306" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612F5306" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612F5306" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 2900 6750 50  0001 C CNN
F 1 "GND" H 2905 6827 50  0000 C CNN
F 2 "" H 2900 7000 50  0001 C CNN
F 3 "" H 2900 7000 50  0001 C CNN
	1    2900 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6950 2900 6950
Wire Wire Line
	2900 7000 2900 6950
Connection ~ 2900 6950
$Comp
L power:VCC #PWR0105
U 1 1 6130820E
P 3300 6350
F 0 "#PWR0105" H 3300 6200 50  0001 C CNN
F 1 "VCC" H 3315 6523 50  0000 C CNN
F 2 "" H 3300 6350 50  0001 C CNN
F 3 "" H 3300 6350 50  0001 C CNN
	1    3300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6350 3200 6350
Wire Wire Line
	7150 1800 7150 1700
Wire Wire Line
	7050 1650 7050 1700
Wire Wire Line
	7050 1700 7150 1700
Connection ~ 7150 1700
Wire Wire Line
	7650 1800 7650 1700
Wire Wire Line
	7750 1650 7750 1700
Wire Wire Line
	7750 1700 7650 1700
Connection ~ 7650 1700
Wire Wire Line
	7100 1900 7100 2000
Wire Wire Line
	7650 2000 7800 2000
Wire Wire Line
	7800 2000 7800 1900
Wire Wire Line
	7900 1900 7800 1900
Connection ~ 7800 1900
$Comp
L MCU_ST_STM32F1:STM32F103C6Tx UA?
U 1 1 613106AC
P 4700 3950
AR Path="/6121200F/613106AC" Ref="UA?"  Part="1" 
AR Path="/61228324/613106AC" Ref="UA?"  Part="1" 
AR Path="/61233186/613106AC" Ref="UA?"  Part="1" 
AR Path="/612E65C4/613106AC" Ref="UA?"  Part="1" 
AR Path="/613106AC" Ref="U1"  Part="1" 
F 0 "U1" H 4650 4300 50  0000 C CNN
F 1 "STM32F103C6Tx" H 4650 4200 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4100 2550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00210843.pdf" H 4700 3950 50  0001 C CNN
	1    4700 3950
	1    0    0    -1  
$EndComp
Text Label 3700 2850 0    50   ~ 0
BOOT0
Wire Wire Line
	4000 2850 3700 2850
Text Label 3700 3950 0    50   ~ 0
BOOT1
Wire Wire Line
	4000 3950 3700 3950
$Comp
L Device:C C8
U 1 1 613106B6
P 5050 1550
AR Path="/613106B6" Ref="C8"  Part="1" 
AR Path="/6121200F/613106B6" Ref="CA?"  Part="1" 
AR Path="/61228324/613106B6" Ref="CA?"  Part="1" 
AR Path="/61233186/613106B6" Ref="CA?"  Part="1" 
AR Path="/612E65C4/613106B6" Ref="CA?"  Part="1" 
F 0 "C8" H 5165 1596 50  0000 L CNN
F 1 "0.1uF" H 5165 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5088 1400 50  0001 C CNN
F 3 "~" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
Text Label 5050 1200 3    50   ~ 0
VDD3
Wire Wire Line
	5050 1200 5050 1400
$Comp
L Device:C C9
U 1 1 613106BE
P 5600 1550
AR Path="/613106BE" Ref="C9"  Part="1" 
AR Path="/6121200F/613106BE" Ref="CA?"  Part="1" 
AR Path="/61228324/613106BE" Ref="CA?"  Part="1" 
AR Path="/61233186/613106BE" Ref="CA?"  Part="1" 
AR Path="/612E65C4/613106BE" Ref="CA?"  Part="1" 
F 0 "C9" H 5715 1596 50  0000 L CNN
F 1 "1uF" H 5715 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 1400 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 613106C4
P 5600 1800
AR Path="/613106C4" Ref="#PWR0106"  Part="1" 
AR Path="/6121200F/613106C4" Ref="#PWR?"  Part="1" 
AR Path="/61228324/613106C4" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613106C4" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/613106C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 5600 1550 50  0001 C CNN
F 1 "GND" H 5605 1627 50  0000 C CNN
F 2 "" H 5600 1800 50  0001 C CNN
F 3 "" H 5600 1800 50  0001 C CNN
	1    5600 1800
	1    0    0    -1  
$EndComp
Text Label 5600 1200 3    50   ~ 0
VDDA
Wire Wire Line
	5600 1200 5600 1400
Wire Wire Line
	5600 1700 5600 1800
$Comp
L Device:C C6
U 1 1 613106CD
P 3500 1550
AR Path="/613106CD" Ref="C6"  Part="1" 
AR Path="/6121200F/613106CD" Ref="CA?"  Part="1" 
AR Path="/61228324/613106CD" Ref="CA?"  Part="1" 
AR Path="/61233186/613106CD" Ref="CA?"  Part="1" 
AR Path="/612E65C4/613106CD" Ref="CA?"  Part="1" 
F 0 "C6" H 3615 1596 50  0000 L CNN
F 1 "0.1uF" H 3615 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3538 1400 50  0001 C CNN
F 3 "~" H 3500 1550 50  0001 C CNN
	1    3500 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 613106D3
P 3500 1800
AR Path="/613106D3" Ref="#PWR0113"  Part="1" 
AR Path="/6121200F/613106D3" Ref="#PWR?"  Part="1" 
AR Path="/61228324/613106D3" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613106D3" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/613106D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 3500 1550 50  0001 C CNN
F 1 "GND" H 3505 1627 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
Text Label 3500 1200 3    50   ~ 0
VDD1
Wire Wire Line
	3500 1200 3500 1400
Wire Wire Line
	3500 1700 3500 1800
$Comp
L Device:C C13
U 1 1 613106DC
P 4000 1550
AR Path="/613106DC" Ref="C13"  Part="1" 
AR Path="/6121200F/613106DC" Ref="CA?"  Part="1" 
AR Path="/61228324/613106DC" Ref="CA?"  Part="1" 
AR Path="/61233186/613106DC" Ref="CA?"  Part="1" 
AR Path="/612E65C4/613106DC" Ref="CA?"  Part="1" 
F 0 "C13" H 4115 1596 50  0000 L CNN
F 1 "0.1uF" H 4115 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4038 1400 50  0001 C CNN
F 3 "~" H 4000 1550 50  0001 C CNN
	1    4000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 613106E2
P 4000 1800
AR Path="/613106E2" Ref="#PWR0117"  Part="1" 
AR Path="/6121200F/613106E2" Ref="#PWR?"  Part="1" 
AR Path="/61228324/613106E2" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613106E2" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/613106E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 4000 1550 50  0001 C CNN
F 1 "GND" H 4005 1627 50  0000 C CNN
F 2 "" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
Text Label 4000 1200 3    50   ~ 0
VDD2
Wire Wire Line
	4000 1200 4000 1400
Wire Wire Line
	4000 1700 4000 1800
Text Label 3500 3050 0    50   ~ 0
RCC_OSC_IN
Text Label 3500 3150 0    50   ~ 0
RCC_OSC_OUT
Text Label 5350 5050 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 5350 5150 0    50   ~ 0
SYS_JTCK-SWCL
$Comp
L power:GND #PWR0118
U 1 1 613106EF
P 4600 5550
AR Path="/613106EF" Ref="#PWR0118"  Part="1" 
AR Path="/6121200F/613106EF" Ref="#PWR?"  Part="1" 
AR Path="/61228324/613106EF" Ref="#PWR?"  Part="1" 
AR Path="/61233186/613106EF" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/613106EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0118" H 4600 5300 50  0001 C CNN
F 1 "GND" H 4605 5377 50  0000 C CNN
F 2 "" H 4600 5550 50  0001 C CNN
F 3 "" H 4600 5550 50  0001 C CNN
	1    4600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5450 4700 5550
Wire Wire Line
	4600 5450 4600 5550
Wire Wire Line
	4600 5550 4700 5550
Wire Wire Line
	4500 5450 4500 5550
Wire Wire Line
	4500 5550 4600 5550
Connection ~ 4600 5550
Text Label 3950 3450 2    50   ~ 0
RCC_OSC32_IN
Text Label 3950 3550 2    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	3500 3050 4000 3050
Wire Wire Line
	3500 3150 4000 3150
Wire Wire Line
	5350 5050 5300 5050
Wire Wire Line
	5350 5150 5300 5150
Wire Wire Line
	3950 3450 4000 3450
Wire Wire Line
	3950 3550 4000 3550
$Comp
L Device:C C7
U 1 1 6131070B
P 4600 1550
AR Path="/6131070B" Ref="C7"  Part="1" 
AR Path="/6121200F/6131070B" Ref="CA?"  Part="1" 
AR Path="/61228324/6131070B" Ref="CA?"  Part="1" 
AR Path="/61233186/6131070B" Ref="CA?"  Part="1" 
AR Path="/612E65C4/6131070B" Ref="CA?"  Part="1" 
F 0 "C7" H 4715 1596 50  0000 L CNN
F 1 "4.7uF" H 4715 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4638 1400 50  0001 C CNN
F 3 "~" H 4600 1550 50  0001 C CNN
	1    4600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 61310711
P 4600 1800
AR Path="/61310711" Ref="#PWR0130"  Part="1" 
AR Path="/6121200F/61310711" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61310711" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61310711" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/61310711" Ref="#PWR?"  Part="1" 
F 0 "#PWR0130" H 4600 1550 50  0001 C CNN
F 1 "GND" H 4605 1627 50  0000 C CNN
F 2 "" H 4600 1800 50  0001 C CNN
F 3 "" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1700 4600 1800
Text Label 4600 2350 1    50   ~ 0
VDD1
Text Label 4700 2350 1    50   ~ 0
VDD2
Text Label 4800 2350 1    50   ~ 0
VDD3
Text Label 4900 2350 1    50   ~ 0
VDDA
Wire Wire Line
	4600 2450 4600 2350
Wire Wire Line
	4700 2450 4700 2350
Wire Wire Line
	4800 2450 4800 2350
Wire Wire Line
	4900 2450 4900 2350
Wire Wire Line
	4800 2350 4700 2350
Wire Wire Line
	4700 2350 4600 2350
Connection ~ 4700 2350
Wire Wire Line
	4600 1400 5050 1400
Connection ~ 5050 1400
Wire Wire Line
	5050 1700 4600 1700
Connection ~ 4600 1700
$Comp
L Device:C C10
U 1 1 61310727
P 6050 1550
AR Path="/61310727" Ref="C10"  Part="1" 
AR Path="/6121200F/61310727" Ref="CA?"  Part="1" 
AR Path="/61228324/61310727" Ref="CA?"  Part="1" 
AR Path="/61233186/61310727" Ref="CA?"  Part="1" 
AR Path="/612E65C4/61310727" Ref="CA?"  Part="1" 
F 0 "C10" H 6165 1596 50  0000 L CNN
F 1 "10nF" H 6165 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6088 1400 50  0001 C CNN
F 3 "~" H 6050 1550 50  0001 C CNN
	1    6050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1400 5600 1400
Connection ~ 5600 1400
Wire Wire Line
	6050 1700 5600 1700
Connection ~ 5600 1700
$Comp
L Device:R RA?
U 1 1 61310731
P 4800 5650
AR Path="/6121200F/61310731" Ref="RA?"  Part="1" 
AR Path="/61233186/61310731" Ref="RA?"  Part="1" 
AR Path="/612E65C4/61310731" Ref="RA?"  Part="1" 
AR Path="/61310731" Ref="R4"  Part="1" 
F 0 "R4" V 4800 5650 50  0000 C CNN
F 1 "0R" V 4684 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 5650 50  0001 C CNN
F 3 "~" H 4800 5650 50  0001 C CNN
	1    4800 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 5500 4800 5450
$Comp
L power:GND #PWR0131
U 1 1 6131073A
P 4800 5800
AR Path="/6131073A" Ref="#PWR0131"  Part="1" 
AR Path="/6121200F/6131073A" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6131073A" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6131073A" Ref="#PWR?"  Part="1" 
AR Path="/612E65C4/6131073A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0131" H 4800 5550 50  0001 C CNN
F 1 "GND" H 4805 5627 50  0000 C CNN
F 2 "" H 4800 5800 50  0001 C CNN
F 3 "" H 4800 5800 50  0001 C CNN
	1    4800 5800
	1    0    0    -1  
$EndComp
Text GLabel 4000 2650 0    50   Input ~ 0
RESET
Wire Wire Line
	4400 2350 4600 2350
Connection ~ 4600 2350
Wire Wire Line
	4900 2350 5050 2350
$Comp
L power:+3.3V #PWR0133
U 1 1 6136A0FF
P 4400 2350
F 0 "#PWR0133" H 4400 2200 50  0001 C CNN
F 1 "+3.3V" H 4415 2523 50  0000 C CNN
F 2 "" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0135
U 1 1 61387535
P 5100 5450
F 0 "#PWR0135" H 5100 5200 50  0001 C CNN
F 1 "GNDA" H 5105 5277 50  0000 C CNN
F 2 "" H 5100 5450 50  0001 C CNN
F 3 "" H 5100 5450 50  0001 C CNN
	1    5100 5450
	1    0    0    -1  
$EndComp
Text Label 3950 3350 2    50   ~ 0
PC13
Wire Wire Line
	3950 3350 4000 3350
Text Label 3950 3750 2    50   ~ 0
PB0
Text Label 3950 3850 2    50   ~ 0
PB1
Wire Wire Line
	3950 3750 4000 3750
Wire Wire Line
	3950 3850 4000 3850
Text Label 3950 4050 2    50   ~ 0
PB3
Text Label 3950 4150 2    50   ~ 0
PB4
Text Label 3950 4250 2    50   ~ 0
PB5
Text Label 3950 4350 2    50   ~ 0
PB6
Text Label 3950 4450 2    50   ~ 0
PB7
Text Label 3950 4550 2    50   ~ 0
PB8
Text Label 3950 4650 2    50   ~ 0
PB9
Text Label 3950 4750 2    50   ~ 0
PB10
Text Label 3950 4850 2    50   ~ 0
PB11
Text Label 3950 4950 2    50   ~ 0
PB12
Text Label 3950 5050 2    50   ~ 0
PB13
Text Label 3950 5150 2    50   ~ 0
PB14
Text Label 3950 5250 2    50   ~ 0
PB15
Wire Wire Line
	3950 4050 4000 4050
Wire Wire Line
	3950 4150 4000 4150
Wire Wire Line
	3950 4250 4000 4250
Wire Wire Line
	3950 4350 4000 4350
Wire Wire Line
	3950 4450 4000 4450
Wire Wire Line
	3950 4550 4000 4550
Wire Wire Line
	3950 4650 4000 4650
Wire Wire Line
	3950 4750 4000 4750
Wire Wire Line
	3950 4850 4000 4850
Wire Wire Line
	3950 4950 4000 4950
Wire Wire Line
	3950 5050 4000 5050
Wire Wire Line
	3950 5150 4000 5150
Wire Wire Line
	3950 5250 4000 5250
Text Label 5350 3750 0    50   ~ 0
PA0
Text Label 5350 3850 0    50   ~ 0
PA1
Text Label 5350 3950 0    50   ~ 0
PA2
Text Label 5350 4050 0    50   ~ 0
PA3
Text Label 5350 4150 0    50   ~ 0
PA4
Text Label 5350 4250 0    50   ~ 0
PA5
Text Label 5350 4350 0    50   ~ 0
PA6
Text Label 5350 4450 0    50   ~ 0
PA7
Text Label 5350 4550 0    50   ~ 0
PA8
Text Label 5350 4650 0    50   ~ 0
PA9
Text Label 5350 4750 0    50   ~ 0
PA10
Text Label 5350 4850 0    50   ~ 0
PA11
Text Label 5350 4950 0    50   ~ 0
PA12
Text Label 5350 5250 0    50   ~ 0
PA15
Wire Wire Line
	5350 3750 5300 3750
Wire Wire Line
	5350 3850 5300 3850
Wire Wire Line
	5350 3950 5300 3950
Wire Wire Line
	5350 4050 5300 4050
Wire Wire Line
	5350 4150 5300 4150
Wire Wire Line
	5350 4250 5300 4250
Wire Wire Line
	5350 4350 5300 4350
Wire Wire Line
	5350 4450 5300 4450
Wire Wire Line
	5350 4550 5300 4550
Wire Wire Line
	5350 4650 5300 4650
Wire Wire Line
	5350 4750 5300 4750
Wire Wire Line
	5350 4850 5300 4850
Wire Wire Line
	5350 4950 5300 4950
Wire Wire Line
	5350 5250 5300 5250
$Comp
L power:+3.3VA #PWR0132
U 1 1 61511A69
P 5050 2350
F 0 "#PWR0132" H 5050 2200 50  0001 C CNN
F 1 "+3.3VA" H 5065 2523 50  0000 C CNN
F 2 "" H 5050 2350 50  0001 C CNN
F 3 "" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 615A797C
P 6800 4950
AR Path="/615A797C" Ref="#PWR0136"  Part="1" 
AR Path="/6121200F/615A797C" Ref="#PWR?"  Part="1" 
AR Path="/61228324/615A797C" Ref="#PWR?"  Part="1" 
AR Path="/61233186/615A797C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0136" H 6800 4700 50  0001 C CNN
F 1 "GND" H 6805 4777 50  0000 C CNN
F 2 "" H 6800 4950 50  0001 C CNN
F 3 "" H 6800 4950 50  0001 C CNN
	1    6800 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0137
U 1 1 615A800F
P 8050 4950
F 0 "#PWR0137" H 8050 4800 50  0001 C CNN
F 1 "+3.3V" H 8065 5123 50  0000 C CNN
F 2 "" H 8050 4950 50  0001 C CNN
F 3 "" H 8050 4950 50  0001 C CNN
	1    8050 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	8050 4950 7700 4950
Wire Wire Line
	7150 4950 7100 4950
Text Label 7700 4850 0    50   ~ 0
PA12
Wire Wire Line
	7100 4850 7100 4950
Connection ~ 7100 4950
Wire Wire Line
	7100 4950 6800 4950
Wire Wire Line
	7700 5050 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 4950 7650 4950
Connection ~ 4800 5450
Wire Wire Line
	5100 5450 4800 5450
$EndSCHEMATC
