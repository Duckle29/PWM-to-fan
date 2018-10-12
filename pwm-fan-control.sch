EESchema Schematic File Version 4
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
Wire Wire Line
	8900 3525 8900 3650
$Comp
L power:GND #PWR04
U 1 1 5BC1CE6A
P 8900 3650
F 0 "#PWR04" H 8900 3400 50  0001 C CNN
F 1 "GND" H 8905 3477 50  0000 C CNN
F 2 "" H 8900 3650 50  0001 C CNN
F 3 "" H 8900 3650 50  0001 C CNN
	1    8900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3525 8900 3525
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5BC195AC
P 9150 3425
F 0 "J1" H 9229 3417 50  0000 L CNN
F 1 "Fan-out" H 9229 3326 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9150 3425 50  0001 C CNN
F 3 "~" H 9150 3425 50  0001 C CNN
	1    9150 3425
	1    0    0    -1  
$EndComp
Text Label 8700 3425 0    50   ~ 0
VFAN0
Text Label 6400 3000 2    50   ~ 0
~PWM0
Text GLabel 5975 2525 0    50   Input ~ 0
VCCFan
Wire Wire Line
	6025 2525 5975 2525
Wire Wire Line
	6025 2900 6025 2525
Wire Wire Line
	5975 2900 6025 2900
$Comp
L power:GND #PWR05
U 1 1 5BC157CF
P 6025 3350
F 0 "#PWR05" H 6025 3100 50  0001 C CNN
F 1 "GND" H 6030 3177 50  0000 C CNN
F 2 "" H 6025 3350 50  0001 C CNN
F 3 "" H 6025 3350 50  0001 C CNN
	1    6025 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 3200 6025 3350
Wire Wire Line
	5975 3200 6025 3200
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5BC13D90
P 5775 3100
F 0 "J2" H 5775 2800 50  0000 C CNN
F 1 "PWM and power" H 6150 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5775 3100 50  0001 C CNN
F 3 "~" H 5775 3100 50  0001 C CNN
	1    5775 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BC23191
P 6725 3000
F 0 "R2" V 6529 3000 50  0000 C CNN
F 1 "220k" V 6620 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6725 3000 50  0001 C CNN
F 3 "~" H 6725 3000 50  0001 C CNN
	1    6725 3000
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5BC232A3
P 6975 3000
F 0 "L1" V 7160 3000 50  0000 C CNN
F 1 "1mH" V 7069 3000 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6975 3000 50  0001 C CNN
F 3 "~" H 6975 3000 50  0001 C CNN
	1    6975 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6825 3000 6875 3000
Wire Wire Line
	7075 3000 7125 3000
Wire Wire Line
	7125 3000 7125 3050
$Comp
L Device:C_Small C2
U 1 1 5BC23618
P 7125 3150
F 0 "C2" H 7034 3104 50  0000 R CNN
F 1 "330nF" H 7034 3195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7125 3150 50  0001 C CNN
F 3 "~" H 7125 3150 50  0001 C CNN
	1    7125 3150
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5BC24127
P 7825 3100
F 0 "U1" H 7825 2733 50  0000 C CNN
F 1 "LM358" H 7825 2824 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7825 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 7825 3100 50  0001 C CNN
	1    7825 3100
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5BC24300
P 7950 1500
F 0 "U1" H 7908 1546 50  0000 L CNN
F 1 "LM358" H 7908 1455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7950 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 7950 1500 50  0001 C CNN
	3    7950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BC243C0
P 7850 1850
F 0 "#PWR01" H 7850 1600 50  0001 C CNN
F 1 "GND" H 7855 1677 50  0000 C CNN
F 2 "" H 7850 1850 50  0001 C CNN
F 3 "" H 7850 1850 50  0001 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
Text GLabel 7850 1150 1    50   Input ~ 0
VCCFan
Wire Wire Line
	7850 1850 7850 1825
$Comp
L Device:C_Small C1
U 1 1 5BC24BAF
P 7725 1500
F 0 "C1" H 7634 1454 50  0000 R CNN
F 1 "100nF" H 7634 1545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7725 1500 50  0001 C CNN
F 3 "~" H 7725 1500 50  0001 C CNN
	1    7725 1500
	1    0    0    1   
$EndComp
Wire Wire Line
	7725 1175 7850 1175
