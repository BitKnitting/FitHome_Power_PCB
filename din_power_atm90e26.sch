EESchema Schematic File Version 4
LIBS:din_power_atm90e26-cache
EELAYER 26 0
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
L din_power_atm90e26-rescue:Hi-Link_SMPS U4
U 1 1 59F735D5
P 5600 2900
F 0 "U4" H 5600 3547 60  0000 C CNN
F 1 "Hi-Link_SMPS" H 5600 3441 60  0000 C CNN
F 2 "hi-link_smps:HKLPM01" H 850 -400 60  0001 C CNN
F 3 "" H 850 -400 60  0001 C CNN
F 4 "HLK-PM01" H 5600 2900 50  0001 C CNN "PN"
F 5 "50:$2.74" H 5600 2900 60  0001 C CNN "kicost:pricing"
	1    5600 2900
	1    0    0    -1  
$EndComp
$Comp
L device:Varistor RV2
U 1 1 59F735D9
P 4850 1100
F 0 "RV2" H 4953 1146 50  0000 L CNN
F 1 "Varistor" H 4953 1055 50  0000 L CNN
F 2 "SMD_Packages:SMD-4032" V 2180 -500 50  0001 C CNN
F 3 "" H 2250 -500 50  0001 C CNN
F 4 "VP3225K401R275" H 4850 1100 50  0001 C CNN "PN"
	1    4850 1100
	0    1    1    0   
$EndComp
$Comp
L device:Varistor RV1
U 1 1 59F735DA
P 4850 900
F 0 "RV1" H 4953 946 50  0000 L CNN
F 1 "Varistor" H 4953 855 50  0000 L CNN
F 2 "SMD_Packages:SMD-4032" V 2180 -700 50  0001 C CNN
F 3 "" H 2250 -700 50  0001 C CNN
F 4 "VP3225K401R275" H 4850 900 50  0001 C CNN "PN"
	1    4850 900 
	0    1    1    0   
$EndComp
$Comp
L device:Varistor RV3
U 1 1 59F735DB
P 4850 1300
F 0 "RV3" H 4953 1346 50  0000 L CNN
F 1 "Varistor" H 4953 1255 50  0000 L CNN
F 2 "SMD_Packages:SMD-4032" V 2180 -300 50  0001 C CNN
F 3 "" H 2250 -300 50  0001 C CNN
F 4 "VP3225K401R275" H 4850 1300 50  0001 C CNN "PN"
F 5 "VP3225K401R275" H 4850 1300 60  0001 C CNN "manf#"
	1    4850 1300
	0    1    1    0   
$EndComp
$Comp
L din_power_atm90e26-rescue:CONN_01X06 J1
U 1 1 59F735DC
P 4350 1150
F 0 "J1" H 4269 675 50  0000 C CNN
F 1 "CONN_01X06" H 4269 766 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_06x5.08mm_Angled" H 3150 -350 50  0001 C CNN
F 3 "" H 3150 -350 50  0001 C CNN
F 4 "1759059" H 4350 1150 50  0001 C CNN "PN"
F 5 "1759059" H 4350 1150 60  0001 C CNN "manf#"
	1    4350 1150
	-1   0    0    -1  
$EndComp
$Comp
L device:R R5
U 1 1 59F735DD
P 1650 1050
F 0 "R5" V 1443 1050 50  0000 C CNN
F 1 "220K" V 1534 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1580 1050 50  0001 C CNN
F 3 "" H 1650 1050 50  0001 C CNN
F 4 "R" H 1650 1050 50  0001 C CNN "PN"
F 5 "CRCW1206220KFKEA" H 1650 1050 60  0001 C CNN "manf#"
	1    1650 1050
	0    1    1    0   
$EndComp
$Comp
L device:R R12
U 1 1 59F735DE
P 2050 1050
F 0 "R12" V 1843 1050 50  0000 C CNN
F 1 "220K" V 1934 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1980 1050 50  0001 C CNN
F 3 "" H 2050 1050 50  0001 C CNN
F 4 "R" H 2050 1050 50  0001 C CNN "PN"
	1    2050 1050
	0    1    1    0   
$EndComp
$Comp
L device:R R15
U 1 1 59F735DF
P 2450 1050
F 0 "R15" V 2243 1050 50  0000 C CNN
F 1 "220K" V 2334 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2380 1050 50  0001 C CNN
F 3 "" H 2450 1050 50  0001 C CNN
F 4 "R" H 2450 1050 50  0001 C CNN "PN"
	1    2450 1050
	0    1    1    0   
