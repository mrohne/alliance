#cell1 bsdandhi8_c CMOS schematic 24576 v7r5.6
# 31-Dec-92 17:29 31-Dec-92 17:29 bsg * .icn pChannelTransistor .sc
# pChannelTransistor .icn nChannelTransistor .sc nChannelTransistor .
V 4
 $H 2 10000 "Asheet" 1 ""; $B "Asheet" 1100 800; $D 2; D
"nChannelTransistor" "nChannelTransistor" 3 "gate" 0 0 1 "source" 30
-20 2 "drain" 30 20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
D "pChannelTransistor" "pChannelTransistor" 3 "gate" 0 0 1 "source" 30
20 2 "drain" 30 -20 3 3 "chwidth" 1 "chlength" 2 "gateCapacitance" 3;
$P 4; P 1 "nw" "" "15"; P 2 "pw" "" "15"; P 3 "nnw" "" "10"; P 4
"ppw" "" "20"; $N 28 "VSS" "DAT_2" "A0" "NA2" "A2" "NA1" "A1" "NA0"
"DAT_2" "VSS" "VDD" "OUT_1" "VDD" "VSS1" "A0" "NA2" "A2" "NA1" "A1"
"NA0" "VSS1" "BULK" "" "V_0_1" "V_1_1" "V_2_1" "" ""; $C 21; C 16 1
1; C 17 1 2; C 2 1 3; C 21 1 4; C 20 1 5; C 19 1 6; C 18 1 7; C
4 1 8; C 27 1 2; C 26 1 1; C 15 1 11; C 31 1 12; C 28 1 11; C 13
1 14; C 1 1 3; C 8 1 4; C 7 1 5; C 6 1 6; C 5 1 7; C 3 1 8; C
30 1 14; $J 8; J 1 "u19" 3 1 1 26 3 1 14 2 1 28 2 1 1 "nw" 2 0 "1";
J 1 "u18" 3 1 1 25 2 1 27 3 1 28 2 1 1 "nw" 2 0 "1"; J 1 "u23" 3 2 1
12 3 1 14 1 1 23 2 1 1 "nnw" 2 0 "1"; J 2 "u22" 3 1 1 23 2 1 12 3 1
11 2 1 1 "ppw" 2 0 "1"; J 1 "u17" 3 2 1 23 3 1 27 1 1 24 2 1 1 "nw" 2
0 "1"; J 2 "u14" 3 1 1 24 2 1 23 3 1 11 2 1 1 "pw" 2 0 "1"; J 2
"u16" 3 1 1 26 2 1 23 3 1 11 2 1 1 "pw" 2 0 "1"; J 2 "u15" 3 1 1 25 2
1 23 3 1 11 2 1 1 "pw" 2 0 "1"; $I 8; I 1 "u19" "@" 320 590 0 22 2 1
1 "nw" 2 0 "1"; I 1 "u18" "@" 320 550 0 22 2 1 1 "nw" 2 0 "1"; I 1
"u23" "@" 370 520 0 22 2 1 1 "nnw" 2 0 "1"; I 2 "u22" "@" 370 440 0
22 2 1 1 "ppw" 2 0 "1"; I 1 "u17" "@" 320 510 0 22 2 1 1 "nw" 2 0 "1"
; I 2 "u14" "@" 280 440 0 22 2 1 1 "pw" 2 0 "1"; I 2 "u16" "@" 120
440 0 22 2 1 1 "pw" 2 0 "1"; I 2 "u15" "@" 200 440 0 22 2 1 1 "pw" 2
0 "1"; $E 61; E 20200002 70 80 + 70 85 "vss" 1 LB H 0 + 70 65 "" 1
LB H 0 16 0; E 20200002 70 100 + 70 105 "dat_2" 1 LB H 0 + 70 85 "" 1
LB H 0 17 0; E 20200002 90 70 + 90 75 "a0" 1 LB H 0 + 90 55 "" 1 LB H
0 2 0; E 20200002 260 70 + 260 75 "na2" 1 LB H 0 + 260 55 "" 1 LB H 0
21 0; E 20200002 250 70 + 250 75 "a2" 1 LB H 0 + 250 55 "" 1 LB H 0
20 0; E 20200002 180 70 + 180 75 "na1" 1 LB H 0 + 180 55 "" 1 LB H 0
19 0; E 20200002 170 70 + 170 75 "a1" 1 LB H 0 + 170 55 "" 1 LB H 0
18 0; E 20200002 100 70 + 100 75 "na0" 1 LB H 0 + 100 55 "" 1 LB H 0
4 0; E 20200002 440 100 + 440 105 "dat_2" 1 LB H 0 + 440 85 "" 1 LB H
0 27 0; E 20200002 440 80 + 440 85 "vss" 1 LB H 0 + 440 65 "" 1 LB H
0 26 0; E 20200002 440 730 + 440 735 "vss1" 1 LB H 0 + 440 715 "" 1
LB H 0 30 0; E 20200002 100 740 + 100 745 "na0" 1 LB H 0 + 100 725 ""
1 LB H 0 3 0; E 20200002 70 400 + 70 405 "vdd" 1 LB H 0 + 70 385 "" 1
LB H 0 15 0; E 20000002 150 480 0; E 20000002 150 400 0; E 20000002
230 480 0; E 20000002 230 400 0; E 20400002 280 440 1 6 1; E
20400002 200 440 1 8 1; E 20400002 230 460 1 8 2; E 20400002 230 420
1 8 3; E 20400002 120 440 1 7 1; E 20400002 150 460 1 7 2; E
20400002 150 420 1 7 3; E 20400002 400 500 1 3 2; E 20000002 400 480
0; E 20200002 440 480 + 440 485 "out_1" 1 LB H 0 + 440 465 "" 1 LB H
0 31 0; E 20200002 440 400 + 440 405 "vdd" 1 LB H 0 + 440 385 "" 1 LB
H 0 28 0; E 20400002 370 440 1 4 1; E 20000002 350 480 0; E
20000002 310 400 0; E 20400002 400 460 1 4 2; E 20000002 310 480 0;
E 20400002 400 420 1 4 3; E 20000002 370 480 0; E 20000002 400 400 0
; E 20400002 350 490 1 5 2; E 20400002 310 460 1 6 2; E 20400002 310
420 1 6 3; E 20000002 70 510 + 70 515 "v_0_1" 1 LB H 0 0; E 20000002
70 550 + 70 555 "v_1_1" 1 LB H 0 0; E 20000002 70 590 + 70 595
"v_2_1" 1 LB H 0 0; E 20000002 350 730 0; E 20000002 120 590 0; E
20000002 280 510 0; E 20000002 200 550 0; E 20400002 320 550 1 2 1;
E 20000002 400 730 0; E 20400002 350 530 2 2 2 5 3; E 20400002 320
510 1 5 1; E 20400002 320 590 1 1 1; E 20400002 400 540 1 3 3; E
20400002 370 520 1 3 1; E 20400002 350 610 1 1 3; E 20400002 350 570
2 1 2 2 3; E 20200002 70 730 + 70 735 "vss1" 1 LB H 0 + 70 715 "" 1
LB H 0 13 0; E 20200002 90 740 + 90 745 "a0" 1 LB H 0 + 90 725 "" 1
LB H 0 1 0; E 20200002 260 740 + 260 745 "na2" 1 LB H 0 + 260 725 ""
1 LB H 0 8 0; E 20200002 250 740 + 250 745 "a2" 1 LB H 0 + 250 725 ""
1 LB H 0 7 0; E 20200002 180 740 + 180 745 "na1" 1 LB H 0 + 180 725
"" 1 LB H 0 6 0; E 20200002 170 740 + 170 745 "a1" 1 LB H 0 + 170 725
"" 1 LB H 0 5 0; $S 44; S 1 10 2; S 5 59 2; S 3 57 2; S 4 58 2;
S 6 60 2; S 8 12 2; S 7 61 2; S 48 11 2; S 2 9 2; S 13 15 2; S
23 14 2; S 19 46 2; S 18 45 2; S 14 16 2; S 16 33 2; S 20 16 2;
S 15 24 2; S 15 17 2; S 17 21 2; S 17 31 2; S 22 44 2; S 30 35 2
; S 32 26 2; S 33 30 2; S 35 53 2; S 31 36 2; S 36 28 2; S 26 27
2; S 29 35 2; S 36 34 2; S 26 25 2; S 38 33 2; S 30 37 2; S 31
39 2; S 40 45 2; S 43 48 2; S 41 46 2; S 42 44 2; S 46 47 2; S
45 50 2; S 44 51 2; S 52 48 2; S 54 43 2; S 56 43 2; $Z;