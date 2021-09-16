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
Text Label 4000 2350 0    50   ~ 0
BOOT0
Wire Wire Line
	4000 2350 4300 2350
$Comp
L Device:R R?
U 1 1 6145BCF1
P 1350 6050
AR Path="/6121200F/6145BCF1" Ref="R?"  Part="1" 
AR Path="/61233186/6145BCF1" Ref="R?"  Part="1" 
AR Path="/6145BCF1" Ref="R4"  Part="1" 
AR Path="/6143EA4B/6145BCF1" Ref="R?"  Part="1" 
F 0 "R4" V 1143 6050 50  0000 C CNN
F 1 "10K" V 1234 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1280 6050 50  0001 C CNN
F 3 "~" H 1350 6050 50  0001 C CNN
	1    1350 6050
	0    1    1    0   
$EndComp
Text Label 900  6050 0    50   ~ 0
BOOT0
Wire Wire Line
	900  6050 1200 6050
$Comp
L Device:C C5
U 1 1 6145BCF9
P 1050 3850
AR Path="/6145BCF9" Ref="C5"  Part="1" 
AR Path="/6121200F/6145BCF9" Ref="C?"  Part="1" 
AR Path="/61228324/6145BCF9" Ref="C?"  Part="1" 
AR Path="/61233186/6145BCF9" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BCF9" Ref="C?"  Part="1" 
F 0 "C5" H 1150 3850 50  0000 L CNN
F 1 "20pF" H 1150 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 3700 50  0001 C CNN
F 3 "~" H 1050 3850 50  0001 C CNN
	1    1050 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 6145BCFF
P 1050 4250
AR Path="/6145BCFF" Ref="C6"  Part="1" 
AR Path="/6121200F/6145BCFF" Ref="C?"  Part="1" 
AR Path="/61228324/6145BCFF" Ref="C?"  Part="1" 
AR Path="/61233186/6145BCFF" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BCFF" Ref="C?"  Part="1" 
F 0 "C6" H 800 4250 50  0000 L CNN
F 1 "20pF" H 800 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 4100 50  0001 C CNN
F 3 "~" H 1050 4250 50  0001 C CNN
	1    1050 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3850 1300 3850
Wire Wire Line
	1300 3850 1300 3900
Wire Wire Line
	1200 4250 1300 4250
Wire Wire Line
	1300 4250 1300 4200
Text Label 1900 3850 0    50   ~ 0
RCC_OSC_IN
Text Label 1900 4250 0    50   ~ 0
RCC_OSC_OUT
Connection ~ 1300 3850
Text Label 4250 2550 2    50   ~ 0
RCC_OSC_IN
Text Label 4250 2650 2    50   ~ 0
RCC_OSC_OUT
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6145BD0E
P 1950 7350
AR Path="/6121200F/6145BD0E" Ref="J?"  Part="1" 
AR Path="/61233186/6145BD0E" Ref="J?"  Part="1" 
AR Path="/6145BD0E" Ref="J1"  Part="1" 
AR Path="/6143EA4B/6145BD0E" Ref="J?"  Part="1" 
F 0 "J1" H 1868 7017 50  0000 C CNN
F 1 "Conn_01x04" H 2030 7251 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1950 7350 50  0001 C CNN
F 3 "~" H 1950 7350 50  0001 C CNN
	1    1950 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 6145BD14
P 2950 7300
AR Path="/6145BD14" Ref="C10"  Part="1" 
AR Path="/6121200F/6145BD14" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD14" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD14" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD14" Ref="C?"  Part="1" 
F 0 "C10" H 3065 7346 50  0000 L CNN
F 1 "100nF" H 3065 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2988 7150 50  0001 C CNN
F 3 "~" H 2950 7300 50  0001 C CNN
	1    2950 7300
	1    0    0    -1  
$EndComp
Text Label 2200 7250 0    50   ~ 0
SYS_SWDIO
Text Label 2200 7350 0    50   ~ 0
SYS_SWCL
$Comp
L MCU_ST_STM32F0:STM32F031C6Tx U3
U 1 1 6145BD1C
P 4900 3550
F 0 "U3" H 4900 3600 50  0000 C CNN
F 1 "STM32F031C6Tx" H 4900 3500 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4400 2050 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00104043.pdf" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5150 4800 5200
Wire Wire Line
	4800 5200 4900 5200
