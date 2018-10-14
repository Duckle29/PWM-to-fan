EESchema Schematic File Version 4
LIBS:pwm-fan-control-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Inverted open-drain PWM to DC voltage"
Date "2018-10-12"
Rev "1"
Comp "Design by N2: http://ee.david.promo"
Comment1 "Schematic layout and PCB by Duckle"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6550 3125 6550 3250
$Comp
L power:GND #PWR04
U 1 1 5BC1CE6A
P 6550 3950
F 0 "#PWR04" H 6550 3700 50  0001 C CNN
F 1 "GND" H 6555 3777 50  0000 C CNN
F 2 "" H 6550 3950 50  0001 C CNN
F 3 "" H 6550 3950 50  0001 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3125 6550 3125
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5BC195AC
P 6800 3125
F 0 "J1" H 6879 3117 50  0000 L CNN
F 1 "Fan-out0" H 6879 3026 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 6800 3125 50  0001 C CNN
F 3 "~" H 6800 3125 50  0001 C CNN
	1    6800 3125
	1    0    0    1   
$EndComp
Text Label 3575 3575 2    50   ~ 0
~PWM0
Text GLabel 3075 3100 0    50   Input ~ 0
VCCFan
Wire Wire Line
	3125 3100 3075 3100
Wire Wire Line
	3125 3475 3125 3100
Wire Wire Line
	3075 3475 3125 3475
$Comp
L power:GND #PWR05
U 1 1 5BC157CF
P 3125 3925
F 0 "#PWR05" H 3125 3675 50  0001 C CNN
F 1 "GND" H 3130 3752 50  0000 C CNN
F 2 "" H 3125 3925 50  0001 C CNN
F 3 "" H 3125 3925 50  0001 C CNN
	1    3125 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 3775 3125 3925
Wire Wire Line
	3075 3775 3125 3775
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5BC13D90
P 2875 3675
F 0 "J2" H 2875 3375 50  0000 C CNN
F 1 "PWM and power" H 3250 3675 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2875 3675 50  0001 C CNN
F 3 "~" H 2875 3675 50  0001 C CNN
	1    2875 3675
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BC23191
P 4400 3350
F 0 "R2" V 4204 3350 50  0000 C CNN
F 1 "220k" V 4295 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5BC232A3
P 4650 3350
F 0 "L1" V 4835 3350 50  0000 C CNN
F 1 "470uH" V 4744 3350 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4650 3350 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4650 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3350 4550 3350
Wire Wire Line
	4750 3350 4800 3350
Wire Wire Line
	4800 3350 4800 3400
$Comp
L Device:C_Small C2
U 1 1 5BC23618
P 4800 3500
F 0 "C2" H 4709 3454 50  0000 R CNN
F 1 "330nF" H 4709 3545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 3500 50  0001 C CNN
F 3 "~" H 4800 3500 50  0001 C CNN
	1    4800 3500
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5BC24127
P 5750 3450
F 0 "U1" H 5750 3083 50  0000 C CNN
F 1 "LM358" H 5750 3174 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5750 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5750 3450 50  0001 C CNN
	1    5750 3450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5BC24300
P 5625 1850
F 0 "U1" H 5583 1896 50  0000 L CNN
F 1 "LM358" H 5583 1805 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5625 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5625 1850 50  0001 C CNN
	3    5625 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BC243C0
P 5525 2200
F 0 "#PWR01" H 5525 1950 50  0001 C CNN
F 1 "GND" H 5530 2027 50  0000 C CNN
F 2 "" H 5525 2200 50  0001 C CNN
F 3 "" H 5525 2200 50  0001 C CNN
	1    5525 2200
	1    0    0    -1  
$EndComp
Text GLabel 5525 1500 1    50   Input ~ 0
VCCFan
Wire Wire Line
	5525 2200 5525 2175
$Comp
L Device:C_Small C1
U 1 1 5BC24BAF
P 5400 1850
F 0 "C1" H 5309 1804 50  0000 R CNN
F 1 "100nF" H 5309 1895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5400 1850 50  0001 C CNN
F 3 "~" H 5400 1850 50  0001 C CNN
	1    5400 1850
	1    0    0    1   
