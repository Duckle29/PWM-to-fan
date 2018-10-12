EESchema Schematic File Version 4
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
	6575 3875 6575 4000
$Comp
L power:GND #PWR04
U 1 1 5BC1CE6A
P 6575 4000
F 0 "#PWR04" H 6575 3750 50  0001 C CNN
F 1 "GND" H 6580 3827 50  0000 C CNN
F 2 "" H 6575 4000 50  0001 C CNN
F 3 "" H 6575 4000 50  0001 C CNN
	1    6575 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 3875 6575 3875
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5BC195AC
P 6825 3875
F 0 "J1" H 6904 3867 50  0000 L CNN
F 1 "Fan-out" H 6904 3776 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6825 3875 50  0001 C CNN
F 3 "~" H 6825 3875 50  0001 C CNN
	1    6825 3875
	1    0    0    1   
$EndComp
Text Label 6375 3775 0    50   ~ 0
VFAN0
Text Label 4075 3350 2    50   ~ 0
~PWM0
Text GLabel 3650 2875 0    50   Input ~ 0
VCCFan
Wire Wire Line
	3700 2875 3650 2875
Wire Wire Line
	3700 3250 3700 2875
Wire Wire Line
	3650 3250 3700 3250
$Comp
L power:GND #PWR05
U 1 1 5BC157CF
P 3700 3700
F 0 "#PWR05" H 3700 3450 50  0001 C CNN
F 1 "GND" H 3705 3527 50  0000 C CNN
F 2 "" H 3700 3700 50  0001 C CNN
F 3 "" H 3700 3700 50  0001 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3550 3700 3700
Wire Wire Line
	3650 3550 3700 3550
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5BC13D90
P 3450 3450
F 0 "J2" H 3450 3150 50  0000 C CNN
F 1 "PWM and power" H 3825 3450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3450 3450 50  0001 C CNN
F 3 "~" H 3450 3450 50  0001 C CNN
	1    3450 3450
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
F 1 "1mH" V 4744 3350 50  0000 C CNN
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
P 5500 3450
F 0 "U1" H 5500 3083 50  0000 C CNN
F 1 "LM358" H 5500 3174 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5500 3450 50  0001 C CNN
	1    5500 3450
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
P 5725 3775
F 0 "R3" V 5529 3775 50  0000 C CNN
F 1 "10k" V 5620 3775 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5725 3775 50  0001 C CNN
F 3 "~" H 5725 3775 50  0001 C CNN
	1    5725 3775
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5BC25F16
P 6000 3450
F 0 "Q1" H 6206 3404 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 6206 3495 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6200 3550 50  0001 C CNN
F 3 "~" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 3775 5150 3550
Wire Wire Line
	5150 3550 5200 3550
Wire Wire Line
	5150 3775 5625 3775
Wire Wire Line
	5825 3775 6100 3775
Wire Wire Line
	6100 3775 6100 3650
$Comp
L Device:C_Small C3
U 1 1 5BC2946B
P 6100 3950
F 0 "C3" H 6009 3904 50  0000 R CNN
F 1 "10uF" H 6009 3995 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 6100 3950 50  0001 C CNN
F 3 "~" H 6100 3950 50  0001 C CNN
	1    6100 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 3850 6100 3775
Connection ~ 6100 3775
$Comp
L power:GND #PWR07
U 1 1 5BC2984F
P 6100 4050
F 0 "#PWR07" H 6100 3800 50  0001 C CNN
F 1 "GND" H 6105 3877 50  0000 C CNN
F 2 "" H 6100 4050 50  0001 C CNN
F 3 "" H 6100 4050 50  0001 C CNN
	1    6100 4050
	1    0    0    -1  
$EndComp
Text GLabel 6100 3250 1    50   Input ~ 0
VCCFan
Wire Wire Line
	4800 3350 5200 3350
Connection ~ 4800 3350
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
P 4200 3150
F 0 "R1" H 4141 3104 50  0000 R CNN
F 1 "10k" H 4141 3195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4200 3150 50  0001 C CNN
F 3 "~" H 4200 3150 50  0001 C CNN
	1    4200 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 3250 4200 3350
Wire Wire Line
	4200 3350 4300 3350
Text GLabel 4200 3050 1    50   Input ~ 0
VCCFan
Wire Wire Line
	6100 3775 6625 3775
Wire Wire Line
	6575 5450 6575 5575
$Comp
L power:GND #PWR08
U 1 1 5BC2F10D
P 6575 5575
F 0 "#PWR08" H 6575 5325 50  0001 C CNN
F 1 "GND" H 6580 5402 50  0000 C CNN
F 2 "" H 6575 5575 50  0001 C CNN
F 3 "" H 6575 5575 50  0001 C CNN
	1    6575 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 5450 6575 5450
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5BC2F114
P 6825 5450
F 0 "J4" H 6904 5442 50  0000 L CNN
F 1 "Fan-out" H 6904 5351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6825 5450 50  0001 C CNN
F 3 "~" H 6825 5450 50  0001 C CNN
	1    6825 5450
	1    0    0    1   