Connection ~ 4900 5200
Wire Wire Line
	4900 5200 4900 5150
$Comp
L Device:C C7
U 1 1 6145BD26
P 1050 4900
AR Path="/6145BD26" Ref="C7"  Part="1" 
AR Path="/6121200F/6145BD26" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD26" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD26" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD26" Ref="C?"  Part="1" 
F 0 "C7" H 1165 4946 50  0000 L CNN
F 1 "10pF" H 1165 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 4750 50  0001 C CNN
F 3 "~" H 1050 4900 50  0001 C CNN
	1    1050 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 6145BD2C
P 1050 5300
AR Path="/6145BD2C" Ref="C8"  Part="1" 
AR Path="/6121200F/6145BD2C" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD2C" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD2C" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD2C" Ref="C?"  Part="1" 
F 0 "C8" H 1165 5346 50  0000 L CNN
F 1 "10pF" H 1165 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1088 5150 50  0001 C CNN
F 3 "~" H 1050 5300 50  0001 C CNN
	1    1050 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  4900 900  5300
Text Label 1650 4900 0    50   ~ 0
RCC_OSC32_IN
Text Label 1650 5300 0    50   ~ 0
RCC_OSC32_OUT
Text Label 4250 3150 2    50   ~ 0
RCC_OSC32_IN
Text Label 4250 3250 2    50   ~ 0
RCC_OSC32_OUT
Text Label 4250 4050 2    50   ~ 0
PB6
Text Label 4250 4150 2    50   ~ 0
PB7
Text Label 4900 1900 1    50   ~ 0
VDD1
Text Label 5000 1900 1    50   ~ 0
VDD2
Wire Wire Line
	4900 1900 4900 1950
Wire Wire Line
	5000 1900 5000 1950
$Comp
L Device:C C13
U 1 1 6145BD3D
P 4850 1100
AR Path="/6145BD3D" Ref="C13"  Part="1" 
AR Path="/6121200F/6145BD3D" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD3D" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD3D" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD3D" Ref="C?"  Part="1" 
F 0 "C13" H 4965 1146 50  0000 L CNN
F 1 "100nF" H 4965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 950 50  0001 C CNN
F 3 "~" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
Text Label 4850 750  3    50   ~ 0
VDD2
Wire Wire Line
	4850 750  4850 950 
$Comp
L Device:C C14
U 1 1 6145BD45
P 5400 1100
AR Path="/6145BD45" Ref="C14"  Part="1" 
AR Path="/6121200F/6145BD45" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD45" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD45" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD45" Ref="C?"  Part="1" 
F 0 "C14" H 5515 1146 50  0000 L CNN
F 1 "1uF" H 5515 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5438 950 50  0001 C CNN
F 3 "~" H 5400 1100 50  0001 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
Text Label 5400 750  3    50   ~ 0
VDDA
Wire Wire Line
	5400 750  5400 950 
Wire Wire Line
	5400 1250 5400 1350
$Comp
L Device:C C11
U 1 1 6145BD4E
P 3950 1100
AR Path="/6145BD4E" Ref="C11"  Part="1" 
AR Path="/6121200F/6145BD4E" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD4E" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD4E" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD4E" Ref="C?"  Part="1" 
F 0 "C11" H 4065 1146 50  0000 L CNN
F 1 "100nF" H 4065 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3988 950 50  0001 C CNN
F 3 "~" H 3950 1100 50  0001 C CNN
	1    3950 1100
	1    0    0    -1  
$EndComp
Text Label 3950 750  3    50   ~ 0
VDD1
Wire Wire Line
	3950 750  3950 950 
Wire Wire Line
	3950 1250 3950 1350
$Comp
L Device:C C12
U 1 1 6145BD5D
P 4400 1100
AR Path="/6145BD5D" Ref="C12"  Part="1" 
AR Path="/6121200F/6145BD5D" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD5D" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD5D" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD5D" Ref="C?"  Part="1" 
F 0 "C12" H 4515 1146 50  0000 L CNN
F 1 "4.7uF" H 4515 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 950 50  0001 C CNN
F 3 "~" H 4400 1100 50  0001 C CNN
	1    4400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1250 4400 1350
Wire Wire Line
	4400 950  4850 950 
Connection ~ 4850 950 
Wire Wire Line
	4850 1250 4400 1250
