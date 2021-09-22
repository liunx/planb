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
L power:GNDD #PWR?
U 1 1 614BBB0C
P 6450 1950
AR Path="/614AECFD/614BBB0C" Ref="#PWR?"  Part="1" 
AR Path="/614BBB0C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 1700 50  0001 C CNN
F 1 "GNDD" H 6454 1795 50  0000 C CNN
F 2 "" H 6450 1950 50  0001 C CNN
F 3 "" H 6450 1950 50  0001 C CNN
	1    6450 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2050 6400 1950
Wire Wire Line
	6350 2050 6400 2050
Wire Wire Line
	6400 1950 6350 1950
Connection ~ 6400 2050
Wire Wire Line
	6400 2150 6400 2050
Wire Wire Line
	6350 2150 6400 2150
Connection ~ 6400 1950
Wire Wire Line
	6450 1950 6400 1950
Wire Wire Line
	5750 1950 5750 1900
Wire Wire Line
	5850 1950 5750 1950
Connection ~ 5750 1950
Wire Wire Line
	5750 2050 5750 1950
Wire Wire Line
	5850 2050 5750 2050
$Comp
L power:VCC #PWR?
U 1 1 614BBB1F
P 5750 1900
AR Path="/614AECFD/614BBB1F" Ref="#PWR?"  Part="1" 
AR Path="/614BBB1F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 1750 50  0001 C CNN
F 1 "VCC" H 5765 2073 50  0000 C CNN
F 2 "" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2150 5800 2150
Text Label 5800 2150 2    50   ~ 0
PC13
Wire Wire Line
	5850 2550 5800 2550
Wire Wire Line
	5850 2450 5800 2450
Wire Wire Line
	5850 2350 5800 2350
Wire Wire Line
	5850 2250 5800 2250
Wire Wire Line
	6400 2250 6350 2250
Wire Wire Line
	6400 2350 6350 2350
Wire Wire Line
	6400 2450 6350 2450
Wire Wire Line
	6400 2550 6350 2550
Text Label 6400 2250 0    50   ~ 0
PB9
Text Label 5800 2250 2    50   ~ 0
PB8
Text Label 6400 2350 0    50   ~ 0
PB7
Text Label 5800 2350 2    50   ~ 0
PB6
Text Label 6400 2450 0    50   ~ 0
PB5
Text Label 6400 2550 0    50   ~ 0
PB3
Text Label 5800 2450 2    50   ~ 0
PB4
Text Label 5800 2550 2    50   ~ 0
PA15
Wire Wire Line
	5850 2650 5800 2650
Wire Wire Line
	6400 2650 6350 2650
Text Label 6400 2650 0    50   ~ 0
PF7
Text Label 5800 2650 2    50   ~ 0
PF6
Wire Wire Line
	5850 2850 5800 2850
Wire Wire Line
	5850 2750 5800 2750
Wire Wire Line
	6400 2750 6350 2750
Wire Wire Line
	6400 2850 6350 2850
Wire Wire Line
	6400 2950 6350 2950
Text Label 6400 2750 0    50   ~ 0
PA12
Text Label 5800 2750 2    50   ~ 0
PA11
Text Label 6400 2850 0    50   ~ 0
PA10
Text Label 6400 2950 0    50   ~ 0
PA8
Text Label 5800 2850 2    50   ~ 0
PA9
Wire Wire Line
	5850 2950 5800 2950
Wire Wire Line
	5850 3050 5800 3050
Wire Wire Line
	6400 3050 6350 3050
Wire Wire Line
	6400 3150 6350 3150
Text Label 5800 2950 2    50   ~ 0
PB15
Text Label 6400 3050 0    50   ~ 0
PB14
Text Label 5800 3050 2    50   ~ 0
PB13
Text Label 6400 3150 0    50   ~ 0
PB12
Wire Wire Line
	5850 3150 5800 3150
Text Label 5800 3250 2    50   ~ 0
PB2
Wire Wire Line
	5850 3250 5800 3250
Wire Wire Line
	6400 3250 6350 3250
