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
P 1550 2450
AR Path="/6121C48B" Ref="J?"  Part="1" 
AR Path="/6121200F/6121C48B" Ref="J2"  Part="1" 
AR Path="/61228324/6121C48B" Ref="J?"  Part="1" 
AR Path="/61233186/6121C48B" Ref="JB1"  Part="1" 
F 0 "JB1" H 1600 2767 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1600 2676 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1550 2450 50  0001 C CNN
F 3 "~" H 1550 2450 50  0001 C CNN
	1    1550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6121C491
P 1600 2700
AR Path="/6121C491" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6121C491" Ref="#PWR0104"  Part="1" 
AR Path="/61228324/6121C491" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6121C491" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1600 2450 50  0001 C CNN
F 1 "GND" H 1605 2527 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 1350 2700
Wire Wire Line
	1350 2700 1600 2700
Wire Wire Line
	1850 2550 1850 2700
Wire Wire Line
	1850 2700 1600 2700
Connection ~ 1600 2700
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 61222861
P 900 1400
AR Path="/61222861" Ref="U?"  Part="1" 
AR Path="/6121200F/61222861" Ref="U3"  Part="1" 
AR Path="/61228324/61222861" Ref="U?"  Part="1" 
AR Path="/61233186/61222861" Ref="UB2"  Part="1" 
F 0 "UB2" H 900 1642 50  0000 C CNN
F 1 "AMS1117-3.3" H 900 1551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 900 1600 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1000 1150 50  0001 C CNN
	1    900  1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61222867
P 900 1750
AR Path="/61222867" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61222867" Ref="#PWR0105"  Part="1" 
AR Path="/61228324/61222867" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61222867" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 900 1500 50  0001 C CNN
F 1 "GND" H 905 1577 50  0000 C CNN
F 2 "" H 900 1750 50  0001 C CNN
F 3 "" H 900 1750 50  0001 C CNN
	1    900  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1700 900  1750
$Comp
L power:VCC #PWR?
U 1 1 6122286E
P 600 1300
AR Path="/6122286E" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6122286E" Ref="#PWR0109"  Part="1" 
AR Path="/61228324/6122286E" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6122286E" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 600 1150 50  0001 C CNN
F 1 "VCC" H 615 1473 50  0000 C CNN
F 2 "" H 600 1300 50  0001 C CNN
F 3 "" H 600 1300 50  0001 C CNN
	1    600  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1300 600  1400
Text Label 1500 1400 2    50   ~ 0
V3.3
$Comp
L Device:C C?
U 1 1 61222876
P 1550 1650
AR Path="/61222876" Ref="C?"  Part="1" 
AR Path="/6121200F/61222876" Ref="C3"  Part="1" 
AR Path="/61228324/61222876" Ref="C?"  Part="1" 
AR Path="/61233186/61222876" Ref="CB1"  Part="1" 
F 0 "CB1" H 1665 1696 50  0000 L CNN
F 1 "10uF" H 1665 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 1500 50  0001 C CNN
F 3 "~" H 1550 1650 50  0001 C CNN
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6122287C
P 1900 1650
AR Path="/6122287C" Ref="C?"  Part="1" 
AR Path="/6121200F/6122287C" Ref="C4"  Part="1" 
AR Path="/61228324/6122287C" Ref="C?"  Part="1" 
AR Path="/61233186/6122287C" Ref="CB2"  Part="1" 
F 0 "CB2" H 2015 1696 50  0000 L CNN
F 1 "0.1uF" H 2015 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 1500 50  0001 C CNN
F 3 "~" H 1900 1650 50  0001 C CNN
	1    1900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1800 1900 1800
Wire Wire Line
	1900 1500 1900 1400
Wire Wire Line
	1550 1500 1550 1400
Wire Wire Line
	1550 1400 1900 1400
$Comp
L power:GND #PWR?
U 1 1 61222886
P 1900 1850
AR Path="/61222886" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61222886" Ref="#PWR0110"  Part="1" 
AR Path="/61228324/61222886" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61222886" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 1900 1600 50  0001 C CNN
F 1 "GND" H 1905 1677 50  0000 C CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
Connection ~ 1550 1400
Wire Wire Line
	1200 1400 1550 1400