Connection ~ 4400 1250
$Comp
L Device:C C15
U 1 1 6145BD6E
P 5850 1100
AR Path="/6145BD6E" Ref="C15"  Part="1" 
AR Path="/6121200F/6145BD6E" Ref="C?"  Part="1" 
AR Path="/61228324/6145BD6E" Ref="C?"  Part="1" 
AR Path="/61233186/6145BD6E" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BD6E" Ref="C?"  Part="1" 
F 0 "C15" H 5965 1146 50  0000 L CNN
F 1 "10nF" H 5965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 950 50  0001 C CNN
F 3 "~" H 5850 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 950  5400 950 
Connection ~ 5400 950 
Wire Wire Line
	5850 1250 5400 1250
Connection ~ 5400 1250
Text Label 5100 1900 1    50   ~ 0
VDDA
$Comp
L Device:R R?
U 1 1 6145BD7F
P 5000 5400
AR Path="/6121200F/6145BD7F" Ref="R?"  Part="1" 
AR Path="/61233186/6145BD7F" Ref="R?"  Part="1" 
AR Path="/6145BD7F" Ref="R5"  Part="1" 
AR Path="/6143EA4B/6145BD7F" Ref="R?"  Part="1" 
F 0 "R5" V 5000 5400 50  0000 C CNN
F 1 "0R" V 4884 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 5400 50  0001 C CNN
F 3 "~" H 5000 5400 50  0001 C CNN
	1    5000 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 5550 5000 5550
Wire Wire Line
	4900 5200 4900 5550
Text Label 5550 4350 0    50   ~ 0
PA9
Text Label 5550 4450 0    50   ~ 0
PA10
Text Label 5550 4550 0    50   ~ 0
PA11
Text Label 5550 4250 0    50   ~ 0
PA8
Wire Wire Line
	5550 4250 5500 4250
Wire Wire Line
	5550 4350 5500 4350
Wire Wire Line
	5550 4450 5500 4450
Wire Wire Line
	5550 4550 5500 4550
Text Label 5550 3750 0    50   ~ 0
PA3
Text Label 4250 4450 2    50   ~ 0
PB10
Text Label 5550 3950 0    50   ~ 0
PA5
Text Label 5550 3550 0    50   ~ 0
PA1
Wire Wire Line
	5500 3950 5550 3950
Wire Wire Line
	5500 3750 5550 3750
Wire Wire Line
	5500 3550 5550 3550
Text Label 4250 3850 2    50   ~ 0
PB4
Text Label 4250 3950 2    50   ~ 0
PB5
Wire Wire Line
	4250 3850 4300 3850
Wire Wire Line
	4250 3950 4300 3950
Text GLabel 4300 2150 0    50   Input ~ 0
RESET
Wire Wire Line
	4900 1900 5000 1900
$Comp
L Device:R R?
U 1 1 6145BDA3
P 1550 4250
AR Path="/6121200F/6145BDA3" Ref="R?"  Part="1" 
AR Path="/61233186/6145BDA3" Ref="R?"  Part="1" 
AR Path="/6145BDA3" Ref="R3"  Part="1" 
AR Path="/6143EA4B/6145BDA3" Ref="R?"  Part="1" 
F 0 "R3" V 1343 4250 50  0000 C CNN
F 1 "390" V 1434 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 4250 50  0001 C CNN
F 3 "~" H 1550 4250 50  0001 C CNN
	1    1550 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  4300 900  4250
Connection ~ 900  4250
Wire Wire Line
	900  5350 900  5300
Connection ~ 900  5300
Wire Wire Line
	2200 7500 2200 7450
Connection ~ 2200 7450
Wire Wire Line
	2200 7450 2150 7450
Wire Wire Line
	4250 4050 4300 4050
Wire Wire Line
	4250 4150 4300 4150
Wire Wire Line
	4250 2550 4300 2550
Wire Wire Line
	4250 2650 4300 2650
$Comp
L power:+3.3VA #PWR?
U 1 1 6145BDC6
P 5400 1800
F 0 "#PWR?" H 5400 1650 50  0001 C CNN
F 1 "+3.3VA" H 5415 1973 50  0000 C CNN
F 2 "" H 5400 1800 50  0001 C CNN
F 3 "" H 5400 1800 50  0001 C CNN
	1    5400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3150 4250 3150
Wire Wire Line
	4300 3250 4250 3250
Wire Wire Line
	5000 5150 5000 5200