$EndComp
$Comp
L device:R R22
U 1 1 59F735E0
P 2850 1050
F 0 "R22" V 2643 1050 50  0000 C CNN
F 1 "220K" V 2734 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2780 1050 50  0001 C CNN
F 3 "" H 2850 1050 50  0001 C CNN
F 4 "R" H 2850 1050 50  0001 C CNN "PN"
	1    2850 1050
	0    1    1    0   
$EndComp
$Comp
L device:R R6
U 1 1 59F735E1
P 1650 2050
F 0 "R6" V 1443 2050 50  0000 C CNN
F 1 "220K" V 1534 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1580 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
F 4 "R" H 1650 2050 50  0001 C CNN "PN"
	1    1650 2050
	0    1    1    0   
$EndComp
$Comp
L device:R R13
U 1 1 59F735E2
P 2050 2050
F 0 "R13" V 1843 2050 50  0000 C CNN
F 1 "220K" V 1934 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1980 2050 50  0001 C CNN
F 3 "" H 2050 2050 50  0001 C CNN
F 4 "R" H 2050 2050 50  0001 C CNN "PN"
	1    2050 2050
	0    1    1    0   
$EndComp
$Comp
L device:R R16
U 1 1 59F735E3
P 2450 2050
F 0 "R16" V 2243 2050 50  0000 C CNN
F 1 "220K" V 2334 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2380 2050 50  0001 C CNN
F 3 "" H 2450 2050 50  0001 C CNN
F 4 "R" H 2450 2050 50  0001 C CNN "PN"
	1    2450 2050
	0    1    1    0   
$EndComp
$Comp
L device:R R23
U 1 1 59F735E4
P 2850 2050
F 0 "R23" V 2643 2050 50  0000 C CNN
F 1 "220K" V 2734 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2780 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
F 4 "R" H 2850 2050 50  0001 C CNN "PN"
	1    2850 2050
	0    1    1    0   
$EndComp
$Comp
L device:R R7
U 1 1 59F735E5
P 1650 2850
F 0 "R7" V 1443 2850 50  0000 C CNN
F 1 "220K" V 1534 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1580 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
F 4 "R" H 1650 2850 50  0001 C CNN "PN"
	1    1650 2850
	0    1    1    0   
$EndComp
$Comp
L device:R R14
U 1 1 59F735E6
P 2050 2850
F 0 "R14" V 1843 2850 50  0000 C CNN
F 1 "220K" V 1934 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1980 2850 50  0001 C CNN
F 3 "" H 2050 2850 50  0001 C CNN
F 4 "R" H 2050 2850 50  0001 C CNN "PN"
	1    2050 2850
	0    1    1    0   
$EndComp
$Comp
L device:R R17
U 1 1 59F735E7
P 2450 2850
F 0 "R17" V 2243 2850 50  0000 C CNN
F 1 "220K" V 2334 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2380 2850 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
F 4 "R" H 2450 2850 50  0001 C CNN "PN"
	1    2450 2850
	0    1    1    0   
$EndComp
$Comp
L device:R R24
U 1 1 59F735E8
P 2850 2850
F 0 "R24" V 2643 2850 50  0000 C CNN
F 1 "220K" V 2734 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2780 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0001 C CNN
F 4 "R" H 2850 2850 50  0001 C CNN "PN"
	1    2850 2850
	0    1    1    0   
$EndComp
$Comp
L dc-dc1:dc-dc U5
U 1 1 59F735E9
P 5800 1150
F 0 "U5" H 6478 1297 60  0000 L CNN
F 1 "dc-dc" H 6478 1191 60  0000 L CNN
F 2 "hi-link_smps:SIP4" H 5800 1150 60  0001 C CNN
F 3 "" H 5800 1150 60  0001 C CNN
F 4 "ROE-0505S" H 5800 1150 50  0001 C CNN "PN"
F 5 "ROE-0505S" H 5800 1150 60  0001 C CNN "manf#"
	1    5800 1150
	1    0    0    -1  
$EndComp
$Comp
L device:R R25
U 1 1 59F735EA
P 3050 1300
F 0 "R25" V 2843 1300 50  0000 C CNN
F 1 "1K" V 2934 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 1300 50  0001 C CNN
F 3 "" H 3050 1300 50  0001 C CNN
F 4 "R" H 3050 1300 50  0001 C CNN "PN"
F 5 "CRG0603F1K0" H 3050 1300 60  0001 C CNN "manf#"
	1    3050 1300
	-1   0    0    1   
