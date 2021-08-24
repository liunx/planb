EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L MCU_ST_STM32F1:STM32F103C6Tx UA1
U 1 1 61218B4B
P 6950 3600
AR Path="/6121200F/61218B4B" Ref="UA1"  Part="1" 
AR Path="/61228324/61218B4B" Ref="U?"  Part="1" 
AR Path="/61233186/61218B4B" Ref="UA?"  Part="1" 
F 0 "UA1" H 6900 3950 50  0000 C CNN
F 1 "STM32F103C6Tx" H 6900 3850 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6350 2200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00210843.pdf" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 61290090
P 1800 1700
AR Path="/61290090" Ref="J?"  Part="1" 
AR Path="/6121200F/61290090" Ref="JA1"  Part="1" 
AR Path="/61228324/61290090" Ref="J?"  Part="1" 
AR Path="/61233186/61290090" Ref="J?"  Part="1" 
F 0 "JA1" H 1850 1925 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1850 1926 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1800 1700 50  0001 C CNN
F 3 "~" H 1800 1700 50  0001 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61290091
P 1850 1950
AR Path="/61290091" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61290091" Ref="#PWR0104"  Part="1" 
AR Path="/61228324/61290091" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61290091" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1850 1700 50  0001 C CNN
F 1 "GND" H 1855 1777 50  0000 C CNN
F 2 "" H 1850 1950 50  0001 C CNN
F 3 "" H 1850 1950 50  0001 C CNN
	1    1850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1800 1600 1950
Wire Wire Line
	1600 1950 1850 1950
Wire Wire Line
	2100 1800 2100 1950
Wire Wire Line
	2100 1950 1850 1950
Connection ~ 1850 1950
Text Label 1400 1600 0    50   ~ 0
V3.3
Text Label 2300 1600 2    50   ~ 0
V3.3
Wire Wire Line
	1400 1600 1600 1600
Wire Wire Line
	2300 1600 2100 1600
Text Label 5950 2500 0    50   ~ 0
BOOT0
Wire Wire Line
	6250 2500 5950 2500
Text Label 5950 3600 0    50   ~ 0
BOOT1
Wire Wire Line
	6250 3600 5950 3600
$Comp
L Device:R RA1
U 1 1 6122E3C9
P 1300 1700
AR Path="/6121200F/6122E3C9" Ref="RA1"  Part="1" 
AR Path="/61233186/6122E3C9" Ref="RA?"  Part="1" 
F 0 "RA1" V 1093 1700 50  0000 C CNN
F 1 "100K" V 1184 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1230 1700 50  0001 C CNN
F 3 "~" H 1300 1700 50  0001 C CNN
	1    1300 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R RA2
U 1 1 6122ED1E
P 2400 1700
AR Path="/6121200F/6122ED1E" Ref="RA2"  Part="1" 
AR Path="/61233186/6122ED1E" Ref="RA?"  Part="1" 
F 0 "RA2" V 2193 1700 50  0000 C CNN
F 1 "100K" V 2284 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 1700 50  0001 C CNN
F 3 "~" H 2400 1700 50  0001 C CNN
	1    2400 1700
	0    1    1    0   
$EndComp
Text Label 850  1700 0    50   ~ 0
BOOT0
Text Label 2850 1700 2    50   ~ 0
BOOT1
Wire Wire Line
	850  1700 1150 1700
Wire Wire Line
	1450 1700 1600 1700
Wire Wire Line
	2100 1700 2250 1700
Wire Wire Line
	2550 1700 2850 1700
$Comp
L Device:C CA?
U 1 1 6124845B
P 7300 1200
AR Path="/6124845B" Ref="CA?"  Part="1" 
AR Path="/6121200F/6124845B" Ref="CA5"  Part="1" 
AR Path="/61228324/6124845B" Ref="CA?"  Part="1" 
AR Path="/61233186/6124845B" Ref="CA?"  Part="1" 
F 0 "CA5" H 7415 1246 50  0000 L CNN
F 1 "0.1uF" H 7415 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 1050 50  0001 C CNN
F 3 "~" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
Text Label 7300 850  3    50   ~ 0
VDD3
Wire Wire Line
	7300 850  7300 1050