Text Label 6400 3250 0    50   ~ 0
PB10
Text Label 5800 3150 2    50   ~ 0
PB11
Wire Wire Line
	6350 3750 6400 3750
Wire Wire Line
	6350 3650 6400 3650
Wire Wire Line
	6350 3550 6400 3550
Wire Wire Line
	6350 3450 6400 3450
Wire Wire Line
	6350 3350 6400 3350
Wire Wire Line
	5850 3350 5800 3350
Wire Wire Line
	5850 3450 5800 3450
Wire Wire Line
	5850 3550 5800 3550
Wire Wire Line
	5850 3650 5800 3650
Wire Wire Line
	5850 3750 5800 3750
Text Label 6400 3350 0    50   ~ 0
PB1
Text Label 6400 3450 0    50   ~ 0
PA7
Text Label 6400 3550 0    50   ~ 0
PA5
Text Label 6400 3650 0    50   ~ 0
PA3
Text Label 5800 3350 2    50   ~ 0
PB0
Text Label 5800 3450 2    50   ~ 0
PA6
Text Label 5800 3550 2    50   ~ 0
PA4
Text Label 5800 3650 2    50   ~ 0
PA2
Text Label 6400 3750 0    50   ~ 0
PA1
Text Label 5800 3750 2    50   ~ 0
PA0
Wire Wire Line
	6350 3850 6350 3950
Wire Wire Line
	5850 3850 5750 3850
$Comp
L power:GNDA #PWR?
U 1 1 614BBB69
P 6350 3950
AR Path="/614AECFD/614BBB69" Ref="#PWR?"  Part="1" 
AR Path="/614BBB69" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 3700 50  0001 C CNN
F 1 "GNDA" H 6355 3777 50  0000 C CNN
F 2 "" H 6350 3950 50  0001 C CNN
F 3 "" H 6350 3950 50  0001 C CNN
	1    6350 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 614BBB6F
P 5750 3850
AR Path="/614AECFD/614BBB6F" Ref="#PWR?"  Part="1" 
AR Path="/614BBB6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 3700 50  0001 C CNN
F 1 "+3.3VA" H 5765 4023 50  0000 C CNN
F 2 "" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 614BBB75
P 6050 2850
AR Path="/61458792/614BBB75" Ref="J?"  Part="1" 
AR Path="/614BBB75" Ref="J1"  Part="1" 
AR Path="/614AECFD/614BBB75" Ref="J?"  Part="1" 
F 0 "J1" H 6100 3967 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 6100 3876 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Horizontal" H 6050 2850 50  0001 C CNN
F 3 "~" H 6050 2850 50  0001 C CNN
	1    6050 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 Lora?
U 1 1 614BE689
P 3900 1850
AR Path="/6148271A/614BE689" Ref="Lora?"  Part="1" 
AR Path="/614BE689" Ref="Lora?"  Part="1" 
AR Path="/614AECFD/614BE689" Ref="Lora?"  Part="1" 
F 0 "Lora?" H 3818 1417 50  0000 C CNN
F 1 "Conn_01x07" H 3818 1416 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 3900 1850 50  0001 C CNN
F 3 "~" H 3900 1850 50  0001 C CNN
	1    3900 1850
	-1   0    0    1   
$EndComp
Text Label 4150 1550 0    50   ~ 0
PB12
Text Label 4150 1650 0    50   ~ 0
PB13
Text Label 4150 1950 0    50   ~ 0
PB14
Wire Wire Line
	4150 1550 4100 1550
Wire Wire Line
	4150 1650 4100 1650
Wire Wire Line
	4150 1750 4100 1750
Wire Wire Line
	4150 1850 4100 1850
Wire Wire Line
	4150 1950 4100 1950
Wire Wire Line
	4150 2050 4100 2050
Wire Wire Line
	4100 2150 4100 2200
