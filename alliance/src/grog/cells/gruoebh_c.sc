#cell1 gruoebh_c CMOS schematic 18432 v7r5.6
# 25-Mar-93 13:47 25-Mar-93 13:47 dea9221 * .icn nChannelTransistor .sc
# nChannelTransistor .icn pChannelTransistor .sc pChannelTransistor .
V 4
 $H 2 10000 "Asheet" 1 ""; $B "Asheet" 1100 800; $D 2; D
"pChannelTransistor" "pChannelTransistor" 3 "gate" 0 0 1 "source" 30
20 2 "drain" 30 -20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
D "nChannelTransistor" "nChannelTransistor" 3 "gate" 0 0 1 "source" 30
-20 2 "drain" 30 20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
$N 7 "I" "VDD" "HZB" "HZ" "VSS" "BULK" ""; $C 5; C 1 1 1; C 2 1 2;
C 3 1 3; C 4 1 4; C 5 1 5; $J 6; J 1 "u2" 3 1 1 1 2 1 2 3 1 3 2 1
0 "40" 2 0 "1"; J 1 "u3" 3 1 1 7 2 1 4 3 1 2 2 1 0 "40" 2 0 "1"; J 2
"u4" 3 1 1 1 2 1 5 3 1 3 2 1 0 "21" 2 0 "1"; J 2 "u5" 3 1 1 1 2 1 7 3
1 5 2 1 0 "4" 2 0 "1"; J 2 "u7" 3 1 1 7 2 1 4 3 1 5 2 1 0 "21" 2 0
"1"; J 1 "u8" 3 1 1 1 2 1 7 3 1 2 2 1 0 "10" 2 0 "1"; $I 6; I 1
"u2" "@" 360 670 0 22 2 1 0 "40" 2 0 "1"; I 1 "u3" "@" 770 470 0 22 2
1 0 "40" 2 0 "1"; I 2 "u4" "@" 360 500 0 22 2 1 0 "21" 2 0 "1"; I 2
"u5" "@" 560 600 0 22 2 1 0 "4" 2 0 "1"; I 2 "u7" "@" 680 420 0 22 2
1 0 "21" 2 0 "1"; I 1 "u8" "@" 490 390 0 22 2 1 0 "10" 2 0 "1"; $E
37; E 20400002 360 670 1 1 1; E 20400002 390 690 1 1 2; E 20400002
390 650 1 1 3; E 20400002 770 470 1 2 1; E 20400002 800 490 1 2 2;
E 20400002 800 450 1 2 3; E 20400002 360 500 1 3 1; E 20400002 390
480 1 3 2; E 20400002 390 520 1 3 3; E 20400002 560 600 1 4 1; E
20400002 590 580 1 4 2; E 20400002 590 620 1 4 3; E 20400002 490 390
1 6 1; E 20400002 520 370 1 6 3; E 20400002 520 410 1 6 2; E
20000002 300 670 0; E 20000002 300 500 0; E 20200002 300 600 + 300
605 "i" 1 LB H 0 + 300 585 "" 1 LB H 0 1 0; E 20000002 490 600 0; E
20000002 520 470 0; E 20400002 680 420 1 5 1; E 20400002 710 400 1 5
2; E 20400002 710 440 1 5 3; E 20000002 680 470 0; E 20000002 590
470 0; E 20000002 710 480 0; E 20000002 630 620 0; E 20000002 630
480 0; E 20000002 810 450 0; E 20000002 810 690 0; E 20200002 910
490 + 910 495 "hz" 1 LB H 0 + 910 475 "" 1 LB H 0 4 0; E 20000002 880
400 0; E 20000002 880 490 0; E 20000002 440 370 0; E 20200002 440
690 + 440 695 "VDD" 1 LB H 0 + 440 675 "" 1 LB H 0 2 0; E 20200002
390 570 + 390 575 "hzb" 1 LB H 0 + 390 555 "" 1 LB H 0 3 0; E
20200002 420 480 + 420 485 "VSS" 1 LB H 0 + 420 465 "" 1 LB H 0 5 0;
$S 31; S 16 1 2; S 34 35 2; S 17 7 2; S 17 18 2; S 18 16 2; S 18
19 2; S 19 10 2; S 13 19 2; S 15 20 2; S 21 24 2; S 24 4 2; S 20
25 2; S 25 24 2; S 25 11 2; S 12 27 2; S 23 26 2; S 36 3 2; S 28
26 2; S 28 27 2; S 34 14 2; S 6 29 2; S 29 30 2; S 22 32 2; S 5
33 2; S 33 31 2; S 32 33 2; S 2 35 2; S 35 30 2; S 9 36 2; S 8
37 2; S 37 28 2; $Z;