$Comp
L Device:C CA?
U 1 1 6124CC23
P 7850 1200
AR Path="/6124CC23" Ref="CA?"  Part="1" 
AR Path="/6121200F/6124CC23" Ref="CA6"  Part="1" 
AR Path="/61228324/6124CC23" Ref="CA?"  Part="1" 
AR Path="/61233186/6124CC23" Ref="CA?"  Part="1" 
F 0 "CA6" H 7965 1246 50  0000 L CNN
F 1 "1uF" H 7965 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7888 1050 50  0001 C CNN
F 3 "~" H 7850 1200 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6124CDA3
P 7850 1450
AR Path="/6124CDA3" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6124CDA3" Ref="#PWR0107"  Part="1" 
AR Path="/61228324/6124CDA3" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6124CDA3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 7850 1200 50  0001 C CNN
F 1 "GND" H 7855 1277 50  0000 C CNN
F 2 "" H 7850 1450 50  0001 C CNN
F 3 "" H 7850 1450 50  0001 C CNN
	1    7850 1450
	1    0    0    -1  
$EndComp
Text Label 7850 850  3    50   ~ 0
VDDA
Wire Wire Line
	7850 850  7850 1050
Wire Wire Line
	7850 1350 7850 1450
$Comp
L Device:C CA?
U 1 1 6124DCDE
P 5750 1200
AR Path="/6124DCDE" Ref="CA?"  Part="1" 
AR Path="/6121200F/6124DCDE" Ref="CA3"  Part="1" 
AR Path="/61228324/6124DCDE" Ref="CA?"  Part="1" 
AR Path="/61233186/6124DCDE" Ref="CA?"  Part="1" 
F 0 "CA3" H 5865 1246 50  0000 L CNN
F 1 "0.1uF" H 5865 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 1050 50  0001 C CNN
F 3 "~" H 5750 1200 50  0001 C CNN
	1    5750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6124DE7C
P 5750 1450
AR Path="/6124DE7C" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6124DE7C" Ref="#PWR0108"  Part="1" 
AR Path="/61228324/6124DE7C" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6124DE7C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 5750 1200 50  0001 C CNN
F 1 "GND" H 5755 1277 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
Text Label 5750 850  3    50   ~ 0
VDD1
Wire Wire Line
	5750 850  5750 1050
Wire Wire Line
	5750 1350 5750 1450
$Comp
L Device:C CA?
U 1 1 6124DE89
P 6250 1200
AR Path="/6124DE89" Ref="CA?"  Part="1" 
AR Path="/6121200F/6124DE89" Ref="CA4"  Part="1" 
AR Path="/61228324/6124DE89" Ref="CA?"  Part="1" 
AR Path="/61233186/6124DE89" Ref="CA?"  Part="1" 
F 0 "CA4" H 6365 1246 50  0000 L CNN
F 1 "0.1uF" H 6365 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 1050 50  0001 C CNN
F 3 "~" H 6250 1200 50  0001 C CNN
	1    6250 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6124DE93
P 6250 1450
AR Path="/6124DE93" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6124DE93" Ref="#PWR0114"  Part="1" 
AR Path="/61228324/6124DE93" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6124DE93" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 6250 1200 50  0001 C CNN
F 1 "GND" H 6255 1277 50  0000 C CNN
F 2 "" H 6250 1450 50  0001 C CNN
F 3 "" H 6250 1450 50  0001 C CNN
	1    6250 1450
	1    0    0    -1  
$EndComp
Text Label 6250 850  3    50   ~ 0
VDD2
Wire Wire Line
	6250 850  6250 1050
Wire Wire Line
	6250 1350 6250 1450
$Comp
L Device:C CA?
U 1 1 61254645
P 1150 2800
AR Path="/61254645" Ref="CA?"  Part="1" 
AR Path="/6121200F/61254645" Ref="CA7"  Part="1" 
AR Path="/61228324/61254645" Ref="CA?"  Part="1" 
AR Path="/61233186/61254645" Ref="CA?"  Part="1" 
F 0 "CA7" H 1265 2846 50  0000 L CNN
F 1 "20pF" H 1265 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1188 2650 50  0001 C CNN
F 3 "~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C CA?
U 1 1 61255A6F
P 1150 3200
AR Path="/61255A6F" Ref="CA?"  Part="1" 
AR Path="/6121200F/61255A6F" Ref="CA8"  Part="1" 
AR Path="/61228324/61255A6F" Ref="CA?"  Part="1" 
AR Path="/61233186/61255A6F" Ref="CA?"  Part="1" 
F 0 "CA8" H 1265 3246 50  0000 L CNN
F 1 "20pF" H 1265 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1188 3050 50  0001 C CNN
F 3 "~" H 1150 3200 50  0001 C CNN
	1    1150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 2800 1000 3200