Wire Wire Line
	1900 1850 1900 1800
Connection ~ 1900 1800
Text Label 1150 2350 0    50   ~ 0
V3.3
Text Label 2050 2350 2    50   ~ 0
V3.3
Wire Wire Line
	1150 2350 1350 2350
Wire Wire Line
	2050 2350 1850 2350
Text Label 3100 1200 0    50   ~ 0
BOOT0
Text Label 3100 2500 0    50   ~ 0
BOOT1
Wire Wire Line
	3100 1200 3400 1200
Text Label 4100 600  0    50   ~ 0
V3.3
Wire Wire Line
	4200 800  4200 700 
Wire Wire Line
	4100 800  4100 700 
Wire Wire Line
	4100 700  4200 700 
Wire Wire Line
	4000 800  4000 700 
Wire Wire Line
	4000 700  4100 700 
Connection ~ 4100 700 
$Comp
L Device:R RA?
U 1 1 612376A7
P 1000 2450
AR Path="/6121200F/612376A7" Ref="RA?"  Part="1" 
AR Path="/61233186/612376A7" Ref="RB1"  Part="1" 
F 0 "RB1" V 793 2450 50  0000 C CNN
F 1 "100K" V 884 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 930 2450 50  0001 C CNN
F 3 "~" H 1000 2450 50  0001 C CNN
	1    1000 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R RA?
U 1 1 61237883
P 2200 2450
AR Path="/6121200F/61237883" Ref="RA?"  Part="1" 
AR Path="/61233186/61237883" Ref="RB2"  Part="1" 
F 0 "RB2" V 1993 2450 50  0000 C CNN
F 1 "100K" V 2084 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 2450 50  0001 C CNN
F 3 "~" H 2200 2450 50  0001 C CNN
	1    2200 2450
	0    1    1    0   
$EndComp
Text Label 550  2450 0    50   ~ 0
BOOT0
Text Label 2650 2450 2    50   ~ 0
BOOT1
Wire Wire Line
	550  2450 850  2450
Wire Wire Line
	1150 2450 1350 2450
Wire Wire Line
	1850 2450 2050 2450
Wire Wire Line
	2350 2450 2650 2450
$Comp
L Device:C CA?
U 1 1 6125FA6A
P 6350 1350
AR Path="/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA6A" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA6A" Ref="CB5"  Part="1" 
F 0 "CB5" H 6465 1396 50  0000 L CNN
F 1 "0.1uF" H 6465 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 1200 50  0001 C CNN
F 3 "~" H 6350 1350 50  0001 C CNN
	1    6350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA70
P 6350 1600
AR Path="/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA70" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA70" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 6350 1350 50  0001 C CNN
F 1 "GND" H 6355 1427 50  0000 C CNN
F 2 "" H 6350 1600 50  0001 C CNN
F 3 "" H 6350 1600 50  0001 C CNN
	1    6350 1600
	1    0    0    -1  
$EndComp
Text Label 6350 1000 3    50   ~ 0
V3.3
Wire Wire Line
	6350 1000 6350 1200
Wire Wire Line
	6350 1500 6350 1600
$Comp
L Device:C CA?
U 1 1 6125FA88
P 5450 1350
AR Path="/6125FA88" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA88" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA88" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA88" Ref="CB3"  Part="1" 
F 0 "CB3" H 5565 1396 50  0000 L CNN
F 1 "0.1uF" H 5565 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 1200 50  0001 C CNN
F 3 "~" H 5450 1350 50  0001 C CNN
	1    5450 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA8E
P 5450 1600
AR Path="/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA8E" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA8E" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 5450 1350 50  0001 C CNN
F 1 "GND" H 5455 1427 50  0000 C CNN
F 2 "" H 5450 1600 50  0001 C CNN
F 3 "" H 5450 1600 50  0001 C CNN
	1    5450 1600
	1    0    0    -1  