$EndComp
$Comp
L device:R R26
U 1 1 59F735EB
P 3050 2350
F 0 "R26" V 2843 2350 50  0000 C CNN
F 1 "1K" V 2934 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
F 4 "R" H 3050 2350 50  0001 C CNN "PN"
	1    3050 2350
	-1   0    0    1   
$EndComp
$Comp
L device:R R27
U 1 1 59F735EC
P 3050 3100
F 0 "R27" V 2843 3100 50  0000 C CNN
F 1 "1K" V 2934 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 3100 50  0001 C CNN
F 3 "" H 3050 3100 50  0001 C CNN
F 4 "R" H 3050 3100 50  0001 C CNN "PN"
	1    3050 3100
	-1   0    0    1   
$EndComp
$Comp
L device:Polyfuse F1
U 1 1 59F735ED
P 4950 2800
F 0 "F1" V 4725 2800 50  0000 C CNN
F 1 "Polyfuse" V 4816 2800 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 5000 2600 50  0001 L CNN
F 3 "" H 4950 2800 50  0001 C CNN
F 4 "0ZRE0012FF1C" H 4950 2800 50  0001 C CNN "PN"
F 5 "0ZRE0012FF1C" H 4950 2800 60  0001 C CNN "manf#"
	1    4950 2800
	0    1    1    0   
$EndComp
$Comp
L device:C C3
U 1 1 59F735EE
P 3350 1300
F 0 "C3" H 3465 1346 50  0000 L CNN
F 1 ".033u" H 3465 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3388 1150 50  0001 C CNN
F 3 "" H 3350 1300 50  0001 C CNN
F 4 "C" H 3350 1300 50  0001 C CNN "PN"
F 5 "CC0603KRX7R9BB333" H 3350 1300 60  0001 C CNN "manf#"
	1    3350 1300
	1    0    0    -1  
$EndComp
$Comp
L device:C C1
U 1 1 59F735EF
P 3300 2350
F 0 "C1" H 3415 2396 50  0000 L CNN
F 1 ".033u" H 3415 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 2200 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
F 4 "C" H 3300 2350 50  0001 C CNN "PN"
	1    3300 2350
	1    0    0    -1  
$EndComp
$Comp
L device:C C2
U 1 1 59F735F0
P 3300 3100
F 0 "C2" H 3415 3146 50  0000 L CNN
F 1 ".033u" H 3415 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 2950 50  0001 C CNN
F 3 "" H 3300 3100 50  0001 C CNN
F 4 "C" H 3300 3100 50  0001 C CNN "PN"
	1    3300 3100
	1    0    0    -1  
$EndComp
$Comp
L device:R R1
U 1 1 59F735F1
P 2150 4800
F 0 "R1" V 1943 4800 50  0000 C CNN
F 1 "5.8R" V 2034 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2080 4800 50  0001 C CNN
F 3 "" H 2150 4800 50  0001 C CNN
F 4 "R0603" H 2150 4800 50  0001 C CNN "PN"
F 5 "CPF0603B5R76E1" H 2150 4800 60  0001 C CNN "manf#"
	1    2150 4800
	-1   0    0    1   
$EndComp
$Comp
L device:R R2
U 1 1 59F735F2
P 2150 5200
F 0 "R2" V 1943 5200 50  0000 C CNN
F 1 "5.8R" V 2034 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2080 5200 50  0001 C CNN
F 3 "" H 2150 5200 50  0001 C CNN
F 4 "R0603" H 2150 5200 50  0001 C CNN "PN"
	1    2150 5200
	-1   0    0    1   
$EndComp
Text GLabel 1250 1050 0    60   Input ~ 0
UA
Text GLabel 1250 2050 0    60   Input ~ 0
UB
Text GLabel 1250 2850 0    60   Input ~ 0
UC
$Comp
L power:GNDA #PWR01
U 1 1 59F73601
P 3350 1600
F 0 "#PWR01" H 3350 1350 50  0001 C CNN
F 1 "GNDA" H 3355 1427 50  0000 C CNN
F 2 "" H 3350 1600 50  0001 C CNN
F 3 "" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 59F73602
P 3300 2600
F 0 "#PWR02" H 3300 2350 50  0001 C CNN
F 1 "GNDA" H 3305 2427 50  0000 C CNN
F 2 "" H 3300 2600 50  0001 C CNN
F 3 "" H 3300 2600 50  0001 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR03
U 1 1 59F73603
P 3300 3350
F 0 "#PWR03" H 3300 3100 50  0001 C CNN
F 1 "GNDA" H 3305 3177 50  0000 C CNN
F 2 "" H 3300 3350 50  0001 C CNN
F 3 "" H 3300 3350 50  0001 C CNN
	1    3300 3350
	1    0    0    -1  
