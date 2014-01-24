EESchema Schematic File Version 2
LIBS:1N
LIBS:1N-SMD
LIBS:2N
LIBS:2N-SMD
LIBS:4000
LIBS:7400
LIBS:ad
LIBS:altera
LIBS:atmel
LIBS:capacitors
LIBS:conn
LIBS:diodesinc
LIBS:display
LIBS:electromech
LIBS:fairchild_ic
LIBS:fairchild_semi
LIBS:ftdi
LIBS:ic_template
LIBS:inductors
LIBS:infineon
LIBS:intersil
LIBS:irf
LIBS:lattice
LIBS:maxim
LIBS:mechanical
LIBS:microchip
LIBS:nxp_ic
LIBS:nxp_semi
LIBS:onsemi
LIBS:passive
LIBS:power
LIBS:resistors
LIBS:semi
LIBS:silabs
LIBS:st_ic
LIBS:st_semi
LIBS:supertex
LIBS:symbol
LIBS:texas
LIBS:vishay_semi
LIBS:psu-cache
EELAYER 24 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 2
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
L MMBT3906 Q1
U 1 1 52E2777C
P 4850 3100
F 0 "Q1" H 5050 3100 50  0000 C CNN
F 1 "MMBT3906" H 5150 3050 50  0001 C CNN
F 2 "" H 4850 3100 60  0000 C CNN
F 3 "" H 4850 3100 60  0000 C CNN
	1    4850 3100
	-1   0    0    -1  
$EndComp
$Comp
L MMBT3906 Q2
U 1 1 52E277B6
P 4150 3100
F 0 "Q2" H 4350 3100 50  0000 C CNN
F 1 "MMBT3906" H 4450 3050 50  0001 C CNN
F 2 "" H 4150 3100 60  0000 C CNN
F 3 "" H 4150 3100 60  0000 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L R-0805 R3
U 1 1 52E277C8
P 4500 2700
F 0 "R3" H 4650 2750 50  0000 C CNN
F 1 "22k" H 4650 2650 50  0000 C CNN
F 2 "" H 4500 2750 60  0000 C CNN
F 3 "" H 4500 2750 60  0000 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
$Comp
L R-0805 R37
U 1 1 52E277FD
P 5600 2650
F 0 "R37" H 5750 2700 50  0000 C CNN
F 1 "27k" H 5750 2600 50  0000 C CNN
F 2 "" H 5600 2700 60  0000 C CNN
F 3 "" H 5600 2700 60  0000 C CNN
	1    5600 2650
	-1   0    0    -1  
$EndComp
$Comp
L R-0805 R38
U 1 1 52E27814
P 5600 3750
F 0 "R38" H 5750 3800 50  0000 C CNN
F 1 "100k" H 5750 3700 50  0000 C CNN
F 2 "" H 5600 3800 60  0000 C CNN
F 3 "" H 5600 3800 60  0000 C CNN
	1    5600 3750
	-1   0    0    -1  
$EndComp
$Comp
L C-0805 C11
U 1 1 52E27850
P 5800 3750
F 0 "C11" H 5600 3800 50  0000 C CNN
F 1 "3n3" H 5600 3700 50  0000 C CNN
F 2 "" H 5790 3725 60  0000 C CNN
F 3 "" H 5790 3725 60  0000 C CNN
	1    5800 3750
	-1   0    0    -1  
$EndComp
$Comp
L R-0805 R2
U 1 1 52E2788A
P 4500 3850
F 0 "R2" V 4700 3850 50  0000 C CNN
F 1 "4k7" V 4600 3850 50  0000 C CNN
F 2 "" H 4500 3900 60  0000 C CNN
F 3 "" H 4500 3900 60  0000 C CNN
	1    4500 3850
	0    1    -1   0   
$EndComp
$Comp
L PZT2222A Q18
U 1 1 52E278A3
P 4800 4350
F 0 "Q18" V 5000 4350 50  0000 C CNN
F 1 "PZT2222A" V 5100 4350 50  0000 C CNN
F 2 "" H 4800 4350 60  0000 C CNN
F 3 "" H 4800 4350 60  0000 C CNN
	1    4800 4350
	0    1    1    0   