$Comp
L power:GNDA #PWR?
U 1 1 6145BDCF
P 5250 5200
F 0 "#PWR?" H 5250 4950 50  0001 C CNN
F 1 "GNDA" H 5255 5027 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 5000 5200
Connection ~ 5000 5200
Wire Wire Line
	5000 5200 5000 5250
Wire Wire Line
	5550 4850 5500 4850
Wire Wire Line
	1200 4900 1500 4900
Wire Wire Line
	1200 5300 1500 5300
Wire Wire Line
	1500 4950 1500 4900
Connection ~ 1500 4900
Wire Wire Line
	1500 4900 1650 4900
Wire Wire Line
	1500 5250 1500 5300
Connection ~ 1500 5300
Wire Wire Line
	1500 5300 1650 5300
Wire Wire Line
	2150 7250 2200 7250
Wire Wire Line
	2150 7350 2200 7350
Wire Wire Line
	2200 7450 2950 7450
Text Label 4250 2850 2    50   ~ 0
PF7
Wire Wire Line
	4250 2750 4300 2750
Wire Wire Line
	4250 2850 4300 2850
Text Label 4250 4650 2    50   ~ 0
PB12
Text Label 4250 4750 2    50   ~ 0
PB13
Text Label 4250 4850 2    50   ~ 0
PB14
Wire Wire Line
	4250 4650 4300 4650
Wire Wire Line
	4250 4750 4300 4750
Text Label 5550 3450 0    50   ~ 0
PA0
Text Label 5550 3650 0    50   ~ 0
PA2
Text Label 5550 3850 0    50   ~ 0
PA4
Wire Wire Line
	5550 3450 5500 3450
Wire Wire Line
	5550 3650 5500 3650
Wire Wire Line
	5550 3850 5500 3850
Text Label 5550 4950 0    50   ~ 0
PA15
Wire Wire Line
	5550 4950 5500 4950
Text Label 4250 3750 2    50   ~ 0
PB3
Wire Wire Line
	4250 3750 4300 3750
Text Label 4250 4550 2    50   ~ 0
PB11
Wire Wire Line
	4250 4450 4300 4450
Wire Wire Line
	4250 4550 4300 4550
$Comp
L Switch:SW_Push SW1
U 1 1 6145BE0C
P 900 7250
F 0 "SW1" V 900 7202 50  0000 R CNN
F 1 "SW_Push" V 855 7202 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 900 7450 50  0001 C CNN
F 3 "~" H 900 7450 50  0001 C CNN
	1    900  7250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 6145BE12
P 1200 7250
AR Path="/6145BE12" Ref="C9"  Part="1" 
AR Path="/6121200F/6145BE12" Ref="C?"  Part="1" 
AR Path="/61228324/6145BE12" Ref="C?"  Part="1" 
AR Path="/61233186/6145BE12" Ref="C?"  Part="1" 
AR Path="/6143EA4B/6145BE12" Ref="C?"  Part="1" 
F 0 "C9" H 1315 7296 50  0000 L CNN
F 1 "100nF" H 1315 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 7100 50  0001 C CNN
F 3 "~" H 1200 7250 50  0001 C CNN
	1    1200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7050 1200 7050
Wire Wire Line
	1200 7100 1200 7050
Connection ~ 1200 7050
Wire Wire Line
	1200 7400 1200 7450
Text GLabel 1350 7050 2    50   Input ~ 0
RESET
Wire Wire Line
	1350 7050 1200 7050
Text Label 4250 4250 2    50   ~ 0
PB8
Text Label 4250 4350 2    50   ~ 0
PB9
Wire Wire Line
	4250 4250 4300 4250
Wire Wire Line
	4250 4350 4300 4350
$Comp
L power:+3.3V #PWR?
U 1 1 6145BE2F
P 2950 7050
F 0 "#PWR?" H 2950 6900 50  0001 C CNN
F 1 "+3.3V" H 2965 7223 50  0000 C CNN
F 2 "" H 2950 7050 50  0001 C CNN
F 3 "" H 2950 7050 50  0001 C CNN
	1    2950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7150 2950 7150
Wire Wire Line
	2950 7050 2950 7150
Connection ~ 2950 7150
$Comp
L power:+3.3V #PWR?
U 1 1 6145BE38
P 4900 1650
F 0 "#PWR?" H 4900 1500 50  0001 C CNN
F 1 "+3.3V" H 4915 1823 50  0000 C CNN
F 2 "" H 4900 1650 50  0001 C CNN
F 3 "" H 4900 1650 50  0001 C CNN
	1    4900 1650
	1    0    0    -1  