$EndComp
$Comp
L device:Ferrite_Bead_Small L1
U 1 1 59F73604
P 4800 1550
F 0 "L1" V 4563 1550 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 5050 1550 50  0000 C CNN
F 2 "Inductors_SMD:L_1206" V 4730 1550 50  0001 C CNN
F 3 "" H 4800 1550 50  0001 C CNN
F 4 "AIML-1206-R27K-T" H 4800 1550 50  0001 C CNN "PN"
F 5 "AIML-1206-R27K-T" H 4800 1550 60  0001 C CNN "manf#"
	1    4800 1550
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR04
U 1 1 59F73605
P 5100 1550
F 0 "#PWR04" H 5100 1300 50  0001 C CNN
F 1 "GNDA" V 5105 1422 50  0000 R CNN
F 2 "" H 5100 1550 50  0001 C CNN
F 3 "" H 5100 1550 50  0001 C CNN
	1    5100 1550
	0    -1   -1   0   
$EndComp
Text GLabel 4650 1400 3    60   Input ~ 0
UN
Text GLabel 4650 1300 1    60   Input ~ 0
UC
Text GLabel 4650 1100 1    60   Input ~ 0
UB
Text GLabel 4650 900  1    60   Input ~ 0
UA
Text GLabel 4800 2500 0    60   Input ~ 0
UC
Text GLabel 4800 2800 0    60   Input ~ 0
UN
$Comp
L power:GNDPWR #PWR05
U 1 1 59F73606
P 6000 2950
F 0 "#PWR05" H 6000 2750 50  0001 C CNN
F 1 "GNDPWR" H 6004 3024 50  0000 C CNN
F 2 "" H 6000 2900 50  0001 C CNN
F 3 "" H 6000 2900 50  0001 C CNN
	1    6000 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR06
U 1 1 59F73607
P 5950 1500
F 0 "#PWR06" H 5950 1300 50  0001 C CNN
F 1 "GNDPWR" H 5954 1574 50  0000 C CNN
F 2 "" H 5950 1450 50  0001 C CNN
F 3 "" H 5950 1450 50  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR09
U 1 1 59F7360A
P 6250 1500
F 0 "#PWR09" H 6250 1250 50  0001 C CNN
F 1 "GNDA" H 6255 1327 50  0000 C CNN
F 2 "" H 6250 1500 50  0001 C CNN
F 3 "" H 6250 1500 50  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
Text GLabel 6400 1500 3    60   Input ~ 0
+5V_ISO
Text Notes 5100 3550 0    60   ~ 0
Power System
Text Notes 1800 700  0    60   ~ 0
Voltage Sampling
Text Notes 1600 4000 0    60   ~ 0
Current Sampling
Text Notes 8750 3400 0    60   ~ 0
CT Input
Text Notes 7900 6050 0    60   ~ 0
Connector for Metering/Processor boards.
Text GLabel 1900 5350 3    60   Input ~ 0
I1N_0_N
Wire Notes Line
	4100 500  4100 7800
Wire Wire Line
	1250 1050 1500 1050
Wire Wire Line
	1800 1050 1900 1050
Wire Wire Line
	2200 1050 2300 1050
Wire Wire Line
	2600 1050 2700 1050
Wire Wire Line
	3000 1050 3050 1050
Wire Wire Line
	3050 1050 3050 1150
Wire Wire Line
	3350 1050 3350 1150
Connection ~ 3050 1050
Wire Wire Line
	3050 1450 3050 1600
Wire Wire Line
	3050 1600 3350 1600
Wire Wire Line
	3350 1600 3350 1450
Wire Wire Line
	1250 2050 1500 2050
Wire Wire Line
	1800 2050 1900 2050
Wire Wire Line
	2200 2050 2300 2050
Wire Wire Line
	2600 2050 2700 2050
Wire Wire Line
	3000 2050 3050 2050
Wire Wire Line
	3300 2050 3300 2200
Wire Wire Line
	3050 2200 3050 2050
Connection ~ 3050 2050
Wire Wire Line
	3050 2500 3050 2600
Wire Wire Line
	3050 2600 3300 2600
Wire Wire Line
	3300 2600 3300 2500
Wire Wire Line
	1250 2850 1500 2850
Wire Wire Line
	1800 2850 1900 2850
Wire Wire Line
	2200 2850 2300 2850
Wire Wire Line
	2600 2850 2700 2850
Wire Wire Line
	3000 2850 3050 2850
Wire Wire Line
	3050 2850 3050 2950
Wire Wire Line
	3300 2850 3300 2950
