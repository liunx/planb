EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Device:C C1
U 1 1 611C4D00
P 1550 2000
F 0 "C1" H 1665 2046 50  0000 L CNN
F 1 "10uF" H 1665 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 1850 50  0001 C CNN
F 3 "~" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611CB576
P 1900 2000
F 0 "C2" H 2015 2046 50  0000 L CNN
F 1 "0.1uF" H 2015 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 1850 50  0001 C CNN
F 3 "~" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2150 1900 2150
Connection ~ 1900 2150
Wire Wire Line
	1900 1850 1900 1750
Wire Wire Line
	1550 1850 1550 1750
Connection ~ 1550 1750
Wire Wire Line
	1550 1750 1900 1750
Wire Wire Line
	1550 1750 1550 1650
$Comp
L power:GND #PWR0103
U 1 1 611CF207
P 1900 2350
F 0 "#PWR0103" H 1900 2100 50  0001 C CNN
F 1 "GND" H 1905 2177 50  0000 C CNN
F 2 "" H 1900 2350 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
	1    1900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2150 1900 2350
$Sheet
S 2600 1550 1750 1550
U 6121200F
F0 "Sheet6121200E" 50
F1 "STM32F103C6.sch" 50
F2 "F103_TX" I R 4350 1750 50 
F3 "F103_RX" I R 4350 1850 50 
$EndSheet
$Sheet
S 4800 1550 1800 1500
U 61233186
F0 "sheet61233186" 50
F1 "STM32F031C6.sch" 50
F2 "F031_TX" I L 4800 1850 50 
F3 "F031_RX" I L 4800 1750 50 
$EndSheet
Wire Wire Line
	4350 1750 4800 1750
Wire Wire Line
	4350 1850 4800 1850
$Comp
L Interface_CAN_LIN:TJA1051T U1
U 1 1 61212D19
P 1500 6600
F 0 "U1" H 1500 7181 50  0000 C CNN
F 1 "TJA1051T" H 1500 7090 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1500 6100 50  0001 C CIN
F 3 "http://www.nxp.com/documents/data_sheet/TJA1051.pdf" H 1500 6600 50  0001 C CNN
	1    1500 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61213C12
P 1500 7100
F 0 "#PWR0123" H 1500 6850 50  0001 C CNN
F 1 "GND" H 1505 6927 50  0000 C CNN
F 2 "" H 1500 7100 50  0001 C CNN
F 3 "" H 1500 7100 50  0001 C CNN
	1    1500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7000 1500 7050
Wire Wire Line
	1000 6800 1000 7050
Wire Wire Line
	1000 7050 1500 7050
Connection ~ 1500 7050
Wire Wire Line
	1500 7050 1500 7100
$Comp
L Device:R RA?
U 1 1 612176C2
P 2200 6500
AR Path="/6121200F/612176C2" Ref="RA?"  Part="1" 
AR Path="/61233186/612176C2" Ref="RA?"  Part="1" 
AR Path="/612176C2" Ref="R1"  Part="1" 
F 0 "R1" V 2200 6500 50  0000 C CNN
F 1 "33R" V 2100 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 6500 50  0001 C CNN
F 3 "~" H 2200 6500 50  0001 C CNN
	1    2200 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61218106
P 2200 6700
AR Path="/6121200F/61218106" Ref="R?"  Part="1" 
AR Path="/61233186/61218106" Ref="R?"  Part="1" 
AR Path="/61218106" Ref="R2"  Part="1" 
F 0 "R2" V 2200 6700 50  0000 C CNN
F 1 "33R" V 2100 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 6700 50  0001 C CNN
F 3 "~" H 2200 6700 50  0001 C CNN
	1    2200 6700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 612198E5
P 2500 7100
F 0 "C3" H 2615 7146 50  0000 L CNN
F 1 "22pF" H 2615 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 6950 50  0001 C CNN
F 3 "~" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6121999F
P 2850 7100
F 0 "C4" H 2965 7146 50  0000 L CNN
F 1 "22pF" H 2965 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 6950 50  0001 C CNN
F 3 "~" H 2850 7100 50  0001 C CNN
	1    2850 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7250 2850 7250
Connection ~ 2850 7250
$Comp
L power:GND #PWR0124
U 1 1 612199B0
P 2850 7450
F 0 "#PWR0124" H 2850 7200 50  0001 C CNN
F 1 "GND" H 2855 7277 50  0000 C CNN
F 2 "" H 2850 7450 50  0001 C CNN
F 3 "" H 2850 7450 50  0001 C CNN
	1    2850 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7250 2850 7450
Wire Wire Line
	2000 6500 2050 6500
Wire Wire Line
	2000 6700 2050 6700
Wire Wire Line
	2350 6700 2500 6700