Wire Wire Line
	1300 2800 1400 2800
Wire Wire Line
	1400 2800 1400 2850
Wire Wire Line
	1300 3200 1400 3200
Wire Wire Line
	1400 3200 1400 3150
Text Label 5750 2700 0    50   ~ 0
RCC_OSC_IN
Text Label 5750 2800 0    50   ~ 0
RCC_OSC_OUT
Text Label 1750 2800 0    50   ~ 0
RCC_OSC_IN
Text Label 1750 3200 0    50   ~ 0
RCC_OSC_OUT
Connection ~ 1400 2800
Connection ~ 1400 3200
$Comp
L Connector_Generic:Conn_01x04 JA2
U 1 1 6126594F
P 1050 3800
F 0 "JA2" H 968 3467 50  0000 C CNN
F 1 "Conn_01x04" H 1130 3701 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1050 3800 50  0001 C CNN
F 3 "~" H 1050 3800 50  0001 C CNN
	1    1050 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:C CA?
U 1 1 61268481
P 1850 3750
AR Path="/61268481" Ref="CA?"  Part="1" 
AR Path="/6121200F/61268481" Ref="CA9"  Part="1" 
AR Path="/61228324/61268481" Ref="CA?"  Part="1" 
AR Path="/61233186/61268481" Ref="CA?"  Part="1" 
F 0 "CA9" H 1965 3796 50  0000 L CNN
F 1 "0.1uF" H 1965 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1888 3600 50  0001 C CNN
F 3 "~" H 1850 3750 50  0001 C CNN
	1    1850 3750
	1    0    0    -1  
$EndComp
Text Label 1450 3600 2    50   ~ 0
V3.3
Text Label 7600 4700 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 7600 4800 0    50   ~ 0
SYS_JTCK-SWCL
Wire Wire Line
	1250 3600 1850 3600
Wire Wire Line
	1850 3900 1250 3900
Wire Wire Line
	1250 4150 1250 3900
Connection ~ 1250 3900
Text Label 1300 3700 0    50   ~ 0
SYS_JTMS-SWDIO
Text Label 1300 3800 0    50   ~ 0
SYS_JTCK-SWCL
$Comp
L power:GND #PWR?
U 1 1 611CDE42
P 6850 5200
AR Path="/611CDE42" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/611CDE42" Ref="#PWR0116"  Part="1" 
AR Path="/61228324/611CDE42" Ref="#PWR?"  Part="1" 
AR Path="/61233186/611CDE42" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 6850 4950 50  0001 C CNN
F 1 "GND" H 6855 5027 50  0000 C CNN
F 2 "" H 6850 5200 50  0001 C CNN
F 3 "" H 6850 5200 50  0001 C CNN
	1    6850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5100 6950 5200
Wire Wire Line
	6850 5100 6850 5200
Wire Wire Line
	6850 5200 6950 5200
Wire Wire Line
	6750 5100 6750 5200
Wire Wire Line
	6750 5200 6850 5200
Connection ~ 6850 5200
$Comp
L Device:Crystal_GND23 YB?
U 1 1 611EDCB8
P 2750 3000
AR Path="/61233186/611EDCB8" Ref="YB?"  Part="1" 
AR Path="/6121200F/611EDCB8" Ref="YA2"  Part="1" 
F 0 "YA2" V 2704 3244 50  0000 L CNN
F 1 "32768HZ" V 2795 3244 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABS25-4Pin_8.0x3.8mm" H 2750 3000 50  0001 C CNN
F 3 "~" H 2750 3000 50  0001 C CNN
	1    2750 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C CB?