$EndComp
$Comp
L R-0805 R39
U 1 1 52E278BF
P 4400 4400
F 0 "R39" V 4250 4400 50  0000 C CNN
F 1 "10" V 4150 4400 50  0000 C CNN
F 2 "" H 4400 4450 60  0000 C CNN
F 3 "" H 4400 4450 60  0000 C CNN
	1    4400 4400
	0    1    -1   0   
$EndComp
$Comp
L MMBT3904 Q3
U 1 1 52E278D6
P 4600 4150
F 0 "Q3" V 4750 4150 50  0000 C CNN
F 1 "MMBT3904" H 4900 4100 50  0001 C CNN
F 2 "" H 4600 4150 60  0000 C CNN
F 3 "" H 4600 4150 60  0000 C CNN
	1    4600 4150
	0    1    -1   0   
$EndComp
$Comp
L R-0805 R40
U 1 1 52E27917
P 5100 4600
F 0 "R40" H 5250 4650 50  0000 C CNN
F 1 "10k" H 5250 4550 50  0000 C CNN
F 2 "" H 5100 4650 60  0000 C CNN
F 3 "" H 5100 4650 60  0000 C CNN
	1    5100 4600
	1    0    0    -1  
$EndComp
$Comp
L MMBD4148 D8
U 1 1 52E2792E
P 7800 2500
F 0 "D8" H 8000 2500 50  0000 C CNN
F 1 "MMBD4148" H 8100 2450 50  0001 C CNN
F 2 "" H 7800 2500 60  0000 C CNN
F 3 "" H 7800 2500 60  0000 C CNN
	1    7800 2500
	-1   0    0    -1  
$EndComp
$Comp
L BZX84C DZ1
U 1 1 52E27965
P 7800 2800
F 0 "DZ1" H 8100 2850 50  0000 C CNN
F 1 "BZX84B6V2" H 8100 2750 40  0000 C CNN
F 2 "" H 7800 2800 60  0000 C CNN
F 3 "" H 7800 2800 60  0000 C CNN
	1    7800 2800
	-1   0    0    -1  
$EndComp
$Comp
L R-0805 R1
U 1 1 52E279B8
P 6900 3100
F 0 "R1" V 7100 3100 50  0000 C CNN
F 1 "22k" V 7000 3100 50  0000 C CNN
F 2 "" H 6900 3150 60  0000 C CNN
F 3 "" H 6900 3150 60  0000 C CNN
	1    6900 3100
	0    1    -1   0   
$EndComp
$Comp
L C-ALUM-530 C3
U 1 1 52E27C43
P 6600 2650
F 0 "C3" H 6800 2700 50  0000 C CNN
F 1 "10u" H 6800 2600 50  0000 C CNN
F 2 "" H 6590 2625 60  0000 C CNN
F 3 "" H 6590 2625 60  0000 C CNN
	1    6600 2650
	-1   0    0    -1  
$EndComp
$Comp
L R-0805 R4
U 1 1 52E27CA4
P 7850 3750
F 0 "R4" H 8000 3700 50  0000 C CNN
F 1 "10k" H 8000 3800 50  0000 C CNN
F 2 "" H 7850 3800 60  0000 C CNN
F 3 "" H 7850 3800 60  0000 C CNN
	1    7850 3750
	1    0    0    1   
$EndComp
$Comp
L R-0805 R5
U 1 1 52E27CC4
P 7750 3750
F 0 "R5" H 7600 3700 50  0000 C CNN
F 1 "10k" H 7600 3800 50  0000 C CNN
F 2 "" H 7750 3800 60  0000 C CNN
F 3 "" H 7750 3800 60  0000 C CNN
	1    7750 3750
	1    0    0    1   
$EndComp
$Comp
L C-ALUM-660 C4
U 1 1 52E28007
P 7200 2650
F 0 "C4" H 7500 2700 50  0000 C CNN
F 1 "47u 10V" H 7500 2600 50  0000 C CNN
F 2 "" H 7190 2625 60  0000 C CNN
F 3 "" H 7190 2625 60  0000 C CNN
F 4 "AVE476M16D16T-F" H 7200 2650 60  0001 C CNN "PartNo"
F 5 "CDE" H 7200 2650 60  0001 C CNN "Manufacturer"
F 6 "598-AVE476M16D16T-F" H 7200 2650 60  0001 C CNN "MouserPN"
	1    7200 2650
	-1   0    0    -1  