Wire Wire Line
	7850 1175 7850 1150
Wire Wire Line
	7850 1175 7850 1200
Connection ~ 7850 1175
Wire Wire Line
	7725 1600 7725 1825
Wire Wire Line
	7725 1825 7850 1825
Connection ~ 7850 1825
Wire Wire Line
	7850 1825 7850 1800
Wire Wire Line
	7725 1175 7725 1400
$Comp
L Device:R_Small R3
U 1 1 5BC25E0B
P 8050 3425
F 0 "R3" V 7854 3425 50  0000 C CNN
F 1 "10k" V 7945 3425 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 3425 50  0001 C CNN
F 3 "~" H 8050 3425 50  0001 C CNN
	1    8050 3425
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5BC25F16
P 8325 3100
F 0 "Q1" H 8531 3054 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 8531 3145 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8525 3200 50  0001 C CNN
F 3 "~" H 8325 3100 50  0001 C CNN
	1    8325 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	7475 3425 7475 3200
Wire Wire Line
	7475 3200 7525 3200
Wire Wire Line
	7475 3425 7950 3425
Wire Wire Line
	8150 3425 8425 3425
Wire Wire Line
	8425 3425 8425 3300
$Comp
L Device:C_Small C3
U 1 1 5BC2946B
P 8425 3600
F 0 "C3" H 8334 3554 50  0000 R CNN
F 1 "10uF" H 8334 3645 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 8425 3600 50  0001 C CNN
F 3 "~" H 8425 3600 50  0001 C CNN
	1    8425 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	8425 3500 8425 3425
Connection ~ 8425 3425
$Comp
L power:GND #PWR07
U 1 1 5BC2984F
P 8425 3700
F 0 "#PWR07" H 8425 3450 50  0001 C CNN
F 1 "GND" H 8430 3527 50  0000 C CNN
F 2 "" H 8425 3700 50  0001 C CNN
F 3 "" H 8425 3700 50  0001 C CNN
	1    8425 3700
	1    0    0    -1  
$EndComp
Text GLabel 8425 2900 1    50   Input ~ 0
VCCFan
Wire Wire Line
	7125 3000 7525 3000
Connection ~ 7125 3000
$Comp
L power:GND #PWR02
U 1 1 5BC2A222
P 7125 3250
F 0 "#PWR02" H 7125 3000 50  0001 C CNN
F 1 "GND" H 7130 3077 50  0000 C CNN
F 2 "" H 7125 3250 50  0001 C CNN
F 3 "" H 7125 3250 50  0001 C CNN
	1    7125 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BC2A6DB
P 6525 2800
F 0 "R1" H 6466 2754 50  0000 R CNN
F 1 "10k" H 6466 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6525 2800 50  0001 C CNN
F 3 "~" H 6525 2800 50  0001 C CNN
	1    6525 2800
	1    0    0    1   
$EndComp
Wire Wire Line
	6525 2900 6525 3000
Wire Wire Line
	6525 3000 6625 3000
Text GLabel 6525 2700 1    50   Input ~ 0
VCCFan
Wire Wire Line
	8425 3425 8950 3425
Wire Wire Line
	8900 5100 8900 5225
$Comp
L power:GND #PWR08
U 1 1 5BC2F10D
P 8900 5225
F 0 "#PWR08" H 8900 4975 50  0001 C CNN
F 1 "GND" H 8905 5052 50  0000 C CNN
F 2 "" H 8900 5225 50  0001 C CNN
F 3 "" H 8900 5225 50  0001 C CNN
	1    8900 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5100 8900 5100
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5BC2F114
P 9150 5000
F 0 "J4" H 9229 4992 50  0000 L CNN
F 1 "Fan-out" H 9229 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9150 5000 50  0001 C CNN
F 3 "~" H 9150 5000 50  0001 C CNN
	1    9150 5000
	1    0    0    -1  
$EndComp
Text Label 8700 5000 0    50   ~ 0
VFAN1
Text Label 6175 4575 0    50   ~ 0
~PWM1
$Comp
L Device:R_Small R5
U 1 1 5BC2F12E
P 6725 4575
F 0 "R5" V 6529 4575 50  0000 C CNN
F 1 "220k" V 6620 4575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6725 4575 50  0001 C CNN
F 3 "~" H 6725 4575 50  0001 C CNN
	1    6725 4575
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5BC2F134
P 6975 4575
F 0 "L2" V 7160 4575 50  0000 C CNN
F 1 "1mH" V 7069 4575 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6975 4575 50  0001 C CNN
F 3 "~" H 6975 4575 50  0001 C CNN
	1    6975 4575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6825 4575 6875 4575
