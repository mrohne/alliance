#cell1 grmrick_c CMOS schematic 28672 v7r5.6
# 5-Mar-93 17:39 5-Mar-93 17:39 dea9221 * .icn nChannelTransistor .sc
# nChannelTransistor .icn pChannelTransistor .sc pChannelTransistor .
V 4
 $H 2 10000 "Asheet" 1 ""; $B "Asheet" 1100 800; $D 2; D
"pChannelTransistor" "pChannelTransistor" 3 "gate" 0 0 1 "source" 30
20 2 "drain" 30 -20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
D "nChannelTransistor" "nChannelTransistor" 3 "gate" 0 0 1 "source" 30
-20 2 "drain" 30 20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
$N 17 "VSS" "VDD" "CK_10" "CK_11" "CK_13" "CK_15" "E8" "E9" "E10"
"E11" "E12" "E13" "E14" "E15" "BULK" "" ""; $C 14; C 4 1 1; C 5 1 2
; C 14 1 3; C 1 1 4; C 2 1 5; C 3 1 6; C 6 1 7; C 7 1 8; C 8 1 9
; C 9 1 10; C 10 1 11; C 11 1 12; C 12 1 13; C 13 1 14; $J 10; J
1 "u2" 3 1 1 3 2 1 2 3 1 4 2 1 0 "9" 2 0 "1"; J 1 "u3" 3 1 1 4 2 1 2
3 1 16 2 1 0 "18" 2 0 "1"; J 1 "u4" 3 1 1 16 2 1 2 3 1 5 2 1 0 "36" 2
0 "1"; J 1 "u5" 3 1 1 5 2 1 2 3 1 17 2 1 0 "26" 2 0 "1"; J 1 "u6" 3
1 1 17 2 1 2 3 1 6 2 1 0 "26" 2 0 "1"; J 2 "u7" 3 1 1 3 2 1 1 3 1 4 2
1 0 "5" 2 0 "1"; J 2 "u8" 3 1 1 4 2 1 1 3 1 16 2 1 0 "9" 2 0 "1"; J
2 "u9" 3 1 1 16 2 1 1 3 1 5 2 1 0 "18" 2 0 "1"; J 2 "u10" 3 1 1 5 2 1
1 3 1 17 2 1 0 "9" 2 0 "1"; J 2 "u11" 3 1 1 17 2 1 1 3 1 6 2 1 0 "9"
2 0 "1"; $I 10; I 1 "u2" "@" 140 680 0 22 2 1 0 "9" 2 0 "1"; I 1
"u3" "@" 280 680 0 22 2 1 0 "18" 2 0 "1"; I 1 "u4" "@" 430 680 0 22 2
1 0 "36" 2 0 "1"; I 1 "u5" "@" 600 680 0 22 2 1 0 "26" 2 0 "1"; I 1
"u6" "@" 780 680 0 22 2 1 0 "26" 2 0 "1"; I 2 "u7" "@" 140 530 0 22 2
1 0 "5" 2 0 "1"; I 2 "u8" "@" 280 530 0 22 2 1 0 "9" 2 0 "1"; I 2
"u9" "@" 430 530 0 22 2 1 0 "18" 2 0 "1"; I 2 "u10" "@" 600 530 0 22
2 1 0 "9" 2 0 "1"; I 2 "u11" "@" 780 530 0 22 2 1 0 "9" 2 0 "1"; $E
76; E 20400002 140 680 1 1 1; E 20400002 170 700 1 1 2; E 20400002
170 660 1 1 3; E 20400002 280 680 1 2 1; E 20400002 310 700 1 2 2;
E 20400002 310 660 1 2 3; E 20400002 430 680 1 3 1; E 20400002 460
700 1 3 2; E 20400002 460 660 1 3 3; E 20400002 600 680 1 4 1; E
20400002 630 700 1 4 2; E 20400002 630 660 1 4 3; E 20400002 780 680
1 5 1; E 20400002 810 700 1 5 2; E 20400002 810 660 1 5 3; E
20400002 140 530 1 6 1; E 20400002 170 510 1 6 2; E 20400002 170 550
1 6 3; E 20400002 280 530 1 7 1; E 20400002 310 510 1 7 2; E
20400002 310 550 1 7 3; E 20400002 430 530 1 8 1; E 20400002 460 510
1 8 2; E 20400002 460 550 1 8 3; E 20400002 600 530 1 9 1; E
20400002 630 510 1 9 2; E 20400002 630 550 1 9 3; E 20400002 780 530
1 10 1; E 20400002 810 510 1 10 2; E 20400002 810 550 1 10 3; E
20000002 810 420 0; E 20000002 630 420 0; E 20200002 460 340 + 460
345 "VSS" 1 LB H 0 + 460 325 "" 1 LB H 0 4 0; E 20000002 460 420 0;
E 20000002 310 420 0; E 20000002 170 420 0; E 20000002 550 530 0; E
20000002 550 680 0; E 20000002 720 530 0; E 20000002 720 680 0; E
20000002 370 530 0; E 20000002 370 680 0; E 20000002 220 680 0; E
20000002 220 530 0; E 20000002 100 680 0; E 20000002 100 530 0; E
20000002 170 740 0; E 20000002 310 740 0; E 20000002 460 740 0; E
20000002 630 740 0; E 20000002 810 740 0; E 20200002 460 780 + 460
785 "VDD" 1 LB H 0 + 460 765 "" 1 LB H 0 5 0; E 20000002 100 610 0;
E 20200002 50 610 + 50 615 "ck_10" 1 LB H 0 + 50 595 "" 1 LB H 0 14 0
; E 20000002 170 610 0; E 20000002 190 610 0; E 20200002 190 340 +
190 345 "ck_11" 1 LB H 0 + 190 325 "" 1 LB H 0 1 0; E 20000002 460
610 0; E 20000002 510 610 0; E 20200002 510 340 + 510 345 "ck_13" 1
LB H 0 + 510 325 "" 1 LB H 0 2 0; E 20000002 810 610 0; E 20200002
850 610 + 850 615 "ck_15" 1 LB H 0 + 850 595 "" 1 LB H 0 3 0; E
20200002 760 360 + 760 365 "e8" 1 LB H 0 + 760 345 "" 1 LB H 0 6 0; E
20200002 760 330 + 760 335 "e9" 1 LB H 0 + 760 315 "" 1 LB H 0 7 0; E
20200002 760 300 + 760 305 "e10" 1 LB H 0 + 760 285 "" 1 LB H 0 8 0;
E 20200002 760 270 + 760 275 "e11" 1 LB H 0 + 760 255 "" 1 LB H 0 9 0
; E 20200002 760 240 + 760 245 "e12" 1 LB H 0 + 760 225 "" 1 LB H 0 10
0; E 20200002 760 210 + 760 215 "e13" 1 LB H 0 + 760 195 "" 1 LB H 0
11 0; E 20200002 760 180 + 760 185 "e14" 1 LB H 0 + 760 165 "" 1 LB H
0 12 0; E 20200002 760 150 + 760 155 "e15" 1 LB H 0 + 760 135 "" 1 LB
H 0 13 0; E 20000002 220 610 0; E 20000002 310 610 0; E 20000002
370 610 0; E 20000002 550 610 0; E 20000002 630 610 0; E 20000002
720 610 0; $S 60; S 54 53 2; S 56 71 2; S 57 56 2; S 59 74 2; S
60 59 2; S 31 29 2; S 32 31 2; S 32 26 2; S 33 34 2; S 34 23 2;
S 34 32 2; S 35 20 2; S 35 34 2; S 36 35 2; S 36 17 2; S 37 25 2
; S 72 73 2; S 38 10 2; S 39 28 2; S 74 38 2; S 40 13 2; S 41 22
2; S 71 43 2; S 42 7 2; S 43 4 2; S 61 62 2; S 44 19 2; S 46 16
2; S 48 49 2; S 45 1 2; S 5 48 2; S 49 52 2; S 8 49 2; S 49 50 2
; S 11 50 2; S 14 51 2; S 50 51 2; S 2 47 2; S 47 48 2; S 46 53 2
; S 53 45 2; S 18 55 2; S 55 3 2; S 55 56 2; S 24 58 2; S 58 9 2
; S 58 59 2; S 30 61 2; S 61 15 2; S 44 71 2; S 21 72 2; S 72 6 2
; S 41 73 2; S 73 42 2; S 37 74 2; S 27 75 2; S 75 12 2; S 39 76
2; S 76 40 2; S 75 76 2; $T 1; T + 750 10 "cell : grmrick_c" 1 LB H
0; $Z;