U 1 1 611EDCBE
P 2500 2800
AR Path="/611EDCBE" Ref="CB?"  Part="1" 
AR Path="/6121200F/611EDCBE" Ref="CA10"  Part="1" 
AR Path="/61228324/611EDCBE" Ref="CB?"  Part="1" 
AR Path="/61233186/611EDCBE" Ref="CB?"  Part="1" 
F 0 "CA10" H 2615 2846 50  0000 L CNN
F 1 "20pF" H 2615 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 2650 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C CB?
U 1 1 611EDCC4
P 2500 3200
AR Path="/611EDCC4" Ref="CB?"  Part="1" 
AR Path="/6121200F/611EDCC4" Ref="CA11"  Part="1" 
AR Path="/61228324/611EDCC4" Ref="CB?"  Part="1" 
AR Path="/61233186/611EDCC4" Ref="CB?"  Part="1" 
F 0 "CA11" H 2615 3246 50  0000 L CNN
F 1 "20pF" H 2615 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 3050 50  0001 C CNN
F 3 "~" H 2500 3200 50  0001 C CNN
	1    2500 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 2800 2350 3200
Wire Wire Line
	2650 2800 2750 2800
Wire Wire Line
	2750 2800 2750 2850
Wire Wire Line
	2650 3200 2750 3200
Wire Wire Line
	2750 3200 2750 3150
Text Label 2850 2800 0    50   ~ 0
RCC_OSC32_IN
Text Label 2850 3200 0    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	2850 2800 2750 2800
Connection ~ 2750 2800
Wire Wire Line
	2850 3200 2750 3200
Connection ~ 2750 3200
Text Label 6200 3100 2    50   ~ 0
RCC_OSC32_IN
Text Label 6200 3200 2    50   ~ 0
RCC_OSC32_OUT
Wire Wire Line
	5750 2700 6250 2700
Wire Wire Line
	5750 2800 6250 2800
Wire Wire Line
	7600 4700 7550 4700
Wire Wire Line
	7600 4800 7550 4800
Wire Wire Line
	1250 3700 1300 3700
Wire Wire Line
	1250 3800 1300 3800
Wire Wire Line
	6200 3100 6250 3100
Wire Wire Line
	6200 3200 6250 3200
Text Label 6200 4000 2    50   ~ 0
USART1_TX
Text Label 6200 4100 2    50   ~ 0
USART1_RX
Wire Wire Line
	6200 4000 6250 4000
Wire Wire Line
	6200 4100 6250 4100
Text Label 6200 4200 2    50   ~ 0
CAN_RX
Text Label 6200 4300 2    50   ~ 0
CAN_TX
Text Label 7600 3600 0    50   ~ 0
USART2_TX
Text Label 7600 3700 0    50   ~ 0
USART2_RX
Text HLabel 8200 3600 2    50   Input ~ 0
F103_TX
Text HLabel 8200 3700 2    50   Input ~ 0
F103_RX
Wire Wire Line
	7550 3600 8200 3600
Wire Wire Line
	7550 3700 8200 3700
Text GLabel 5850 4300 0    50   Input ~ 0
CAN_TX
Text GLabel 5850 4200 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	5850 4200 6250 4200
Wire Wire Line
	5850 4300 6250 4300
Text GLabel 1150 800  0    50   Input ~ 0
+3.3V_F103
Text Label 1300 800  0    50   ~ 0
V3.3
Wire Wire Line
	1300 800  1150 800 
$Comp
L Device:C CA?
U 1 1 6128C2A9
P 6850 1200
AR Path="/6128C2A9" Ref="CA?"  Part="1" 
AR Path="/6121200F/6128C2A9" Ref="CA1"  Part="1" 
AR Path="/61228324/6128C2A9" Ref="CA?"  Part="1" 
AR Path="/61233186/6128C2A9" Ref="CA?"  Part="1" 
F 0 "CA1" H 6965 1246 50  0000 L CNN
F 1 "4.7uF" H 6965 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6888 1050 50  0001 C CNN
F 3 "~" H 6850 1200 50  0001 C CNN
	1    6850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6128C4C1
P 6850 1450
AR Path="/6128C4C1" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6128C4C1" Ref="#PWR0113"  Part="1" 
AR Path="/61228324/6128C4C1" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6128C4C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 6850 1200 50  0001 C CNN
F 1 "GND" H 6855 1277 50  0000 C CNN
F 2 "" H 6850 1450 50  0001 C CNN
F 3 "" H 6850 1450 50  0001 C CNN
	1    6850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1350 6850 1450
Text Label 6850 2000 1    50   ~ 0
VDD1
Text Label 6950 2000 1    50   ~ 0
VDD2
Text Label 7050 2000 1    50   ~ 0
VDD3
Text Label 7150 2000 1    50   ~ 0
VDDA
Wire Wire Line
	6850 2100 6850 2000
Wire Wire Line
	6950 2100 6950 2000