$EndComp
Wire Wire Line
	5400 1525 5525 1525
Wire Wire Line
	5525 1525 5525 1500
Wire Wire Line
	5525 1525 5525 1550
Connection ~ 5525 1525
Wire Wire Line
	5400 1950 5400 2175
Wire Wire Line
	5400 2175 5525 2175
Connection ~ 5525 2175
Wire Wire Line
	5525 2175 5525 2150
Wire Wire Line
	5400 1525 5400 1750
$Comp
L Device:R_Small R3
U 1 1 5BC25E0B
P 6150 3450
F 0 "R3" V 5954 3450 50  0000 C CNN
F 1 "1k" V 6045 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6150 3450 50  0001 C CNN
F 3 "~" H 6150 3450 50  0001 C CNN
	1    6150 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3550 5450 3550
Text GLabel 6550 2925 1    50   Input ~ 0
VCCFan
Wire Wire Line
	5050 3350 5100 3350
$Comp
L power:GND #PWR02
U 1 1 5BC2A222
P 4800 3600
F 0 "#PWR02" H 4800 3350 50  0001 C CNN
F 1 "GND" H 4805 3427 50  0000 C CNN
F 2 "" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BC2A6DB
P 4025 3225
F 0 "R1" H 3966 3179 50  0000 R CNN
F 1 "10k" H 3966 3270 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4025 3225 50  0001 C CNN
F 3 "~" H 4025 3225 50  0001 C CNN
	1    4025 3225
	1    0    0    1   
$EndComp
Wire Wire Line
	3625 3475 3625 3575
Wire Wire Line
	3625 3575 3725 3575
Text GLabel 3625 3275 1    50   Input ~ 0
VCCFan
Connection ~ 3625 3575
$Comp
L Device:R_Small R4
U 1 1 5BC40A33
P 4950 3350
F 0 "R4" V 4754 3350 50  0000 C CNN
F 1 "270k" V 4845 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 3350 50  0001 C CNN
F 3 "~" H 4950 3350 50  0001 C CNN
	1    4950 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3350 4850 3350
Connection ~ 4800 3350
$Comp
L Device:R_Small R5
U 1 1 5BC41512
P 5100 3500
F 0 "R5" V 4904 3500 50  0000 C CNN
F 1 "47k" V 4995 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5100 3500 50  0001 C CNN
F 3 "~" H 5100 3500 50  0001 C CNN
	1    5100 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3400 5100 3350
Connection ~ 5100 3350
Wire Wire Line
	5100 3350 5450 3350
$Comp
L power:GND #PWR0101
U 1 1 5BC41AE9
P 5100 3600
F 0 "#PWR0101" H 5100 3350 50  0001 C CNN
F 1 "GND" H 5105 3427 50  0000 C CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "" H 5100 3600 50  0001 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5BC434D7
P 6450 3450
F 0 "Q1" H 6655 3496 50  0000 L CNN
F 1 "FQD11P06TM" H 6655 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 6650 3550 50  0001 C CNN
F 3 "~" H 6450 3450 50  0001 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2925 6550 3025
Wire Wire Line
	6550 3025 6600 3025
$Comp
L Device:R_Small R6
U 1 1 5BC480DF
P 6550 3850
F 0 "R6" V 6354 3850 50  0000 C CNN
F 1 "10R" V 6445 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 3850 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6550 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 3650 6550 3700
Wire Wire Line
	6550 3700 5400 3700
Wire Wire Line
	5400 3700 5400 3550
Connection ~ 6550 3700
Wire Wire Line
	6550 3700 6550 3750
Wire Wire Line
	6550 4800 6550 4925
$Comp
L power:GND #PWR0102
U 1 1 5BC4A964
P 6550 5625
F 0 "#PWR0102" H 6550 5375 50  0001 C CNN
F 1 "GND" H 6555 5452 50  0000 C CNN
F 2 "" H 6550 5625 50  0001 C CNN
F 3 "" H 6550 5625 50  0001 C CNN
	1    6550 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4800 6550 4800
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5BC4A96B
P 6800 4800
F 0 "J3" H 6879 4792 50  0000 L CNN
F 1 "Fan-out1" H 6879 4701 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 6800 4800 50  0001 C CNN
F 3 "~" H 6800 4800 50  0001 C CNN
	1    6800 4800
	1    0    0    1   