Connection ~ 3050 2850
Wire Wire Line
	3050 3250 3050 3350
Wire Wire Line
	3050 3350 3300 3350
Wire Wire Line
	3300 3350 3300 3250
Wire Wire Line
	4550 900  4700 900 
Wire Wire Line
	4550 1100 4700 1100
Wire Wire Line
	4550 1300 4700 1300
Wire Wire Line
	5100 1400 4700 1400
Wire Wire Line
	5250 2800 5100 2800
Wire Wire Line
	4700 1400 4700 1550
Wire Wire Line
	4900 1550 5100 1550
Wire Wire Line
	5100 900  5100 1100
Wire Wire Line
	5100 1300 5000 1300
Connection ~ 4700 1400
Wire Wire Line
	5000 900  5100 900 
Connection ~ 5100 1300
Wire Wire Line
	5000 1100 5100 1100
Connection ~ 5100 1100
Wire Wire Line
	4800 2500 5250 2500
Wire Wire Line
	6000 2800 6000 2950
Wire Wire Line
	5950 1250 5950 1500
Wire Wire Line
	6100 1250 6100 1500
Wire Wire Line
	6250 1250 6250 1500
Wire Wire Line
	6400 1250 6400 1500
$Comp
L power:GNDA #PWR010
U 1 1 59F7360B
P 2350 5000
F 0 "#PWR010" H 2350 4750 50  0001 C CNN
F 1 "GNDA" V 2355 4872 50  0000 R CNN
F 2 "" H 2350 5000 50  0001 C CNN
F 3 "" H 2350 5000 50  0001 C CNN
	1    2350 5000
	0    -1   -1   0   
$EndComp
Text GLabel 3350 1050 2    60   Input ~ 0
UA_SAMP
Text GLabel 3300 2050 2    60   Input ~ 0
UB_SAMP
Text GLabel 3300 2850 2    60   Input ~ 0
UC_SAMP
Text GLabel 9000 3850 2    60   Input ~ 0
UA_SAMP
Text GLabel 9000 3950 2    60   Input ~ 0
UB_SAMP
Text GLabel 9000 4050 2    60   Input ~ 0
UC_SAMP
Text GLabel 8500 5550 0    60   Input ~ 0
GNDA
Text GLabel 8500 3950 0    60   Input ~ 0
+3.3V_ISO
Text GLabel 8500 5450 0    60   Input ~ 0
GNDPWR
Text GLabel 8500 3850 0    60   Input ~ 0
+3V3
Text Label 5200 2800 3    60   ~ 0
UN_IN
Text Label 1850 1050 0    60   ~ 0
ua_1
Text Label 2250 1050 0    60   ~ 0
ua_2
Text Label 2650 1050 0    60   ~ 0
ua_3
Text Label 1850 2050 0    60   ~ 0
ub_1
Text Label 2250 2050 0    60   ~ 0
ub_2
Text Label 2650 2050 0    60   ~ 0
ub_3
Text Label 1850 2850 0    60   ~ 0
uc_1
Text Label 2250 2850 0    60   ~ 0
uc_2
Text Label 2650 2850 0    60   ~ 0
uc_3
$Comp
L graphic_symbols:SYM_Flash_Small SYM1
U 1 1 59F73620
P 8250 2600
F 0 "SYM1" V 8160 2600 50  0001 C CNN
F 1 "SYM_Flash_Small" V 8340 2600 50  0001 C CNN
F 2 "Whatnick_logo:Fsilk_HV" H 8250 2575 50  0001 C CNN
F 3 "" H 8650 2500 50  0001 C CNN
F 4 "X" H 8250 2600 50  0001 C CNN "PN"
F 5 "1" V 8250 2600 60  0001 C CNN "DNP"
	1    8250 2600
	1    0    0    -1  
$EndComp
Text GLabel 6200 2250 2    60   Input ~ 0
+5V
Text GLabel 5000 1550 3    60   Input ~ 0
GNDA
$Comp
L whatnick:LOGO G1
U 1 1 59F74376
P 9000 2600
F 0 "G1" H 9000 2498 60  0001 C CNN
F 1 "LOGO" H 9000 2702 60  0001 C CNN
F 2 "Whatnick_logo:Whatnick_logo" H 9000 2600 60  0001 C CNN
F 3 "" H 9000 2600 60  0001 C CNN
F 4 "X" H 9000 2600 50  0001 C CNN "PN"
F 5 "1" H 9000 2600 60  0001 C CNN "DNP"
	1    9000 2600
	1    0    0    -1  