$Comp
L power:GNDD #PWR?
U 1 1 614BE699
P 4100 2200
AR Path="/614AECFD/614BE699" Ref="#PWR?"  Part="1" 
AR Path="/614BE699" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 1950 50  0001 C CNN
F 1 "GNDD" H 4104 2045 50  0000 C CNN
F 2 "" H 4100 2200 50  0001 C CNN
F 3 "" H 4100 2200 50  0001 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 614BE69F
P 4150 2050
AR Path="/614AECFD/614BE69F" Ref="#PWR?"  Part="1" 
AR Path="/614BE69F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 1900 50  0001 C CNN
F 1 "+5V" H 4165 2223 50  0000 C CNN
F 2 "" H 4150 2050 50  0001 C CNN
F 3 "" H 4150 2050 50  0001 C CNN
	1    4150 2050
	0    1    1    0   
$EndComp
Text Label 4150 1850 0    50   ~ 0
PB7
Text Label 4150 1750 0    50   ~ 0
PB6
$Comp
L Switch:SW_Push SW?
U 1 1 614C3CC4
P 1450 1450
F 0 "SW?" V 1450 1402 50  0000 R CNN
F 1 "SW_Push" V 1405 1402 50  0001 R CNN
F 2 "Footprint:SS12D00" H 1450 1650 50  0001 C CNN
F 3 "~" H 1450 1650 50  0001 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1450 1700 1450
Wire Wire Line
	2050 1750 2050 1800
$Comp
L Device:C C?
U 1 1 614C3CCC
P 2400 1650
AR Path="/614C3CCC" Ref="C?"  Part="1" 
AR Path="/6121200F/614C3CCC" Ref="C?"  Part="1" 
AR Path="/61228324/614C3CCC" Ref="C?"  Part="1" 
AR Path="/61233186/614C3CCC" Ref="C?"  Part="1" 
AR Path="/614896F1/614C3CCC" Ref="C?"  Part="1" 
AR Path="/614AECFD/614C3CCC" Ref="C?"  Part="1" 
F 0 "C?" H 2400 1750 50  0000 L CNN
F 1 "10uF" H 2400 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 1500 50  0001 C CNN
F 3 "~" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 614C3CD2
P 2650 1650
AR Path="/614C3CD2" Ref="C?"  Part="1" 
AR Path="/6121200F/614C3CD2" Ref="C?"  Part="1" 
AR Path="/61228324/614C3CD2" Ref="C?"  Part="1" 
AR Path="/61233186/614C3CD2" Ref="C?"  Part="1" 
AR Path="/614896F1/614C3CD2" Ref="C?"  Part="1" 
AR Path="/614AECFD/614C3CD2" Ref="C?"  Part="1" 
F 0 "C?" H 2650 1750 50  0000 L CNN
F 1 "100nF" H 2650 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2688 1500 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1450 2400 1450
Wire Wire Line
	2400 1450 2400 1500
Wire Wire Line
	2400 1800 2050 1800
Connection ~ 2050 1800
Wire Wire Line
	2050 1800 2050 1850
Wire Wire Line
	2650 1800 2400 1800
Connection ~ 2400 1800
Connection ~ 2400 1450
Wire Wire Line
	2650 1500 2650 1450
Connection ~ 2650 1450
Wire Wire Line
	2650 1450 2400 1450
$Comp
L Device:LED D?
U 1 1 614C3CE3
P 2900 1950
F 0 "D?" V 2939 1832 50  0000 R CNN
F 1 "LED" V 2848 1832 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 614C3CE9
P 2900 1600
AR Path="/6121200F/614C3CE9" Ref="R?"  Part="1" 
AR Path="/61233186/614C3CE9" Ref="R?"  Part="1" 
AR Path="/614C3CE9" Ref="R?"  Part="1" 
AR Path="/614896F1/614C3CE9" Ref="R?"  Part="1" 
AR Path="/614AECFD/614C3CE9" Ref="R?"  Part="1" 
F 0 "R?" V 2900 1600 50  0000 C CNN
F 1 "510R" V 2784 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 1600 50  0001 C CNN
F 3 "~" H 2900 1600 50  0001 C CNN
	1    2900 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 1800 2900 1750
Wire Wire Line
	2650 1450 2900 1450
Connection ~ 2900 1450
Wire Wire Line
	2900 1450 2900 1350