$EndComp
Text Label 4250 2750 2    50   ~ 0
PF6
Text Label 4250 3050 2    50   ~ 0
PC13
Wire Wire Line
	4250 3050 4300 3050
Text Label 4250 3450 2    50   ~ 0
PB0
Text Label 4250 3550 2    50   ~ 0
PB1
Wire Wire Line
	4250 3450 4300 3450
Wire Wire Line
	4250 3550 4300 3550
Text Label 4250 4950 2    50   ~ 0
PB15
Wire Wire Line
	4250 4950 4300 4950
Text Label 5550 4050 0    50   ~ 0
PA6
Text Label 5550 4150 0    50   ~ 0
PA7
Wire Wire Line
	5550 4050 5500 4050
Wire Wire Line
	5550 4150 5500 4150
Text Label 5550 4650 0    50   ~ 0
PA12
Wire Wire Line
	5550 4650 5500 4650
Text Label 5550 4750 0    50   ~ 0
SYS_SWDIO
Wire Wire Line
	4250 4850 4300 4850
Wire Wire Line
	5550 4750 5500 4750
Text Label 5550 4850 0    50   ~ 0
SYS_SWCL
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 6145BE53
P 1650 6250
F 0 "SW1" V 1650 6398 50  0000 L CNN
F 1 "SW_DPDT_x2" H 1650 6444 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1650 6250 50  0001 C CNN
F 3 "~" H 1650 6250 50  0001 C CNN
	1    1650 6250
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6145BE5F
P 1550 6500
F 0 "#PWR?" H 1550 6350 50  0001 C CNN
F 1 "+3.3V" H 1565 6673 50  0000 C CNN
F 2 "" H 1550 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0001 C CNN
	1    1550 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 6500 1750 6450
Wire Wire Line
	1550 6500 1550 6450
Wire Wire Line
	1500 6050 1650 6050
$Comp
L Device:Crystal Y2
U 1 1 6145BE68
P 1500 5100
F 0 "Y2" V 1454 5231 50  0000 L CNN
F 1 "32.768" V 1545 5231 50  0000 L CNN
F 2 "Crystal:Crystal_C38-LF_D3.0mm_L8.0mm_Horizontal" H 1500 5100 50  0001 C CNN
F 3 "~" H 1500 5100 50  0001 C CNN
	1    1500 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	900  3850 900  4250
$Comp
L Device:Crystal Y1
U 1 1 6145BE6F
P 1300 4050
F 0 "Y1" V 1254 4181 50  0000 L CNN
F 1 "8M" V 1345 4181 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 1300 4050 50  0001 C CNN
F 3 "~" H 1300 4050 50  0001 C CNN
	1    1300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1650 4900 1900
Connection ~ 4900 1900
Wire Wire Line
	5100 1950 5100 1900
Wire Wire Line
	5400 1800 5400 1900
Wire Wire Line
	5400 1900 5100 1900
Text Label 4250 3650 2    50   ~ 0
PB2
Wire Wire Line
	4250 3650 4300 3650
Wire Wire Line
	4800 1950 4800 1900
Wire Wire Line
	4800 1900 4900 1900
Wire Wire Line
	1300 3850 1900 3850
Wire Wire Line
	1400 4250 1300 4250
Connection ~ 1300 4250
Wire Wire Line
	1700 4250 1900 4250
Wire Wire Line
	900  7450 1200 7450
$Comp
L Device:L L?
U 1 1 6149821E
P 2350 1150
AR Path="/6121200F/6149821E" Ref="L?"  Part="1" 
AR Path="/61233186/6149821E" Ref="L?"  Part="1" 
AR Path="/6149821E" Ref="L1"  Part="1" 
AR Path="/614896F1/6149821E" Ref="L?"  Part="1" 
F 0 "L1" V 2540 1150 50  0000 C CNN
F 1 "10uH" V 2449 1150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 2350 1150 50  0001 C CNN
F 3 "~" H 2350 1150 50  0001 C CNN
	1    2350 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 61498224