$EndComp
$Comp
L graphic_symbols:Logo_Open_Hardware_Small LOGO_OSHW1
U 1 1 5A0F959B
P 9850 2600
F 0 "LOGO_OSHW1" H 9850 2875 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 9850 2375 50  0001 C CNN
F 2 "Symbols:OSHW-Symbol_6.7x6mm_SilkScreen" H 9850 2600 50  0001 C CNN
F 3 "" H 9850 2600 50  0001 C CNN
F 4 "X" H 9850 2600 50  0001 C CNN "PN"
F 5 "1" H 9850 2600 60  0001 C CNN "DNP"
	1    9850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1050 3350 1050
Wire Wire Line
	3050 2050 3300 2050
Wire Wire Line
	3050 2850 3300 2850
Wire Wire Line
	4700 1400 4550 1400
Wire Wire Line
	5100 1300 5100 1400
Wire Wire Line
	5100 1100 5100 1300
Wire Wire Line
	2150 4950 2150 5000
Wire Wire Line
	2150 5000 2350 5000
Connection ~ 2150 5000
Wire Wire Line
	2150 5000 2150 5050
Wire Wire Line
	6200 2500 6200 2200
$Comp
L conn:Conn_02x18_Counter_Clockwise J2
U 1 1 5C8D7B17
P 8700 4650
F 0 "J2" H 8750 5667 50  0000 C CNN
F 1 "Conn_02x18_Counter_Clockwise" H 8750 5576 50  0000 C CNN
F 2 "hi-link_smps:PCIE-36-SKT" H 8700 4650 50  0001 C CNN
F 3 "~" H 8700 4650 50  0001 C CNN
F 4 "10018784-10210TLF" H 8700 4650 50  0001 C CNN "PN"
	1    8700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5350 2150 5350
Text GLabel 1850 4750 0    60   Input ~ 0
I1P_0_IN
$Comp
L device:R R3
U 1 1 5C8E9E2F
P 2350 6150
F 0 "R3" V 2143 6150 50  0000 C CNN
F 1 "5.8R" V 2234 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 6150 50  0001 C CNN
F 3 "" H 2350 6150 50  0001 C CNN
F 4 "R0603" H 2350 6150 50  0001 C CNN "PN"
F 5 "CPF0603B5R76E1" H 2350 6150 60  0001 C CNN "manf#"
	1    2350 6150
	-1   0    0    1   
$EndComp
$Comp
L device:R R4
U 1 1 5C8E9E36
P 2350 6550
F 0 "R4" V 2143 6550 50  0000 C CNN
F 1 "5.8R" V 2234 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 6550 50  0001 C CNN
F 3 "" H 2350 6550 50  0001 C CNN
F 4 "R0603" H 2350 6550 50  0001 C CNN "PN"
	1    2350 6550
	-1   0    0    1   
$EndComp
Text GLabel 2100 6700 3    60   Input ~ 0
I1N_1_IN
Wire Wire Line
	2050 6000 2350 6000
$Comp
L power:GNDA #PWR0103
U 1 1 5C8E9E3E
P 2550 6350
F 0 "#PWR0103" H 2550 6100 50  0001 C CNN
F 1 "GNDA" V 2555 6222 50  0000 R CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 6300 2350 6350
Wire Wire Line
	2350 6350 2550 6350
Connection ~ 2350 6350
Wire Wire Line
	2350 6350 2350 6400
Wire Wire Line
	1550 6700 2350 6700
Text GLabel 2050 6100 0    60   Input ~ 0
I1P_1_IN
$Comp
L device:LED D1
U 1 1 5C8F08AF
P 6050 4350
F 0 "D1" V 6088 4233 50  0000 R CNN
F 1 "IND_LED" V 5997 4233 50  0000 R CNN
F 2 "" H 6050 4350 50  0001 C CNN
F 3 "" H 6050 4350 50  0001 C CNN
F 4 "LED" H 6050 4350 50  0001 C CNN "PN"
	1    6050 4350
	0    -1   -1   0   
$EndComp
$Comp
L device:R R8
U 1 1 5C8F0995
P 6050 4750
F 0 "R8" H 6120 4796 50  0000 L CNN
F 1 "499" H 6120 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 4750 50  0001 C CNN
F 3 "" H 6050 4750 50  0001 C CNN
F 4 "R" H 6050 4750 50  0001 C CNN "PN"
	1    6050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 6050 4600
$Comp
L Fithome:TRS35_3 U1
U 1 1 5C8F08EE
P 800 5150
F 0 "U1" H 1056 5425 50  0000 C CNN
F 1 "TRS35_3" H 1056 5334 50  0000 C CNN
F 2 "" H 800 5150 50  0001 C CNN
F 3 "" H 800 5150 50  0001 C CNN
F 4 "SJ-3523-SMT-TR" H 800 5150 50  0001 C CNN "PN"
	1    800  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4650 2150 4650