$EndComp
Text HLabel 3000 4800 0    50   Input ~ 0
V-
Text HLabel 3000 2200 0    50   Input ~ 0
V+
Text HLabel 8200 4400 2    50   Output ~ 0
VEE
Text HLabel 8200 3000 2    50   Output ~ 0
REF-
Connection ~ 7800 3000
Wire Wire Line
	8200 3000 7800 3000
Connection ~ 7800 4400
Connection ~ 4500 2200
Connection ~ 4200 4800
Connection ~ 4200 4400
Wire Wire Line
	5100 4800 5100 4700
Wire Wire Line
	3000 4800 5100 4800
Connection ~ 5600 2200
Wire Wire Line
	4500 2600 4500 2200
Connection ~ 4500 2900
Wire Wire Line
	4500 2900 4500 2800
Wire Wire Line
	4800 2900 4800 3000
Wire Wire Line
	4200 2900 4800 2900
Wire Wire Line
	4200 3000 4200 2900
Connection ~ 5100 4400
Wire Wire Line
	5100 4400 5100 4500
Connection ~ 5600 3950
Connection ~ 5600 4400
Connection ~ 4200 3850
Wire Wire Line
	4400 3850 4200 3850
Connection ~ 4800 3850
Wire Wire Line
	4600 3850 4800 3850
Connection ~ 4200 4100
Wire Wire Line
	4200 4400 4300 4400
Wire Wire Line
	4200 3200 4200 4800
Wire Wire Line
	4200 4100 4500 4100
Connection ~ 4600 4400
Wire Wire Line
	4600 4400 4600 4300
Wire Wire Line
	4500 4400 4700 4400
Connection ~ 4800 4100
Wire Wire Line
	4800 4100 4700 4100
Wire Wire Line
	4800 3200 4800 4200
Connection ~ 5000 4400
Wire Wire Line
	5000 4450 5000 4400
Wire Wire Line
	4900 4450 5000 4450
Wire Wire Line
	4900 4400 8200 4400
Wire Wire Line
	7800 4400 7800 3900
Wire Wire Line
	5600 3850 5600 4400
Wire Wire Line
	5800 3950 5600 3950
Wire Wire Line
	5800 3850 5800 3950
Connection ~ 5600 3550
Wire Wire Line
	5600 3550 5800 3550
Wire Wire Line
	5800 3550 5800 3650
Connection ~ 5600 3400
Wire Wire Line
	5600 2200 5600 2550
Wire Wire Line
	5600 2750 5600 3650
Wire Wire Line
	3900 3400 5600 3400
Wire Wire Line
	3900 3100 3900 3400
Wire Wire Line
	4000 3100 3900 3100
Wire Wire Line
	7800 2600 7800 2700
Connection ~ 7200 2200
Wire Wire Line
	7200 2200 7200 2550
Connection ~ 6600 2200
Wire Wire Line
	6600 2200 6600 2550
Wire Wire Line
	3000 2200 7800 2200
Wire Wire Line
	7800 2200 7800 2400
Connection ~ 7200 3100
Wire Wire Line
	7200 2750 7200 3100
Connection ~ 7800 3600
Connection ~ 7800 3900
Connection ~ 7800 3100
Wire Wire Line
	7750 3600 7750 3650
Wire Wire Line
	7750 3600 7850 3600
Wire Wire Line
	7850 3600 7850 3650
Wire Wire Line
	7750 3900 7750 3850
Wire Wire Line
	7750 3900 7850 3900
Wire Wire Line
	7850 3900 7850 3850
Connection ~ 6600 3100
Wire Wire Line
	6600 3100 6600 2750
Wire Wire Line
	5000 3100 6800 3100
Wire Wire Line
	7800 3100 7000 3100
Wire Wire Line
	7800 2900 7800 3600
$Comp
L NET-TIE W1
U 1 1 52E2A7E6
P 8000 2300
F 0 "W1" H 8000 2550 50  0000 C CNN
F 1 "NET-TIE" H 8000 2450 50  0000 C CNN
F 2 "" H 8000 2300 60  0000 C CNN
F 3 "" H 8000 2300 60  0000 C CNN
	1    8000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2300 7800 2300
Connection ~ 7800 2300
Text HLabel 8200 2300 2    50   Output ~ 0
REF+
Wire Wire Line
	8200 2300 8100 2300
$EndSCHEMATC