$EndComp
Text Label 6375 5350 0    50   ~ 0
VFAN1
Text Label 3850 4925 0    50   ~ 0
~PWM1
$Comp
L Device:R_Small R5
U 1 1 5BC2F12E
P 4400 4925
F 0 "R5" V 4204 4925 50  0000 C CNN
F 1 "220k" V 4295 4925 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4400 4925 50  0001 C CNN
F 3 "~" H 4400 4925 50  0001 C CNN
	1    4400 4925
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5BC2F134
P 4650 4925
F 0 "L2" V 4835 4925 50  0000 C CNN
F 1 "1mH" V 4744 4925 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4650 4925 50  0001 C CNN
F 3 "~" H 4650 4925 50  0001 C CNN
	1    4650 4925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 4925 4550 4925
Wire Wire Line
	4750 4925 4800 4925
Wire Wire Line
	4800 4925 4800 4975
$Comp
L Device:C_Small C4
U 1 1 5BC2F13D
P 4800 5075
F 0 "C4" H 4709 5029 50  0000 R CNN
F 1 "330nF" H 4709 5120 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4800 5075 50  0001 C CNN
F 3 "~" H 4800 5075 50  0001 C CNN
	1    4800 5075
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5BC2F143
P 5500 5025
F 0 "U1" H 5500 4658 50  0000 C CNN
F 1 "LM358" H 5500 4749 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5500 5025 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5500 5025 50  0001 C CNN
	2    5500 5025
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5BC2F149
P 5725 5350
F 0 "R6" V 5529 5350 50  0000 C CNN
F 1 "10k" V 5620 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5725 5350 50  0001 C CNN
F 3 "~" H 5725 5350 50  0001 C CNN
	1    5725 5350
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q2
U 1 1 5BC2F14F
P 6000 5025
F 0 "Q2" H 6206 4979 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 6206 5070 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6200 5125 50  0001 C CNN
F 3 "~" H 6000 5025 50  0001 C CNN
	1    6000 5025
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 5350 5150 5125
Wire Wire Line
	5150 5125 5200 5125
Wire Wire Line
	5150 5350 5625 5350
Wire Wire Line
	5825 5350 6100 5350
Wire Wire Line
	6100 5350 6100 5225
$Comp
L Device:C_Small C5
U 1 1 5BC2F15A
P 6100 5525
F 0 "C5" H 6009 5479 50  0000 R CNN
F 1 "10uF" H 6009 5570 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 6100 5525 50  0001 C CNN
F 3 "~" H 6100 5525 50  0001 C CNN
	1    6100 5525
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 5425 6100 5350
Connection ~ 6100 5350
$Comp
L power:GND #PWR09
U 1 1 5BC2F162
P 6100 5625
F 0 "#PWR09" H 6100 5375 50  0001 C CNN
F 1 "GND" H 6105 5452 50  0000 C CNN
F 2 "" H 6100 5625 50  0001 C CNN
F 3 "" H 6100 5625 50  0001 C CNN
	1    6100 5625
	1    0    0    -1  
$EndComp
Text GLabel 6100 4825 1    50   Input ~ 0
VCCFan
Wire Wire Line
	4800 4925 5200 4925
Connection ~ 4800 4925
$Comp
L power:GND #PWR06
U 1 1 5BC2F16B
P 4800 5175
F 0 "#PWR06" H 4800 4925 50  0001 C CNN
F 1 "GND" H 4805 5002 50  0000 C CNN
F 2 "" H 4800 5175 50  0001 C CNN
F 3 "" H 4800 5175 50  0001 C CNN
	1    4800 5175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5BC2F171
P 4200 4725
F 0 "R4" H 4141 4679 50  0000 R CNN
F 1 "10k" H 4141 4770 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4200 4725 50  0001 C CNN
F 3 "~" H 4200 4725 50  0001 C CNN
	1    4200 4725
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 4825 4200 4925
Wire Wire Line
	4200 4925 4300 4925
Text GLabel 4200 4625 1    50   Input ~ 0
VCCFan
Connection ~ 4200 4925
Wire Wire Line
	6100 5350 6625 5350
Wire Wire Line
	3825 4925 4200 4925
Wire Wire Line
	4075 3350 4200 3350
Connection ~ 4200 3350
Wire Wire Line
	3825 3350 3650 3350
Wire Wire Line
	3825 3350 3825 4925
Wire Wire Line
	3650 3450 4200 3450
Wire Wire Line
	4200 3450 4200 3350
$EndSCHEMATC