P 2600 1050
F 0 "#PWR?" H 2600 900 50  0001 C CNN
F 1 "+3.3VA" H 2615 1223 50  0000 C CNN
F 2 "" H 2600 1050 50  0001 C CNN
F 3 "" H 2600 1050 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 6149822A
P 1200 1150
F 0 "U1" H 1200 1392 50  0000 C CNN
F 1 "AMS1117-3.3" H 1200 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1200 1350 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1300 900 50  0001 C CNN
	1    1200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1150 800  1150
Wire Wire Line
	800  1150 800  1050
Wire Wire Line
	1200 1450 1200 1500
$Comp
L Device:C C1
U 1 1 61498239
P 1550 1350
AR Path="/61498239" Ref="C1"  Part="1" 
AR Path="/6121200F/61498239" Ref="C?"  Part="1" 
AR Path="/61228324/61498239" Ref="C?"  Part="1" 
AR Path="/61233186/61498239" Ref="C?"  Part="1" 
AR Path="/614896F1/61498239" Ref="C?"  Part="1" 
F 0 "C1" H 1550 1450 50  0000 L CNN
F 1 "10uF" H 1550 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 1200 50  0001 C CNN
F 3 "~" H 1550 1350 50  0001 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6149823F
P 1800 1350
AR Path="/6149823F" Ref="C2"  Part="1" 
AR Path="/6121200F/6149823F" Ref="C?"  Part="1" 
AR Path="/61228324/6149823F" Ref="C?"  Part="1" 
AR Path="/61233186/6149823F" Ref="C?"  Part="1" 
AR Path="/614896F1/6149823F" Ref="C?"  Part="1" 
F 0 "C2" H 1800 1450 50  0000 L CNN
F 1 "100nF" H 1800 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1838 1200 50  0001 C CNN
F 3 "~" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1150 1550 1150
Wire Wire Line
	1550 1150 1550 1200
Wire Wire Line
	1550 1500 1200 1500
Connection ~ 1200 1500
Wire Wire Line
	1200 1500 1200 1550
Wire Wire Line
	1800 1500 1550 1500
Connection ~ 1550 1500
Connection ~ 1550 1150
Wire Wire Line
	1800 1200 1800 1150
Connection ~ 1800 1150
Wire Wire Line
	1800 1150 1550 1150
$Comp
L Device:LED D1
U 1 1 61498250
P 2050 1650
F 0 "D1" V 2089 1532 50  0000 R CNN
F 1 "LED" V 1998 1532 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2050 1650 50  0001 C CNN
F 3 "~" H 2050 1650 50  0001 C CNN
	1    2050 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61498256
P 2050 1300
AR Path="/6121200F/61498256" Ref="R?"  Part="1" 
AR Path="/61233186/61498256" Ref="R?"  Part="1" 
AR Path="/61498256" Ref="R1"  Part="1" 
AR Path="/614896F1/61498256" Ref="R?"  Part="1" 
F 0 "R1" V 2050 1300 50  0000 C CNN
F 1 "510R" V 1934 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 1300 50  0001 C CNN
F 3 "~" H 2050 1300 50  0001 C CNN
	1    2050 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1500 2050 1450
Wire Wire Line
	1800 1150 2050 1150
Connection ~ 2050 1150
$Comp
L power:VCC #PWR?
U 1 1 61498265
P 800 1050
F 0 "#PWR?" H 800 900 50  0001 C CNN
F 1 "VCC" H 815 1223 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "" H 800 1050 50  0001 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6149826B
P 2050 1050
F 0 "#PWR?" H 2050 900 50  0001 C CNN
F 1 "+3.3V" H 2065 1223 50  0000 C CNN
F 2 "" H 2050 1050 50  0001 C CNN
F 3 "" H 2050 1050 50  0001 C CNN
	1    2050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1150 2050 1050
Wire Wire Line
	2200 1150 2050 1150
Wire Wire Line
	2600 1050 2600 1150
Wire Wire Line
	2600 1150 2500 1150
$Comp
L Device:Battery BT1
U 1 1 614FFB01
P 2850 2300
F 0 "BT1" H 2958 2300 50  0000 L CNN
F 1 "Battery" H 2958 2255 50  0001 L CNN
F 2 "Battery:BatteryHolder_Eagle_12BH611-GR" V 2850 2360 50  0001 C CNN
F 3 "~" V 2850 2360 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 614FFB0D
P 2850 1900
F 0 "SW1" V 2850 1852 50  0000 R CNN
F 1 "SW_Push" V 2805 1852 50  0001 R CNN
F 2 "" H 2850 2100 50  0001 C CNN
F 3 "~" H 2850 2100 50  0001 C CNN
	1    2850 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61511FA6