$Comp
L power:GNDD #PWR?
U 1 1 614C3CF3
P 2050 1850
F 0 "#PWR?" H 2050 1600 50  0001 C CNN
F 1 "GNDD" H 2054 1695 50  0000 C CNN
F 2 "" H 2050 1850 50  0001 C CNN
F 3 "" H 2050 1850 50  0001 C CNN
	1    2050 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 614C3CF9
P 2900 2150
F 0 "#PWR?" H 2900 1900 50  0001 C CNN
F 1 "GNDD" H 2904 1995 50  0000 C CNN
F 2 "" H 2900 2150 50  0001 C CNN
F 3 "" H 2900 2150 50  0001 C CNN
	1    2900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2150 2900 2100
$Comp
L Regulator_Linear:AMS1117-5.0 U?
U 1 1 614C3D00
P 2050 1450
F 0 "U?" H 2050 1692 50  0000 C CNN
F 1 "AMS1117-5.0" H 2050 1601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2050 1650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2150 1200 50  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 614C3D06
P 1250 1400
F 0 "#PWR?" H 1250 1250 50  0001 C CNN
F 1 "VCC" H 1265 1573 50  0000 C CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 614C3D0C
P 2900 1350
F 0 "#PWR?" H 2900 1200 50  0001 C CNN
F 1 "+5V" H 2915 1523 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1450 1250 1400
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 614C3D13
P 1300 2250
F 0 "J?" H 1380 2242 50  0000 L CNN
F 1 "Conn_01x02" H 1380 2151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1300 2250 50  0001 C CNN
F 3 "~" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 614C3D19
P 1100 2200
F 0 "#PWR?" H 1100 2050 50  0001 C CNN
F 1 "VCC" H 1115 2373 50  0000 C CNN
F 2 "" H 1100 2200 50  0001 C CNN
F 3 "" H 1100 2200 50  0001 C CNN
	1    1100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 614C3D1F
P 1100 2400
F 0 "#PWR?" H 1100 2150 50  0001 C CNN
F 1 "GNDD" H 1104 2245 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2250 1100 2200
Wire Wire Line
	1100 2350 1100 2400
$Comp
L Device:C C?
U 1 1 614C3D27
P 1700 1650
AR Path="/614C3D27" Ref="C?"  Part="1" 
AR Path="/6121200F/614C3D27" Ref="C?"  Part="1" 
AR Path="/61228324/614C3D27" Ref="C?"  Part="1" 
AR Path="/61233186/614C3D27" Ref="C?"  Part="1" 
AR Path="/614896F1/614C3D27" Ref="C?"  Part="1" 
AR Path="/614AECFD/614C3D27" Ref="C?"  Part="1" 
F 0 "C?" H 1700 1750 50  0000 L CNN
F 1 "10uF" H 1700 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1738 1500 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1500 1700 1450
Connection ~ 1700 1450
Wire Wire Line
	1700 1450 1650 1450
Wire Wire Line
	1700 1800 2050 1800
$Comp
L power:GNDD #PWR?
U 1 1 614CA2D7
P 8250 1900
AR Path="/614AECFD/614CA2D7" Ref="#PWR?"  Part="1" 
AR Path="/614CA2D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8250 1650 50  0001 C CNN
F 1 "GNDD" H 8254 1745 50  0000 C CNN
F 2 "" H 8250 1900 50  0001 C CNN
F 3 "" H 8250 1900 50  0001 C CNN
	1    8250 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 2000 8200 1900
Wire Wire Line
	8150 2000 8200 2000
Wire Wire Line
	8200 1900 8150 1900
Connection ~ 8200 2000
Wire Wire Line
	8200 2100 8200 2000
Wire Wire Line
	8150 2100 8200 2100
Connection ~ 8200 1900
Wire Wire Line
	8250 1900 8200 1900
Wire Wire Line
	7550 1900 7550 1850
Wire Wire Line
	7650 1900 7550 1900
Connection ~ 7550 1900
Wire Wire Line
	7550 2000 7550 1900
Wire Wire Line
	7650 2000 7550 2000