$Comp
L Device:R R?
U 1 1 6121D415
P 3450 6650
AR Path="/6121200F/6121D415" Ref="R?"  Part="1" 
AR Path="/61233186/6121D415" Ref="R?"  Part="1" 
AR Path="/6121D415" Ref="R3"  Part="1" 
F 0 "R3" V 3450 6650 50  0000 C CNN
F 1 "120R" V 3350 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3380 6650 50  0001 C CNN
F 3 "~" H 3450 6650 50  0001 C CNN
	1    3450 6650
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N5817 D1
U 1 1 61221670
P 3450 7100
F 0 "D1" V 3404 7180 50  0000 L CNN
F 1 "1N5817" V 3495 7180 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3450 6925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3450 7100 50  0001 C CNN
	1    3450 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6500 2850 6500
Connection ~ 2850 6500
Wire Wire Line
	3450 6800 3450 6950
Wire Wire Line
	3750 6500 3750 6950
Wire Wire Line
	2850 6500 3450 6500
Wire Wire Line
	2850 7250 3450 7250
Connection ~ 3450 7250
Wire Wire Line
	3450 7250 3750 7250
$Comp
L Connector_Generic:Conn_01x02 CAN1
U 1 1 6122D1A7
P 4750 6600
F 0 "CAN1" H 4830 6592 50  0000 L CNN
F 1 "Conn_01x02" H 4830 6501 50  0000 L CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 4750 6600 50  0001 C CNN
F 3 "~" H 4750 6600 50  0001 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
Text Label 4450 6600 2    50   ~ 0
CANL
Text Label 4450 6700 2    50   ~ 0
CANH
Wire Wire Line
	4450 6600 4550 6600
Wire Wire Line
	4450 6700 4550 6700
Text Label 3850 6500 0    50   ~ 0
CANH
Text Label 3850 6800 0    50   ~ 0
CANL
Wire Wire Line
	3850 6500 3750 6500
Connection ~ 3750 6500
Wire Wire Line
	3850 6800 3450 6800
$Comp
L Diode:1N5817 D2
U 1 1 61231184
P 3750 7100
F 0 "D2" V 3704 7180 50  0000 L CNN
F 1 "1N5817" V 3795 7180 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3750 6925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 3750 7100 50  0001 C CNN
	1    3750 7100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 POWER1
U 1 1 6123C89C
P 1050 1850
F 0 "POWER1" H 968 1617 50  0000 C CNN
F 1 "Conn_01x02" H 968 1616 50  0001 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 1050 1850 50  0001 C CNN
F 3 "~" H 1050 1850 50  0001 C CNN
	1    1050 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 1750 1550 1750
Wire Wire Line
	1250 1850 1250 2150
Wire Wire Line
	1250 2150 1550 2150
Connection ~ 1550 2150
$Comp
L Device:C C7
U 1 1 612414CC
P 1550 3250
F 0 "C7" H 1665 3296 50  0000 L CNN
F 1 "10uF" H 1665 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 3100 50  0001 C CNN
F 3 "~" H 1550 3250 50  0001 C CNN
	1    1550 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 612416AE
P 1900 3250
F 0 "C8" H 2015 3296 50  0000 L CNN
F 1 "0.1uF" H 2015 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 3100 50  0001 C CNN
F 3 "~" H 1900 3250 50  0001 C CNN
	1    1900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3400 1900 3400
Connection ~ 1900 3400
Wire Wire Line
	1900 3100 1900 3000
Wire Wire Line
	1550 3100 1550 3000
Connection ~ 1550 3000
Wire Wire Line
	1550 3000 1900 3000
Wire Wire Line
	1550 3000 1550 2900
Wire Wire Line
	1900 3400 1900 3600
$Comp
L Connector_Generic:Conn_01x02 POWER2
U 1 1 612416CA
P 1050 3100
F 0 "POWER2" H 968 2867 50  0000 C CNN
F 1 "Conn_01x02" H 968 2866 50  0001 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 1050 3100 50  0001 C CNN
F 3 "~" H 1050 3100 50  0001 C CNN
	1    1050 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 3000 1550 3000
Wire Wire Line
	1250 3100 1250 3400
Wire Wire Line
	1250 3400 1550 3400
Connection ~ 1550 3400
$Comp
L power:+VDC #PWR0109
U 1 1 6124509A
P 1550 2900
F 0 "#PWR0109" H 1550 2800 50  0001 C CNN
F 1 "+VDC" H 1550 3175 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 61246E79
P 1550 1650
F 0 "#PWR0112" H 1550 1500 50  0001 C CNN
F 1 "+5V" H 1565 1823 50  0000 C CNN
F 2 "" H 1550 1650 50  0001 C CNN
F 3 "" H 1550 1650 50  0001 C CNN
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 61247375
P 1500 5950
F 0 "#PWR0122" H 1500 5800 50  0001 C CNN
F 1 "+5V" H 1515 6123 50  0000 C CNN
F 2 "" H 1500 5950 50  0001 C CNN
F 3 "" H 1500 5950 50  0001 C CNN
	1    1500 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6200 1500 5950