$EndComp
Text Label 3575 5250 2    50   ~ 0
~PWM1
$Comp
L Device:R_Small R8
U 1 1 5BC4A972
P 4400 5025
F 0 "R8" V 4204 5025 50  0000 C CNN
F 1 "220k" V 4295 5025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 5025 50  0001 C CNN
F 3 "~" H 4400 5025 50  0001 C CNN
	1    4400 5025
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5BC4A978
P 4650 5025
F 0 "L2" V 4835 5025 50  0000 C CNN
F 1 "470uH" V 4744 5025 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4650 5025 50  0001 C CNN
F 3 "~" H 4650 5025 50  0001 C CNN
	1    4650 5025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5025 4550 5025
Wire Wire Line
	4750 5025 4800 5025
Wire Wire Line
	4800 5025 4800 5075
$Comp
L Device:C_Small C3
U 1 1 5BC4A981
P 4800 5175
F 0 "C3" H 4709 5129 50  0000 R CNN
F 1 "330nF" H 4709 5220 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 5175 50  0001 C CNN
F 3 "~" H 4800 5175 50  0001 C CNN
	1    4800 5175
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5BC4A987
P 5750 5125
F 0 "U1" H 5750 4758 50  0000 C CNN
F 1 "LM358" H 5750 4849 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5750 5125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5750 5125 50  0001 C CNN
	2    5750 5125
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5BC4A98D
P 6150 5125
F 0 "R10" V 5954 5125 50  0000 C CNN
F 1 "1k" V 6045 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6150 5125 50  0001 C CNN
F 3 "~" H 6150 5125 50  0001 C CNN
	1    6150 5125
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 5225 5450 5225
Text GLabel 6550 4600 1    50   Input ~ 0
VCCFan
Wire Wire Line
	5050 5025 5100 5025
$Comp
L power:GND #PWR0103
U 1 1 5BC4A996
P 4800 5275
F 0 "#PWR0103" H 4800 5025 50  0001 C CNN
F 1 "GND" H 4805 5102 50  0000 C CNN
F 2 "" H 4800 5275 50  0001 C CNN
F 3 "" H 4800 5275 50  0001 C CNN
	1    4800 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5BC4A99C
P 4025 4900
F 0 "R7" H 3966 4854 50  0000 R CNN
F 1 "10k" H 3966 4945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4025 4900 50  0001 C CNN
F 3 "~" H 4025 4900 50  0001 C CNN
	1    4025 4900
	1    0    0    1   
$EndComp
Wire Wire Line
	3625 5150 3625 5250
Wire Wire Line
	3625 5250 3725 5250
Text GLabel 3625 4950 1    50   Input ~ 0
VCCFan
Wire Wire Line
	3575 5250 3625 5250
Connection ~ 3625 5250
Wire Wire Line
	3625 5350 3625 5250
$Comp
L Device:R_Small R9
U 1 1 5BC4A9A9
P 4950 5025
F 0 "R9" V 4754 5025 50  0000 C CNN
F 1 "270k" V 4845 5025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 5025 50  0001 C CNN
F 3 "~" H 4950 5025 50  0001 C CNN
	1    4950 5025
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5025 4850 5025
Connection ~ 4800 5025
$Comp
L Device:R_Small R11
U 1 1 5BC4A9B1
P 5100 5175
F 0 "R11" V 4904 5175 50  0000 C CNN
F 1 "47k" V 4995 5175 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5100 5175 50  0001 C CNN
F 3 "~" H 5100 5175 50  0001 C CNN
	1    5100 5175
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 5075 5100 5025
Connection ~ 5100 5025
Wire Wire Line
	5100 5025 5450 5025