$Comp
L power:VCC #PWR?
U 1 1 614CA546
P 7550 1850
AR Path="/614AECFD/614CA546" Ref="#PWR?"  Part="1" 
AR Path="/614CA546" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 1700 50  0001 C CNN
F 1 "VCC" H 7565 2023 50  0000 C CNN
F 2 "" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2100 7600 2100
Text Label 7600 2100 2    50   ~ 0
PC13
Wire Wire Line
	7650 2500 7600 2500
Wire Wire Line
	7650 2400 7600 2400
Wire Wire Line
	7650 2300 7600 2300
Wire Wire Line
	7650 2200 7600 2200
Wire Wire Line
	8200 2200 8150 2200
Wire Wire Line
	8200 2300 8150 2300
Wire Wire Line
	8200 2400 8150 2400
Wire Wire Line
	8200 2500 8150 2500
Text Label 8200 2200 0    50   ~ 0
PB9
Text Label 7600 2200 2    50   ~ 0
PB8
Text Label 8200 2300 0    50   ~ 0
PB7
Text Label 7600 2300 2    50   ~ 0
PB6
Text Label 8200 2400 0    50   ~ 0
PB5
Text Label 8200 2500 0    50   ~ 0
PB3
Text Label 7600 2400 2    50   ~ 0
PB4
Text Label 7600 2500 2    50   ~ 0
PA15
Wire Wire Line
	7650 2600 7600 2600
Wire Wire Line
	8200 2600 8150 2600
Text Label 8200 2600 0    50   ~ 0
PF7
Text Label 7600 2600 2    50   ~ 0
PF6
Wire Wire Line
	7650 2800 7600 2800
Wire Wire Line
	7650 2700 7600 2700
Wire Wire Line
	8200 2700 8150 2700
Wire Wire Line
	8200 2800 8150 2800
Wire Wire Line
	8200 2900 8150 2900
Text Label 8200 2700 0    50   ~ 0
PA12
Text Label 7600 2700 2    50   ~ 0
PA11
Text Label 8200 2800 0    50   ~ 0
PA10
Text Label 8200 2900 0    50   ~ 0
PA8
Text Label 7600 2800 2    50   ~ 0
PA9
Wire Wire Line
	7650 2900 7600 2900
Wire Wire Line
	7650 3000 7600 3000
Wire Wire Line
	8200 3000 8150 3000
Wire Wire Line
	8200 3100 8150 3100
Text Label 7600 2900 2    50   ~ 0
PB15
Text Label 8200 3000 0    50   ~ 0
PB14
Text Label 7600 3000 2    50   ~ 0
PB13
Text Label 8200 3100 0    50   ~ 0
PB12
Wire Wire Line
	7650 3100 7600 3100
Text Label 7600 3200 2    50   ~ 0
PB2
Wire Wire Line
	7650 3200 7600 3200
Wire Wire Line
	8200 3200 8150 3200
Text Label 8200 3200 0    50   ~ 0
PB10
Text Label 7600 3100 2    50   ~ 0
PB11
Wire Wire Line
	8150 3700 8200 3700
Wire Wire Line
	8150 3600 8200 3600
Wire Wire Line
	8150 3500 8200 3500
Wire Wire Line
	8150 3400 8200 3400
Wire Wire Line
	8150 3300 8200 3300
Wire Wire Line
	7650 3300 7600 3300
Wire Wire Line
	7650 3400 7600 3400
Wire Wire Line
	7650 3500 7600 3500
Wire Wire Line
	7650 3600 7600 3600
Wire Wire Line
	7650 3700 7600 3700
Text Label 8200 3300 0    50   ~ 0
PB1
Text Label 8200 3400 0    50   ~ 0
PA7
Text Label 8200 3500 0    50   ~ 0
PA5
Text Label 8200 3600 0    50   ~ 0
PA3
Text Label 7600 3300 2    50   ~ 0
PB0
Text Label 7600 3400 2    50   ~ 0
PA6
Text Label 7600 3500 2    50   ~ 0
PA4
Text Label 7600 3600 2    50   ~ 0
PA2
Text Label 8200 3700 0    50   ~ 0
PA1
Text Label 7600 3700 2    50   ~ 0
PA0
Wire Wire Line
	8150 3800 8150 3900