Wire Wire Line
	7050 2100 7050 2000
Wire Wire Line
	7150 2100 7150 2000
Wire Wire Line
	7050 2000 6950 2000
Wire Wire Line
	6950 2000 6850 2000
Connection ~ 6950 2000
Wire Wire Line
	6850 1050 7300 1050
Connection ~ 7300 1050
Wire Wire Line
	7300 1350 6850 1350
Connection ~ 6850 1350
$Comp
L Device:C CA?
U 1 1 612B689F
P 8300 1200
AR Path="/612B689F" Ref="CA?"  Part="1" 
AR Path="/6121200F/612B689F" Ref="CA2"  Part="1" 
AR Path="/61228324/612B689F" Ref="CA?"  Part="1" 
AR Path="/61233186/612B689F" Ref="CA?"  Part="1" 
F 0 "CA2" H 8415 1246 50  0000 L CNN
F 1 "10nF" H 8415 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8338 1050 50  0001 C CNN
F 3 "~" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1050 7850 1050
Connection ~ 7850 1050
Wire Wire Line
	8300 1350 7850 1350
Connection ~ 7850 1350
$Comp
L Device:R RA3
U 1 1 612BC169
P 7050 5300
AR Path="/6121200F/612BC169" Ref="RA3"  Part="1" 
AR Path="/61233186/612BC169" Ref="RA?"  Part="1" 
F 0 "RA3" V 7050 5300 50  0000 C CNN
F 1 "0R" V 6934 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6980 5300 50  0001 C CNN
F 3 "~" H 7050 5300 50  0001 C CNN
	1    7050 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 5150 7050 5100
Wire Wire Line
	7400 5100 7050 5100
Connection ~ 7050 5100
$Comp
L power:GND #PWR?
U 1 1 612C130F
P 7050 5450
AR Path="/612C130F" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/612C130F" Ref="#PWR0125"  Part="1" 
AR Path="/61228324/612C130F" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612C130F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 7050 5200 50  0001 C CNN
F 1 "GND" H 7055 5277 50  0000 C CNN
F 2 "" H 7050 5450 50  0001 C CNN
F 3 "" H 7050 5450 50  0001 C CNN
	1    7050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2000 7650 2000
$Comp
L Device:L LA1
U 1 1 612C258A
P 7500 2000
F 0 "LA1" V 7690 2000 50  0000 C CNN
F 1 "10uH" V 7599 2000 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 7500 2000 50  0001 C CNN
F 3 "~" H 7500 2000 50  0001 C CNN
	1    7500 2000
	0    -1   -1   0   
$EndComp
Text Label 7700 2000 0    50   ~ 0
V3.3
$Comp
L Connector_Generic:Conn_01x07 JA3
U 1 1 61200DEE
P 2400 3900
F 0 "JA3" H 2318 3467 50  0000 C CNN
F 1 "Conn_01x07" H 2318 3466 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 2400 3900 50  0001 C CNN
F 3 "~" H 2400 3900 50  0001 C CNN
	1    2400 3900
	-1   0    0    1   
$EndComp
Text Label 2700 3600 0    50   ~ 0
MD0
Text Label 2700 3700 0    50   ~ 0
MD1
Text Label 2700 3800 0    50   ~ 0
USART1_TX
Text Label 2700 3900 0    50   ~ 0
USART1_RX
Text Label 2700 4000 0    50   ~ 0
AUX
$Comp
L power:GND #PWR?
U 1 1 61267FC6
P 1250 4150
AR Path="/61267FC6" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61267FC6" Ref="#PWR0119"  Part="1" 
AR Path="/61228324/61267FC6" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61267FC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 1250 3900 50  0001 C CNN
F 1 "GND" H 1255 3977 50  0000 C CNN
F 2 "" H 1250 4150 50  0001 C CNN
F 3 "" H 1250 4150 50  0001 C CNN
	1    1250 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6120663B
P 2600 4300
AR Path="/6120663B" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6120663B" Ref="#PWR0132"  Part="1" 
AR Path="/61228324/6120663B" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6120663B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0132" H 2600 4050 50  0001 C CNN
F 1 "GND" H 2605 4127 50  0000 C CNN
F 2 "" H 2600 4300 50  0001 C CNN
F 3 "" H 2600 4300 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 61206D3F
P 2700 4100
F 0 "#PWR0133" H 2700 3950 50  0001 C CNN
F 1 "+5V" V 2715 4228 50  0000 L CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3600 2700 3600
Wire Wire Line
	2600 3700 2700 3700