Wire Wire Line
	1850 5100 1350 5100
Wire Wire Line
	1850 4650 1850 5100
$Comp
L Fithome:TRS35_3 U2
U 1 1 5C8FFEC9
P 1000 6500
F 0 "U2" H 1256 6775 50  0000 C CNN
F 1 "TRS35_3" H 1256 6684 50  0000 C CNN
F 2 "" H 1000 6500 50  0001 C CNN
F 3 "" H 1000 6500 50  0001 C CNN
F 4 "SJ-3523-SMT-TR" H 1000 6500 50  0001 C CNN "PN"
	1    1000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6450 1550 6450
Wire Wire Line
	2050 6000 2050 6450
$Comp
L power:+5V #PWR0101
U 1 1 5C8EDB70
P 6100 1500
F 0 "#PWR0101" H 6100 1350 50  0001 C CNN
F 1 "+5V" H 6115 1673 50  0000 C CNN
F 2 "" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0001 C CNN
	1    6100 1500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5C8EDD11
P 6200 2200
F 0 "#PWR0102" H 6200 2050 50  0001 C CNN
F 1 "+5V" H 6215 2373 50  0000 C CNN
F 2 "" H 6200 2200 50  0001 C CNN
F 3 "" H 6200 2200 50  0001 C CNN
	1    6200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2500 6200 2500
$Comp
L din_power_atm90e26-rescue:AP7365-33YG-13 U3
U 1 1 5C8F13EF
P 5200 4100
F 0 "U3" H 5200 4342 50  0000 C CNN
F 1 "AP7365-33YG-13" H 5200 4251 50  0000 C CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
F 4 "AP7365-33YG-13" H 5200 4100 50  0001 C CNN "PN"
	1    5200 4100
	1    0    0    -1  
$EndComp
Text GLabel 4650 4100 0    60   Input ~ 0
+5V_ISO
$Comp
L device:C C4
U 1 1 5C8F1939
P 4750 4400
F 0 "C4" H 4865 4446 50  0000 L CNN
F 1 "1u" H 4865 4355 50  0000 L CNN
F 2 "" H 4788 4250 50  0001 C CNN
F 3 "" H 4750 4400 50  0001 C CNN
F 4 "C" H 4750 4400 50  0001 C CNN "PN"
	1    4750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4100 4750 4100
Wire Wire Line
	4750 4250 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	4750 4100 4900 4100
$Comp
L power:GNDA #PWR0104
U 1 1 5C8F454A
P 5200 4650
F 0 "#PWR0104" H 5200 4400 50  0001 C CNN
F 1 "GNDA" H 5205 4477 50  0000 C CNN
F 2 "" H 5200 4650 50  0001 C CNN
F 3 "" H 5200 4650 50  0001 C CNN
	1    5200 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4550 4750 4650
Wire Wire Line
	4750 4650 5200 4650
Wire Wire Line
	5200 4650 5200 4400
Connection ~ 5200 4650
$Comp
L device:C C6
U 1 1 5C8F8CF8
P 5600 4400
F 0 "C6" H 5715 4446 50  0000 L CNN
F 1 "1u" H 5715 4355 50  0000 L CNN
F 2 "" H 5638 4250 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
F 4 "C" H 5600 4400 50  0001 C CNN "PN"
	1    5600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4100 5600 4100
Wire Wire Line
	5600 4100 5600 4250
Wire Wire Line
	5200 4650 5500 4650
Wire Wire Line
	5600 4650 5600 4550
Connection ~ 5600 4100
Text GLabel 6450 4100 2    60   Input ~ 0
+3.3V_ISO
$Comp
L din_power_atm90e26-rescue:AP7365-33YG-13 U6
U 1 1 5C8FDCE8
P 5200 5400
F 0 "U6" H 5200 5642 50  0000 C CNN
F 1 "AP7365-33YG-13" H 5200 5551 50  0000 C CNN
F 2 "" H 5200 5400 50  0001 C CNN
F 3 "" H 5200 5400 50  0001 C CNN
F 4 "AP7365-33YG-13" H 5200 5400 50  0001 C CNN "PN"
	1    5200 5400
	1    0    0    -1  