Text GLabel 950  6400 0    50   Input ~ 0
CAN_TX
Text GLabel 950  6500 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	1000 6400 950  6400
Wire Wire Line
	1000 6500 950  6500
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 6127F2E2
P 1250 4550
AR Path="/6127F2E2" Ref="U2"  Part="1" 
AR Path="/6121200F/6127F2E2" Ref="U?"  Part="1" 
AR Path="/61228324/6127F2E2" Ref="U?"  Part="1" 
AR Path="/61233186/6127F2E2" Ref="U?"  Part="1" 
F 0 "U2" H 1250 4792 50  0000 C CNN
F 1 "AMS1117-3.3" H 1250 4701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1250 4750 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1350 4300 50  0001 C CNN
	1    1250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6127F2E8
P 1250 4900
AR Path="/6127F2E8" Ref="#PWR0105"  Part="1" 
AR Path="/6121200F/6127F2E8" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6127F2E8" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6127F2E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 1250 4650 50  0001 C CNN
F 1 "GND" H 1255 4727 50  0000 C CNN
F 2 "" H 1250 4900 50  0001 C CNN
F 3 "" H 1250 4900 50  0001 C CNN
	1    1250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4850 1250 4900
Wire Wire Line
	950  4450 950  4550
Text Label 1850 4550 2    50   ~ 0
V3.3
$Comp
L Device:C C9
U 1 1 6127F2F1
P 1900 4800
AR Path="/6127F2F1" Ref="C9"  Part="1" 
AR Path="/6121200F/6127F2F1" Ref="C?"  Part="1" 
AR Path="/61228324/6127F2F1" Ref="C?"  Part="1" 
AR Path="/61233186/6127F2F1" Ref="C?"  Part="1" 
F 0 "C9" H 2015 4846 50  0000 L CNN
F 1 "10uF" H 2015 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1938 4650 50  0001 C CNN
F 3 "~" H 1900 4800 50  0001 C CNN
	1    1900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 6127F2F7
P 2250 4800
AR Path="/6127F2F7" Ref="C10"  Part="1" 
AR Path="/6121200F/6127F2F7" Ref="C?"  Part="1" 
AR Path="/61228324/6127F2F7" Ref="C?"  Part="1" 
AR Path="/61233186/6127F2F7" Ref="C?"  Part="1" 
F 0 "C10" H 2365 4846 50  0000 L CNN
F 1 "0.1uF" H 2365 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 4650 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4950 2250 4950
Wire Wire Line
	2250 4650 2250 4550
Wire Wire Line
	1900 4650 1900 4550
Wire Wire Line
	1900 4550 2250 4550
$Comp
L power:GND #PWR0110
U 1 1 6127F301
P 2250 5000
AR Path="/6127F301" Ref="#PWR0110"  Part="1" 
AR Path="/6121200F/6127F301" Ref="#PWR?"  Part="1" 
AR Path="/61228324/6127F301" Ref="#PWR?"  Part="1" 
AR Path="/61233186/6127F301" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 2250 4750 50  0001 C CNN
F 1 "GND" H 2255 4827 50  0000 C CNN
F 2 "" H 2250 5000 50  0001 C CNN
F 3 "" H 2250 5000 50  0001 C CNN
	1    2250 5000
	1    0    0    -1  
$EndComp
Connection ~ 1900 4550
Wire Wire Line
	1550 4550 1900 4550
Wire Wire Line
	2250 5000 2250 4950
Connection ~ 2250 4950
$Comp
L power:+5V #PWR?
U 1 1 6127F30B
P 950 4450
AR Path="/6121200F/6127F30B" Ref="#PWR?"  Part="1" 
AR Path="/6127F30B" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 950 4300 50  0001 C CNN
F 1 "+5V" H 965 4623 50  0000 C CNN
F 2 "" H 950 4450 50  0001 C CNN
F 3 "" H 950 4450 50  0001 C CNN
	1    950  4450
	1    0    0    -1  
$EndComp
Text GLabel 1900 4450 1    50   Input ~ 0
+3.3V
Wire Wire Line
	1900 4550 1900 4450