Wire Wire Line
	7075 4575 7125 4575
Wire Wire Line
	7125 4575 7125 4625
$Comp
L Device:C_Small C4
U 1 1 5BC2F13D
P 7125 4725
F 0 "C4" H 7034 4679 50  0000 R CNN
F 1 "330nF" H 7034 4770 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7125 4725 50  0001 C CNN
F 3 "~" H 7125 4725 50  0001 C CNN
	1    7125 4725
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5BC2F143
P 7825 4675
F 0 "U1" H 7825 4308 50  0000 C CNN
F 1 "LM358" H 7825 4399 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7825 4675 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 7825 4675 50  0001 C CNN
	2    7825 4675
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5BC2F149
P 8050 5000
F 0 "R6" V 7854 5000 50  0000 C CNN
F 1 "10k" V 7945 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8050 5000 50  0001 C CNN
F 3 "~" H 8050 5000 50  0001 C CNN
	1    8050 5000
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q2
U 1 1 5BC2F14F
P 8325 4675
F 0 "Q2" H 8531 4629 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 8531 4720 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8525 4775 50  0001 C CNN
F 3 "~" H 8325 4675 50  0001 C CNN
	1    8325 4675
	1    0    0    1   
$EndComp
Wire Wire Line
	7475 5000 7475 4775
Wire Wire Line
	7475 4775 7525 4775
Wire Wire Line
	7475 5000 7950 5000
Wire Wire Line
	8150 5000 8425 5000
Wire Wire Line
	8425 5000 8425 4875
$Comp
L Device:C_Small C5
U 1 1 5BC2F15A
P 8425 5175
F 0 "C5" H 8334 5129 50  0000 R CNN
F 1 "10uF" H 8334 5220 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 8425 5175 50  0001 C CNN
F 3 "~" H 8425 5175 50  0001 C CNN
	1    8425 5175
	1    0    0    1   
$EndComp
Wire Wire Line
	8425 5075 8425 5000
Connection ~ 8425 5000
$Comp
L power:GND #PWR09
U 1 1 5BC2F162
P 8425 5275
F 0 "#PWR09" H 8425 5025 50  0001 C CNN
F 1 "GND" H 8430 5102 50  0000 C CNN
F 2 "" H 8425 5275 50  0001 C CNN
F 3 "" H 8425 5275 50  0001 C CNN
	1    8425 5275
	1    0    0    -1  
$EndComp
Text GLabel 8425 4475 1    50   Input ~ 0
VCCFan
Wire Wire Line
	7125 4575 7525 4575
Connection ~ 7125 4575
$Comp
L power:GND #PWR06
U 1 1 5BC2F16B
P 7125 4825
F 0 "#PWR06" H 7125 4575 50  0001 C CNN
F 1 "GND" H 7130 4652 50  0000 C CNN
F 2 "" H 7125 4825 50  0001 C CNN
F 3 "" H 7125 4825 50  0001 C CNN
	1    7125 4825
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5BC2F171
P 6525 4375
F 0 "R4" H 6466 4329 50  0000 R CNN
F 1 "10k" H 6466 4420 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6525 4375 50  0001 C CNN
F 3 "~" H 6525 4375 50  0001 C CNN
	1    6525 4375
	1    0    0    1   
$EndComp
Wire Wire Line
	6525 4475 6525 4575
Wire Wire Line
	6525 4575 6625 4575
Text GLabel 6525 4275 1    50   Input ~ 0
VCCFan
Connection ~ 6525 4575
Wire Wire Line
	8425 5000 8950 5000
Wire Wire Line
	6150 4575 6525 4575
Wire Wire Line
	6400 3000 6525 3000
Connection ~ 6525 3000
Wire Wire Line
	6150 3000 5975 3000
Wire Wire Line
	6150 3000 6150 4575
Wire Wire Line
	5975 3100 6525 3100
Wire Wire Line
	6525 3100 6525 3000
$EndSCHEMATC
