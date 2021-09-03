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
L Connector_Generic:Conn_02x20_Top_Bottom J1
U 1 1 61321925
P 5200 1950
F 0 "J1" H 5250 3067 50  0000 C CNN
F 1 "Conn_02x20_Top_Bottom" H 5250 2976 50  0000 C CNN
F 2 "Bus_Slot:BUS_2x20_2.54mm_Vertical_SMD" H 5200 1950 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61324E70
P 4100 1200
F 0 "R1" H 4170 1246 50  0000 L CNN
F 1 "100" H 4170 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4030 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1050 4100 700 
Wire Wire Line
	4100 700  5500 700 
Wire Wire Line
	5500 700  5500 1050
Wire Wire Line
	4100 1350 4800 1350
Wire Wire Line
	4800 1350 4800 1050
Wire Wire Line
	4800 1050 5000 1050
$EndSCHEMATC