P 1200 1550
F 0 "#PWR?" H 1200 1300 50  0001 C CNN
F 1 "GNDD" H 1204 1395 50  0000 C CNN
F 2 "" H 1200 1550 50  0001 C CNN
F 3 "" H 1200 1550 50  0001 C CNN
	1    1200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61518979
P 2050 1850
F 0 "#PWR?" H 2050 1600 50  0001 C CNN
F 1 "GNDD" H 2054 1695 50  0000 C CNN
F 2 "" H 2050 1850 50  0001 C CNN
F 3 "" H 2050 1850 50  0001 C CNN
	1    2050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1850 2050 1800
Wire Wire Line
	900  2550 800  2550
Wire Wire Line
	800  2550 800  2450
Wire Wire Line
	1200 2850 1200 2900
$Comp
L Device:C C3
U 1 1 6152917D
P 1550 2750
AR Path="/6152917D" Ref="C3"  Part="1" 
AR Path="/6121200F/6152917D" Ref="C?"  Part="1" 
AR Path="/61228324/6152917D" Ref="C?"  Part="1" 
AR Path="/61233186/6152917D" Ref="C?"  Part="1" 
AR Path="/614896F1/6152917D" Ref="C?"  Part="1" 
F 0 "C3" H 1550 2850 50  0000 L CNN
F 1 "10uF" H 1550 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 2600 50  0001 C CNN
F 3 "~" H 1550 2750 50  0001 C CNN
	1    1550 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61529187
P 1800 2750
AR Path="/61529187" Ref="C4"  Part="1" 
AR Path="/6121200F/61529187" Ref="C?"  Part="1" 
AR Path="/61228324/61529187" Ref="C?"  Part="1" 
AR Path="/61233186/61529187" Ref="C?"  Part="1" 
AR Path="/614896F1/61529187" Ref="C?"  Part="1" 
F 0 "C4" H 1800 2850 50  0000 L CNN
F 1 "100nF" H 1800 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1838 2600 50  0001 C CNN
F 3 "~" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2550 1550 2550
Wire Wire Line
	1550 2550 1550 2600
Wire Wire Line
	1550 2900 1200 2900
Connection ~ 1200 2900
Wire Wire Line
	1200 2900 1200 2950
Wire Wire Line
	1800 2900 1550 2900
Connection ~ 1550 2900
Connection ~ 1550 2550
Wire Wire Line
	1800 2600 1800 2550
Connection ~ 1800 2550
Wire Wire Line
	1800 2550 1550 2550
$Comp
L Device:LED D2
U 1 1 6152919C
P 2050 3050
F 0 "D2" V 2089 2932 50  0000 R CNN
F 1 "LED" V 1998 2932 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 2050 3050 50  0001 C CNN
F 3 "~" H 2050 3050 50  0001 C CNN
	1    2050 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 615291A6
P 2050 2700
AR Path="/6121200F/615291A6" Ref="R?"  Part="1" 
AR Path="/61233186/615291A6" Ref="R?"  Part="1" 
AR Path="/615291A6" Ref="R2"  Part="1" 
AR Path="/614896F1/615291A6" Ref="R?"  Part="1" 
F 0 "R2" V 2050 2700 50  0000 C CNN
F 1 "510R" V 1934 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 2700 50  0001 C CNN
F 3 "~" H 2050 2700 50  0001 C CNN
	1    2050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 2900 2050 2850
Wire Wire Line
	1800 2550 2050 2550
Connection ~ 2050 2550
$Comp
L power:VCC #PWR?
U 1 1 615291B3
P 800 2450
F 0 "#PWR?" H 800 2300 50  0001 C CNN
F 1 "VCC" H 815 2623 50  0000 C CNN
F 2 "" H 800 2450 50  0001 C CNN
F 3 "" H 800 2450 50  0001 C CNN
	1    800  2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2550 2050 2450
$Comp
L power:GNDD #PWR?
U 1 1 615291CB
P 1200 2950
F 0 "#PWR?" H 1200 2700 50  0001 C CNN
F 1 "GNDD" H 1204 2795 50  0000 C CNN
F 2 "" H 1200 2950 50  0001 C CNN
F 3 "" H 1200 2950 50  0001 C CNN
	1    1200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 615291D5