Wire Wire Line
	2600 3800 2700 3800
Wire Wire Line
	2600 3900 2700 3900
Wire Wire Line
	2600 4000 2700 4000
Wire Wire Line
	2600 4100 2700 4100
Wire Wire Line
	2600 4200 2600 4300
Text Label 6200 4600 2    50   ~ 0
MD0
Text Label 6200 4700 2    50   ~ 0
MD1
Text Label 6200 4800 2    50   ~ 0
AUX
Wire Wire Line
	6250 3700 6200 3700
Wire Wire Line
	6250 3800 6200 3800
Wire Wire Line
	6250 3900 6200 3900
Wire Wire Line
	6200 4600 6250 4600
Wire Wire Line
	6200 4700 6250 4700
Wire Wire Line
	6200 4800 6250 4800
$Comp
L Connector_Generic:Conn_01x03 S1
U 1 1 612731FE
P 1050 4850
F 0 "S1" H 968 4617 50  0000 C CNN
F 1 "Conn_01x03" H 968 4616 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1050 4850 50  0001 C CNN
F 3 "~" H 1050 4850 50  0001 C CNN
	1    1050 4850
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0135
U 1 1 61274E02
P 1350 4850
F 0 "#PWR0135" H 1350 4750 50  0001 C CNN
F 1 "+VDC" V 1350 5080 50  0000 L CNN
F 2 "" H 1350 4850 50  0001 C CNN
F 3 "" H 1350 4850 50  0001 C CNN
	1    1350 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 4950 1250 5000
Wire Wire Line
	1250 4850 1350 4850
Text Label 7600 4200 0    50   ~ 0
TIM1_CH1
Text Label 7600 4300 0    50   ~ 0
TIM1_CH2
Text Label 7600 4400 0    50   ~ 0
TIM1_CH3
Text Label 7600 4500 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	7600 4200 7550 4200
Wire Wire Line
	7600 4300 7550 4300
Wire Wire Line
	7600 4400 7550 4400
Wire Wire Line
	7600 4500 7550 4500
Text Label 7600 4900 0    50   ~ 0
TIM2_CH1
Wire Wire Line
	7600 4900 7550 4900
Text Label 6200 3700 2    50   ~ 0
TIM2_CH2
Text Label 6200 4400 2    50   ~ 0
TIM2_CH3
Text Label 6200 4500 2    50   ~ 0
TIM2_CH4
Wire Wire Line
	6200 4400 6250 4400
Wire Wire Line
	6200 4500 6250 4500
Text Label 6200 3800 2    50   ~ 0
TIM3_CH1
Text Label 6200 3900 2    50   ~ 0
TIM3_CH2
Text Label 1300 4750 0    50   ~ 0
TIM1_CH1
Wire Wire Line
	1300 4750 1250 4750
$Comp
L Connector_Generic:Conn_01x03 S2
U 1 1 61290D30
P 2000 4850
F 0 "S2" H 1918 4617 50  0000 C CNN
F 1 "Conn_01x03" H 1918 4616 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 4850 50  0001 C CNN
F 3 "~" H 2000 4850 50  0001 C CNN
	1    2000 4850
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0137
U 1 1 61291044
P 2300 4850
F 0 "#PWR0137" H 2300 4750 50  0001 C CNN
F 1 "+VDC" V 2300 5080 50  0000 L CNN
F 2 "" H 2300 4850 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
	1    2300 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4950 2200 5000
Wire Wire Line
	2200 4850 2300 4850
Text Label 2250 4750 0    50   ~ 0
TIM1_CH2
Wire Wire Line
	2250 4750 2200 4750
$Comp
L Connector_Generic:Conn_01x03 S3
U 1 1 61294C53
P 2950 4850
F 0 "S3" H 2868 4617 50  0000 C CNN
F 1 "Conn_01x03" H 2868 4616 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2950 4850 50  0001 C CNN
F 3 "~" H 2950 4850 50  0001 C CNN
	1    2950 4850
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0139
U 1 1 61294F9D
P 3250 4850
F 0 "#PWR0139" H 3250 4750 50  0001 C CNN
F 1 "+VDC" V 3250 5080 50  0000 L CNN
F 2 "" H 3250 4850 50  0001 C CNN
F 3 "" H 3250 4850 50  0001 C CNN
	1    3250 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4950 3150 5000