$EndComp
$Comp
L device:C C5
U 1 1 5C8FDCF0
P 4750 5700
F 0 "C5" H 4865 5746 50  0000 L CNN
F 1 "1u" H 4865 5655 50  0000 L CNN
F 2 "" H 4788 5550 50  0001 C CNN
F 3 "" H 4750 5700 50  0001 C CNN
F 4 "C" H 4750 5700 50  0001 C CNN "PN"
	1    4750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5550 4750 5400
Connection ~ 4750 5400
Wire Wire Line
	4750 5400 4900 5400
Wire Wire Line
	4750 5850 4750 5950
Wire Wire Line
	5200 5950 5200 5700
$Comp
L device:C C7
U 1 1 5C8FDD05
P 5600 5700
F 0 "C7" H 5715 5746 50  0000 L CNN
F 1 "1u" H 5715 5655 50  0000 L CNN
F 2 "" H 5638 5550 50  0001 C CNN
F 3 "" H 5600 5700 50  0001 C CNN
F 4 "C" H 5600 5700 50  0001 C CNN "PN"
	1    5600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 5600 5400
Wire Wire Line
	5600 5400 5600 5550
Wire Wire Line
	5600 5950 5600 5850
Connection ~ 5600 5400
Text GLabel 6600 5400 3    60   Input ~ 0
+3V3
$Comp
L power:+5V #PWR0105
U 1 1 5C8FFE1B
P 4400 5350
F 0 "#PWR0105" H 4400 5200 50  0001 C CNN
F 1 "+5V" H 4415 5523 50  0000 C CNN
F 2 "" H 4400 5350 50  0001 C CNN
F 3 "" H 4400 5350 50  0001 C CNN
	1    4400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4400 5350
Wire Wire Line
	4400 5400 4750 5400
Wire Wire Line
	5200 5950 5500 5950
Wire Wire Line
	4750 5950 5200 5950
Connection ~ 5200 5950
$Comp
L power:GNDPWR #PWR0106
U 1 1 5C90228E
P 5200 6100
F 0 "#PWR0106" H 5200 5900 50  0001 C CNN
F 1 "GNDPWR" H 5204 6174 50  0000 C CNN
F 2 "" H 5200 6050 50  0001 C CNN
F 3 "" H 5200 6050 50  0001 C CNN
	1    5200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6100 5200 5950
$Comp
L power:+3.3V #PWR0107
U 1 1 5C904867
P 6650 5350
F 0 "#PWR0107" H 6650 5200 50  0001 C CNN
F 1 "+3.3V" H 6665 5523 50  0000 C CNN
F 2 "" H 6650 5350 50  0001 C CNN
F 3 "" H 6650 5350 50  0001 C CNN
	1    6650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5400 6650 5350
Wire Wire Line
	6050 4900 5500 4900
Wire Wire Line
	5500 4900 5500 4650
Connection ~ 5500 4650
Wire Wire Line
	5500 4650 5600 4650
Wire Wire Line
	5600 4100 6050 4100
Wire Wire Line
	6050 4200 6050 4100
Connection ~ 6050 4100
Wire Wire Line
	6050 4100 6450 4100
$Comp
L device:LED D2
U 1 1 5C910871
P 6050 5650
F 0 "D2" V 6088 5533 50  0000 R CNN
F 1 "IND_LED" V 5997 5533 50  0000 R CNN
F 2 "" H 6050 5650 50  0001 C CNN
F 3 "" H 6050 5650 50  0001 C CNN
F 4 "LED" H 6050 5650 50  0001 C CNN "PN"
	1    6050 5650
	0    -1   -1   0   
$EndComp
$Comp
L device:R R9
U 1 1 5C910878
P 6050 6050
F 0 "R9" H 6120 6096 50  0000 L CNN
F 1 "499" H 6120 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 6050 50  0001 C CNN
F 3 "" H 6050 6050 50  0001 C CNN
F 4 "R" H 6050 6050 50  0001 C CNN "PN"
	1    6050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5800 6050 5900
Wire Wire Line
	6050 5500 6050 5400
Connection ~ 6050 5400
Wire Wire Line
	6050 5400 6650 5400
Wire Wire Line
	5600 5400 6050 5400
Wire Wire Line
	6050 6200 5500 6200
Wire Wire Line
	5500 6200 5500 5950
Connection ~ 5500 5950
Wire Wire Line
	5500 5950 5600 5950
Wire Notes Line
	7600 500  7600 6550
Text GLabel 9000 5250 2    60   Input ~ 0
I1P_0_IN
Text GLabel 9000 5350 2    60   Input ~ 0
I1N_0_N
Text GLabel 9000 5450 2    60   Input ~ 0
I1P_1_IN
Text GLabel 9000 5550 2    60   Input ~ 0
I1N_1_IN
$EndSCHEMATC