Wire Wire Line
	7650 3800 7550 3800
$Comp
L power:GNDA #PWR?
U 1 1 614CA594
P 8150 3900
AR Path="/614AECFD/614CA594" Ref="#PWR?"  Part="1" 
AR Path="/614CA594" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8150 3650 50  0001 C CNN
F 1 "GNDA" H 8155 3727 50  0000 C CNN
F 2 "" H 8150 3900 50  0001 C CNN
F 3 "" H 8150 3900 50  0001 C CNN
	1    8150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 614CA59E
P 7550 3800
AR Path="/614AECFD/614CA59E" Ref="#PWR?"  Part="1" 
AR Path="/614CA59E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 3650 50  0001 C CNN
F 1 "+3.3VA" H 7565 3973 50  0000 C CNN
F 2 "" H 7550 3800 50  0001 C CNN
F 3 "" H 7550 3800 50  0001 C CNN
	1    7550 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 614CA5A8
P 7850 2800
AR Path="/61458792/614CA5A8" Ref="J?"  Part="1" 
AR Path="/614CA5A8" Ref="J2"  Part="1" 
AR Path="/614AECFD/614CA5A8" Ref="J?"  Part="1" 
F 0 "J2" H 7900 3917 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 7900 3826 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Horizontal" H 7850 2800 50  0001 C CNN
F 3 "~" H 7850 2800 50  0001 C CNN
	1    7850 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 614F3CE2
P 1000 3500
AR Path="/614E2B00/614F3CE2" Ref="Servo?"  Part="1" 
AR Path="/614F3CE2" Ref="S1"  Part="1" 
F 0 "S1" H 918 3267 50  0000 C CNN
F 1 "Conn_01x03" H 918 3266 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1000 3500 50  0001 C CNN
F 3 "~" H 1000 3500 50  0001 C CNN
	1    1000 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614F3CE8
P 1200 3650
AR Path="/614F3CE8" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/614F3CE8" Ref="#PWR?"  Part="1" 
AR Path="/61228324/614F3CE8" Ref="#PWR?"  Part="1" 
AR Path="/61233186/614F3CE8" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/614F3CE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1200 3400 50  0001 C CNN
F 1 "GND" H 1205 3477 50  0000 C CNN
F 2 "" H 1200 3650 50  0001 C CNN
F 3 "" H 1200 3650 50  0001 C CNN
	1    1200 3650
	1    0    0    -1  
$EndComp
Text Label 1250 3500 0    50   ~ 0
V5.0
Wire Wire Line
	1200 3600 1200 3650
Wire Wire Line
	1200 3500 1250 3500
Text Label 1250 3400 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	1250 3400 1200 3400
$Comp
L power:GND #PWR?
U 1 1 614FB1A8
P 1200 6050
AR Path="/614FB1A8" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/614FB1A8" Ref="#PWR?"  Part="1" 
AR Path="/61228324/614FB1A8" Ref="#PWR?"  Part="1" 
AR Path="/61233186/614FB1A8" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/614FB1A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1200 5800 50  0001 C CNN
F 1 "GND" H 1205 5877 50  0000 C CNN
F 2 "" H 1200 6050 50  0001 C CNN
F 3 "" H 1200 6050 50  0001 C CNN
	1    1200 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 M1
U 1 1 614FB1AE
P 1000 5750
F 0 "M1" H 918 5417 50  0000 C CNN
F 1 "Conn_01x05" H 918 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1000 5750 50  0001 C CNN
F 3 "~" H 1000 5750 50  0001 C CNN
	1    1000 5750
	-1   0    0    1   
$EndComp
Text Label 1250 5550 0    50   ~ 0
TIM1_CH1
Text Label 1250 5650 0    50   ~ 0
TIM1_CH2
Text Label 1250 5750 0    50   ~ 0
TIM1_CH3
Text Label 1250 5850 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	1200 5550 1250 5550
Wire Wire Line
	1200 5650 1250 5650
Wire Wire Line
	1200 5750 1250 5750
Wire Wire Line
	1200 5850 1250 5850