$EndComp
Text Label 5450 1000 3    50   ~ 0
V3.3
Wire Wire Line
	5450 1000 5450 1200
Wire Wire Line
	5450 1500 5450 1600
$Comp
L Device:C CA?
U 1 1 6125FA97
P 5900 1350
AR Path="/6125FA97" Ref="CA?"  Part="1" 
AR Path="/6121200F/6125FA97" Ref="CA?"  Part="1" 
AR Path="/61228324/6125FA97" Ref="CA?"  Part="1" 
AR Path="/61233186/6125FA97" Ref="CB4"  Part="1" 
F 0 "CB4" H 6015 1396 50  0000 L CNN
F 1 "0.1uF" H 6015 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 1200 50  0001 C CNN
F 3 "~" H 5900 1350 50  0001 C CNN
	1    5900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6125FA9D
P 5900 1600
AR Path="/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6125FA9D" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6125FA9D" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 5900 1350 50  0001 C CNN
F 1 "GND" H 5905 1427 50  0000 C CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
Text Label 5900 1000 3    50   ~ 0
V3.3
Wire Wire Line
	5900 1000 5900 1200
Wire Wire Line
	5900 1500 5900 1600
$Comp
L Device:Crystal YA?
U 1 1 61262268
P 1100 3700
AR Path="/6121200F/61262268" Ref="YA?"  Part="1" 
AR Path="/61233186/61262268" Ref="YB1"  Part="1" 
F 0 "YB1" V 1054 3831 50  0000 L CNN
F 1 "8M" V 1145 3831 50  0000 L CNN
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
OSC_IN
Text Label 1200 3900 0    50   ~ 0
OSC_OUT
Wire Wire Line
	1200 3500 1100 3500
Connection ~ 1100 3500
Wire Wire Line
	1200 3900 1100 3900
Connection ~ 1100 3900
Text Label 3100 1400 0    50   ~ 0
OSC_IN
Text Label 3050 1500 0    50   ~ 0
OSC_OUT
Wire Wire Line
	3100 1400 3400 1400
Wire Wire Line
	3050 1500 3400 1500
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
Text Label 1200 4400 2    50   ~ 0
SWDIO
Text Label 1200 4500 2    50   ~ 0
SWCL
Wire Wire Line
	950  4400 1200 4400
Wire Wire Line
	950  4500 1200 4500
Text Label 4850 3600 2    50   ~ 0
SWDIO
Text Label 4850 3700 2    50   ~ 0
SWCL
$Comp
L MCU_ST_STM32F0:STM32F031C6Tx UB1
U 1 1 612773A3
P 4000 2400
F 0 "UB1" H 4000 711 50  0000 C CNN
F 1 "STM32F031C6Tx" H 4000 620 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3500 900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00104043.pdf" H 4000 2400 50  0001 C CNN
	1    4000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 4600 3600
Wire Wire Line
	4850 3700 4600 3700
Wire Wire Line
	4100 600  4100 700 
$Comp
L power:GND #PWR?
U 1 1 6127FB04
P 4000 4200
AR Path="/6127FB04" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6127FB04" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6127FB04" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6127FB04" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4000 3950 50  0001 C CNN
F 1 "GND" H 4005 4027 50  0000 C CNN
F 2 "" H 4000 4200 50  0001 C CNN
F 3 "" H 4000 4200 50  0001 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 4000 4050
Wire Wire Line
	3900 4000 3900 4050
Wire Wire Line
	3900 4050 4000 4050
Connection ~ 4000 4050
Wire Wire Line
	4000 4050 4000 4000
Wire Wire Line
	4100 4000 4100 4050
Wire Wire Line
	4100 4050 4000 4050
Wire Wire Line
	3100 2500 3400 2500
Text HLabel 4750 2500 2    50   Input ~ 0
F031_TX
Text HLabel 4750 3800 2    50   Input ~ 0
F031_RX
Wire Wire Line
	4600 2500 4750 2500
Wire Wire Line
	4750 3800 4600 3800
$EndSCHEMATC