$Comp
L power:GND #PWR0104
U 1 1 5BC4A9BA
P 5100 5275
F 0 "#PWR0104" H 5100 5025 50  0001 C CNN
F 1 "GND" H 5105 5102 50  0000 C CNN
F 2 "" H 5100 5275 50  0001 C CNN
F 3 "" H 5100 5275 50  0001 C CNN
	1    5100 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5BC4A9C0
P 6450 5125
F 0 "Q2" H 6655 5171 50  0000 L CNN
F 1 "FQD11P06TM" H 6655 5080 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 6650 5225 50  0001 C CNN
F 3 "~" H 6450 5125 50  0001 C CNN
	1    6450 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4600 6550 4700
Wire Wire Line
	6550 4700 6600 4700
$Comp
L Device:R_Small R12
U 1 1 5BC4A9C8
P 6550 5525
F 0 "R12" V 6354 5525 50  0000 C CNN
F 1 "10R" V 6445 5525 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 5525 50  0001 C CNN
F 3 "~" H 6550 5525 50  0001 C CNN
	1    6550 5525
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 5325 6550 5375
Wire Wire Line
	6550 5375 5400 5375
Wire Wire Line
	5400 5375 5400 5225
Connection ~ 6550 5375
Wire Wire Line
	6550 5375 6550 5425
Wire Wire Line
	3250 5350 3625 5350
Wire Wire Line
	3075 3575 3625 3575
Wire Wire Line
	3250 5350 3250 3675
Wire Wire Line
	3250 3675 3075 3675
$Comp
L Transistor_BJT:MUN5211DW1 Q3
U 1 1 5BC58726
P 3975 3575
F 0 "Q3" H 4116 3621 50  0000 L CNN
F 1 "MUN5211DW1" H 4050 3450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3980 3135 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/DTC114ED-D.PDF" H 3975 3575 50  0001 C CNN
	1    3975 3575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5BC58BCA
P 4025 3775
F 0 "#PWR0105" H 4025 3525 50  0001 C CNN
F 1 "GND" H 4030 3602 50  0000 C CNN
F 2 "" H 4025 3775 50  0001 C CNN
F 3 "" H 4025 3775 50  0001 C CNN
	1    4025 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5BC5C8A0
P 3625 3375
F 0 "R13" H 3566 3329 50  0000 R CNN
F 1 "10k" H 3566 3420 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3625 3375 50  0001 C CNN
F 3 "~" H 3625 3375 50  0001 C CNN
	1    3625 3375
	1    0    0    1   
$EndComp
Text GLabel 4025 3125 1    50   Input ~ 0
VCCFan
Wire Wire Line
	4025 3325 4025 3350
Wire Wire Line
	4025 3350 4300 3350
Connection ~ 4025 3350
Wire Wire Line
	4025 3350 4025 3375
$Comp
L Transistor_BJT:MUN5211DW1 Q3
U 2 1 5BC60353
P 3975 5250
F 0 "Q3" H 4116 5296 50  0000 L CNN
F 1 "MUN5211DW1" H 4050 5125 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3980 4810 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/DTC114ED-D.PDF" H 3975 5250 50  0001 C CNN
	2    3975 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BC60359
P 4025 5450
F 0 "#PWR0106" H 4025 5200 50  0001 C CNN
F 1 "GND" H 4030 5277 50  0000 C CNN
F 2 "" H 4025 5450 50  0001 C CNN
F 3 "" H 4025 5450 50  0001 C CNN
	1    4025 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5BC6035F
P 3625 5050
F 0 "R14" H 3566 5004 50  0000 R CNN
F 1 "10k" H 3566 5095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3625 5050 50  0001 C CNN
F 3 "~" H 3625 5050 50  0001 C CNN
	1    3625 5050
	1    0    0    1   
$EndComp
Text GLabel 4025 4800 1    50   Input ~ 0
VCCFan
Wire Wire Line
	4025 5000 4025 5025
Wire Wire Line
	4025 5025 4300 5025
Connection ~ 4025 5025
Wire Wire Line
	4025 5025 4025 5050
Text Label 4075 3350 0    50   ~ 0
PWM0
Text Label 4075 5025 0    50   ~ 0
PWM1
$EndSCHEMATC