Wire Wire Line
	1200 5950 1200 6050
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 61511B0E
P 1750 3550
AR Path="/614E2B00/61511B0E" Ref="Servo?"  Part="1" 
AR Path="/61511B0E" Ref="Servo?"  Part="1" 
F 0 "Servo?" H 1668 3317 50  0000 C CNN
F 1 "Conn_01x03" H 1668 3316 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1750 3550 50  0001 C CNN
F 3 "~" H 1750 3550 50  0001 C CNN
	1    1750 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61511EB0
P 1950 3700
AR Path="/61511EB0" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61511EB0" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61511EB0" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61511EB0" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/61511EB0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 3450 50  0001 C CNN
F 1 "GND" H 1955 3527 50  0000 C CNN
F 2 "" H 1950 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
Text Label 2000 3550 0    50   ~ 0
V5.0
Wire Wire Line
	1950 3650 1950 3700
Wire Wire Line
	1950 3550 2000 3550
Text Label 2000 3450 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	2000 3450 1950 3450
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 6151B4FB
P 1000 4550
AR Path="/614E2B00/6151B4FB" Ref="Servo?"  Part="1" 
AR Path="/6151B4FB" Ref="Servo?"  Part="1" 
F 0 "Servo?" H 918 4317 50  0000 C CNN
F 1 "Conn_01x03" H 918 4316 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1000 4550 50  0001 C CNN
F 3 "~" H 1000 4550 50  0001 C CNN
	1    1000 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6151B501
P 1200 4700
AR Path="/6151B501" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6151B501" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6151B501" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6151B501" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/6151B501" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1200 4450 50  0001 C CNN
F 1 "GND" H 1205 4527 50  0000 C CNN
F 2 "" H 1200 4700 50  0001 C CNN
F 3 "" H 1200 4700 50  0001 C CNN
	1    1200 4700
	1    0    0    -1  
$EndComp
Text Label 1250 4550 0    50   ~ 0
V5.0
Wire Wire Line
	1200 4650 1200 4700
Wire Wire Line
	1200 4550 1250 4550
Text Label 1250 4450 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	1250 4450 1200 4450
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 6151B50C
P 1750 4600
AR Path="/614E2B00/6151B50C" Ref="Servo?"  Part="1" 
AR Path="/6151B50C" Ref="Servo?"  Part="1" 
F 0 "Servo?" H 1668 4367 50  0000 C CNN
F 1 "Conn_01x03" H 1668 4366 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1750 4600 50  0001 C CNN
F 3 "~" H 1750 4600 50  0001 C CNN
	1    1750 4600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6151B512
P 1950 4750
AR Path="/6151B512" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6151B512" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6151B512" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6151B512" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/6151B512" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 4500 50  0001 C CNN
F 1 "GND" H 1955 4577 50  0000 C CNN
F 2 "" H 1950 4750 50  0001 C CNN
F 3 "" H 1950 4750 50  0001 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
Text Label 2000 4600 0    50   ~ 0
V5.0
Wire Wire Line
	1950 4700 1950 4750
Wire Wire Line
	1950 4600 2000 4600
Text Label 2000 4500 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	2000 4500 1950 4500
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 615226EA
P 2850 4550
AR Path="/614E2B00/615226EA" Ref="Servo?"  Part="1" 
AR Path="/615226EA" Ref="Servo?"  Part="1" 
F 0 "Servo?" H 2768 4317 50  0000 C CNN
F 1 "Conn_01x03" H 2768 4316 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2850 4550 50  0001 C CNN
F 3 "~" H 2850 4550 50  0001 C CNN
	1    2850 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 615226F0
P 3050 4700
AR Path="/615226F0" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/615226F0" Ref="#PWR?"  Part="1" 
AR Path="/61228324/615226F0" Ref="#PWR?"  Part="1" 
AR Path="/61233186/615226F0" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/615226F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 4450 50  0001 C CNN
F 1 "GND" H 3055 4527 50  0000 C CNN
F 2 "" H 3050 4700 50  0001 C CNN
F 3 "" H 3050 4700 50  0001 C CNN
	1    3050 4700
	1    0    0    -1  