$Comp
L power:GNDA #PWR0102
U 1 1 6130E8F7
P 1900 3600
F 0 "#PWR0102" H 1900 3350 50  0001 C CNN
F 1 "GNDA" H 1905 3427 50  0000 C CNN
F 2 "" H 1900 3600 50  0001 C CNN
F 3 "" H 1900 3600 50  0001 C CNN
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RB?
U 1 1 612B47DD
P 3250 4350
AR Path="/6121200F/612B47DD" Ref="RB?"  Part="1" 
AR Path="/61233186/612B47DD" Ref="RB?"  Part="1" 
AR Path="/612B47DD" Ref="R4"  Part="1" 
F 0 "R4" V 3043 4350 50  0000 C CNN
F 1 "10K" V 3134 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 4350 50  0001 C CNN
F 3 "~" H 3250 4350 50  0001 C CNN
	1    3250 4350
	-1   0    0    1   
$EndComp
Text GLabel 3250 4150 1    50   Input ~ 0
+3.3V
$Comp
L Device:C C11
U 1 1 612B47E4
P 3250 4750
AR Path="/612B47E4" Ref="C11"  Part="1" 
AR Path="/6121200F/612B47E4" Ref="CB?"  Part="1" 
AR Path="/61228324/612B47E4" Ref="CB?"  Part="1" 
AR Path="/61233186/612B47E4" Ref="CB?"  Part="1" 
F 0 "C11" H 3365 4796 50  0000 L CNN
F 1 "10pF" H 3365 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 4600 50  0001 C CNN
F 3 "~" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 612B47EA
P 3250 4950
AR Path="/612B47EA" Ref="#PWR0148"  Part="1" 
AR Path="/6121200F/612B47EA" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612B47EA" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612B47EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR0148" H 3250 4700 50  0001 C CNN
F 1 "GND" H 3255 4777 50  0000 C CNN
F 2 "" H 3250 4950 50  0001 C CNN
F 3 "" H 3250 4950 50  0001 C CNN
	1    3250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4500 3250 4550
$Comp
L Switch:SW_Push SW?
U 1 1 612B47F1
P 2850 4750
AR Path="/61233186/612B47F1" Ref="SW?"  Part="1" 
AR Path="/612B47F1" Ref="SW1"  Part="1" 
F 0 "SW1" V 2850 4702 50  0000 R CNN
F 1 "SW_Push" V 2805 4702 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 2850 4950 50  0001 C CNN
F 3 "~" H 2850 4950 50  0001 C CNN
	1    2850 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 4150 3250 4200
Wire Wire Line
	2850 4550 3250 4550
Connection ~ 3250 4550
Wire Wire Line
	3250 4550 3250 4600
Wire Wire Line
	2850 4950 3250 4950
Wire Wire Line
	3250 4900 3250 4950
Connection ~ 3250 4950
Text GLabel 3600 4550 2    50   Input ~ 0
RESET
Wire Wire Line
	3600 4550 3250 4550
$Comp
L Device:R R?
U 1 1 612C67F0
P 4150 4350
AR Path="/6121200F/612C67F0" Ref="R?"  Part="1" 
AR Path="/61233186/612C67F0" Ref="R?"  Part="1" 
AR Path="/612C67F0" Ref="R5"  Part="1" 
F 0 "R5" V 3943 4350 50  0000 C CNN
F 1 "510R" V 4034 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 4350 50  0001 C CNN
F 3 "~" H 4150 4350 50  0001 C CNN
	1    4150 4350
	-1   0    0    1   
$EndComp
Text GLabel 4150 4150 1    50   Input ~ 0
+3.3V
$Comp
L power:GND #PWR0149
U 1 1 612C6A7B
P 4150 4950
AR Path="/612C6A7B" Ref="#PWR0149"  Part="1" 
AR Path="/6121200F/612C6A7B" Ref="#PWR?"  Part="1" 
AR Path="/61228324/612C6A7B" Ref="#PWR?"  Part="1" 
AR Path="/61233186/612C6A7B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0149" H 4150 4700 50  0001 C CNN
F 1 "GND" H 4155 4777 50  0000 C CNN
F 2 "" H 4150 4950 50  0001 C CNN
F 3 "" H 4150 4950 50  0001 C CNN
	1    4150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4150 4150 4200
Wire Wire Line
	4150 4900 4150 4950
Wire Wire Line
	4150 4500 4150 4600
$Comp
L Device:LED LED1
U 1 1 612CA3A2
P 4150 4750
F 0 "LED1" V 4189 4632 50  0000 R CNN
F 1 "LED" V 4098 4632 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4150 4750 50  0001 C CNN
F 3 "~" H 4150 4750 50  0001 C CNN
	1    4150 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 6700 2500 6800
Connection ~ 3450 6800
Connection ~ 3450 6500
Wire Wire Line
	3450 6500 3750 6500
Wire Wire Line
	2850 6500 2850 6950
Wire Wire Line
	3450 6800 2500 6800
Connection ~ 2500 6800
Wire Wire Line
	2500 6800 2500 6950
$EndSCHEMATC