Wire Wire Line
	3150 4850 3250 4850
Text Label 3200 4750 0    50   ~ 0
TIM1_CH3
Wire Wire Line
	3200 4750 3150 4750
$Comp
L Connector_Generic:Conn_01x03 S4
U 1 1 612990C5
P 1050 5650
F 0 "S4" H 968 5417 50  0000 C CNN
F 1 "Conn_01x03" H 968 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1050 5650 50  0001 C CNN
F 3 "~" H 1050 5650 50  0001 C CNN
	1    1050 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0141
U 1 1 61299445
P 1350 5650
F 0 "#PWR0141" H 1350 5550 50  0001 C CNN
F 1 "+VDC" V 1350 5880 50  0000 L CNN
F 2 "" H 1350 5650 50  0001 C CNN
F 3 "" H 1350 5650 50  0001 C CNN
	1    1350 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 5750 1250 5800
Wire Wire Line
	1250 5650 1350 5650
Text Label 1300 5550 0    50   ~ 0
TIM1_CH4
Wire Wire Line
	1300 5550 1250 5550
$Comp
L Connector_Generic:Conn_01x03 S5
U 1 1 61299453
P 2000 5650
F 0 "S5" H 1918 5417 50  0000 C CNN
F 1 "Conn_01x03" H 1918 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 5650 50  0001 C CNN
F 3 "~" H 2000 5650 50  0001 C CNN
	1    2000 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0143
U 1 1 61299467
P 2300 5650
F 0 "#PWR0143" H 2300 5550 50  0001 C CNN
F 1 "+VDC" V 2300 5880 50  0000 L CNN
F 2 "" H 2300 5650 50  0001 C CNN
F 3 "" H 2300 5650 50  0001 C CNN
	1    2300 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 5750 2200 5800
Wire Wire Line
	2200 5650 2300 5650
Text Label 2250 5550 0    50   ~ 0
TIM3_CH1
Wire Wire Line
	2250 5550 2200 5550
$Comp
L Connector_Generic:Conn_01x03 S6
U 1 1 61299475
P 2950 5650
F 0 "S6" H 2868 5417 50  0000 C CNN
F 1 "Conn_01x03" H 2868 5416 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2950 5650 50  0001 C CNN
F 3 "~" H 2950 5650 50  0001 C CNN
	1    2950 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+VDC #PWR0145
U 1 1 61299489
P 3250 5650
F 0 "#PWR0145" H 3250 5550 50  0001 C CNN
F 1 "+VDC" V 3250 5880 50  0000 L CNN
F 2 "" H 3250 5650 50  0001 C CNN
F 3 "" H 3250 5650 50  0001 C CNN
	1    3250 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 5750 3150 5800
Wire Wire Line
	3150 5650 3250 5650
Text Label 3200 5550 0    50   ~ 0
TIM3_CH2
Wire Wire Line
	3200 5550 3150 5550
Text GLabel 6250 2300 0    50   Input ~ 0
RESET
Text Label 6650 2000 2    50   ~ 0
V3.3
Wire Wire Line
	6650 2000 6850 2000
Connection ~ 6850 2000
$Comp
L Device:R RA4
U 1 1 61239272
P 1700 3000
AR Path="/6121200F/61239272" Ref="RA4"  Part="1" 
AR Path="/61233186/61239272" Ref="RA?"  Part="1" 
F 0 "RA4" V 1493 3000 50  0000 C CNN
F 1 "10M" V 1584 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1630 3000 50  0001 C CNN
F 3 "~" H 1700 3000 50  0001 C CNN
	1    1700 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 2800 1700 2800
Wire Wire Line
	1400 3200 1700 3200
Wire Wire Line
	1700 2850 1700 2800
Connection ~ 1700 2800
Wire Wire Line
	1700 2800 1750 2800
Wire Wire Line
	1700 3150 1700 3200
Connection ~ 1700 3200
Wire Wire Line
	1700 3200 1750 3200
$Comp
L power:GND #PWR?
U 1 1 6124ADC2
P 1000 3250
AR Path="/6124ADC2" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6124ADC2" Ref="#PWR0115"  Part="1" 
AR Path="/61228324/6124ADC2" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6124ADC2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 1000 3000 50  0001 C CNN
F 1 "GND" H 1005 3077 50  0000 C CNN
F 2 "" H 1000 3250 50  0001 C CNN
F 3 "" H 1000 3250 50  0001 C CNN
	1    1000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6124B2B5