$EndComp
Text Label 3100 4550 0    50   ~ 0
V5.0
Wire Wire Line
	3050 4650 3050 4700
Wire Wire Line
	3050 4550 3100 4550
Text Label 3100 4450 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	3100 4450 3050 4450
$Comp
L Connector_Generic:Conn_01x03 Servo?
U 1 1 615226FB
P 2750 3550
AR Path="/614E2B00/615226FB" Ref="Servo?"  Part="1" 
AR Path="/615226FB" Ref="Servo?"  Part="1" 
F 0 "Servo?" H 2668 3317 50  0000 C CNN
F 1 "Conn_01x03" H 2668 3316 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2750 3550 50  0001 C CNN
F 3 "~" H 2750 3550 50  0001 C CNN
	1    2750 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61522701
P 2950 3700
AR Path="/61522701" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61522701" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61522701" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61522701" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/61522701" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2950 3450 50  0001 C CNN
F 1 "GND" H 2955 3527 50  0000 C CNN
F 2 "" H 2950 3700 50  0001 C CNN
F 3 "" H 2950 3700 50  0001 C CNN
	1    2950 3700
	1    0    0    -1  
$EndComp
Text Label 3000 3550 0    50   ~ 0
V5.0
Wire Wire Line
	2950 3650 2950 3700
Wire Wire Line
	2950 3550 3000 3550
Text Label 3000 3450 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	3000 3450 2950 3450
$Comp
L power:GND #PWR?
U 1 1 6156056E
P 2250 6050
AR Path="/6156056E" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6156056E" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6156056E" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6156056E" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/6156056E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 5800 50  0001 C CNN
F 1 "GND" H 2255 5877 50  0000 C CNN
F 2 "" H 2250 6050 50  0001 C CNN
F 3 "" H 2250 6050 50  0001 C CNN
	1    2250 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 M?
U 1 1 615609B8
P 2050 5750
F 0 "M?" H 1968 5417 50  0000 C CNN
F 1 "Conn_01x05" H 1968 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2050 5750 50  0001 C CNN
F 3 "~" H 2050 5750 50  0001 C CNN
	1    2050 5750
	-1   0    0    1   
$EndComp
Text Label 2300 5550 0    50   ~ 0
TIM1_CH1
Text Label 2300 5650 0    50   ~ 0
TIM1_CH2
Text Label 2300 5750 0    50   ~ 0
TIM1_CH3
Text Label 2300 5850 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	2250 5550 2300 5550
Wire Wire Line
	2250 5650 2300 5650
Wire Wire Line
	2250 5750 2300 5750
Wire Wire Line
	2250 5850 2300 5850
Wire Wire Line
	2250 5950 2250 6050
$Comp
L power:GND #PWR?
U 1 1 61568D5E
P 3350 6050
AR Path="/61568D5E" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61568D5E" Ref="#PWR?"  Part="1" 
AR Path="/61228324/61568D5E" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61568D5E" Ref="#PWR?"  Part="1" 
AR Path="/614E2B00/61568D5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 5800 50  0001 C CNN
F 1 "GND" H 3355 5877 50  0000 C CNN
F 2 "" H 3350 6050 50  0001 C CNN
F 3 "" H 3350 6050 50  0001 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 M?
U 1 1 615691D4
P 3150 5750
F 0 "M?" H 3068 5417 50  0000 C CNN
F 1 "Conn_01x05" H 3068 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3150 5750 50  0001 C CNN
F 3 "~" H 3150 5750 50  0001 C CNN
	1    3150 5750
	-1   0    0    1   
$EndComp
Text Label 3400 5550 0    50   ~ 0
TIM1_CH1
Text Label 3400 5650 0    50   ~ 0
TIM1_CH2
Text Label 3400 5750 0    50   ~ 0
TIM1_CH3
Text Label 3400 5850 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	3350 5550 3400 5550
Wire Wire Line
	3350 5650 3400 5650
Wire Wire Line
	3350 5750 3400 5750
Wire Wire Line
	3350 5850 3400 5850
Wire Wire Line
	3350 5950 3350 6050
$EndSCHEMATC