P 2050 3250
F 0 "#PWR?" H 2050 3000 50  0001 C CNN
F 1 "GNDD" H 2054 3095 50  0000 C CNN
F 2 "" H 2050 3250 50  0001 C CNN
F 3 "" H 2050 3250 50  0001 C CNN
	1    2050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3250 2050 3200
$Comp
L Regulator_Linear:AMS1117-5.0 U2
U 1 1 6153B2EB
P 1200 2550
F 0 "U2" H 1200 2792 50  0000 C CNN
F 1 "AMS1117-5.0" H 1200 2701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1200 2750 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1300 2300 50  0001 C CNN
	1    1200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6153C87F
P 2850 1700
F 0 "#PWR?" H 2850 1550 50  0001 C CNN
F 1 "VCC" H 2865 1873 50  0000 C CNN
F 2 "" H 2850 1700 50  0001 C CNN
F 3 "" H 2850 1700 50  0001 C CNN
	1    2850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 6153D058
P 2850 2500
F 0 "#PWR?" H 2850 2250 50  0001 C CNN
F 1 "GNDD" H 2854 2345 50  0000 C CNN
F 2 "" H 2850 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6154869C
P 2050 2450
F 0 "#PWR?" H 2050 2300 50  0001 C CNN
F 1 "+5V" H 2065 2623 50  0000 C CNN
F 2 "" H 2050 2450 50  0001 C CNN
F 3 "" H 2050 2450 50  0001 C CNN
	1    2050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61552B3B
P 900 4300
F 0 "#PWR?" H 900 4050 50  0001 C CNN
F 1 "GNDD" H 904 4145 50  0000 C CNN
F 2 "" H 900 4300 50  0001 C CNN
F 3 "" H 900 4300 50  0001 C CNN
	1    900  4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61552FD1
P 900 5350
F 0 "#PWR?" H 900 5100 50  0001 C CNN
F 1 "GNDD" H 904 5195 50  0000 C CNN
F 2 "" H 900 5350 50  0001 C CNN
F 3 "" H 900 5350 50  0001 C CNN
	1    900  5350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 615685B9
P 1750 6500
F 0 "#PWR?" H 1750 6250 50  0001 C CNN
F 1 "GNDD" H 1754 6345 50  0000 C CNN
F 2 "" H 1750 6500 50  0001 C CNN
F 3 "" H 1750 6500 50  0001 C CNN
	1    1750 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 615701D1
P 1200 7500
F 0 "#PWR?" H 1200 7250 50  0001 C CNN
F 1 "GNDD" H 1204 7345 50  0000 C CNN
F 2 "" H 1200 7500 50  0001 C CNN
F 3 "" H 1200 7500 50  0001 C CNN
	1    1200 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7500 1200 7450
Connection ~ 1200 7450
$Comp
L power:GNDD #PWR?
U 1 1 61576C0A
P 2200 7500
F 0 "#PWR?" H 2200 7250 50  0001 C CNN
F 1 "GNDD" H 2204 7345 50  0000 C CNN
F 2 "" H 2200 7500 50  0001 C CNN
F 3 "" H 2200 7500 50  0001 C CNN
	1    2200 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61594C69
P 3950 1350
F 0 "#PWR?" H 3950 1100 50  0001 C CNN
F 1 "GNDD" H 3954 1195 50  0000 C CNN
F 2 "" H 3950 1350 50  0001 C CNN
F 3 "" H 3950 1350 50  0001 C CNN
	1    3950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 6159529A
P 4400 1350
F 0 "#PWR?" H 4400 1100 50  0001 C CNN
F 1 "GNDD" H 4404 1195 50  0000 C CNN
F 2 "" H 4400 1350 50  0001 C CNN
F 3 "" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61595715
P 5400 1350
F 0 "#PWR?" H 5400 1100 50  0001 C CNN
F 1 "GNDD" H 5404 1195 50  0000 C CNN
F 2 "" H 5400 1350 50  0001 C CNN
F 3 "" H 5400 1350 50  0001 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 615961F1
P 5000 5600
F 0 "#PWR?" H 5000 5350 50  0001 C CNN
F 1 "GNDD" H 5004 5445 50  0000 C CNN
F 2 "" H 5000 5600 50  0001 C CNN
F 3 "" H 5000 5600 50  0001 C CNN
	1    5000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5600 5000 5550
Connection ~ 5000 5550
$EndSCHEMATC