P 2350 3250
AR Path="/6124B2B5" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6124B2B5" Ref="#PWR0117"  Part="1" 
AR Path="/61228324/6124B2B5" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6124B2B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 2350 3000 50  0001 C CNN
F 1 "GND" H 2355 3077 50  0000 C CNN
F 2 "" H 2350 3250 50  0001 C CNN
F 3 "" H 2350 3250 50  0001 C CNN
	1    2350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3250 1000 3200
Connection ~ 1000 3200
Wire Wire Line
	2350 3250 2350 3200
Connection ~ 2350 3200
$Comp
L Device:Crystal_GND23 YB?
U 1 1 61372DD4
P 1400 3000
AR Path="/61233186/61372DD4" Ref="YB?"  Part="1" 
AR Path="/6121200F/61372DD4" Ref="YA1"  Part="1" 
F 0 "YA1" V 1354 3244 50  0000 L CNN
F 1 "8M" V 1445 3244 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 1400 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2000 7300 2000
Text Label 7300 1850 1    50   ~ 0
3.3VA
Wire Wire Line
	7300 1850 7300 2000
Connection ~ 7300 2000
Wire Wire Line
	7300 2000 7350 2000
Text Label 7400 5100 0    50   ~ 0
GNDA
$Comp
L power:GND #PWR?
U 1 1 6144354F
P 1250 5000
AR Path="/6144354F" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/6144354F" Ref="#PWR0106"  Part="1" 
AR Path="/61228324/6144354F" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6144354F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 1250 4750 50  0001 C CNN
F 1 "GND" H 1255 4827 50  0000 C CNN
F 2 "" H 1250 5000 50  0001 C CNN
F 3 "" H 1250 5000 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614437E3
P 2200 5000
AR Path="/614437E3" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/614437E3" Ref="#PWR0126"  Part="1" 
AR Path="/61228324/614437E3" Ref="#PWR?"  Part="1" 
AR Path="/61233186/614437E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0126" H 2200 4750 50  0001 C CNN
F 1 "GND" H 2205 4827 50  0000 C CNN
F 2 "" H 2200 5000 50  0001 C CNN
F 3 "" H 2200 5000 50  0001 C CNN
	1    2200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61443BFF
P 3150 5000
AR Path="/61443BFF" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61443BFF" Ref="#PWR0129"  Part="1" 
AR Path="/61228324/61443BFF" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61443BFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0129" H 3150 4750 50  0001 C CNN
F 1 "GND" H 3155 4827 50  0000 C CNN
F 2 "" H 3150 5000 50  0001 C CNN
F 3 "" H 3150 5000 50  0001 C CNN
	1    3150 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61443FEA
P 1250 5800
AR Path="/61443FEA" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61443FEA" Ref="#PWR0130"  Part="1" 
AR Path="/61228324/61443FEA" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61443FEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0130" H 1250 5550 50  0001 C CNN
F 1 "GND" H 1255 5627 50  0000 C CNN
F 2 "" H 1250 5800 50  0001 C CNN
F 3 "" H 1250 5800 50  0001 C CNN
	1    1250 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614444C4
P 2200 5800
AR Path="/614444C4" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/614444C4" Ref="#PWR0134"  Part="1" 
AR Path="/61228324/614444C4" Ref="#PWR?"  Part="1" 
AR Path="/61233186/614444C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0134" H 2200 5550 50  0001 C CNN
F 1 "GND" H 2205 5627 50  0000 C CNN
F 2 "" H 2200 5800 50  0001 C CNN
F 3 "" H 2200 5800 50  0001 C CNN
	1    2200 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61444974
P 3150 5800
AR Path="/61444974" Ref="#PWR?"  Part="1" 
AR Path="/6121200F/61444974" Ref="#PWR0136"  Part="1" 
AR Path="/61228324/61444974" Ref="#PWR?"  Part="1" 
AR Path="/61233186/61444974" Ref="#PWR?"  Part="1" 
F 0 "#PWR0136" H 3150 5550 50  0001 C CNN
F 1 "GND" H 3155 5627 50  0000 C CNN
F 2 "" H 3150 5800 50  0001 C CNN
F 3 "" H 3150 5800 50  0001 C CNN
	1    3150 5800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
