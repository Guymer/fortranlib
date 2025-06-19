CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_viridis = (/                    &
                                                                                    ACHAR( 68) // ACHAR(  1) // ACHAR( 84), &
                                                                                    ACHAR( 68) // ACHAR(  2) // ACHAR( 86), &
                                                                                    ACHAR( 69) // ACHAR(  4) // ACHAR( 87), &
                                                                                    ACHAR( 69) // ACHAR(  5) // ACHAR( 89), &
                                                                                    ACHAR( 70) // ACHAR(  7) // ACHAR( 90), &
                                                                                    ACHAR( 70) // ACHAR(  8) // ACHAR( 92), &
                                                                                    ACHAR( 70) // ACHAR( 10) // ACHAR( 93), &
                                                                                    ACHAR( 70) // ACHAR( 11) // ACHAR( 94), &
                                                                                    ACHAR( 71) // ACHAR( 13) // ACHAR( 96), &
                                                                                    ACHAR( 71) // ACHAR( 14) // ACHAR( 97), &
                                                                                    ACHAR( 71) // ACHAR( 16) // ACHAR( 99), &
                                                                                    ACHAR( 71) // ACHAR( 17) // ACHAR(100), &
                                                                                    ACHAR( 71) // ACHAR( 19) // ACHAR(101), &
                                                                                    ACHAR( 72) // ACHAR( 20) // ACHAR(103), &
                                                                                    ACHAR( 72) // ACHAR( 22) // ACHAR(104), &
                                                                                    ACHAR( 72) // ACHAR( 23) // ACHAR(105), &
                                                                                    ACHAR( 72) // ACHAR( 24) // ACHAR(106), &
                                                                                    ACHAR( 72) // ACHAR( 26) // ACHAR(108), &
                                                                                    ACHAR( 72) // ACHAR( 27) // ACHAR(109), &
                                                                                    ACHAR( 72) // ACHAR( 28) // ACHAR(110), &
                                                                                    ACHAR( 72) // ACHAR( 29) // ACHAR(111), &
                                                                                    ACHAR( 72) // ACHAR( 31) // ACHAR(112), &
                                                                                    ACHAR( 72) // ACHAR( 32) // ACHAR(113), &
                                                                                    ACHAR( 72) // ACHAR( 33) // ACHAR(115), &
                                                                                    ACHAR( 72) // ACHAR( 35) // ACHAR(116), &
                                                                                    ACHAR( 72) // ACHAR( 36) // ACHAR(117), &
                                                                                    ACHAR( 72) // ACHAR( 37) // ACHAR(118), &
                                                                                    ACHAR( 72) // ACHAR( 38) // ACHAR(119), &
                                                                                    ACHAR( 72) // ACHAR( 40) // ACHAR(120), &
                                                                                    ACHAR( 72) // ACHAR( 41) // ACHAR(121), &
                                                                                    ACHAR( 71) // ACHAR( 42) // ACHAR(122), &
                                                                                    ACHAR( 71) // ACHAR( 44) // ACHAR(122), &
                                                                                    ACHAR( 71) // ACHAR( 45) // ACHAR(123), &
                                                                                    ACHAR( 71) // ACHAR( 46) // ACHAR(124), &
                                                                                    ACHAR( 71) // ACHAR( 47) // ACHAR(125), &
                                                                                    ACHAR( 70) // ACHAR( 48) // ACHAR(126), &
                                                                                    ACHAR( 70) // ACHAR( 50) // ACHAR(126), &
                                                                                    ACHAR( 70) // ACHAR( 51) // ACHAR(127), &
                                                                                    ACHAR( 70) // ACHAR( 52) // ACHAR(128), &
                                                                                    ACHAR( 69) // ACHAR( 53) // ACHAR(129), &
                                                                                    ACHAR( 69) // ACHAR( 55) // ACHAR(129), &
                                                                                    ACHAR( 69) // ACHAR( 56) // ACHAR(130), &
                                                                                    ACHAR( 68) // ACHAR( 57) // ACHAR(131), &
                                                                                    ACHAR( 68) // ACHAR( 58) // ACHAR(131), &
                                                                                    ACHAR( 68) // ACHAR( 59) // ACHAR(132), &
                                                                                    ACHAR( 67) // ACHAR( 61) // ACHAR(132), &
                                                                                    ACHAR( 67) // ACHAR( 62) // ACHAR(133), &
                                                                                    ACHAR( 66) // ACHAR( 63) // ACHAR(133), &
                                                                                    ACHAR( 66) // ACHAR( 64) // ACHAR(134), &
                                                                                    ACHAR( 66) // ACHAR( 65) // ACHAR(134), &
                                                                                    ACHAR( 65) // ACHAR( 66) // ACHAR(135), &
                                                                                    ACHAR( 65) // ACHAR( 68) // ACHAR(135), &
                                                                                    ACHAR( 64) // ACHAR( 69) // ACHAR(136), &
                                                                                    ACHAR( 64) // ACHAR( 70) // ACHAR(136), &
                                                                                    ACHAR( 63) // ACHAR( 71) // ACHAR(136), &
                                                                                    ACHAR( 63) // ACHAR( 72) // ACHAR(137), &
                                                                                    ACHAR( 62) // ACHAR( 73) // ACHAR(137), &
                                                                                    ACHAR( 62) // ACHAR( 74) // ACHAR(137), &
                                                                                    ACHAR( 62) // ACHAR( 76) // ACHAR(138), &
                                                                                    ACHAR( 61) // ACHAR( 77) // ACHAR(138), &
                                                                                    ACHAR( 61) // ACHAR( 78) // ACHAR(138), &
                                                                                    ACHAR( 60) // ACHAR( 79) // ACHAR(138), &
                                                                                    ACHAR( 60) // ACHAR( 80) // ACHAR(139), &
                                                                                    ACHAR( 59) // ACHAR( 81) // ACHAR(139), &
                                                                                    ACHAR( 59) // ACHAR( 82) // ACHAR(139), &
                                                                                    ACHAR( 58) // ACHAR( 83) // ACHAR(139), &
                                                                                    ACHAR( 58) // ACHAR( 84) // ACHAR(140), &
                                                                                    ACHAR( 57) // ACHAR( 85) // ACHAR(140), &
                                                                                    ACHAR( 57) // ACHAR( 86) // ACHAR(140), &
                                                                                    ACHAR( 56) // ACHAR( 88) // ACHAR(140), &
                                                                                    ACHAR( 56) // ACHAR( 89) // ACHAR(140), &
                                                                                    ACHAR( 55) // ACHAR( 90) // ACHAR(140), &
                                                                                    ACHAR( 55) // ACHAR( 91) // ACHAR(141), &
                                                                                    ACHAR( 54) // ACHAR( 92) // ACHAR(141), &
                                                                                    ACHAR( 54) // ACHAR( 93) // ACHAR(141), &
                                                                                    ACHAR( 53) // ACHAR( 94) // ACHAR(141), &
                                                                                    ACHAR( 53) // ACHAR( 95) // ACHAR(141), &
                                                                                    ACHAR( 52) // ACHAR( 96) // ACHAR(141), &
                                                                                    ACHAR( 52) // ACHAR( 97) // ACHAR(141), &
                                                                                    ACHAR( 51) // ACHAR( 98) // ACHAR(141), &
                                                                                    ACHAR( 51) // ACHAR( 99) // ACHAR(141), &
                                                                                    ACHAR( 50) // ACHAR(100) // ACHAR(142), &
                                                                                    ACHAR( 50) // ACHAR(101) // ACHAR(142), &
                                                                                    ACHAR( 49) // ACHAR(102) // ACHAR(142), &
                                                                                    ACHAR( 49) // ACHAR(103) // ACHAR(142), &
                                                                                    ACHAR( 49) // ACHAR(104) // ACHAR(142), &
                                                                                    ACHAR( 48) // ACHAR(105) // ACHAR(142), &
                                                                                    ACHAR( 48) // ACHAR(106) // ACHAR(142), &
                                                                                    ACHAR( 47) // ACHAR(107) // ACHAR(142), &
                                                                                    ACHAR( 47) // ACHAR(108) // ACHAR(142), &
                                                                                    ACHAR( 46) // ACHAR(109) // ACHAR(142), &
                                                                                    ACHAR( 46) // ACHAR(110) // ACHAR(142), &
                                                                                    ACHAR( 46) // ACHAR(111) // ACHAR(142), &
                                                                                    ACHAR( 45) // ACHAR(112) // ACHAR(142), &
                                                                                    ACHAR( 45) // ACHAR(113) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(113) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(114) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(115) // ACHAR(142), &
                                                                                    ACHAR( 43) // ACHAR(116) // ACHAR(142), &
                                                                                    ACHAR( 43) // ACHAR(117) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(118) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(119) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(120) // ACHAR(142), &
                                                                                    ACHAR( 41) // ACHAR(121) // ACHAR(142), &
                                                                                    ACHAR( 41) // ACHAR(122) // ACHAR(142), &
                                                                                    ACHAR( 41) // ACHAR(123) // ACHAR(142), &
                                                                                    ACHAR( 40) // ACHAR(124) // ACHAR(142), &
                                                                                    ACHAR( 40) // ACHAR(125) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(126) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(127) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(128) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(129) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(130) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(130) // ACHAR(142), &
                                                                                    ACHAR( 37) // ACHAR(131) // ACHAR(142), &
                                                                                    ACHAR( 37) // ACHAR(132) // ACHAR(142), &
                                                                                    ACHAR( 37) // ACHAR(133) // ACHAR(142), &
                                                                                    ACHAR( 36) // ACHAR(134) // ACHAR(142), &
                                                                                    ACHAR( 36) // ACHAR(135) // ACHAR(142), &
                                                                                    ACHAR( 35) // ACHAR(136) // ACHAR(142), &
                                                                                    ACHAR( 35) // ACHAR(137) // ACHAR(142), &
                                                                                    ACHAR( 35) // ACHAR(138) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(139) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(140) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(141) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(142) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(143) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(144) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(145) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(146) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(146) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(147) // ACHAR(140), &
                                                                                    ACHAR( 31) // ACHAR(148) // ACHAR(140), &
                                                                                    ACHAR( 31) // ACHAR(149) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(150) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(151) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(152) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(153) // ACHAR(138), &
                                                                                    ACHAR( 31) // ACHAR(154) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(155) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(156) // ACHAR(137), &
                                                                                    ACHAR( 30) // ACHAR(157) // ACHAR(137), &
                                                                                    ACHAR( 31) // ACHAR(158) // ACHAR(137), &
                                                                                    ACHAR( 31) // ACHAR(159) // ACHAR(136), &
                                                                                    ACHAR( 31) // ACHAR(160) // ACHAR(136), &
                                                                                    ACHAR( 31) // ACHAR(161) // ACHAR(136), &
                                                                                    ACHAR( 31) // ACHAR(161) // ACHAR(135), &
                                                                                    ACHAR( 31) // ACHAR(162) // ACHAR(135), &
                                                                                    ACHAR( 32) // ACHAR(163) // ACHAR(134), &
                                                                                    ACHAR( 32) // ACHAR(164) // ACHAR(134), &
                                                                                    ACHAR( 33) // ACHAR(165) // ACHAR(133), &
                                                                                    ACHAR( 33) // ACHAR(166) // ACHAR(133), &
                                                                                    ACHAR( 34) // ACHAR(167) // ACHAR(133), &
                                                                                    ACHAR( 34) // ACHAR(168) // ACHAR(132), &
                                                                                    ACHAR( 35) // ACHAR(169) // ACHAR(131), &
                                                                                    ACHAR( 36) // ACHAR(170) // ACHAR(131), &
                                                                                    ACHAR( 37) // ACHAR(171) // ACHAR(130), &
                                                                                    ACHAR( 37) // ACHAR(172) // ACHAR(130), &
                                                                                    ACHAR( 38) // ACHAR(173) // ACHAR(129), &
                                                                                    ACHAR( 39) // ACHAR(173) // ACHAR(129), &
                                                                                    ACHAR( 40) // ACHAR(174) // ACHAR(128), &
                                                                                    ACHAR( 41) // ACHAR(175) // ACHAR(127), &
                                                                                    ACHAR( 42) // ACHAR(176) // ACHAR(127), &
                                                                                    ACHAR( 44) // ACHAR(177) // ACHAR(126), &
                                                                                    ACHAR( 45) // ACHAR(178) // ACHAR(125), &
                                                                                    ACHAR( 46) // ACHAR(179) // ACHAR(124), &
                                                                                    ACHAR( 47) // ACHAR(180) // ACHAR(124), &
                                                                                    ACHAR( 49) // ACHAR(181) // ACHAR(123), &
                                                                                    ACHAR( 50) // ACHAR(182) // ACHAR(122), &
                                                                                    ACHAR( 52) // ACHAR(182) // ACHAR(121), &
                                                                                    ACHAR( 53) // ACHAR(183) // ACHAR(121), &
                                                                                    ACHAR( 55) // ACHAR(184) // ACHAR(120), &
                                                                                    ACHAR( 56) // ACHAR(185) // ACHAR(119), &
                                                                                    ACHAR( 58) // ACHAR(186) // ACHAR(118), &
                                                                                    ACHAR( 59) // ACHAR(187) // ACHAR(117), &
                                                                                    ACHAR( 61) // ACHAR(188) // ACHAR(116), &
                                                                                    ACHAR( 63) // ACHAR(188) // ACHAR(115), &
                                                                                    ACHAR( 64) // ACHAR(189) // ACHAR(114), &
                                                                                    ACHAR( 66) // ACHAR(190) // ACHAR(113), &
                                                                                    ACHAR( 68) // ACHAR(191) // ACHAR(112), &
                                                                                    ACHAR( 70) // ACHAR(192) // ACHAR(111), &
                                                                                    ACHAR( 72) // ACHAR(193) // ACHAR(110), &
                                                                                    ACHAR( 74) // ACHAR(193) // ACHAR(109), &
                                                                                    ACHAR( 76) // ACHAR(194) // ACHAR(108), &
                                                                                    ACHAR( 78) // ACHAR(195) // ACHAR(107), &
                                                                                    ACHAR( 80) // ACHAR(196) // ACHAR(106), &
                                                                                    ACHAR( 82) // ACHAR(197) // ACHAR(105), &
                                                                                    ACHAR( 84) // ACHAR(197) // ACHAR(104), &
                                                                                    ACHAR( 86) // ACHAR(198) // ACHAR(103), &
                                                                                    ACHAR( 88) // ACHAR(199) // ACHAR(101), &
                                                                                    ACHAR( 90) // ACHAR(200) // ACHAR(100), &
                                                                                    ACHAR( 92) // ACHAR(200) // ACHAR( 99), &
                                                                                    ACHAR( 94) // ACHAR(201) // ACHAR( 98), &
                                                                                    ACHAR( 96) // ACHAR(202) // ACHAR( 96), &
                                                                                    ACHAR( 99) // ACHAR(203) // ACHAR( 95), &
                                                                                    ACHAR(101) // ACHAR(203) // ACHAR( 94), &
                                                                                    ACHAR(103) // ACHAR(204) // ACHAR( 92), &
                                                                                    ACHAR(105) // ACHAR(205) // ACHAR( 91), &
                                                                                    ACHAR(108) // ACHAR(205) // ACHAR( 90), &
                                                                                    ACHAR(110) // ACHAR(206) // ACHAR( 88), &
                                                                                    ACHAR(112) // ACHAR(207) // ACHAR( 87), &
                                                                                    ACHAR(115) // ACHAR(208) // ACHAR( 86), &
                                                                                    ACHAR(117) // ACHAR(208) // ACHAR( 84), &
                                                                                    ACHAR(119) // ACHAR(209) // ACHAR( 83), &
                                                                                    ACHAR(122) // ACHAR(209) // ACHAR( 81), &
                                                                                    ACHAR(124) // ACHAR(210) // ACHAR( 80), &
                                                                                    ACHAR(127) // ACHAR(211) // ACHAR( 78), &
                                                                                    ACHAR(129) // ACHAR(211) // ACHAR( 77), &
                                                                                    ACHAR(132) // ACHAR(212) // ACHAR( 75), &
                                                                                    ACHAR(134) // ACHAR(213) // ACHAR( 73), &
                                                                                    ACHAR(137) // ACHAR(213) // ACHAR( 72), &
                                                                                    ACHAR(139) // ACHAR(214) // ACHAR( 70), &
                                                                                    ACHAR(142) // ACHAR(214) // ACHAR( 69), &
                                                                                    ACHAR(144) // ACHAR(215) // ACHAR( 67), &
                                                                                    ACHAR(147) // ACHAR(215) // ACHAR( 65), &
                                                                                    ACHAR(149) // ACHAR(216) // ACHAR( 64), &
                                                                                    ACHAR(152) // ACHAR(216) // ACHAR( 62), &
                                                                                    ACHAR(155) // ACHAR(217) // ACHAR( 60), &
                                                                                    ACHAR(157) // ACHAR(217) // ACHAR( 59), &
                                                                                    ACHAR(160) // ACHAR(218) // ACHAR( 57), &
                                                                                    ACHAR(162) // ACHAR(218) // ACHAR( 55), &
                                                                                    ACHAR(165) // ACHAR(219) // ACHAR( 54), &
                                                                                    ACHAR(168) // ACHAR(219) // ACHAR( 52), &
                                                                                    ACHAR(170) // ACHAR(220) // ACHAR( 50), &
                                                                                    ACHAR(173) // ACHAR(220) // ACHAR( 48), &
                                                                                    ACHAR(176) // ACHAR(221) // ACHAR( 47), &
                                                                                    ACHAR(178) // ACHAR(221) // ACHAR( 45), &
                                                                                    ACHAR(181) // ACHAR(222) // ACHAR( 43), &
                                                                                    ACHAR(184) // ACHAR(222) // ACHAR( 41), &
                                                                                    ACHAR(186) // ACHAR(222) // ACHAR( 40), &
                                                                                    ACHAR(189) // ACHAR(223) // ACHAR( 38), &
                                                                                    ACHAR(192) // ACHAR(223) // ACHAR( 37), &
                                                                                    ACHAR(194) // ACHAR(223) // ACHAR( 35), &
                                                                                    ACHAR(197) // ACHAR(224) // ACHAR( 33), &
                                                                                    ACHAR(200) // ACHAR(224) // ACHAR( 32), &
                                                                                    ACHAR(202) // ACHAR(225) // ACHAR( 31), &
                                                                                    ACHAR(205) // ACHAR(225) // ACHAR( 29), &
                                                                                    ACHAR(208) // ACHAR(225) // ACHAR( 28), &
                                                                                    ACHAR(210) // ACHAR(226) // ACHAR( 27), &
                                                                                    ACHAR(213) // ACHAR(226) // ACHAR( 26), &
                                                                                    ACHAR(216) // ACHAR(226) // ACHAR( 25), &
                                                                                    ACHAR(218) // ACHAR(227) // ACHAR( 25), &
                                                                                    ACHAR(221) // ACHAR(227) // ACHAR( 24), &
                                                                                    ACHAR(223) // ACHAR(227) // ACHAR( 24), &
                                                                                    ACHAR(226) // ACHAR(228) // ACHAR( 24), &
                                                                                    ACHAR(229) // ACHAR(228) // ACHAR( 25), &
                                                                                    ACHAR(231) // ACHAR(228) // ACHAR( 25), &
                                                                                    ACHAR(234) // ACHAR(229) // ACHAR( 26), &
                                                                                    ACHAR(236) // ACHAR(229) // ACHAR( 27), &
                                                                                    ACHAR(239) // ACHAR(229) // ACHAR( 28), &
                                                                                    ACHAR(241) // ACHAR(229) // ACHAR( 29), &
                                                                                    ACHAR(244) // ACHAR(230) // ACHAR( 30), &
                                                                                    ACHAR(246) // ACHAR(230) // ACHAR( 32), &
                                                                                    ACHAR(248) // ACHAR(230) // ACHAR( 33), &
                                                                                    ACHAR(251) // ACHAR(231) // ACHAR( 35), &
                                                                                    ACHAR(253) // ACHAR(231) // ACHAR( 37)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_plasma = (/                     &
                                                                                    ACHAR( 13) // ACHAR(  8) // ACHAR(135), &
                                                                                    ACHAR( 16) // ACHAR(  7) // ACHAR(136), &
                                                                                    ACHAR( 19) // ACHAR(  7) // ACHAR(137), &
                                                                                    ACHAR( 22) // ACHAR(  7) // ACHAR(138), &
                                                                                    ACHAR( 25) // ACHAR(  6) // ACHAR(140), &
                                                                                    ACHAR( 27) // ACHAR(  6) // ACHAR(141), &
                                                                                    ACHAR( 29) // ACHAR(  6) // ACHAR(142), &
                                                                                    ACHAR( 32) // ACHAR(  6) // ACHAR(143), &
                                                                                    ACHAR( 34) // ACHAR(  6) // ACHAR(144), &
                                                                                    ACHAR( 36) // ACHAR(  6) // ACHAR(145), &
                                                                                    ACHAR( 38) // ACHAR(  5) // ACHAR(145), &
                                                                                    ACHAR( 40) // ACHAR(  5) // ACHAR(146), &
                                                                                    ACHAR( 42) // ACHAR(  5) // ACHAR(147), &
                                                                                    ACHAR( 44) // ACHAR(  5) // ACHAR(148), &
                                                                                    ACHAR( 46) // ACHAR(  5) // ACHAR(149), &
                                                                                    ACHAR( 47) // ACHAR(  5) // ACHAR(150), &
                                                                                    ACHAR( 49) // ACHAR(  5) // ACHAR(151), &
                                                                                    ACHAR( 51) // ACHAR(  5) // ACHAR(151), &
                                                                                    ACHAR( 53) // ACHAR(  4) // ACHAR(152), &
                                                                                    ACHAR( 55) // ACHAR(  4) // ACHAR(153), &
                                                                                    ACHAR( 56) // ACHAR(  4) // ACHAR(154), &
                                                                                    ACHAR( 58) // ACHAR(  4) // ACHAR(154), &
                                                                                    ACHAR( 60) // ACHAR(  4) // ACHAR(155), &
                                                                                    ACHAR( 62) // ACHAR(  4) // ACHAR(156), &
                                                                                    ACHAR( 63) // ACHAR(  4) // ACHAR(156), &
                                                                                    ACHAR( 65) // ACHAR(  4) // ACHAR(157), &
                                                                                    ACHAR( 67) // ACHAR(  3) // ACHAR(158), &
                                                                                    ACHAR( 68) // ACHAR(  3) // ACHAR(158), &
                                                                                    ACHAR( 70) // ACHAR(  3) // ACHAR(159), &
                                                                                    ACHAR( 72) // ACHAR(  3) // ACHAR(159), &
                                                                                    ACHAR( 73) // ACHAR(  3) // ACHAR(160), &
                                                                                    ACHAR( 75) // ACHAR(  3) // ACHAR(161), &
                                                                                    ACHAR( 76) // ACHAR(  2) // ACHAR(161), &
                                                                                    ACHAR( 78) // ACHAR(  2) // ACHAR(162), &
                                                                                    ACHAR( 80) // ACHAR(  2) // ACHAR(162), &
                                                                                    ACHAR( 81) // ACHAR(  2) // ACHAR(163), &
                                                                                    ACHAR( 83) // ACHAR(  2) // ACHAR(163), &
                                                                                    ACHAR( 85) // ACHAR(  2) // ACHAR(164), &
                                                                                    ACHAR( 86) // ACHAR(  1) // ACHAR(164), &
                                                                                    ACHAR( 88) // ACHAR(  1) // ACHAR(164), &
                                                                                    ACHAR( 89) // ACHAR(  1) // ACHAR(165), &
                                                                                    ACHAR( 91) // ACHAR(  1) // ACHAR(165), &
                                                                                    ACHAR( 92) // ACHAR(  1) // ACHAR(166), &
                                                                                    ACHAR( 94) // ACHAR(  1) // ACHAR(166), &
                                                                                    ACHAR( 96) // ACHAR(  1) // ACHAR(166), &
                                                                                    ACHAR( 97) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR( 99) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(100) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(102) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(103) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(105) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(106) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(108) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(110) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(111) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(113) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(114) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(116) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(117) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(119) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(120) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(122) // ACHAR(  2) // ACHAR(168), &
                                                                                    ACHAR(123) // ACHAR(  2) // ACHAR(168), &
                                                                                    ACHAR(125) // ACHAR(  3) // ACHAR(168), &
                                                                                    ACHAR(126) // ACHAR(  3) // ACHAR(168), &
                                                                                    ACHAR(128) // ACHAR(  4) // ACHAR(168), &
                                                                                    ACHAR(129) // ACHAR(  4) // ACHAR(167), &
                                                                                    ACHAR(131) // ACHAR(  5) // ACHAR(167), &
                                                                                    ACHAR(132) // ACHAR(  5) // ACHAR(167), &
                                                                                    ACHAR(134) // ACHAR(  6) // ACHAR(166), &
                                                                                    ACHAR(135) // ACHAR(  7) // ACHAR(166), &
                                                                                    ACHAR(136) // ACHAR(  8) // ACHAR(166), &
                                                                                    ACHAR(138) // ACHAR(  9) // ACHAR(165), &
                                                                                    ACHAR(139) // ACHAR( 10) // ACHAR(165), &
                                                                                    ACHAR(141) // ACHAR( 11) // ACHAR(165), &
                                                                                    ACHAR(142) // ACHAR( 12) // ACHAR(164), &
                                                                                    ACHAR(143) // ACHAR( 13) // ACHAR(164), &
                                                                                    ACHAR(145) // ACHAR( 14) // ACHAR(163), &
                                                                                    ACHAR(146) // ACHAR( 15) // ACHAR(163), &
                                                                                    ACHAR(148) // ACHAR( 16) // ACHAR(162), &
                                                                                    ACHAR(149) // ACHAR( 17) // ACHAR(161), &
                                                                                    ACHAR(150) // ACHAR( 19) // ACHAR(161), &
                                                                                    ACHAR(152) // ACHAR( 20) // ACHAR(160), &
                                                                                    ACHAR(153) // ACHAR( 21) // ACHAR(159), &
                                                                                    ACHAR(154) // ACHAR( 22) // ACHAR(159), &
                                                                                    ACHAR(156) // ACHAR( 23) // ACHAR(158), &
                                                                                    ACHAR(157) // ACHAR( 24) // ACHAR(157), &
                                                                                    ACHAR(158) // ACHAR( 25) // ACHAR(157), &
                                                                                    ACHAR(160) // ACHAR( 26) // ACHAR(156), &
                                                                                    ACHAR(161) // ACHAR( 27) // ACHAR(155), &
                                                                                    ACHAR(162) // ACHAR( 29) // ACHAR(154), &
                                                                                    ACHAR(163) // ACHAR( 30) // ACHAR(154), &
                                                                                    ACHAR(165) // ACHAR( 31) // ACHAR(153), &
                                                                                    ACHAR(166) // ACHAR( 32) // ACHAR(152), &
                                                                                    ACHAR(167) // ACHAR( 33) // ACHAR(151), &
                                                                                    ACHAR(168) // ACHAR( 34) // ACHAR(150), &
                                                                                    ACHAR(170) // ACHAR( 35) // ACHAR(149), &
                                                                                    ACHAR(171) // ACHAR( 36) // ACHAR(148), &
                                                                                    ACHAR(172) // ACHAR( 38) // ACHAR(148), &
                                                                                    ACHAR(173) // ACHAR( 39) // ACHAR(147), &
                                                                                    ACHAR(174) // ACHAR( 40) // ACHAR(146), &
                                                                                    ACHAR(176) // ACHAR( 41) // ACHAR(145), &
                                                                                    ACHAR(177) // ACHAR( 42) // ACHAR(144), &
                                                                                    ACHAR(178) // ACHAR( 43) // ACHAR(143), &
                                                                                    ACHAR(179) // ACHAR( 44) // ACHAR(142), &
                                                                                    ACHAR(180) // ACHAR( 46) // ACHAR(141), &
                                                                                    ACHAR(181) // ACHAR( 47) // ACHAR(140), &
                                                                                    ACHAR(182) // ACHAR( 48) // ACHAR(139), &
                                                                                    ACHAR(183) // ACHAR( 49) // ACHAR(138), &
                                                                                    ACHAR(184) // ACHAR( 50) // ACHAR(137), &
                                                                                    ACHAR(186) // ACHAR( 51) // ACHAR(136), &
                                                                                    ACHAR(187) // ACHAR( 52) // ACHAR(136), &
                                                                                    ACHAR(188) // ACHAR( 53) // ACHAR(135), &
                                                                                    ACHAR(189) // ACHAR( 55) // ACHAR(134), &
                                                                                    ACHAR(190) // ACHAR( 56) // ACHAR(133), &
                                                                                    ACHAR(191) // ACHAR( 57) // ACHAR(132), &
                                                                                    ACHAR(192) // ACHAR( 58) // ACHAR(131), &
                                                                                    ACHAR(193) // ACHAR( 59) // ACHAR(130), &
                                                                                    ACHAR(194) // ACHAR( 60) // ACHAR(129), &
                                                                                    ACHAR(195) // ACHAR( 61) // ACHAR(128), &
                                                                                    ACHAR(196) // ACHAR( 62) // ACHAR(127), &
                                                                                    ACHAR(197) // ACHAR( 64) // ACHAR(126), &
                                                                                    ACHAR(198) // ACHAR( 65) // ACHAR(125), &
                                                                                    ACHAR(199) // ACHAR( 66) // ACHAR(124), &
                                                                                    ACHAR(200) // ACHAR( 67) // ACHAR(123), &
                                                                                    ACHAR(201) // ACHAR( 68) // ACHAR(122), &
                                                                                    ACHAR(202) // ACHAR( 69) // ACHAR(122), &
                                                                                    ACHAR(203) // ACHAR( 70) // ACHAR(121), &
                                                                                    ACHAR(204) // ACHAR( 71) // ACHAR(120), &
                                                                                    ACHAR(204) // ACHAR( 73) // ACHAR(119), &
                                                                                    ACHAR(205) // ACHAR( 74) // ACHAR(118), &
                                                                                    ACHAR(206) // ACHAR( 75) // ACHAR(117), &
                                                                                    ACHAR(207) // ACHAR( 76) // ACHAR(116), &
                                                                                    ACHAR(208) // ACHAR( 77) // ACHAR(115), &
                                                                                    ACHAR(209) // ACHAR( 78) // ACHAR(114), &
                                                                                    ACHAR(210) // ACHAR( 79) // ACHAR(113), &
                                                                                    ACHAR(211) // ACHAR( 81) // ACHAR(113), &
                                                                                    ACHAR(212) // ACHAR( 82) // ACHAR(112), &
                                                                                    ACHAR(213) // ACHAR( 83) // ACHAR(111), &
                                                                                    ACHAR(213) // ACHAR( 84) // ACHAR(110), &
                                                                                    ACHAR(214) // ACHAR( 85) // ACHAR(109), &
                                                                                    ACHAR(215) // ACHAR( 86) // ACHAR(108), &
                                                                                    ACHAR(216) // ACHAR( 87) // ACHAR(107), &
                                                                                    ACHAR(217) // ACHAR( 88) // ACHAR(106), &
                                                                                    ACHAR(218) // ACHAR( 90) // ACHAR(106), &
                                                                                    ACHAR(218) // ACHAR( 91) // ACHAR(105), &
                                                                                    ACHAR(219) // ACHAR( 92) // ACHAR(104), &
                                                                                    ACHAR(220) // ACHAR( 93) // ACHAR(103), &
                                                                                    ACHAR(221) // ACHAR( 94) // ACHAR(102), &
                                                                                    ACHAR(222) // ACHAR( 95) // ACHAR(101), &
                                                                                    ACHAR(222) // ACHAR( 97) // ACHAR(100), &
                                                                                    ACHAR(223) // ACHAR( 98) // ACHAR( 99), &
                                                                                    ACHAR(224) // ACHAR( 99) // ACHAR( 99), &
                                                                                    ACHAR(225) // ACHAR(100) // ACHAR( 98), &
                                                                                    ACHAR(226) // ACHAR(101) // ACHAR( 97), &
                                                                                    ACHAR(226) // ACHAR(102) // ACHAR( 96), &
                                                                                    ACHAR(227) // ACHAR(104) // ACHAR( 95), &
                                                                                    ACHAR(228) // ACHAR(105) // ACHAR( 94), &
                                                                                    ACHAR(229) // ACHAR(106) // ACHAR( 93), &
                                                                                    ACHAR(229) // ACHAR(107) // ACHAR( 93), &
                                                                                    ACHAR(230) // ACHAR(108) // ACHAR( 92), &
                                                                                    ACHAR(231) // ACHAR(110) // ACHAR( 91), &
                                                                                    ACHAR(231) // ACHAR(111) // ACHAR( 90), &
                                                                                    ACHAR(232) // ACHAR(112) // ACHAR( 89), &
                                                                                    ACHAR(233) // ACHAR(113) // ACHAR( 88), &
                                                                                    ACHAR(233) // ACHAR(114) // ACHAR( 87), &
                                                                                    ACHAR(234) // ACHAR(116) // ACHAR( 87), &
                                                                                    ACHAR(235) // ACHAR(117) // ACHAR( 86), &
                                                                                    ACHAR(235) // ACHAR(118) // ACHAR( 85), &
                                                                                    ACHAR(236) // ACHAR(119) // ACHAR( 84), &
                                                                                    ACHAR(237) // ACHAR(121) // ACHAR( 83), &
                                                                                    ACHAR(237) // ACHAR(122) // ACHAR( 82), &
                                                                                    ACHAR(238) // ACHAR(123) // ACHAR( 81), &
                                                                                    ACHAR(239) // ACHAR(124) // ACHAR( 81), &
                                                                                    ACHAR(239) // ACHAR(126) // ACHAR( 80), &
                                                                                    ACHAR(240) // ACHAR(127) // ACHAR( 79), &
                                                                                    ACHAR(240) // ACHAR(128) // ACHAR( 78), &
                                                                                    ACHAR(241) // ACHAR(129) // ACHAR( 77), &
                                                                                    ACHAR(241) // ACHAR(131) // ACHAR( 76), &
                                                                                    ACHAR(242) // ACHAR(132) // ACHAR( 75), &
                                                                                    ACHAR(243) // ACHAR(133) // ACHAR( 75), &
                                                                                    ACHAR(243) // ACHAR(135) // ACHAR( 74), &
                                                                                    ACHAR(244) // ACHAR(136) // ACHAR( 73), &
                                                                                    ACHAR(244) // ACHAR(137) // ACHAR( 72), &
                                                                                    ACHAR(245) // ACHAR(139) // ACHAR( 71), &
                                                                                    ACHAR(245) // ACHAR(140) // ACHAR( 70), &
                                                                                    ACHAR(246) // ACHAR(141) // ACHAR( 69), &
                                                                                    ACHAR(246) // ACHAR(143) // ACHAR( 68), &
                                                                                    ACHAR(247) // ACHAR(144) // ACHAR( 68), &
                                                                                    ACHAR(247) // ACHAR(145) // ACHAR( 67), &
                                                                                    ACHAR(247) // ACHAR(147) // ACHAR( 66), &
                                                                                    ACHAR(248) // ACHAR(148) // ACHAR( 65), &
                                                                                    ACHAR(248) // ACHAR(149) // ACHAR( 64), &
                                                                                    ACHAR(249) // ACHAR(151) // ACHAR( 63), &
                                                                                    ACHAR(249) // ACHAR(152) // ACHAR( 62), &
                                                                                    ACHAR(249) // ACHAR(154) // ACHAR( 62), &
                                                                                    ACHAR(250) // ACHAR(155) // ACHAR( 61), &
                                                                                    ACHAR(250) // ACHAR(156) // ACHAR( 60), &
                                                                                    ACHAR(250) // ACHAR(158) // ACHAR( 59), &
                                                                                    ACHAR(251) // ACHAR(159) // ACHAR( 58), &
                                                                                    ACHAR(251) // ACHAR(161) // ACHAR( 57), &
                                                                                    ACHAR(251) // ACHAR(162) // ACHAR( 56), &
                                                                                    ACHAR(252) // ACHAR(163) // ACHAR( 56), &
                                                                                    ACHAR(252) // ACHAR(165) // ACHAR( 55), &
                                                                                    ACHAR(252) // ACHAR(166) // ACHAR( 54), &
                                                                                    ACHAR(252) // ACHAR(168) // ACHAR( 53), &
                                                                                    ACHAR(252) // ACHAR(169) // ACHAR( 52), &
                                                                                    ACHAR(253) // ACHAR(171) // ACHAR( 51), &
                                                                                    ACHAR(253) // ACHAR(172) // ACHAR( 51), &
                                                                                    ACHAR(253) // ACHAR(174) // ACHAR( 50), &
                                                                                    ACHAR(253) // ACHAR(175) // ACHAR( 49), &
                                                                                    ACHAR(253) // ACHAR(177) // ACHAR( 48), &
                                                                                    ACHAR(253) // ACHAR(178) // ACHAR( 47), &
                                                                                    ACHAR(253) // ACHAR(180) // ACHAR( 47), &
                                                                                    ACHAR(253) // ACHAR(181) // ACHAR( 46), &
                                                                                    ACHAR(254) // ACHAR(183) // ACHAR( 45), &
                                                                                    ACHAR(254) // ACHAR(184) // ACHAR( 44), &
                                                                                    ACHAR(254) // ACHAR(186) // ACHAR( 44), &
                                                                                    ACHAR(254) // ACHAR(187) // ACHAR( 43), &
                                                                                    ACHAR(254) // ACHAR(189) // ACHAR( 42), &
                                                                                    ACHAR(254) // ACHAR(190) // ACHAR( 42), &
                                                                                    ACHAR(254) // ACHAR(192) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(194) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(195) // ACHAR( 40), &
                                                                                    ACHAR(253) // ACHAR(197) // ACHAR( 39), &
                                                                                    ACHAR(253) // ACHAR(198) // ACHAR( 39), &
                                                                                    ACHAR(253) // ACHAR(200) // ACHAR( 39), &
                                                                                    ACHAR(253) // ACHAR(202) // ACHAR( 38), &
                                                                                    ACHAR(253) // ACHAR(203) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(205) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(206) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(208) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(210) // ACHAR( 37), &
                                                                                    ACHAR(251) // ACHAR(211) // ACHAR( 36), &
                                                                                    ACHAR(251) // ACHAR(213) // ACHAR( 36), &
                                                                                    ACHAR(251) // ACHAR(215) // ACHAR( 36), &
                                                                                    ACHAR(250) // ACHAR(216) // ACHAR( 36), &
                                                                                    ACHAR(250) // ACHAR(218) // ACHAR( 36), &
                                                                                    ACHAR(249) // ACHAR(220) // ACHAR( 36), &
                                                                                    ACHAR(249) // ACHAR(221) // ACHAR( 37), &
                                                                                    ACHAR(248) // ACHAR(223) // ACHAR( 37), &
                                                                                    ACHAR(248) // ACHAR(225) // ACHAR( 37), &
                                                                                    ACHAR(247) // ACHAR(226) // ACHAR( 37), &
                                                                                    ACHAR(247) // ACHAR(228) // ACHAR( 37), &
                                                                                    ACHAR(246) // ACHAR(230) // ACHAR( 38), &
                                                                                    ACHAR(246) // ACHAR(232) // ACHAR( 38), &
                                                                                    ACHAR(245) // ACHAR(233) // ACHAR( 38), &
                                                                                    ACHAR(245) // ACHAR(235) // ACHAR( 39), &
                                                                                    ACHAR(244) // ACHAR(237) // ACHAR( 39), &
                                                                                    ACHAR(243) // ACHAR(238) // ACHAR( 39), &
                                                                                    ACHAR(243) // ACHAR(240) // ACHAR( 39), &
                                                                                    ACHAR(242) // ACHAR(242) // ACHAR( 39), &
                                                                                    ACHAR(241) // ACHAR(244) // ACHAR( 38), &
                                                                                    ACHAR(241) // ACHAR(245) // ACHAR( 37), &
                                                                                    ACHAR(240) // ACHAR(247) // ACHAR( 36), &
                                                                                    ACHAR(240) // ACHAR(249) // ACHAR( 33)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_inferno = (/                    &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  4), &
                                                                                    ACHAR(  1) // ACHAR(  0) // ACHAR(  5), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  6), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  8), &
                                                                                    ACHAR(  2) // ACHAR(  1) // ACHAR( 10), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 12), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 14), &
                                                                                    ACHAR(  3) // ACHAR(  2) // ACHAR( 16), &
                                                                                    ACHAR(  4) // ACHAR(  3) // ACHAR( 18), &
                                                                                    ACHAR(  4) // ACHAR(  3) // ACHAR( 20), &
                                                                                    ACHAR(  5) // ACHAR(  4) // ACHAR( 23), &
                                                                                    ACHAR(  6) // ACHAR(  4) // ACHAR( 25), &
                                                                                    ACHAR(  7) // ACHAR(  5) // ACHAR( 27), &
                                                                                    ACHAR(  8) // ACHAR(  5) // ACHAR( 29), &
                                                                                    ACHAR(  9) // ACHAR(  6) // ACHAR( 31), &
                                                                                    ACHAR( 10) // ACHAR(  7) // ACHAR( 34), &
                                                                                    ACHAR( 11) // ACHAR(  7) // ACHAR( 36), &
                                                                                    ACHAR( 12) // ACHAR(  8) // ACHAR( 38), &
                                                                                    ACHAR( 13) // ACHAR(  8) // ACHAR( 41), &
                                                                                    ACHAR( 14) // ACHAR(  9) // ACHAR( 43), &
                                                                                    ACHAR( 16) // ACHAR(  9) // ACHAR( 45), &
                                                                                    ACHAR( 17) // ACHAR( 10) // ACHAR( 48), &
                                                                                    ACHAR( 18) // ACHAR( 10) // ACHAR( 50), &
                                                                                    ACHAR( 20) // ACHAR( 11) // ACHAR( 52), &
                                                                                    ACHAR( 21) // ACHAR( 11) // ACHAR( 55), &
                                                                                    ACHAR( 22) // ACHAR( 11) // ACHAR( 57), &
                                                                                    ACHAR( 24) // ACHAR( 12) // ACHAR( 60), &
                                                                                    ACHAR( 25) // ACHAR( 12) // ACHAR( 62), &
                                                                                    ACHAR( 27) // ACHAR( 12) // ACHAR( 65), &
                                                                                    ACHAR( 28) // ACHAR( 12) // ACHAR( 67), &
                                                                                    ACHAR( 30) // ACHAR( 12) // ACHAR( 69), &
                                                                                    ACHAR( 31) // ACHAR( 12) // ACHAR( 72), &
                                                                                    ACHAR( 33) // ACHAR( 12) // ACHAR( 74), &
                                                                                    ACHAR( 35) // ACHAR( 12) // ACHAR( 76), &
                                                                                    ACHAR( 36) // ACHAR( 12) // ACHAR( 79), &
                                                                                    ACHAR( 38) // ACHAR( 12) // ACHAR( 81), &
                                                                                    ACHAR( 40) // ACHAR( 11) // ACHAR( 83), &
                                                                                    ACHAR( 41) // ACHAR( 11) // ACHAR( 85), &
                                                                                    ACHAR( 43) // ACHAR( 11) // ACHAR( 87), &
                                                                                    ACHAR( 45) // ACHAR( 11) // ACHAR( 89), &
                                                                                    ACHAR( 47) // ACHAR( 10) // ACHAR( 91), &
                                                                                    ACHAR( 49) // ACHAR( 10) // ACHAR( 92), &
                                                                                    ACHAR( 50) // ACHAR( 10) // ACHAR( 94), &
                                                                                    ACHAR( 52) // ACHAR( 10) // ACHAR( 95), &
                                                                                    ACHAR( 54) // ACHAR(  9) // ACHAR( 97), &
                                                                                    ACHAR( 56) // ACHAR(  9) // ACHAR( 98), &
                                                                                    ACHAR( 57) // ACHAR(  9) // ACHAR( 99), &
                                                                                    ACHAR( 59) // ACHAR(  9) // ACHAR(100), &
                                                                                    ACHAR( 61) // ACHAR(  9) // ACHAR(101), &
                                                                                    ACHAR( 62) // ACHAR(  9) // ACHAR(102), &
                                                                                    ACHAR( 64) // ACHAR( 10) // ACHAR(103), &
                                                                                    ACHAR( 66) // ACHAR( 10) // ACHAR(104), &
                                                                                    ACHAR( 68) // ACHAR( 10) // ACHAR(104), &
                                                                                    ACHAR( 69) // ACHAR( 10) // ACHAR(105), &
                                                                                    ACHAR( 71) // ACHAR( 11) // ACHAR(106), &
                                                                                    ACHAR( 73) // ACHAR( 11) // ACHAR(106), &
                                                                                    ACHAR( 74) // ACHAR( 12) // ACHAR(107), &
                                                                                    ACHAR( 76) // ACHAR( 12) // ACHAR(107), &
                                                                                    ACHAR( 77) // ACHAR( 13) // ACHAR(108), &
                                                                                    ACHAR( 79) // ACHAR( 13) // ACHAR(108), &
                                                                                    ACHAR( 81) // ACHAR( 14) // ACHAR(108), &
                                                                                    ACHAR( 82) // ACHAR( 14) // ACHAR(109), &
                                                                                    ACHAR( 84) // ACHAR( 15) // ACHAR(109), &
                                                                                    ACHAR( 85) // ACHAR( 15) // ACHAR(109), &
                                                                                    ACHAR( 87) // ACHAR( 16) // ACHAR(110), &
                                                                                    ACHAR( 89) // ACHAR( 16) // ACHAR(110), &
                                                                                    ACHAR( 90) // ACHAR( 17) // ACHAR(110), &
                                                                                    ACHAR( 92) // ACHAR( 18) // ACHAR(110), &
                                                                                    ACHAR( 93) // ACHAR( 18) // ACHAR(110), &
                                                                                    ACHAR( 95) // ACHAR( 19) // ACHAR(110), &
                                                                                    ACHAR( 97) // ACHAR( 19) // ACHAR(110), &
                                                                                    ACHAR( 98) // ACHAR( 20) // ACHAR(110), &
                                                                                    ACHAR(100) // ACHAR( 21) // ACHAR(110), &
                                                                                    ACHAR(101) // ACHAR( 21) // ACHAR(110), &
                                                                                    ACHAR(103) // ACHAR( 22) // ACHAR(110), &
                                                                                    ACHAR(105) // ACHAR( 22) // ACHAR(110), &
                                                                                    ACHAR(106) // ACHAR( 23) // ACHAR(110), &
                                                                                    ACHAR(108) // ACHAR( 24) // ACHAR(110), &
                                                                                    ACHAR(109) // ACHAR( 24) // ACHAR(110), &
                                                                                    ACHAR(111) // ACHAR( 25) // ACHAR(110), &
                                                                                    ACHAR(113) // ACHAR( 25) // ACHAR(110), &
                                                                                    ACHAR(114) // ACHAR( 26) // ACHAR(110), &
                                                                                    ACHAR(116) // ACHAR( 26) // ACHAR(110), &
                                                                                    ACHAR(117) // ACHAR( 27) // ACHAR(110), &
                                                                                    ACHAR(119) // ACHAR( 28) // ACHAR(109), &
                                                                                    ACHAR(120) // ACHAR( 28) // ACHAR(109), &
                                                                                    ACHAR(122) // ACHAR( 29) // ACHAR(109), &
                                                                                    ACHAR(124) // ACHAR( 29) // ACHAR(109), &
                                                                                    ACHAR(125) // ACHAR( 30) // ACHAR(109), &
                                                                                    ACHAR(127) // ACHAR( 30) // ACHAR(108), &
                                                                                    ACHAR(128) // ACHAR( 31) // ACHAR(108), &
                                                                                    ACHAR(130) // ACHAR( 32) // ACHAR(108), &
                                                                                    ACHAR(132) // ACHAR( 32) // ACHAR(107), &
                                                                                    ACHAR(133) // ACHAR( 33) // ACHAR(107), &
                                                                                    ACHAR(135) // ACHAR( 33) // ACHAR(107), &
                                                                                    ACHAR(136) // ACHAR( 34) // ACHAR(106), &
                                                                                    ACHAR(138) // ACHAR( 34) // ACHAR(106), &
                                                                                    ACHAR(140) // ACHAR( 35) // ACHAR(105), &
                                                                                    ACHAR(141) // ACHAR( 35) // ACHAR(105), &
                                                                                    ACHAR(143) // ACHAR( 36) // ACHAR(105), &
                                                                                    ACHAR(144) // ACHAR( 37) // ACHAR(104), &
                                                                                    ACHAR(146) // ACHAR( 37) // ACHAR(104), &
                                                                                    ACHAR(147) // ACHAR( 38) // ACHAR(103), &
                                                                                    ACHAR(149) // ACHAR( 38) // ACHAR(103), &
                                                                                    ACHAR(151) // ACHAR( 39) // ACHAR(102), &
                                                                                    ACHAR(152) // ACHAR( 39) // ACHAR(102), &
                                                                                    ACHAR(154) // ACHAR( 40) // ACHAR(101), &
                                                                                    ACHAR(155) // ACHAR( 41) // ACHAR(100), &
                                                                                    ACHAR(157) // ACHAR( 41) // ACHAR(100), &
                                                                                    ACHAR(159) // ACHAR( 42) // ACHAR( 99), &
                                                                                    ACHAR(160) // ACHAR( 42) // ACHAR( 99), &
                                                                                    ACHAR(162) // ACHAR( 43) // ACHAR( 98), &
                                                                                    ACHAR(163) // ACHAR( 44) // ACHAR( 97), &
                                                                                    ACHAR(165) // ACHAR( 44) // ACHAR( 96), &
                                                                                    ACHAR(166) // ACHAR( 45) // ACHAR( 96), &
                                                                                    ACHAR(168) // ACHAR( 46) // ACHAR( 95), &
                                                                                    ACHAR(169) // ACHAR( 46) // ACHAR( 94), &
                                                                                    ACHAR(171) // ACHAR( 47) // ACHAR( 94), &
                                                                                    ACHAR(173) // ACHAR( 48) // ACHAR( 93), &
                                                                                    ACHAR(174) // ACHAR( 48) // ACHAR( 92), &
                                                                                    ACHAR(176) // ACHAR( 49) // ACHAR( 91), &
                                                                                    ACHAR(177) // ACHAR( 50) // ACHAR( 90), &
                                                                                    ACHAR(179) // ACHAR( 50) // ACHAR( 90), &
                                                                                    ACHAR(180) // ACHAR( 51) // ACHAR( 89), &
                                                                                    ACHAR(182) // ACHAR( 52) // ACHAR( 88), &
                                                                                    ACHAR(183) // ACHAR( 53) // ACHAR( 87), &
                                                                                    ACHAR(185) // ACHAR( 53) // ACHAR( 86), &
                                                                                    ACHAR(186) // ACHAR( 54) // ACHAR( 85), &
                                                                                    ACHAR(188) // ACHAR( 55) // ACHAR( 84), &
                                                                                    ACHAR(189) // ACHAR( 56) // ACHAR( 83), &
                                                                                    ACHAR(191) // ACHAR( 57) // ACHAR( 82), &
                                                                                    ACHAR(192) // ACHAR( 58) // ACHAR( 81), &
                                                                                    ACHAR(193) // ACHAR( 58) // ACHAR( 80), &
                                                                                    ACHAR(195) // ACHAR( 59) // ACHAR( 79), &
                                                                                    ACHAR(196) // ACHAR( 60) // ACHAR( 78), &
                                                                                    ACHAR(198) // ACHAR( 61) // ACHAR( 77), &
                                                                                    ACHAR(199) // ACHAR( 62) // ACHAR( 76), &
                                                                                    ACHAR(200) // ACHAR( 63) // ACHAR( 75), &
                                                                                    ACHAR(202) // ACHAR( 64) // ACHAR( 74), &
                                                                                    ACHAR(203) // ACHAR( 65) // ACHAR( 73), &
                                                                                    ACHAR(204) // ACHAR( 66) // ACHAR( 72), &
                                                                                    ACHAR(206) // ACHAR( 67) // ACHAR( 71), &
                                                                                    ACHAR(207) // ACHAR( 68) // ACHAR( 70), &
                                                                                    ACHAR(208) // ACHAR( 69) // ACHAR( 69), &
                                                                                    ACHAR(210) // ACHAR( 70) // ACHAR( 68), &
                                                                                    ACHAR(211) // ACHAR( 71) // ACHAR( 67), &
                                                                                    ACHAR(212) // ACHAR( 72) // ACHAR( 66), &
                                                                                    ACHAR(213) // ACHAR( 74) // ACHAR( 65), &
                                                                                    ACHAR(215) // ACHAR( 75) // ACHAR( 63), &
                                                                                    ACHAR(216) // ACHAR( 76) // ACHAR( 62), &
                                                                                    ACHAR(217) // ACHAR( 77) // ACHAR( 61), &
                                                                                    ACHAR(218) // ACHAR( 78) // ACHAR( 60), &
                                                                                    ACHAR(219) // ACHAR( 80) // ACHAR( 59), &
                                                                                    ACHAR(221) // ACHAR( 81) // ACHAR( 58), &
                                                                                    ACHAR(222) // ACHAR( 82) // ACHAR( 56), &
                                                                                    ACHAR(223) // ACHAR( 83) // ACHAR( 55), &
                                                                                    ACHAR(224) // ACHAR( 85) // ACHAR( 54), &
                                                                                    ACHAR(225) // ACHAR( 86) // ACHAR( 53), &
                                                                                    ACHAR(226) // ACHAR( 87) // ACHAR( 52), &
                                                                                    ACHAR(227) // ACHAR( 89) // ACHAR( 51), &
                                                                                    ACHAR(228) // ACHAR( 90) // ACHAR( 49), &
                                                                                    ACHAR(229) // ACHAR( 92) // ACHAR( 48), &
                                                                                    ACHAR(230) // ACHAR( 93) // ACHAR( 47), &
                                                                                    ACHAR(231) // ACHAR( 94) // ACHAR( 46), &
                                                                                    ACHAR(232) // ACHAR( 96) // ACHAR( 45), &
                                                                                    ACHAR(233) // ACHAR( 97) // ACHAR( 43), &
                                                                                    ACHAR(234) // ACHAR( 99) // ACHAR( 42), &
                                                                                    ACHAR(235) // ACHAR(100) // ACHAR( 41), &
                                                                                    ACHAR(235) // ACHAR(102) // ACHAR( 40), &
                                                                                    ACHAR(236) // ACHAR(103) // ACHAR( 38), &
                                                                                    ACHAR(237) // ACHAR(105) // ACHAR( 37), &
                                                                                    ACHAR(238) // ACHAR(106) // ACHAR( 36), &
                                                                                    ACHAR(239) // ACHAR(108) // ACHAR( 35), &
                                                                                    ACHAR(239) // ACHAR(110) // ACHAR( 33), &
                                                                                    ACHAR(240) // ACHAR(111) // ACHAR( 32), &
                                                                                    ACHAR(241) // ACHAR(113) // ACHAR( 31), &
                                                                                    ACHAR(241) // ACHAR(115) // ACHAR( 29), &
                                                                                    ACHAR(242) // ACHAR(116) // ACHAR( 28), &
                                                                                    ACHAR(243) // ACHAR(118) // ACHAR( 27), &
                                                                                    ACHAR(243) // ACHAR(120) // ACHAR( 25), &
                                                                                    ACHAR(244) // ACHAR(121) // ACHAR( 24), &
                                                                                    ACHAR(245) // ACHAR(123) // ACHAR( 23), &
                                                                                    ACHAR(245) // ACHAR(125) // ACHAR( 21), &
                                                                                    ACHAR(246) // ACHAR(126) // ACHAR( 20), &
                                                                                    ACHAR(246) // ACHAR(128) // ACHAR( 19), &
                                                                                    ACHAR(247) // ACHAR(130) // ACHAR( 18), &
                                                                                    ACHAR(247) // ACHAR(132) // ACHAR( 16), &
                                                                                    ACHAR(248) // ACHAR(133) // ACHAR( 15), &
                                                                                    ACHAR(248) // ACHAR(135) // ACHAR( 14), &
                                                                                    ACHAR(248) // ACHAR(137) // ACHAR( 12), &
                                                                                    ACHAR(249) // ACHAR(139) // ACHAR( 11), &
                                                                                    ACHAR(249) // ACHAR(140) // ACHAR( 10), &
                                                                                    ACHAR(249) // ACHAR(142) // ACHAR(  9), &
                                                                                    ACHAR(250) // ACHAR(144) // ACHAR(  8), &
                                                                                    ACHAR(250) // ACHAR(146) // ACHAR(  7), &
                                                                                    ACHAR(250) // ACHAR(148) // ACHAR(  7), &
                                                                                    ACHAR(251) // ACHAR(150) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(151) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(153) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(155) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(157) // ACHAR(  7), &
                                                                                    ACHAR(252) // ACHAR(159) // ACHAR(  7), &
                                                                                    ACHAR(252) // ACHAR(161) // ACHAR(  8), &
                                                                                    ACHAR(252) // ACHAR(163) // ACHAR(  9), &
                                                                                    ACHAR(252) // ACHAR(165) // ACHAR( 10), &
                                                                                    ACHAR(252) // ACHAR(166) // ACHAR( 12), &
                                                                                    ACHAR(252) // ACHAR(168) // ACHAR( 13), &
                                                                                    ACHAR(252) // ACHAR(170) // ACHAR( 15), &
                                                                                    ACHAR(252) // ACHAR(172) // ACHAR( 17), &
                                                                                    ACHAR(252) // ACHAR(174) // ACHAR( 18), &
                                                                                    ACHAR(252) // ACHAR(176) // ACHAR( 20), &
                                                                                    ACHAR(252) // ACHAR(178) // ACHAR( 22), &
                                                                                    ACHAR(252) // ACHAR(180) // ACHAR( 24), &
                                                                                    ACHAR(251) // ACHAR(182) // ACHAR( 26), &
                                                                                    ACHAR(251) // ACHAR(184) // ACHAR( 29), &
                                                                                    ACHAR(251) // ACHAR(186) // ACHAR( 31), &
                                                                                    ACHAR(251) // ACHAR(188) // ACHAR( 33), &
                                                                                    ACHAR(251) // ACHAR(190) // ACHAR( 35), &
                                                                                    ACHAR(250) // ACHAR(192) // ACHAR( 38), &
                                                                                    ACHAR(250) // ACHAR(194) // ACHAR( 40), &
                                                                                    ACHAR(250) // ACHAR(196) // ACHAR( 42), &
                                                                                    ACHAR(250) // ACHAR(198) // ACHAR( 45), &
                                                                                    ACHAR(249) // ACHAR(199) // ACHAR( 47), &
                                                                                    ACHAR(249) // ACHAR(201) // ACHAR( 50), &
                                                                                    ACHAR(249) // ACHAR(203) // ACHAR( 53), &
                                                                                    ACHAR(248) // ACHAR(205) // ACHAR( 55), &
                                                                                    ACHAR(248) // ACHAR(207) // ACHAR( 58), &
                                                                                    ACHAR(247) // ACHAR(209) // ACHAR( 61), &
                                                                                    ACHAR(247) // ACHAR(211) // ACHAR( 64), &
                                                                                    ACHAR(246) // ACHAR(213) // ACHAR( 67), &
                                                                                    ACHAR(246) // ACHAR(215) // ACHAR( 70), &
                                                                                    ACHAR(245) // ACHAR(217) // ACHAR( 73), &
                                                                                    ACHAR(245) // ACHAR(219) // ACHAR( 76), &
                                                                                    ACHAR(244) // ACHAR(221) // ACHAR( 79), &
                                                                                    ACHAR(244) // ACHAR(223) // ACHAR( 83), &
                                                                                    ACHAR(244) // ACHAR(225) // ACHAR( 86), &
                                                                                    ACHAR(243) // ACHAR(227) // ACHAR( 90), &
                                                                                    ACHAR(243) // ACHAR(229) // ACHAR( 93), &
                                                                                    ACHAR(242) // ACHAR(230) // ACHAR( 97), &
                                                                                    ACHAR(242) // ACHAR(232) // ACHAR(101), &
                                                                                    ACHAR(242) // ACHAR(234) // ACHAR(105), &
                                                                                    ACHAR(241) // ACHAR(236) // ACHAR(109), &
                                                                                    ACHAR(241) // ACHAR(237) // ACHAR(113), &
                                                                                    ACHAR(241) // ACHAR(239) // ACHAR(117), &
                                                                                    ACHAR(241) // ACHAR(241) // ACHAR(121), &
                                                                                    ACHAR(242) // ACHAR(242) // ACHAR(125), &
                                                                                    ACHAR(242) // ACHAR(244) // ACHAR(130), &
                                                                                    ACHAR(243) // ACHAR(245) // ACHAR(134), &
                                                                                    ACHAR(243) // ACHAR(246) // ACHAR(138), &
                                                                                    ACHAR(244) // ACHAR(248) // ACHAR(142), &
                                                                                    ACHAR(245) // ACHAR(249) // ACHAR(146), &
                                                                                    ACHAR(246) // ACHAR(250) // ACHAR(150), &
                                                                                    ACHAR(248) // ACHAR(251) // ACHAR(154), &
                                                                                    ACHAR(249) // ACHAR(252) // ACHAR(157), &
                                                                                    ACHAR(250) // ACHAR(253) // ACHAR(161), &
                                                                                    ACHAR(252) // ACHAR(255) // ACHAR(164)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_magma = (/                      &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  4), &
                                                                                    ACHAR(  1) // ACHAR(  0) // ACHAR(  5), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  6), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  8), &
                                                                                    ACHAR(  2) // ACHAR(  1) // ACHAR(  9), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 11), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 13), &
                                                                                    ACHAR(  3) // ACHAR(  3) // ACHAR( 15), &
                                                                                    ACHAR(  3) // ACHAR(  3) // ACHAR( 18), &
                                                                                    ACHAR(  4) // ACHAR(  4) // ACHAR( 20), &
                                                                                    ACHAR(  5) // ACHAR(  4) // ACHAR( 22), &
                                                                                    ACHAR(  6) // ACHAR(  5) // ACHAR( 24), &
                                                                                    ACHAR(  6) // ACHAR(  5) // ACHAR( 26), &
                                                                                    ACHAR(  7) // ACHAR(  6) // ACHAR( 28), &
                                                                                    ACHAR(  8) // ACHAR(  7) // ACHAR( 30), &
                                                                                    ACHAR(  9) // ACHAR(  7) // ACHAR( 32), &
                                                                                    ACHAR( 10) // ACHAR(  8) // ACHAR( 34), &
                                                                                    ACHAR( 11) // ACHAR(  9) // ACHAR( 36), &
                                                                                    ACHAR( 12) // ACHAR(  9) // ACHAR( 38), &
                                                                                    ACHAR( 13) // ACHAR( 10) // ACHAR( 41), &
                                                                                    ACHAR( 14) // ACHAR( 11) // ACHAR( 43), &
                                                                                    ACHAR( 16) // ACHAR( 11) // ACHAR( 45), &
                                                                                    ACHAR( 17) // ACHAR( 12) // ACHAR( 47), &
                                                                                    ACHAR( 18) // ACHAR( 13) // ACHAR( 49), &
                                                                                    ACHAR( 19) // ACHAR( 13) // ACHAR( 52), &
                                                                                    ACHAR( 20) // ACHAR( 14) // ACHAR( 54), &
                                                                                    ACHAR( 21) // ACHAR( 14) // ACHAR( 56), &
                                                                                    ACHAR( 22) // ACHAR( 15) // ACHAR( 59), &
                                                                                    ACHAR( 24) // ACHAR( 15) // ACHAR( 61), &
                                                                                    ACHAR( 25) // ACHAR( 16) // ACHAR( 63), &
                                                                                    ACHAR( 26) // ACHAR( 16) // ACHAR( 66), &
                                                                                    ACHAR( 28) // ACHAR( 16) // ACHAR( 68), &
                                                                                    ACHAR( 29) // ACHAR( 17) // ACHAR( 71), &
                                                                                    ACHAR( 30) // ACHAR( 17) // ACHAR( 73), &
                                                                                    ACHAR( 32) // ACHAR( 17) // ACHAR( 75), &
                                                                                    ACHAR( 33) // ACHAR( 17) // ACHAR( 78), &
                                                                                    ACHAR( 34) // ACHAR( 17) // ACHAR( 80), &
                                                                                    ACHAR( 36) // ACHAR( 18) // ACHAR( 83), &
                                                                                    ACHAR( 37) // ACHAR( 18) // ACHAR( 85), &
                                                                                    ACHAR( 39) // ACHAR( 18) // ACHAR( 88), &
                                                                                    ACHAR( 41) // ACHAR( 17) // ACHAR( 90), &
                                                                                    ACHAR( 42) // ACHAR( 17) // ACHAR( 92), &
                                                                                    ACHAR( 44) // ACHAR( 17) // ACHAR( 95), &
                                                                                    ACHAR( 45) // ACHAR( 17) // ACHAR( 97), &
                                                                                    ACHAR( 47) // ACHAR( 17) // ACHAR( 99), &
                                                                                    ACHAR( 49) // ACHAR( 17) // ACHAR(101), &
                                                                                    ACHAR( 51) // ACHAR( 16) // ACHAR(103), &
                                                                                    ACHAR( 52) // ACHAR( 16) // ACHAR(105), &
                                                                                    ACHAR( 54) // ACHAR( 16) // ACHAR(107), &
                                                                                    ACHAR( 56) // ACHAR( 16) // ACHAR(108), &
                                                                                    ACHAR( 57) // ACHAR( 15) // ACHAR(110), &
                                                                                    ACHAR( 59) // ACHAR( 15) // ACHAR(112), &
                                                                                    ACHAR( 61) // ACHAR( 15) // ACHAR(113), &
                                                                                    ACHAR( 63) // ACHAR( 15) // ACHAR(114), &
                                                                                    ACHAR( 64) // ACHAR( 15) // ACHAR(116), &
                                                                                    ACHAR( 66) // ACHAR( 15) // ACHAR(117), &
                                                                                    ACHAR( 68) // ACHAR( 15) // ACHAR(118), &
                                                                                    ACHAR( 69) // ACHAR( 16) // ACHAR(119), &
                                                                                    ACHAR( 71) // ACHAR( 16) // ACHAR(120), &
                                                                                    ACHAR( 73) // ACHAR( 16) // ACHAR(120), &
                                                                                    ACHAR( 74) // ACHAR( 16) // ACHAR(121), &
                                                                                    ACHAR( 76) // ACHAR( 17) // ACHAR(122), &
                                                                                    ACHAR( 78) // ACHAR( 17) // ACHAR(123), &
                                                                                    ACHAR( 79) // ACHAR( 18) // ACHAR(123), &
                                                                                    ACHAR( 81) // ACHAR( 18) // ACHAR(124), &
                                                                                    ACHAR( 82) // ACHAR( 19) // ACHAR(124), &
                                                                                    ACHAR( 84) // ACHAR( 19) // ACHAR(125), &
                                                                                    ACHAR( 86) // ACHAR( 20) // ACHAR(125), &
                                                                                    ACHAR( 87) // ACHAR( 21) // ACHAR(126), &
                                                                                    ACHAR( 89) // ACHAR( 21) // ACHAR(126), &
                                                                                    ACHAR( 90) // ACHAR( 22) // ACHAR(126), &
                                                                                    ACHAR( 92) // ACHAR( 22) // ACHAR(127), &
                                                                                    ACHAR( 93) // ACHAR( 23) // ACHAR(127), &
                                                                                    ACHAR( 95) // ACHAR( 24) // ACHAR(127), &
                                                                                    ACHAR( 96) // ACHAR( 24) // ACHAR(128), &
                                                                                    ACHAR( 98) // ACHAR( 25) // ACHAR(128), &
                                                                                    ACHAR(100) // ACHAR( 26) // ACHAR(128), &
                                                                                    ACHAR(101) // ACHAR( 26) // ACHAR(128), &
                                                                                    ACHAR(103) // ACHAR( 27) // ACHAR(128), &
                                                                                    ACHAR(104) // ACHAR( 28) // ACHAR(129), &
                                                                                    ACHAR(106) // ACHAR( 28) // ACHAR(129), &
                                                                                    ACHAR(107) // ACHAR( 29) // ACHAR(129), &
                                                                                    ACHAR(109) // ACHAR( 29) // ACHAR(129), &
                                                                                    ACHAR(110) // ACHAR( 30) // ACHAR(129), &
                                                                                    ACHAR(112) // ACHAR( 31) // ACHAR(129), &
                                                                                    ACHAR(114) // ACHAR( 31) // ACHAR(129), &
                                                                                    ACHAR(115) // ACHAR( 32) // ACHAR(129), &
                                                                                    ACHAR(117) // ACHAR( 33) // ACHAR(129), &
                                                                                    ACHAR(118) // ACHAR( 33) // ACHAR(129), &
                                                                                    ACHAR(120) // ACHAR( 34) // ACHAR(129), &
                                                                                    ACHAR(121) // ACHAR( 34) // ACHAR(130), &
                                                                                    ACHAR(123) // ACHAR( 35) // ACHAR(130), &
                                                                                    ACHAR(124) // ACHAR( 35) // ACHAR(130), &
                                                                                    ACHAR(126) // ACHAR( 36) // ACHAR(130), &
                                                                                    ACHAR(128) // ACHAR( 37) // ACHAR(130), &
                                                                                    ACHAR(129) // ACHAR( 37) // ACHAR(129), &
                                                                                    ACHAR(131) // ACHAR( 38) // ACHAR(129), &
                                                                                    ACHAR(132) // ACHAR( 38) // ACHAR(129), &
                                                                                    ACHAR(134) // ACHAR( 39) // ACHAR(129), &
                                                                                    ACHAR(136) // ACHAR( 39) // ACHAR(129), &
                                                                                    ACHAR(137) // ACHAR( 40) // ACHAR(129), &
                                                                                    ACHAR(139) // ACHAR( 41) // ACHAR(129), &
                                                                                    ACHAR(140) // ACHAR( 41) // ACHAR(129), &
                                                                                    ACHAR(142) // ACHAR( 42) // ACHAR(129), &
                                                                                    ACHAR(144) // ACHAR( 42) // ACHAR(129), &
                                                                                    ACHAR(145) // ACHAR( 43) // ACHAR(129), &
                                                                                    ACHAR(147) // ACHAR( 43) // ACHAR(128), &
                                                                                    ACHAR(148) // ACHAR( 44) // ACHAR(128), &
                                                                                    ACHAR(150) // ACHAR( 44) // ACHAR(128), &
                                                                                    ACHAR(152) // ACHAR( 45) // ACHAR(128), &
                                                                                    ACHAR(153) // ACHAR( 45) // ACHAR(128), &
                                                                                    ACHAR(155) // ACHAR( 46) // ACHAR(127), &
                                                                                    ACHAR(156) // ACHAR( 46) // ACHAR(127), &
                                                                                    ACHAR(158) // ACHAR( 47) // ACHAR(127), &
                                                                                    ACHAR(160) // ACHAR( 47) // ACHAR(127), &
                                                                                    ACHAR(161) // ACHAR( 48) // ACHAR(126), &
                                                                                    ACHAR(163) // ACHAR( 48) // ACHAR(126), &
                                                                                    ACHAR(165) // ACHAR( 49) // ACHAR(126), &
                                                                                    ACHAR(166) // ACHAR( 49) // ACHAR(125), &
                                                                                    ACHAR(168) // ACHAR( 50) // ACHAR(125), &
                                                                                    ACHAR(170) // ACHAR( 51) // ACHAR(125), &
                                                                                    ACHAR(171) // ACHAR( 51) // ACHAR(124), &
                                                                                    ACHAR(173) // ACHAR( 52) // ACHAR(124), &
                                                                                    ACHAR(174) // ACHAR( 52) // ACHAR(123), &
                                                                                    ACHAR(176) // ACHAR( 53) // ACHAR(123), &
                                                                                    ACHAR(178) // ACHAR( 53) // ACHAR(123), &
                                                                                    ACHAR(179) // ACHAR( 54) // ACHAR(122), &
                                                                                    ACHAR(181) // ACHAR( 54) // ACHAR(122), &
                                                                                    ACHAR(183) // ACHAR( 55) // ACHAR(121), &
                                                                                    ACHAR(184) // ACHAR( 55) // ACHAR(121), &
                                                                                    ACHAR(186) // ACHAR( 56) // ACHAR(120), &
                                                                                    ACHAR(188) // ACHAR( 57) // ACHAR(120), &
                                                                                    ACHAR(189) // ACHAR( 57) // ACHAR(119), &
                                                                                    ACHAR(191) // ACHAR( 58) // ACHAR(119), &
                                                                                    ACHAR(192) // ACHAR( 58) // ACHAR(118), &
                                                                                    ACHAR(194) // ACHAR( 59) // ACHAR(117), &
                                                                                    ACHAR(196) // ACHAR( 60) // ACHAR(117), &
                                                                                    ACHAR(197) // ACHAR( 60) // ACHAR(116), &
                                                                                    ACHAR(199) // ACHAR( 61) // ACHAR(115), &
                                                                                    ACHAR(200) // ACHAR( 62) // ACHAR(115), &
                                                                                    ACHAR(202) // ACHAR( 62) // ACHAR(114), &
                                                                                    ACHAR(204) // ACHAR( 63) // ACHAR(113), &
                                                                                    ACHAR(205) // ACHAR( 64) // ACHAR(113), &
                                                                                    ACHAR(207) // ACHAR( 64) // ACHAR(112), &
                                                                                    ACHAR(208) // ACHAR( 65) // ACHAR(111), &
                                                                                    ACHAR(210) // ACHAR( 66) // ACHAR(111), &
                                                                                    ACHAR(211) // ACHAR( 67) // ACHAR(110), &
                                                                                    ACHAR(213) // ACHAR( 68) // ACHAR(109), &
                                                                                    ACHAR(214) // ACHAR( 69) // ACHAR(108), &
                                                                                    ACHAR(216) // ACHAR( 69) // ACHAR(108), &
                                                                                    ACHAR(217) // ACHAR( 70) // ACHAR(107), &
                                                                                    ACHAR(219) // ACHAR( 71) // ACHAR(106), &
                                                                                    ACHAR(220) // ACHAR( 72) // ACHAR(105), &
                                                                                    ACHAR(222) // ACHAR( 73) // ACHAR(104), &
                                                                                    ACHAR(223) // ACHAR( 74) // ACHAR(104), &
                                                                                    ACHAR(224) // ACHAR( 76) // ACHAR(103), &
                                                                                    ACHAR(226) // ACHAR( 77) // ACHAR(102), &
                                                                                    ACHAR(227) // ACHAR( 78) // ACHAR(101), &
                                                                                    ACHAR(228) // ACHAR( 79) // ACHAR(100), &
                                                                                    ACHAR(229) // ACHAR( 80) // ACHAR(100), &
                                                                                    ACHAR(231) // ACHAR( 82) // ACHAR( 99), &
                                                                                    ACHAR(232) // ACHAR( 83) // ACHAR( 98), &
                                                                                    ACHAR(233) // ACHAR( 84) // ACHAR( 98), &
                                                                                    ACHAR(234) // ACHAR( 86) // ACHAR( 97), &
                                                                                    ACHAR(235) // ACHAR( 87) // ACHAR( 96), &
                                                                                    ACHAR(236) // ACHAR( 88) // ACHAR( 96), &
                                                                                    ACHAR(237) // ACHAR( 90) // ACHAR( 95), &
                                                                                    ACHAR(238) // ACHAR( 91) // ACHAR( 94), &
                                                                                    ACHAR(239) // ACHAR( 93) // ACHAR( 94), &
                                                                                    ACHAR(240) // ACHAR( 95) // ACHAR( 94), &
                                                                                    ACHAR(241) // ACHAR( 96) // ACHAR( 93), &
                                                                                    ACHAR(242) // ACHAR( 98) // ACHAR( 93), &
                                                                                    ACHAR(242) // ACHAR(100) // ACHAR( 92), &
                                                                                    ACHAR(243) // ACHAR(101) // ACHAR( 92), &
                                                                                    ACHAR(244) // ACHAR(103) // ACHAR( 92), &
                                                                                    ACHAR(244) // ACHAR(105) // ACHAR( 92), &
                                                                                    ACHAR(245) // ACHAR(107) // ACHAR( 92), &
                                                                                    ACHAR(246) // ACHAR(108) // ACHAR( 92), &
                                                                                    ACHAR(246) // ACHAR(110) // ACHAR( 92), &
                                                                                    ACHAR(247) // ACHAR(112) // ACHAR( 92), &
                                                                                    ACHAR(247) // ACHAR(114) // ACHAR( 92), &
                                                                                    ACHAR(248) // ACHAR(116) // ACHAR( 92), &
                                                                                    ACHAR(248) // ACHAR(118) // ACHAR( 92), &
                                                                                    ACHAR(249) // ACHAR(120) // ACHAR( 93), &
                                                                                    ACHAR(249) // ACHAR(121) // ACHAR( 93), &
                                                                                    ACHAR(249) // ACHAR(123) // ACHAR( 93), &
                                                                                    ACHAR(250) // ACHAR(125) // ACHAR( 94), &
                                                                                    ACHAR(250) // ACHAR(127) // ACHAR( 94), &
                                                                                    ACHAR(250) // ACHAR(129) // ACHAR( 95), &
                                                                                    ACHAR(251) // ACHAR(131) // ACHAR( 95), &
                                                                                    ACHAR(251) // ACHAR(133) // ACHAR( 96), &
                                                                                    ACHAR(251) // ACHAR(135) // ACHAR( 97), &
                                                                                    ACHAR(252) // ACHAR(137) // ACHAR( 97), &
                                                                                    ACHAR(252) // ACHAR(138) // ACHAR( 98), &
                                                                                    ACHAR(252) // ACHAR(140) // ACHAR( 99), &
                                                                                    ACHAR(252) // ACHAR(142) // ACHAR(100), &
                                                                                    ACHAR(252) // ACHAR(144) // ACHAR(101), &
                                                                                    ACHAR(253) // ACHAR(146) // ACHAR(102), &
                                                                                    ACHAR(253) // ACHAR(148) // ACHAR(103), &
                                                                                    ACHAR(253) // ACHAR(150) // ACHAR(104), &
                                                                                    ACHAR(253) // ACHAR(152) // ACHAR(105), &
                                                                                    ACHAR(253) // ACHAR(154) // ACHAR(106), &
                                                                                    ACHAR(253) // ACHAR(155) // ACHAR(107), &
                                                                                    ACHAR(254) // ACHAR(157) // ACHAR(108), &
                                                                                    ACHAR(254) // ACHAR(159) // ACHAR(109), &
                                                                                    ACHAR(254) // ACHAR(161) // ACHAR(110), &
                                                                                    ACHAR(254) // ACHAR(163) // ACHAR(111), &
                                                                                    ACHAR(254) // ACHAR(165) // ACHAR(113), &
                                                                                    ACHAR(254) // ACHAR(167) // ACHAR(114), &
                                                                                    ACHAR(254) // ACHAR(169) // ACHAR(115), &
                                                                                    ACHAR(254) // ACHAR(170) // ACHAR(116), &
                                                                                    ACHAR(254) // ACHAR(172) // ACHAR(118), &
                                                                                    ACHAR(254) // ACHAR(174) // ACHAR(119), &
                                                                                    ACHAR(254) // ACHAR(176) // ACHAR(120), &
                                                                                    ACHAR(254) // ACHAR(178) // ACHAR(122), &
                                                                                    ACHAR(254) // ACHAR(180) // ACHAR(123), &
                                                                                    ACHAR(254) // ACHAR(182) // ACHAR(124), &
                                                                                    ACHAR(254) // ACHAR(183) // ACHAR(126), &
                                                                                    ACHAR(254) // ACHAR(185) // ACHAR(127), &
                                                                                    ACHAR(254) // ACHAR(187) // ACHAR(129), &
                                                                                    ACHAR(254) // ACHAR(189) // ACHAR(130), &
                                                                                    ACHAR(254) // ACHAR(191) // ACHAR(132), &
                                                                                    ACHAR(254) // ACHAR(193) // ACHAR(133), &
                                                                                    ACHAR(254) // ACHAR(194) // ACHAR(135), &
                                                                                    ACHAR(254) // ACHAR(196) // ACHAR(136), &
                                                                                    ACHAR(254) // ACHAR(198) // ACHAR(138), &
                                                                                    ACHAR(254) // ACHAR(200) // ACHAR(140), &
                                                                                    ACHAR(254) // ACHAR(202) // ACHAR(141), &
                                                                                    ACHAR(254) // ACHAR(204) // ACHAR(143), &
                                                                                    ACHAR(254) // ACHAR(205) // ACHAR(144), &
                                                                                    ACHAR(254) // ACHAR(207) // ACHAR(146), &
                                                                                    ACHAR(254) // ACHAR(209) // ACHAR(148), &
                                                                                    ACHAR(254) // ACHAR(211) // ACHAR(149), &
                                                                                    ACHAR(254) // ACHAR(213) // ACHAR(151), &
                                                                                    ACHAR(254) // ACHAR(215) // ACHAR(153), &
                                                                                    ACHAR(254) // ACHAR(216) // ACHAR(154), &
                                                                                    ACHAR(253) // ACHAR(218) // ACHAR(156), &
                                                                                    ACHAR(253) // ACHAR(220) // ACHAR(158), &
                                                                                    ACHAR(253) // ACHAR(222) // ACHAR(160), &
                                                                                    ACHAR(253) // ACHAR(224) // ACHAR(161), &
                                                                                    ACHAR(253) // ACHAR(226) // ACHAR(163), &
                                                                                    ACHAR(253) // ACHAR(227) // ACHAR(165), &
                                                                                    ACHAR(253) // ACHAR(229) // ACHAR(167), &
                                                                                    ACHAR(253) // ACHAR(231) // ACHAR(169), &
                                                                                    ACHAR(253) // ACHAR(233) // ACHAR(170), &
                                                                                    ACHAR(253) // ACHAR(235) // ACHAR(172), &
                                                                                    ACHAR(252) // ACHAR(236) // ACHAR(174), &
                                                                                    ACHAR(252) // ACHAR(238) // ACHAR(176), &
                                                                                    ACHAR(252) // ACHAR(240) // ACHAR(178), &
                                                                                    ACHAR(252) // ACHAR(242) // ACHAR(180), &
                                                                                    ACHAR(252) // ACHAR(244) // ACHAR(182), &
                                                                                    ACHAR(252) // ACHAR(246) // ACHAR(184), &
                                                                                    ACHAR(252) // ACHAR(247) // ACHAR(185), &
                                                                                    ACHAR(252) // ACHAR(249) // ACHAR(187), &
                                                                                    ACHAR(252) // ACHAR(251) // ACHAR(189), &
                                                                                    ACHAR(252) // ACHAR(253) // ACHAR(191)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_cividis = (/                    &
                                                                                    ACHAR(  0) // ACHAR( 34) // ACHAR( 78), &
                                                                                    ACHAR(  0) // ACHAR( 35) // ACHAR( 79), &
                                                                                    ACHAR(  0) // ACHAR( 36) // ACHAR( 81), &
                                                                                    ACHAR(  0) // ACHAR( 37) // ACHAR( 83), &
                                                                                    ACHAR(  0) // ACHAR( 37) // ACHAR( 84), &
                                                                                    ACHAR(  0) // ACHAR( 38) // ACHAR( 86), &
                                                                                    ACHAR(  0) // ACHAR( 39) // ACHAR( 88), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR( 89), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR( 91), &
                                                                                    ACHAR(  0) // ACHAR( 41) // ACHAR( 93), &
                                                                                    ACHAR(  0) // ACHAR( 42) // ACHAR( 95), &
                                                                                    ACHAR(  0) // ACHAR( 42) // ACHAR( 97), &
                                                                                    ACHAR(  0) // ACHAR( 43) // ACHAR( 98), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(100), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(102), &
                                                                                    ACHAR(  0) // ACHAR( 45) // ACHAR(104), &
                                                                                    ACHAR(  0) // ACHAR( 46) // ACHAR(106), &
                                                                                    ACHAR(  0) // ACHAR( 46) // ACHAR(108), &
                                                                                    ACHAR(  0) // ACHAR( 47) // ACHAR(109), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(111), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR( 49) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR( 49) // ACHAR(113), &
                                                                                    ACHAR(  1) // ACHAR( 50) // ACHAR(113), &
                                                                                    ACHAR(  5) // ACHAR( 51) // ACHAR(113), &
                                                                                    ACHAR(  8) // ACHAR( 51) // ACHAR(112), &
                                                                                    ACHAR( 12) // ACHAR( 52) // ACHAR(112), &
                                                                                    ACHAR( 15) // ACHAR( 53) // ACHAR(112), &
                                                                                    ACHAR( 18) // ACHAR( 53) // ACHAR(112), &
                                                                                    ACHAR( 20) // ACHAR( 54) // ACHAR(112), &
                                                                                    ACHAR( 22) // ACHAR( 55) // ACHAR(112), &
                                                                                    ACHAR( 24) // ACHAR( 55) // ACHAR(111), &
                                                                                    ACHAR( 26) // ACHAR( 56) // ACHAR(111), &
                                                                                    ACHAR( 28) // ACHAR( 57) // ACHAR(111), &
                                                                                    ACHAR( 30) // ACHAR( 58) // ACHAR(111), &
                                                                                    ACHAR( 32) // ACHAR( 58) // ACHAR(111), &
                                                                                    ACHAR( 33) // ACHAR( 59) // ACHAR(110), &
                                                                                    ACHAR( 35) // ACHAR( 60) // ACHAR(110), &
                                                                                    ACHAR( 36) // ACHAR( 60) // ACHAR(110), &
                                                                                    ACHAR( 38) // ACHAR( 61) // ACHAR(110), &
                                                                                    ACHAR( 39) // ACHAR( 62) // ACHAR(110), &
                                                                                    ACHAR( 41) // ACHAR( 63) // ACHAR(110), &
                                                                                    ACHAR( 42) // ACHAR( 63) // ACHAR(109), &
                                                                                    ACHAR( 43) // ACHAR( 64) // ACHAR(109), &
                                                                                    ACHAR( 45) // ACHAR( 65) // ACHAR(109), &
                                                                                    ACHAR( 46) // ACHAR( 65) // ACHAR(109), &
                                                                                    ACHAR( 47) // ACHAR( 66) // ACHAR(109), &
                                                                                    ACHAR( 49) // ACHAR( 67) // ACHAR(109), &
                                                                                    ACHAR( 50) // ACHAR( 67) // ACHAR(109), &
                                                                                    ACHAR( 51) // ACHAR( 68) // ACHAR(109), &
                                                                                    ACHAR( 52) // ACHAR( 69) // ACHAR(108), &
                                                                                    ACHAR( 53) // ACHAR( 69) // ACHAR(108), &
                                                                                    ACHAR( 54) // ACHAR( 70) // ACHAR(108), &
                                                                                    ACHAR( 56) // ACHAR( 71) // ACHAR(108), &
                                                                                    ACHAR( 57) // ACHAR( 72) // ACHAR(108), &
                                                                                    ACHAR( 58) // ACHAR( 72) // ACHAR(108), &
                                                                                    ACHAR( 59) // ACHAR( 73) // ACHAR(108), &
                                                                                    ACHAR( 60) // ACHAR( 74) // ACHAR(108), &
                                                                                    ACHAR( 61) // ACHAR( 74) // ACHAR(108), &
                                                                                    ACHAR( 62) // ACHAR( 75) // ACHAR(108), &
                                                                                    ACHAR( 63) // ACHAR( 76) // ACHAR(108), &
                                                                                    ACHAR( 64) // ACHAR( 76) // ACHAR(108), &
                                                                                    ACHAR( 65) // ACHAR( 77) // ACHAR(108), &
                                                                                    ACHAR( 66) // ACHAR( 78) // ACHAR(108), &
                                                                                    ACHAR( 67) // ACHAR( 78) // ACHAR(108), &
                                                                                    ACHAR( 68) // ACHAR( 79) // ACHAR(108), &
                                                                                    ACHAR( 69) // ACHAR( 80) // ACHAR(108), &
                                                                                    ACHAR( 70) // ACHAR( 81) // ACHAR(108), &
                                                                                    ACHAR( 71) // ACHAR( 81) // ACHAR(108), &
                                                                                    ACHAR( 72) // ACHAR( 82) // ACHAR(108), &
                                                                                    ACHAR( 73) // ACHAR( 83) // ACHAR(108), &
                                                                                    ACHAR( 74) // ACHAR( 83) // ACHAR(108), &
                                                                                    ACHAR( 75) // ACHAR( 84) // ACHAR(108), &
                                                                                    ACHAR( 76) // ACHAR( 85) // ACHAR(108), &
                                                                                    ACHAR( 77) // ACHAR( 85) // ACHAR(108), &
                                                                                    ACHAR( 78) // ACHAR( 86) // ACHAR(108), &
                                                                                    ACHAR( 79) // ACHAR( 87) // ACHAR(108), &
                                                                                    ACHAR( 80) // ACHAR( 87) // ACHAR(108), &
                                                                                    ACHAR( 81) // ACHAR( 88) // ACHAR(109), &
                                                                                    ACHAR( 82) // ACHAR( 89) // ACHAR(109), &
                                                                                    ACHAR( 83) // ACHAR( 90) // ACHAR(109), &
                                                                                    ACHAR( 84) // ACHAR( 90) // ACHAR(109), &
                                                                                    ACHAR( 85) // ACHAR( 91) // ACHAR(109), &
                                                                                    ACHAR( 85) // ACHAR( 92) // ACHAR(109), &
                                                                                    ACHAR( 86) // ACHAR( 92) // ACHAR(109), &
                                                                                    ACHAR( 87) // ACHAR( 93) // ACHAR(109), &
                                                                                    ACHAR( 88) // ACHAR( 94) // ACHAR(109), &
                                                                                    ACHAR( 89) // ACHAR( 94) // ACHAR(110), &
                                                                                    ACHAR( 90) // ACHAR( 95) // ACHAR(110), &
                                                                                    ACHAR( 91) // ACHAR( 96) // ACHAR(110), &
                                                                                    ACHAR( 92) // ACHAR( 97) // ACHAR(110), &
                                                                                    ACHAR( 93) // ACHAR( 97) // ACHAR(110), &
                                                                                    ACHAR( 94) // ACHAR( 98) // ACHAR(110), &
                                                                                    ACHAR( 94) // ACHAR( 99) // ACHAR(111), &
                                                                                    ACHAR( 95) // ACHAR( 99) // ACHAR(111), &
                                                                                    ACHAR( 96) // ACHAR(100) // ACHAR(111), &
                                                                                    ACHAR( 97) // ACHAR(101) // ACHAR(111), &
                                                                                    ACHAR( 98) // ACHAR(101) // ACHAR(111), &
                                                                                    ACHAR( 99) // ACHAR(102) // ACHAR(112), &
                                                                                    ACHAR(100) // ACHAR(103) // ACHAR(112), &
                                                                                    ACHAR(101) // ACHAR(104) // ACHAR(112), &
                                                                                    ACHAR(101) // ACHAR(104) // ACHAR(112), &
                                                                                    ACHAR(102) // ACHAR(105) // ACHAR(112), &
                                                                                    ACHAR(103) // ACHAR(106) // ACHAR(113), &
                                                                                    ACHAR(104) // ACHAR(106) // ACHAR(113), &
                                                                                    ACHAR(105) // ACHAR(107) // ACHAR(113), &
                                                                                    ACHAR(106) // ACHAR(108) // ACHAR(113), &
                                                                                    ACHAR(107) // ACHAR(109) // ACHAR(114), &
                                                                                    ACHAR(108) // ACHAR(109) // ACHAR(114), &
                                                                                    ACHAR(108) // ACHAR(110) // ACHAR(114), &
                                                                                    ACHAR(109) // ACHAR(111) // ACHAR(114), &
                                                                                    ACHAR(110) // ACHAR(111) // ACHAR(115), &
                                                                                    ACHAR(111) // ACHAR(112) // ACHAR(115), &
                                                                                    ACHAR(112) // ACHAR(113) // ACHAR(115), &
                                                                                    ACHAR(113) // ACHAR(114) // ACHAR(116), &
                                                                                    ACHAR(114) // ACHAR(114) // ACHAR(116), &
                                                                                    ACHAR(114) // ACHAR(115) // ACHAR(116), &
                                                                                    ACHAR(115) // ACHAR(116) // ACHAR(117), &
                                                                                    ACHAR(116) // ACHAR(116) // ACHAR(117), &
                                                                                    ACHAR(117) // ACHAR(117) // ACHAR(117), &
                                                                                    ACHAR(118) // ACHAR(118) // ACHAR(118), &
                                                                                    ACHAR(119) // ACHAR(119) // ACHAR(118), &
                                                                                    ACHAR(119) // ACHAR(119) // ACHAR(119), &
                                                                                    ACHAR(120) // ACHAR(120) // ACHAR(119), &
                                                                                    ACHAR(121) // ACHAR(121) // ACHAR(119), &
                                                                                    ACHAR(122) // ACHAR(122) // ACHAR(120), &
                                                                                    ACHAR(123) // ACHAR(122) // ACHAR(120), &
                                                                                    ACHAR(124) // ACHAR(123) // ACHAR(120), &
                                                                                    ACHAR(125) // ACHAR(124) // ACHAR(120), &
                                                                                    ACHAR(126) // ACHAR(124) // ACHAR(120), &
                                                                                    ACHAR(126) // ACHAR(125) // ACHAR(120), &
                                                                                    ACHAR(127) // ACHAR(126) // ACHAR(120), &
                                                                                    ACHAR(128) // ACHAR(127) // ACHAR(120), &
                                                                                    ACHAR(129) // ACHAR(127) // ACHAR(120), &
                                                                                    ACHAR(130) // ACHAR(128) // ACHAR(121), &
                                                                                    ACHAR(131) // ACHAR(129) // ACHAR(121), &
                                                                                    ACHAR(132) // ACHAR(130) // ACHAR(121), &
                                                                                    ACHAR(133) // ACHAR(130) // ACHAR(121), &
                                                                                    ACHAR(134) // ACHAR(131) // ACHAR(121), &
                                                                                    ACHAR(135) // ACHAR(132) // ACHAR(120), &
                                                                                    ACHAR(136) // ACHAR(133) // ACHAR(120), &
                                                                                    ACHAR(137) // ACHAR(133) // ACHAR(120), &
                                                                                    ACHAR(138) // ACHAR(134) // ACHAR(120), &
                                                                                    ACHAR(139) // ACHAR(135) // ACHAR(120), &
                                                                                    ACHAR(140) // ACHAR(136) // ACHAR(120), &
                                                                                    ACHAR(141) // ACHAR(136) // ACHAR(120), &
                                                                                    ACHAR(142) // ACHAR(137) // ACHAR(120), &
                                                                                    ACHAR(143) // ACHAR(138) // ACHAR(120), &
                                                                                    ACHAR(144) // ACHAR(139) // ACHAR(120), &
                                                                                    ACHAR(145) // ACHAR(139) // ACHAR(120), &
                                                                                    ACHAR(146) // ACHAR(140) // ACHAR(120), &
                                                                                    ACHAR(146) // ACHAR(141) // ACHAR(120), &
                                                                                    ACHAR(147) // ACHAR(142) // ACHAR(120), &
                                                                                    ACHAR(148) // ACHAR(142) // ACHAR(119), &
                                                                                    ACHAR(149) // ACHAR(143) // ACHAR(119), &
                                                                                    ACHAR(150) // ACHAR(144) // ACHAR(119), &
                                                                                    ACHAR(151) // ACHAR(145) // ACHAR(119), &
                                                                                    ACHAR(152) // ACHAR(146) // ACHAR(119), &
                                                                                    ACHAR(153) // ACHAR(146) // ACHAR(119), &
                                                                                    ACHAR(154) // ACHAR(147) // ACHAR(118), &
                                                                                    ACHAR(155) // ACHAR(148) // ACHAR(118), &
                                                                                    ACHAR(156) // ACHAR(149) // ACHAR(118), &
                                                                                    ACHAR(157) // ACHAR(149) // ACHAR(118), &
                                                                                    ACHAR(158) // ACHAR(150) // ACHAR(118), &
                                                                                    ACHAR(159) // ACHAR(151) // ACHAR(117), &
                                                                                    ACHAR(160) // ACHAR(152) // ACHAR(117), &
                                                                                    ACHAR(161) // ACHAR(153) // ACHAR(117), &
                                                                                    ACHAR(162) // ACHAR(153) // ACHAR(117), &
                                                                                    ACHAR(163) // ACHAR(154) // ACHAR(116), &
                                                                                    ACHAR(164) // ACHAR(155) // ACHAR(116), &
                                                                                    ACHAR(165) // ACHAR(156) // ACHAR(116), &
                                                                                    ACHAR(166) // ACHAR(156) // ACHAR(116), &
                                                                                    ACHAR(167) // ACHAR(157) // ACHAR(115), &
                                                                                    ACHAR(168) // ACHAR(158) // ACHAR(115), &
                                                                                    ACHAR(169) // ACHAR(159) // ACHAR(115), &
                                                                                    ACHAR(170) // ACHAR(160) // ACHAR(115), &
                                                                                    ACHAR(171) // ACHAR(160) // ACHAR(114), &
                                                                                    ACHAR(172) // ACHAR(161) // ACHAR(114), &
                                                                                    ACHAR(173) // ACHAR(162) // ACHAR(114), &
                                                                                    ACHAR(174) // ACHAR(163) // ACHAR(113), &
                                                                                    ACHAR(175) // ACHAR(164) // ACHAR(113), &
                                                                                    ACHAR(176) // ACHAR(165) // ACHAR(113), &
                                                                                    ACHAR(177) // ACHAR(165) // ACHAR(112), &
                                                                                    ACHAR(179) // ACHAR(166) // ACHAR(112), &
                                                                                    ACHAR(180) // ACHAR(167) // ACHAR(111), &
                                                                                    ACHAR(181) // ACHAR(168) // ACHAR(111), &
                                                                                    ACHAR(182) // ACHAR(169) // ACHAR(111), &
                                                                                    ACHAR(183) // ACHAR(169) // ACHAR(110), &
                                                                                    ACHAR(184) // ACHAR(170) // ACHAR(110), &
                                                                                    ACHAR(185) // ACHAR(171) // ACHAR(109), &
                                                                                    ACHAR(186) // ACHAR(172) // ACHAR(109), &
                                                                                    ACHAR(187) // ACHAR(173) // ACHAR(109), &
                                                                                    ACHAR(188) // ACHAR(174) // ACHAR(108), &
                                                                                    ACHAR(189) // ACHAR(174) // ACHAR(108), &
                                                                                    ACHAR(190) // ACHAR(175) // ACHAR(107), &
                                                                                    ACHAR(191) // ACHAR(176) // ACHAR(107), &
                                                                                    ACHAR(192) // ACHAR(177) // ACHAR(106), &
                                                                                    ACHAR(193) // ACHAR(178) // ACHAR(106), &
                                                                                    ACHAR(194) // ACHAR(179) // ACHAR(105), &
                                                                                    ACHAR(195) // ACHAR(179) // ACHAR(105), &
                                                                                    ACHAR(196) // ACHAR(180) // ACHAR(104), &
                                                                                    ACHAR(197) // ACHAR(181) // ACHAR(104), &
                                                                                    ACHAR(198) // ACHAR(182) // ACHAR(103), &
                                                                                    ACHAR(199) // ACHAR(183) // ACHAR(103), &
                                                                                    ACHAR(200) // ACHAR(184) // ACHAR(102), &
                                                                                    ACHAR(201) // ACHAR(185) // ACHAR(101), &
                                                                                    ACHAR(203) // ACHAR(185) // ACHAR(101), &
                                                                                    ACHAR(204) // ACHAR(186) // ACHAR(100), &
                                                                                    ACHAR(205) // ACHAR(187) // ACHAR( 99), &
                                                                                    ACHAR(206) // ACHAR(188) // ACHAR( 99), &
                                                                                    ACHAR(207) // ACHAR(189) // ACHAR( 98), &
                                                                                    ACHAR(208) // ACHAR(190) // ACHAR( 98), &
                                                                                    ACHAR(209) // ACHAR(191) // ACHAR( 97), &
                                                                                    ACHAR(210) // ACHAR(192) // ACHAR( 96), &
                                                                                    ACHAR(211) // ACHAR(192) // ACHAR( 95), &
                                                                                    ACHAR(212) // ACHAR(193) // ACHAR( 95), &
                                                                                    ACHAR(213) // ACHAR(194) // ACHAR( 94), &
                                                                                    ACHAR(214) // ACHAR(195) // ACHAR( 93), &
                                                                                    ACHAR(215) // ACHAR(196) // ACHAR( 92), &
                                                                                    ACHAR(217) // ACHAR(197) // ACHAR( 92), &
                                                                                    ACHAR(218) // ACHAR(198) // ACHAR( 91), &
                                                                                    ACHAR(219) // ACHAR(199) // ACHAR( 90), &
                                                                                    ACHAR(220) // ACHAR(200) // ACHAR( 89), &
                                                                                    ACHAR(221) // ACHAR(200) // ACHAR( 88), &
                                                                                    ACHAR(222) // ACHAR(201) // ACHAR( 88), &
                                                                                    ACHAR(223) // ACHAR(202) // ACHAR( 87), &
                                                                                    ACHAR(224) // ACHAR(203) // ACHAR( 86), &
                                                                                    ACHAR(225) // ACHAR(204) // ACHAR( 85), &
                                                                                    ACHAR(226) // ACHAR(205) // ACHAR( 84), &
                                                                                    ACHAR(228) // ACHAR(206) // ACHAR( 83), &
                                                                                    ACHAR(229) // ACHAR(207) // ACHAR( 82), &
                                                                                    ACHAR(230) // ACHAR(208) // ACHAR( 81), &
                                                                                    ACHAR(231) // ACHAR(209) // ACHAR( 80), &
                                                                                    ACHAR(232) // ACHAR(210) // ACHAR( 79), &
                                                                                    ACHAR(233) // ACHAR(211) // ACHAR( 78), &
                                                                                    ACHAR(234) // ACHAR(211) // ACHAR( 76), &
                                                                                    ACHAR(235) // ACHAR(212) // ACHAR( 75), &
                                                                                    ACHAR(237) // ACHAR(213) // ACHAR( 74), &
                                                                                    ACHAR(238) // ACHAR(214) // ACHAR( 73), &
                                                                                    ACHAR(239) // ACHAR(215) // ACHAR( 72), &
                                                                                    ACHAR(240) // ACHAR(216) // ACHAR( 70), &
                                                                                    ACHAR(241) // ACHAR(217) // ACHAR( 69), &
                                                                                    ACHAR(242) // ACHAR(218) // ACHAR( 68), &
                                                                                    ACHAR(243) // ACHAR(219) // ACHAR( 66), &
                                                                                    ACHAR(245) // ACHAR(220) // ACHAR( 65), &
                                                                                    ACHAR(246) // ACHAR(221) // ACHAR( 63), &
                                                                                    ACHAR(247) // ACHAR(222) // ACHAR( 62), &
                                                                                    ACHAR(248) // ACHAR(223) // ACHAR( 60), &
                                                                                    ACHAR(249) // ACHAR(224) // ACHAR( 58), &
                                                                                    ACHAR(251) // ACHAR(225) // ACHAR( 56), &
                                                                                    ACHAR(252) // ACHAR(226) // ACHAR( 54), &
                                                                                    ACHAR(253) // ACHAR(227) // ACHAR( 52), &
                                                                                    ACHAR(254) // ACHAR(228) // ACHAR( 52), &
                                                                                    ACHAR(254) // ACHAR(229) // ACHAR( 53), &
                                                                                    ACHAR(254) // ACHAR(230) // ACHAR( 54), &
                                                                                    ACHAR(254) // ACHAR(232) // ACHAR( 56)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_coolwarm = (/                   &
                                                                                    ACHAR( 59) // ACHAR( 76) // ACHAR(192), &
                                                                                    ACHAR( 60) // ACHAR( 78) // ACHAR(194), &
                                                                                    ACHAR( 61) // ACHAR( 80) // ACHAR(195), &
                                                                                    ACHAR( 62) // ACHAR( 81) // ACHAR(197), &
                                                                                    ACHAR( 63) // ACHAR( 83) // ACHAR(198), &
                                                                                    ACHAR( 64) // ACHAR( 85) // ACHAR(200), &
                                                                                    ACHAR( 66) // ACHAR( 87) // ACHAR(201), &
                                                                                    ACHAR( 67) // ACHAR( 88) // ACHAR(203), &
                                                                                    ACHAR( 68) // ACHAR( 90) // ACHAR(204), &
                                                                                    ACHAR( 69) // ACHAR( 92) // ACHAR(206), &
                                                                                    ACHAR( 70) // ACHAR( 94) // ACHAR(207), &
                                                                                    ACHAR( 72) // ACHAR( 95) // ACHAR(209), &
                                                                                    ACHAR( 73) // ACHAR( 97) // ACHAR(210), &
                                                                                    ACHAR( 74) // ACHAR( 99) // ACHAR(211), &
                                                                                    ACHAR( 75) // ACHAR(100) // ACHAR(213), &
                                                                                    ACHAR( 76) // ACHAR(102) // ACHAR(214), &
                                                                                    ACHAR( 78) // ACHAR(104) // ACHAR(216), &
                                                                                    ACHAR( 79) // ACHAR(105) // ACHAR(217), &
                                                                                    ACHAR( 80) // ACHAR(107) // ACHAR(218), &
                                                                                    ACHAR( 81) // ACHAR(109) // ACHAR(219), &
                                                                                    ACHAR( 83) // ACHAR(110) // ACHAR(221), &
                                                                                    ACHAR( 84) // ACHAR(112) // ACHAR(222), &
                                                                                    ACHAR( 85) // ACHAR(114) // ACHAR(223), &
                                                                                    ACHAR( 86) // ACHAR(115) // ACHAR(224), &
                                                                                    ACHAR( 88) // ACHAR(117) // ACHAR(225), &
                                                                                    ACHAR( 89) // ACHAR(119) // ACHAR(227), &
                                                                                    ACHAR( 90) // ACHAR(120) // ACHAR(228), &
                                                                                    ACHAR( 91) // ACHAR(122) // ACHAR(229), &
                                                                                    ACHAR( 93) // ACHAR(124) // ACHAR(230), &
                                                                                    ACHAR( 94) // ACHAR(125) // ACHAR(231), &
                                                                                    ACHAR( 95) // ACHAR(127) // ACHAR(232), &
                                                                                    ACHAR( 97) // ACHAR(128) // ACHAR(233), &
                                                                                    ACHAR( 98) // ACHAR(130) // ACHAR(234), &
                                                                                    ACHAR( 99) // ACHAR(132) // ACHAR(235), &
                                                                                    ACHAR(100) // ACHAR(133) // ACHAR(236), &
                                                                                    ACHAR(102) // ACHAR(135) // ACHAR(237), &
                                                                                    ACHAR(103) // ACHAR(136) // ACHAR(238), &
                                                                                    ACHAR(104) // ACHAR(138) // ACHAR(239), &
                                                                                    ACHAR(106) // ACHAR(139) // ACHAR(239), &
                                                                                    ACHAR(107) // ACHAR(141) // ACHAR(240), &
                                                                                    ACHAR(108) // ACHAR(143) // ACHAR(241), &
                                                                                    ACHAR(110) // ACHAR(144) // ACHAR(242), &
                                                                                    ACHAR(111) // ACHAR(146) // ACHAR(243), &
                                                                                    ACHAR(112) // ACHAR(147) // ACHAR(243), &
                                                                                    ACHAR(114) // ACHAR(149) // ACHAR(244), &
                                                                                    ACHAR(115) // ACHAR(150) // ACHAR(245), &
                                                                                    ACHAR(117) // ACHAR(151) // ACHAR(246), &
                                                                                    ACHAR(118) // ACHAR(153) // ACHAR(246), &
                                                                                    ACHAR(119) // ACHAR(154) // ACHAR(247), &
                                                                                    ACHAR(121) // ACHAR(156) // ACHAR(248), &
                                                                                    ACHAR(122) // ACHAR(157) // ACHAR(248), &
                                                                                    ACHAR(123) // ACHAR(159) // ACHAR(249), &
                                                                                    ACHAR(125) // ACHAR(160) // ACHAR(249), &
                                                                                    ACHAR(126) // ACHAR(161) // ACHAR(250), &
                                                                                    ACHAR(128) // ACHAR(163) // ACHAR(250), &
                                                                                    ACHAR(129) // ACHAR(164) // ACHAR(251), &
                                                                                    ACHAR(130) // ACHAR(166) // ACHAR(251), &
                                                                                    ACHAR(132) // ACHAR(167) // ACHAR(252), &
                                                                                    ACHAR(133) // ACHAR(168) // ACHAR(252), &
                                                                                    ACHAR(134) // ACHAR(169) // ACHAR(252), &
                                                                                    ACHAR(136) // ACHAR(171) // ACHAR(253), &
                                                                                    ACHAR(137) // ACHAR(172) // ACHAR(253), &
                                                                                    ACHAR(139) // ACHAR(173) // ACHAR(253), &
                                                                                    ACHAR(140) // ACHAR(175) // ACHAR(254), &
                                                                                    ACHAR(141) // ACHAR(176) // ACHAR(254), &
                                                                                    ACHAR(143) // ACHAR(177) // ACHAR(254), &
                                                                                    ACHAR(144) // ACHAR(178) // ACHAR(254), &
                                                                                    ACHAR(146) // ACHAR(180) // ACHAR(254), &
                                                                                    ACHAR(147) // ACHAR(181) // ACHAR(254), &
                                                                                    ACHAR(148) // ACHAR(182) // ACHAR(255), &
                                                                                    ACHAR(150) // ACHAR(183) // ACHAR(255), &
                                                                                    ACHAR(151) // ACHAR(184) // ACHAR(255), &
                                                                                    ACHAR(152) // ACHAR(185) // ACHAR(255), &
                                                                                    ACHAR(154) // ACHAR(187) // ACHAR(255), &
                                                                                    ACHAR(155) // ACHAR(188) // ACHAR(255), &
                                                                                    ACHAR(157) // ACHAR(189) // ACHAR(255), &
                                                                                    ACHAR(158) // ACHAR(190) // ACHAR(255), &
                                                                                    ACHAR(159) // ACHAR(191) // ACHAR(255), &
                                                                                    ACHAR(161) // ACHAR(192) // ACHAR(255), &
                                                                                    ACHAR(162) // ACHAR(193) // ACHAR(255), &
                                                                                    ACHAR(163) // ACHAR(194) // ACHAR(254), &
                                                                                    ACHAR(165) // ACHAR(195) // ACHAR(254), &
                                                                                    ACHAR(166) // ACHAR(196) // ACHAR(254), &
                                                                                    ACHAR(167) // ACHAR(197) // ACHAR(254), &
                                                                                    ACHAR(169) // ACHAR(198) // ACHAR(253), &
                                                                                    ACHAR(170) // ACHAR(199) // ACHAR(253), &
                                                                                    ACHAR(171) // ACHAR(200) // ACHAR(253), &
                                                                                    ACHAR(173) // ACHAR(201) // ACHAR(253), &
                                                                                    ACHAR(174) // ACHAR(201) // ACHAR(252), &
                                                                                    ACHAR(175) // ACHAR(202) // ACHAR(252), &
                                                                                    ACHAR(177) // ACHAR(203) // ACHAR(252), &
                                                                                    ACHAR(178) // ACHAR(204) // ACHAR(251), &
                                                                                    ACHAR(179) // ACHAR(205) // ACHAR(251), &
                                                                                    ACHAR(181) // ACHAR(205) // ACHAR(250), &
                                                                                    ACHAR(182) // ACHAR(206) // ACHAR(250), &
                                                                                    ACHAR(183) // ACHAR(207) // ACHAR(249), &
                                                                                    ACHAR(185) // ACHAR(208) // ACHAR(249), &
                                                                                    ACHAR(186) // ACHAR(208) // ACHAR(248), &
                                                                                    ACHAR(187) // ACHAR(209) // ACHAR(248), &
                                                                                    ACHAR(188) // ACHAR(210) // ACHAR(247), &
                                                                                    ACHAR(190) // ACHAR(210) // ACHAR(246), &
                                                                                    ACHAR(191) // ACHAR(211) // ACHAR(246), &
                                                                                    ACHAR(192) // ACHAR(212) // ACHAR(245), &
                                                                                    ACHAR(193) // ACHAR(212) // ACHAR(244), &
                                                                                    ACHAR(195) // ACHAR(213) // ACHAR(244), &
                                                                                    ACHAR(196) // ACHAR(213) // ACHAR(243), &
                                                                                    ACHAR(197) // ACHAR(214) // ACHAR(242), &
                                                                                    ACHAR(198) // ACHAR(214) // ACHAR(241), &
                                                                                    ACHAR(199) // ACHAR(215) // ACHAR(240), &
                                                                                    ACHAR(201) // ACHAR(215) // ACHAR(240), &
                                                                                    ACHAR(202) // ACHAR(216) // ACHAR(239), &
                                                                                    ACHAR(203) // ACHAR(216) // ACHAR(238), &
                                                                                    ACHAR(204) // ACHAR(217) // ACHAR(237), &
                                                                                    ACHAR(205) // ACHAR(217) // ACHAR(236), &
                                                                                    ACHAR(206) // ACHAR(218) // ACHAR(235), &
                                                                                    ACHAR(207) // ACHAR(218) // ACHAR(234), &
                                                                                    ACHAR(209) // ACHAR(218) // ACHAR(233), &
                                                                                    ACHAR(210) // ACHAR(219) // ACHAR(232), &
                                                                                    ACHAR(211) // ACHAR(219) // ACHAR(231), &
                                                                                    ACHAR(212) // ACHAR(219) // ACHAR(230), &
                                                                                    ACHAR(213) // ACHAR(219) // ACHAR(229), &
                                                                                    ACHAR(214) // ACHAR(220) // ACHAR(228), &
                                                                                    ACHAR(215) // ACHAR(220) // ACHAR(227), &
                                                                                    ACHAR(216) // ACHAR(220) // ACHAR(226), &
                                                                                    ACHAR(217) // ACHAR(220) // ACHAR(225), &
                                                                                    ACHAR(218) // ACHAR(220) // ACHAR(224), &
                                                                                    ACHAR(219) // ACHAR(220) // ACHAR(222), &
                                                                                    ACHAR(220) // ACHAR(221) // ACHAR(221), &
                                                                                    ACHAR(221) // ACHAR(220) // ACHAR(220), &
                                                                                    ACHAR(222) // ACHAR(220) // ACHAR(219), &
                                                                                    ACHAR(223) // ACHAR(219) // ACHAR(217), &
                                                                                    ACHAR(224) // ACHAR(219) // ACHAR(216), &
                                                                                    ACHAR(225) // ACHAR(218) // ACHAR(214), &
                                                                                    ACHAR(226) // ACHAR(218) // ACHAR(213), &
                                                                                    ACHAR(227) // ACHAR(217) // ACHAR(211), &
                                                                                    ACHAR(228) // ACHAR(217) // ACHAR(210), &
                                                                                    ACHAR(229) // ACHAR(216) // ACHAR(209), &
                                                                                    ACHAR(230) // ACHAR(215) // ACHAR(207), &
                                                                                    ACHAR(231) // ACHAR(215) // ACHAR(206), &
                                                                                    ACHAR(232) // ACHAR(214) // ACHAR(204), &
                                                                                    ACHAR(233) // ACHAR(213) // ACHAR(203), &
                                                                                    ACHAR(234) // ACHAR(213) // ACHAR(201), &
                                                                                    ACHAR(234) // ACHAR(212) // ACHAR(200), &
                                                                                    ACHAR(235) // ACHAR(211) // ACHAR(198), &
                                                                                    ACHAR(236) // ACHAR(211) // ACHAR(197), &
                                                                                    ACHAR(237) // ACHAR(210) // ACHAR(195), &
                                                                                    ACHAR(237) // ACHAR(209) // ACHAR(194), &
                                                                                    ACHAR(238) // ACHAR(208) // ACHAR(192), &
                                                                                    ACHAR(239) // ACHAR(207) // ACHAR(191), &
                                                                                    ACHAR(239) // ACHAR(206) // ACHAR(189), &
                                                                                    ACHAR(240) // ACHAR(205) // ACHAR(187), &
                                                                                    ACHAR(241) // ACHAR(205) // ACHAR(186), &
                                                                                    ACHAR(241) // ACHAR(204) // ACHAR(184), &
                                                                                    ACHAR(242) // ACHAR(203) // ACHAR(183), &
                                                                                    ACHAR(242) // ACHAR(202) // ACHAR(181), &
                                                                                    ACHAR(242) // ACHAR(201) // ACHAR(180), &
                                                                                    ACHAR(243) // ACHAR(200) // ACHAR(178), &
                                                                                    ACHAR(243) // ACHAR(199) // ACHAR(177), &
                                                                                    ACHAR(244) // ACHAR(198) // ACHAR(175), &
                                                                                    ACHAR(244) // ACHAR(197) // ACHAR(173), &
                                                                                    ACHAR(245) // ACHAR(196) // ACHAR(172), &
                                                                                    ACHAR(245) // ACHAR(194) // ACHAR(170), &
                                                                                    ACHAR(245) // ACHAR(193) // ACHAR(169), &
                                                                                    ACHAR(245) // ACHAR(192) // ACHAR(167), &
                                                                                    ACHAR(246) // ACHAR(191) // ACHAR(166), &
                                                                                    ACHAR(246) // ACHAR(190) // ACHAR(164), &
                                                                                    ACHAR(246) // ACHAR(189) // ACHAR(162), &
                                                                                    ACHAR(247) // ACHAR(188) // ACHAR(161), &
                                                                                    ACHAR(247) // ACHAR(186) // ACHAR(159), &
                                                                                    ACHAR(247) // ACHAR(185) // ACHAR(158), &
                                                                                    ACHAR(247) // ACHAR(184) // ACHAR(156), &
                                                                                    ACHAR(247) // ACHAR(183) // ACHAR(155), &
                                                                                    ACHAR(247) // ACHAR(181) // ACHAR(153), &
                                                                                    ACHAR(247) // ACHAR(180) // ACHAR(151), &
                                                                                    ACHAR(247) // ACHAR(179) // ACHAR(150), &
                                                                                    ACHAR(247) // ACHAR(177) // ACHAR(148), &
                                                                                    ACHAR(247) // ACHAR(176) // ACHAR(147), &
                                                                                    ACHAR(247) // ACHAR(175) // ACHAR(145), &
                                                                                    ACHAR(247) // ACHAR(173) // ACHAR(144), &
                                                                                    ACHAR(247) // ACHAR(172) // ACHAR(142), &
                                                                                    ACHAR(247) // ACHAR(170) // ACHAR(140), &
                                                                                    ACHAR(247) // ACHAR(169) // ACHAR(139), &
                                                                                    ACHAR(247) // ACHAR(168) // ACHAR(137), &
                                                                                    ACHAR(247) // ACHAR(166) // ACHAR(136), &
                                                                                    ACHAR(246) // ACHAR(165) // ACHAR(134), &
                                                                                    ACHAR(246) // ACHAR(163) // ACHAR(133), &
                                                                                    ACHAR(246) // ACHAR(162) // ACHAR(131), &
                                                                                    ACHAR(245) // ACHAR(160) // ACHAR(129), &
                                                                                    ACHAR(245) // ACHAR(159) // ACHAR(128), &
                                                                                    ACHAR(245) // ACHAR(157) // ACHAR(126), &
                                                                                    ACHAR(245) // ACHAR(156) // ACHAR(125), &
                                                                                    ACHAR(244) // ACHAR(154) // ACHAR(123), &
                                                                                    ACHAR(244) // ACHAR(152) // ACHAR(122), &
                                                                                    ACHAR(243) // ACHAR(151) // ACHAR(120), &
                                                                                    ACHAR(243) // ACHAR(149) // ACHAR(119), &
                                                                                    ACHAR(243) // ACHAR(148) // ACHAR(117), &
                                                                                    ACHAR(242) // ACHAR(146) // ACHAR(116), &
                                                                                    ACHAR(242) // ACHAR(144) // ACHAR(114), &
                                                                                    ACHAR(241) // ACHAR(143) // ACHAR(113), &
                                                                                    ACHAR(241) // ACHAR(141) // ACHAR(111), &
                                                                                    ACHAR(240) // ACHAR(139) // ACHAR(110), &
                                                                                    ACHAR(240) // ACHAR(138) // ACHAR(108), &
                                                                                    ACHAR(239) // ACHAR(136) // ACHAR(107), &
                                                                                    ACHAR(238) // ACHAR(134) // ACHAR(105), &
                                                                                    ACHAR(238) // ACHAR(132) // ACHAR(104), &
                                                                                    ACHAR(237) // ACHAR(131) // ACHAR(102), &
                                                                                    ACHAR(236) // ACHAR(129) // ACHAR(101), &
                                                                                    ACHAR(236) // ACHAR(127) // ACHAR( 99), &
                                                                                    ACHAR(235) // ACHAR(125) // ACHAR( 98), &
                                                                                    ACHAR(234) // ACHAR(123) // ACHAR( 96), &
                                                                                    ACHAR(233) // ACHAR(122) // ACHAR( 95), &
                                                                                    ACHAR(233) // ACHAR(120) // ACHAR( 93), &
                                                                                    ACHAR(232) // ACHAR(118) // ACHAR( 92), &
                                                                                    ACHAR(231) // ACHAR(116) // ACHAR( 91), &
                                                                                    ACHAR(230) // ACHAR(114) // ACHAR( 89), &
                                                                                    ACHAR(229) // ACHAR(112) // ACHAR( 88), &
                                                                                    ACHAR(228) // ACHAR(110) // ACHAR( 86), &
                                                                                    ACHAR(227) // ACHAR(108) // ACHAR( 85), &
                                                                                    ACHAR(227) // ACHAR(107) // ACHAR( 84), &
                                                                                    ACHAR(226) // ACHAR(105) // ACHAR( 82), &
                                                                                    ACHAR(225) // ACHAR(103) // ACHAR( 81), &
                                                                                    ACHAR(224) // ACHAR(101) // ACHAR( 79), &
                                                                                    ACHAR(223) // ACHAR( 99) // ACHAR( 78), &
                                                                                    ACHAR(222) // ACHAR( 97) // ACHAR( 77), &
                                                                                    ACHAR(221) // ACHAR( 95) // ACHAR( 75), &
                                                                                    ACHAR(220) // ACHAR( 93) // ACHAR( 74), &
                                                                                    ACHAR(218) // ACHAR( 90) // ACHAR( 73), &
                                                                                    ACHAR(217) // ACHAR( 88) // ACHAR( 71), &
                                                                                    ACHAR(216) // ACHAR( 86) // ACHAR( 70), &
                                                                                    ACHAR(215) // ACHAR( 84) // ACHAR( 69), &
                                                                                    ACHAR(214) // ACHAR( 82) // ACHAR( 68), &
                                                                                    ACHAR(213) // ACHAR( 80) // ACHAR( 66), &
                                                                                    ACHAR(212) // ACHAR( 78) // ACHAR( 65), &
                                                                                    ACHAR(210) // ACHAR( 75) // ACHAR( 64), &
                                                                                    ACHAR(209) // ACHAR( 73) // ACHAR( 63), &
                                                                                    ACHAR(208) // ACHAR( 71) // ACHAR( 61), &
                                                                                    ACHAR(207) // ACHAR( 69) // ACHAR( 60), &
                                                                                    ACHAR(205) // ACHAR( 66) // ACHAR( 59), &
                                                                                    ACHAR(204) // ACHAR( 64) // ACHAR( 58), &
                                                                                    ACHAR(203) // ACHAR( 62) // ACHAR( 56), &
                                                                                    ACHAR(202) // ACHAR( 59) // ACHAR( 55), &
                                                                                    ACHAR(200) // ACHAR( 56) // ACHAR( 54), &
                                                                                    ACHAR(199) // ACHAR( 54) // ACHAR( 53), &
                                                                                    ACHAR(197) // ACHAR( 51) // ACHAR( 52), &
                                                                                    ACHAR(196) // ACHAR( 48) // ACHAR( 50), &
                                                                                    ACHAR(195) // ACHAR( 46) // ACHAR( 49), &
                                                                                    ACHAR(193) // ACHAR( 43) // ACHAR( 48), &
                                                                                    ACHAR(192) // ACHAR( 40) // ACHAR( 47), &
                                                                                    ACHAR(190) // ACHAR( 36) // ACHAR( 46), &
                                                                                    ACHAR(189) // ACHAR( 31) // ACHAR( 45), &
                                                                                    ACHAR(187) // ACHAR( 27) // ACHAR( 44), &
                                                                                    ACHAR(186) // ACHAR( 22) // ACHAR( 43), &
                                                                                    ACHAR(184) // ACHAR( 18) // ACHAR( 42), &
                                                                                    ACHAR(183) // ACHAR( 13) // ACHAR( 40), &
                                                                                    ACHAR(181) // ACHAR(  9) // ACHAR( 39), &
                                                                                    ACHAR(180) // ACHAR(  4) // ACHAR( 38)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_turbo = (/                      &
                                                                                    ACHAR( 48) // ACHAR( 18) // ACHAR( 59), &
                                                                                    ACHAR( 50) // ACHAR( 21) // ACHAR( 67), &
                                                                                    ACHAR( 51) // ACHAR( 24) // ACHAR( 74), &
                                                                                    ACHAR( 52) // ACHAR( 27) // ACHAR( 81), &
                                                                                    ACHAR( 53) // ACHAR( 30) // ACHAR( 88), &
                                                                                    ACHAR( 54) // ACHAR( 33) // ACHAR( 95), &
                                                                                    ACHAR( 55) // ACHAR( 36) // ACHAR(102), &
                                                                                    ACHAR( 56) // ACHAR( 39) // ACHAR(109), &
                                                                                    ACHAR( 57) // ACHAR( 42) // ACHAR(115), &
                                                                                    ACHAR( 58) // ACHAR( 45) // ACHAR(121), &
                                                                                    ACHAR( 59) // ACHAR( 47) // ACHAR(128), &
                                                                                    ACHAR( 60) // ACHAR( 50) // ACHAR(134), &
                                                                                    ACHAR( 61) // ACHAR( 53) // ACHAR(139), &
                                                                                    ACHAR( 62) // ACHAR( 56) // ACHAR(145), &
                                                                                    ACHAR( 63) // ACHAR( 59) // ACHAR(151), &
                                                                                    ACHAR( 63) // ACHAR( 62) // ACHAR(156), &
                                                                                    ACHAR( 64) // ACHAR( 64) // ACHAR(162), &
                                                                                    ACHAR( 65) // ACHAR( 67) // ACHAR(167), &
                                                                                    ACHAR( 65) // ACHAR( 70) // ACHAR(172), &
                                                                                    ACHAR( 66) // ACHAR( 73) // ACHAR(177), &
                                                                                    ACHAR( 66) // ACHAR( 75) // ACHAR(181), &
                                                                                    ACHAR( 67) // ACHAR( 78) // ACHAR(186), &
                                                                                    ACHAR( 68) // ACHAR( 81) // ACHAR(191), &
                                                                                    ACHAR( 68) // ACHAR( 84) // ACHAR(195), &
                                                                                    ACHAR( 68) // ACHAR( 86) // ACHAR(199), &
                                                                                    ACHAR( 69) // ACHAR( 89) // ACHAR(203), &
                                                                                    ACHAR( 69) // ACHAR( 92) // ACHAR(207), &
                                                                                    ACHAR( 69) // ACHAR( 94) // ACHAR(211), &
                                                                                    ACHAR( 70) // ACHAR( 97) // ACHAR(214), &
                                                                                    ACHAR( 70) // ACHAR(100) // ACHAR(218), &
                                                                                    ACHAR( 70) // ACHAR(102) // ACHAR(221), &
                                                                                    ACHAR( 70) // ACHAR(105) // ACHAR(224), &
                                                                                    ACHAR( 70) // ACHAR(107) // ACHAR(227), &
                                                                                    ACHAR( 71) // ACHAR(110) // ACHAR(230), &
                                                                                    ACHAR( 71) // ACHAR(113) // ACHAR(233), &
                                                                                    ACHAR( 71) // ACHAR(115) // ACHAR(235), &
                                                                                    ACHAR( 71) // ACHAR(118) // ACHAR(238), &
                                                                                    ACHAR( 71) // ACHAR(120) // ACHAR(240), &
                                                                                    ACHAR( 71) // ACHAR(123) // ACHAR(242), &
                                                                                    ACHAR( 70) // ACHAR(125) // ACHAR(244), &
                                                                                    ACHAR( 70) // ACHAR(128) // ACHAR(246), &
                                                                                    ACHAR( 70) // ACHAR(130) // ACHAR(248), &
                                                                                    ACHAR( 70) // ACHAR(133) // ACHAR(250), &
                                                                                    ACHAR( 70) // ACHAR(135) // ACHAR(251), &
                                                                                    ACHAR( 69) // ACHAR(138) // ACHAR(252), &
                                                                                    ACHAR( 69) // ACHAR(140) // ACHAR(253), &
                                                                                    ACHAR( 68) // ACHAR(143) // ACHAR(254), &
                                                                                    ACHAR( 67) // ACHAR(145) // ACHAR(254), &
                                                                                    ACHAR( 66) // ACHAR(148) // ACHAR(255), &
                                                                                    ACHAR( 65) // ACHAR(150) // ACHAR(255), &
                                                                                    ACHAR( 64) // ACHAR(153) // ACHAR(255), &
                                                                                    ACHAR( 62) // ACHAR(155) // ACHAR(254), &
                                                                                    ACHAR( 61) // ACHAR(158) // ACHAR(254), &
                                                                                    ACHAR( 59) // ACHAR(160) // ACHAR(253), &
                                                                                    ACHAR( 58) // ACHAR(163) // ACHAR(252), &
                                                                                    ACHAR( 56) // ACHAR(165) // ACHAR(251), &
                                                                                    ACHAR( 55) // ACHAR(168) // ACHAR(250), &
                                                                                    ACHAR( 53) // ACHAR(171) // ACHAR(248), &
                                                                                    ACHAR( 51) // ACHAR(173) // ACHAR(247), &
                                                                                    ACHAR( 49) // ACHAR(175) // ACHAR(245), &
                                                                                    ACHAR( 47) // ACHAR(178) // ACHAR(244), &
                                                                                    ACHAR( 46) // ACHAR(180) // ACHAR(242), &
                                                                                    ACHAR( 44) // ACHAR(183) // ACHAR(240), &
                                                                                    ACHAR( 42) // ACHAR(185) // ACHAR(238), &
                                                                                    ACHAR( 40) // ACHAR(188) // ACHAR(235), &
                                                                                    ACHAR( 39) // ACHAR(190) // ACHAR(233), &
                                                                                    ACHAR( 37) // ACHAR(192) // ACHAR(231), &
                                                                                    ACHAR( 35) // ACHAR(195) // ACHAR(228), &
                                                                                    ACHAR( 34) // ACHAR(197) // ACHAR(226), &
                                                                                    ACHAR( 32) // ACHAR(199) // ACHAR(223), &
                                                                                    ACHAR( 31) // ACHAR(201) // ACHAR(221), &
                                                                                    ACHAR( 30) // ACHAR(203) // ACHAR(218), &
                                                                                    ACHAR( 28) // ACHAR(205) // ACHAR(216), &
                                                                                    ACHAR( 27) // ACHAR(208) // ACHAR(213), &
                                                                                    ACHAR( 26) // ACHAR(210) // ACHAR(210), &
                                                                                    ACHAR( 26) // ACHAR(212) // ACHAR(208), &
                                                                                    ACHAR( 25) // ACHAR(213) // ACHAR(205), &
                                                                                    ACHAR( 24) // ACHAR(215) // ACHAR(202), &
                                                                                    ACHAR( 24) // ACHAR(217) // ACHAR(200), &
                                                                                    ACHAR( 24) // ACHAR(219) // ACHAR(197), &
                                                                                    ACHAR( 24) // ACHAR(221) // ACHAR(194), &
                                                                                    ACHAR( 24) // ACHAR(222) // ACHAR(192), &
                                                                                    ACHAR( 24) // ACHAR(224) // ACHAR(189), &
                                                                                    ACHAR( 25) // ACHAR(226) // ACHAR(187), &
                                                                                    ACHAR( 25) // ACHAR(227) // ACHAR(185), &
                                                                                    ACHAR( 26) // ACHAR(228) // ACHAR(182), &
                                                                                    ACHAR( 28) // ACHAR(230) // ACHAR(180), &
                                                                                    ACHAR( 29) // ACHAR(231) // ACHAR(178), &
                                                                                    ACHAR( 31) // ACHAR(233) // ACHAR(175), &
                                                                                    ACHAR( 32) // ACHAR(234) // ACHAR(172), &
                                                                                    ACHAR( 34) // ACHAR(235) // ACHAR(170), &
                                                                                    ACHAR( 37) // ACHAR(236) // ACHAR(167), &
                                                                                    ACHAR( 39) // ACHAR(238) // ACHAR(164), &
                                                                                    ACHAR( 42) // ACHAR(239) // ACHAR(161), &
                                                                                    ACHAR( 44) // ACHAR(240) // ACHAR(158), &
                                                                                    ACHAR( 47) // ACHAR(241) // ACHAR(155), &
                                                                                    ACHAR( 50) // ACHAR(242) // ACHAR(152), &
                                                                                    ACHAR( 53) // ACHAR(243) // ACHAR(148), &
                                                                                    ACHAR( 56) // ACHAR(244) // ACHAR(145), &
                                                                                    ACHAR( 60) // ACHAR(245) // ACHAR(142), &
                                                                                    ACHAR( 63) // ACHAR(246) // ACHAR(138), &
                                                                                    ACHAR( 67) // ACHAR(247) // ACHAR(135), &
                                                                                    ACHAR( 70) // ACHAR(248) // ACHAR(132), &
                                                                                    ACHAR( 74) // ACHAR(248) // ACHAR(128), &
                                                                                    ACHAR( 78) // ACHAR(249) // ACHAR(125), &
                                                                                    ACHAR( 82) // ACHAR(250) // ACHAR(122), &
                                                                                    ACHAR( 85) // ACHAR(250) // ACHAR(118), &
                                                                                    ACHAR( 89) // ACHAR(251) // ACHAR(115), &
                                                                                    ACHAR( 93) // ACHAR(252) // ACHAR(111), &
                                                                                    ACHAR( 97) // ACHAR(252) // ACHAR(108), &
                                                                                    ACHAR(101) // ACHAR(253) // ACHAR(105), &
                                                                                    ACHAR(105) // ACHAR(253) // ACHAR(102), &
                                                                                    ACHAR(109) // ACHAR(254) // ACHAR( 98), &
                                                                                    ACHAR(113) // ACHAR(254) // ACHAR( 95), &
                                                                                    ACHAR(117) // ACHAR(254) // ACHAR( 92), &
                                                                                    ACHAR(121) // ACHAR(254) // ACHAR( 89), &
                                                                                    ACHAR(125) // ACHAR(255) // ACHAR( 86), &
                                                                                    ACHAR(128) // ACHAR(255) // ACHAR( 83), &
                                                                                    ACHAR(132) // ACHAR(255) // ACHAR( 81), &
                                                                                    ACHAR(136) // ACHAR(255) // ACHAR( 78), &
                                                                                    ACHAR(139) // ACHAR(255) // ACHAR( 75), &
                                                                                    ACHAR(143) // ACHAR(255) // ACHAR( 73), &
                                                                                    ACHAR(146) // ACHAR(255) // ACHAR( 71), &
                                                                                    ACHAR(150) // ACHAR(254) // ACHAR( 68), &
                                                                                    ACHAR(153) // ACHAR(254) // ACHAR( 66), &
                                                                                    ACHAR(156) // ACHAR(254) // ACHAR( 64), &
                                                                                    ACHAR(159) // ACHAR(253) // ACHAR( 63), &
                                                                                    ACHAR(161) // ACHAR(253) // ACHAR( 61), &
                                                                                    ACHAR(164) // ACHAR(252) // ACHAR( 60), &
                                                                                    ACHAR(167) // ACHAR(252) // ACHAR( 58), &
                                                                                    ACHAR(169) // ACHAR(251) // ACHAR( 57), &
                                                                                    ACHAR(172) // ACHAR(251) // ACHAR( 56), &
                                                                                    ACHAR(175) // ACHAR(250) // ACHAR( 55), &
                                                                                    ACHAR(177) // ACHAR(249) // ACHAR( 54), &
                                                                                    ACHAR(180) // ACHAR(248) // ACHAR( 54), &
                                                                                    ACHAR(183) // ACHAR(247) // ACHAR( 53), &
                                                                                    ACHAR(185) // ACHAR(246) // ACHAR( 53), &
                                                                                    ACHAR(188) // ACHAR(245) // ACHAR( 52), &
                                                                                    ACHAR(190) // ACHAR(244) // ACHAR( 52), &
                                                                                    ACHAR(193) // ACHAR(243) // ACHAR( 52), &
                                                                                    ACHAR(195) // ACHAR(241) // ACHAR( 52), &
                                                                                    ACHAR(198) // ACHAR(240) // ACHAR( 52), &
                                                                                    ACHAR(200) // ACHAR(239) // ACHAR( 52), &
                                                                                    ACHAR(203) // ACHAR(237) // ACHAR( 52), &
                                                                                    ACHAR(205) // ACHAR(236) // ACHAR( 52), &
                                                                                    ACHAR(208) // ACHAR(234) // ACHAR( 52), &
                                                                                    ACHAR(210) // ACHAR(233) // ACHAR( 53), &
                                                                                    ACHAR(212) // ACHAR(231) // ACHAR( 53), &
                                                                                    ACHAR(215) // ACHAR(229) // ACHAR( 53), &
                                                                                    ACHAR(217) // ACHAR(228) // ACHAR( 54), &
                                                                                    ACHAR(219) // ACHAR(226) // ACHAR( 54), &
                                                                                    ACHAR(221) // ACHAR(224) // ACHAR( 55), &
                                                                                    ACHAR(223) // ACHAR(223) // ACHAR( 55), &
                                                                                    ACHAR(225) // ACHAR(221) // ACHAR( 55), &
                                                                                    ACHAR(227) // ACHAR(219) // ACHAR( 56), &
                                                                                    ACHAR(229) // ACHAR(217) // ACHAR( 56), &
                                                                                    ACHAR(231) // ACHAR(215) // ACHAR( 57), &
                                                                                    ACHAR(233) // ACHAR(213) // ACHAR( 57), &
                                                                                    ACHAR(235) // ACHAR(211) // ACHAR( 57), &
                                                                                    ACHAR(236) // ACHAR(209) // ACHAR( 58), &
                                                                                    ACHAR(238) // ACHAR(207) // ACHAR( 58), &
                                                                                    ACHAR(239) // ACHAR(205) // ACHAR( 58), &
                                                                                    ACHAR(241) // ACHAR(203) // ACHAR( 58), &
                                                                                    ACHAR(242) // ACHAR(201) // ACHAR( 58), &
                                                                                    ACHAR(244) // ACHAR(199) // ACHAR( 58), &
                                                                                    ACHAR(245) // ACHAR(197) // ACHAR( 58), &
                                                                                    ACHAR(246) // ACHAR(195) // ACHAR( 58), &
                                                                                    ACHAR(247) // ACHAR(193) // ACHAR( 58), &
                                                                                    ACHAR(248) // ACHAR(190) // ACHAR( 57), &
                                                                                    ACHAR(249) // ACHAR(188) // ACHAR( 57), &
                                                                                    ACHAR(250) // ACHAR(186) // ACHAR( 57), &
                                                                                    ACHAR(251) // ACHAR(184) // ACHAR( 56), &
                                                                                    ACHAR(251) // ACHAR(182) // ACHAR( 55), &
                                                                                    ACHAR(252) // ACHAR(179) // ACHAR( 54), &
                                                                                    ACHAR(252) // ACHAR(177) // ACHAR( 54), &
                                                                                    ACHAR(253) // ACHAR(174) // ACHAR( 53), &
                                                                                    ACHAR(253) // ACHAR(172) // ACHAR( 52), &
                                                                                    ACHAR(254) // ACHAR(169) // ACHAR( 51), &
                                                                                    ACHAR(254) // ACHAR(167) // ACHAR( 50), &
                                                                                    ACHAR(254) // ACHAR(164) // ACHAR( 49), &
                                                                                    ACHAR(254) // ACHAR(161) // ACHAR( 48), &
                                                                                    ACHAR(254) // ACHAR(158) // ACHAR( 47), &
                                                                                    ACHAR(254) // ACHAR(155) // ACHAR( 45), &
                                                                                    ACHAR(254) // ACHAR(153) // ACHAR( 44), &
                                                                                    ACHAR(254) // ACHAR(150) // ACHAR( 43), &
                                                                                    ACHAR(254) // ACHAR(147) // ACHAR( 42), &
                                                                                    ACHAR(254) // ACHAR(144) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(141) // ACHAR( 39), &
                                                                                    ACHAR(253) // ACHAR(138) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(135) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(132) // ACHAR( 35), &
                                                                                    ACHAR(251) // ACHAR(129) // ACHAR( 34), &
                                                                                    ACHAR(251) // ACHAR(126) // ACHAR( 33), &
                                                                                    ACHAR(250) // ACHAR(123) // ACHAR( 31), &
                                                                                    ACHAR(249) // ACHAR(120) // ACHAR( 30), &
                                                                                    ACHAR(249) // ACHAR(117) // ACHAR( 29), &
                                                                                    ACHAR(248) // ACHAR(114) // ACHAR( 28), &
                                                                                    ACHAR(247) // ACHAR(111) // ACHAR( 26), &
                                                                                    ACHAR(246) // ACHAR(108) // ACHAR( 25), &
                                                                                    ACHAR(245) // ACHAR(105) // ACHAR( 24), &
                                                                                    ACHAR(244) // ACHAR(102) // ACHAR( 23), &
                                                                                    ACHAR(243) // ACHAR( 99) // ACHAR( 21), &
                                                                                    ACHAR(242) // ACHAR( 96) // ACHAR( 20), &
                                                                                    ACHAR(241) // ACHAR( 93) // ACHAR( 19), &
                                                                                    ACHAR(240) // ACHAR( 91) // ACHAR( 18), &
                                                                                    ACHAR(239) // ACHAR( 88) // ACHAR( 17), &
                                                                                    ACHAR(237) // ACHAR( 85) // ACHAR( 16), &
                                                                                    ACHAR(236) // ACHAR( 83) // ACHAR( 15), &
                                                                                    ACHAR(235) // ACHAR( 80) // ACHAR( 14), &
                                                                                    ACHAR(234) // ACHAR( 78) // ACHAR( 13), &
                                                                                    ACHAR(232) // ACHAR( 75) // ACHAR( 12), &
                                                                                    ACHAR(231) // ACHAR( 73) // ACHAR( 12), &
                                                                                    ACHAR(229) // ACHAR( 71) // ACHAR( 11), &
                                                                                    ACHAR(228) // ACHAR( 69) // ACHAR( 10), &
                                                                                    ACHAR(226) // ACHAR( 67) // ACHAR( 10), &
                                                                                    ACHAR(225) // ACHAR( 65) // ACHAR(  9), &
                                                                                    ACHAR(223) // ACHAR( 63) // ACHAR(  8), &
                                                                                    ACHAR(221) // ACHAR( 61) // ACHAR(  8), &
                                                                                    ACHAR(220) // ACHAR( 59) // ACHAR(  7), &
                                                                                    ACHAR(218) // ACHAR( 57) // ACHAR(  7), &
                                                                                    ACHAR(216) // ACHAR( 55) // ACHAR(  6), &
                                                                                    ACHAR(214) // ACHAR( 53) // ACHAR(  6), &
                                                                                    ACHAR(212) // ACHAR( 51) // ACHAR(  5), &
                                                                                    ACHAR(210) // ACHAR( 49) // ACHAR(  5), &
                                                                                    ACHAR(208) // ACHAR( 47) // ACHAR(  5), &
                                                                                    ACHAR(206) // ACHAR( 45) // ACHAR(  4), &
                                                                                    ACHAR(204) // ACHAR( 43) // ACHAR(  4), &
                                                                                    ACHAR(202) // ACHAR( 42) // ACHAR(  4), &
                                                                                    ACHAR(200) // ACHAR( 40) // ACHAR(  3), &
                                                                                    ACHAR(197) // ACHAR( 38) // ACHAR(  3), &
                                                                                    ACHAR(195) // ACHAR( 37) // ACHAR(  3), &
                                                                                    ACHAR(193) // ACHAR( 35) // ACHAR(  2), &
                                                                                    ACHAR(190) // ACHAR( 33) // ACHAR(  2), &
                                                                                    ACHAR(188) // ACHAR( 32) // ACHAR(  2), &
                                                                                    ACHAR(185) // ACHAR( 30) // ACHAR(  2), &
                                                                                    ACHAR(183) // ACHAR( 29) // ACHAR(  2), &
                                                                                    ACHAR(180) // ACHAR( 27) // ACHAR(  1), &
                                                                                    ACHAR(178) // ACHAR( 26) // ACHAR(  1), &
                                                                                    ACHAR(175) // ACHAR( 24) // ACHAR(  1), &
                                                                                    ACHAR(172) // ACHAR( 23) // ACHAR(  1), &
                                                                                    ACHAR(169) // ACHAR( 22) // ACHAR(  1), &
                                                                                    ACHAR(167) // ACHAR( 20) // ACHAR(  1), &
                                                                                    ACHAR(164) // ACHAR( 19) // ACHAR(  1), &
                                                                                    ACHAR(161) // ACHAR( 18) // ACHAR(  1), &
                                                                                    ACHAR(158) // ACHAR( 16) // ACHAR(  1), &
                                                                                    ACHAR(155) // ACHAR( 15) // ACHAR(  1), &
                                                                                    ACHAR(152) // ACHAR( 14) // ACHAR(  1), &
                                                                                    ACHAR(149) // ACHAR( 13) // ACHAR(  1), &
                                                                                    ACHAR(146) // ACHAR( 11) // ACHAR(  1), &
                                                                                    ACHAR(142) // ACHAR( 10) // ACHAR(  1), &
                                                                                    ACHAR(139) // ACHAR(  9) // ACHAR(  2), &
                                                                                    ACHAR(136) // ACHAR(  8) // ACHAR(  2), &
                                                                                    ACHAR(133) // ACHAR(  7) // ACHAR(  2), &
                                                                                    ACHAR(129) // ACHAR(  6) // ACHAR(  2), &
                                                                                    ACHAR(126) // ACHAR(  5) // ACHAR(  2), &
                                                                                    ACHAR(122) // ACHAR(  4) // ACHAR(  3)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_g2b = (/ &
                                                                                    ACHAR(  0) // ACHAR(255) // ACHAR(  0), &
                                                                                    ACHAR(  0) // ACHAR(254) // ACHAR(  1), &
                                                                                    ACHAR(  0) // ACHAR(253) // ACHAR(  2), &
                                                                                    ACHAR(  0) // ACHAR(252) // ACHAR(  3), &
                                                                                    ACHAR(  0) // ACHAR(251) // ACHAR(  4), &
                                                                                    ACHAR(  0) // ACHAR(250) // ACHAR(  5), &
                                                                                    ACHAR(  0) // ACHAR(249) // ACHAR(  6), &
                                                                                    ACHAR(  0) // ACHAR(248) // ACHAR(  7), &
                                                                                    ACHAR(  0) // ACHAR(247) // ACHAR(  8), &
                                                                                    ACHAR(  0) // ACHAR(246) // ACHAR(  9), &
                                                                                    ACHAR(  0) // ACHAR(245) // ACHAR( 10), &
                                                                                    ACHAR(  0) // ACHAR(244) // ACHAR( 11), &
                                                                                    ACHAR(  0) // ACHAR(243) // ACHAR( 12), &
                                                                                    ACHAR(  0) // ACHAR(242) // ACHAR( 13), &
                                                                                    ACHAR(  0) // ACHAR(241) // ACHAR( 14), &
                                                                                    ACHAR(  0) // ACHAR(240) // ACHAR( 15), &
                                                                                    ACHAR(  0) // ACHAR(239) // ACHAR( 16), &
                                                                                    ACHAR(  0) // ACHAR(238) // ACHAR( 17), &
                                                                                    ACHAR(  0) // ACHAR(237) // ACHAR( 18), &
                                                                                    ACHAR(  0) // ACHAR(236) // ACHAR( 19), &
                                                                                    ACHAR(  0) // ACHAR(235) // ACHAR( 20), &
                                                                                    ACHAR(  0) // ACHAR(234) // ACHAR( 21), &
                                                                                    ACHAR(  0) // ACHAR(233) // ACHAR( 22), &
                                                                                    ACHAR(  0) // ACHAR(232) // ACHAR( 23), &
                                                                                    ACHAR(  0) // ACHAR(231) // ACHAR( 24), &
                                                                                    ACHAR(  0) // ACHAR(230) // ACHAR( 25), &
                                                                                    ACHAR(  0) // ACHAR(229) // ACHAR( 26), &
                                                                                    ACHAR(  0) // ACHAR(228) // ACHAR( 27), &
                                                                                    ACHAR(  0) // ACHAR(227) // ACHAR( 28), &
                                                                                    ACHAR(  0) // ACHAR(226) // ACHAR( 29), &
                                                                                    ACHAR(  0) // ACHAR(225) // ACHAR( 30), &
                                                                                    ACHAR(  0) // ACHAR(224) // ACHAR( 31), &
                                                                                    ACHAR(  0) // ACHAR(223) // ACHAR( 32), &
                                                                                    ACHAR(  0) // ACHAR(222) // ACHAR( 33), &
                                                                                    ACHAR(  0) // ACHAR(221) // ACHAR( 34), &
                                                                                    ACHAR(  0) // ACHAR(220) // ACHAR( 35), &
                                                                                    ACHAR(  0) // ACHAR(219) // ACHAR( 36), &
                                                                                    ACHAR(  0) // ACHAR(218) // ACHAR( 37), &
                                                                                    ACHAR(  0) // ACHAR(217) // ACHAR( 38), &
                                                                                    ACHAR(  0) // ACHAR(216) // ACHAR( 39), &
                                                                                    ACHAR(  0) // ACHAR(215) // ACHAR( 40), &
                                                                                    ACHAR(  0) // ACHAR(214) // ACHAR( 41), &
                                                                                    ACHAR(  0) // ACHAR(213) // ACHAR( 42), &
                                                                                    ACHAR(  0) // ACHAR(212) // ACHAR( 43), &
                                                                                    ACHAR(  0) // ACHAR(211) // ACHAR( 44), &
                                                                                    ACHAR(  0) // ACHAR(210) // ACHAR( 45), &
                                                                                    ACHAR(  0) // ACHAR(209) // ACHAR( 46), &
                                                                                    ACHAR(  0) // ACHAR(208) // ACHAR( 47), &
                                                                                    ACHAR(  0) // ACHAR(207) // ACHAR( 48), &
                                                                                    ACHAR(  0) // ACHAR(206) // ACHAR( 49), &
                                                                                    ACHAR(  0) // ACHAR(205) // ACHAR( 50), &
                                                                                    ACHAR(  0) // ACHAR(204) // ACHAR( 51), &
                                                                                    ACHAR(  0) // ACHAR(203) // ACHAR( 52), &
                                                                                    ACHAR(  0) // ACHAR(202) // ACHAR( 53), &
                                                                                    ACHAR(  0) // ACHAR(201) // ACHAR( 54), &
                                                                                    ACHAR(  0) // ACHAR(200) // ACHAR( 55), &
                                                                                    ACHAR(  0) // ACHAR(199) // ACHAR( 56), &
                                                                                    ACHAR(  0) // ACHAR(198) // ACHAR( 57), &
                                                                                    ACHAR(  0) // ACHAR(197) // ACHAR( 58), &
                                                                                    ACHAR(  0) // ACHAR(196) // ACHAR( 59), &
                                                                                    ACHAR(  0) // ACHAR(195) // ACHAR( 60), &
                                                                                    ACHAR(  0) // ACHAR(194) // ACHAR( 61), &
                                                                                    ACHAR(  0) // ACHAR(193) // ACHAR( 62), &
                                                                                    ACHAR(  0) // ACHAR(192) // ACHAR( 63), &
                                                                                    ACHAR(  0) // ACHAR(191) // ACHAR( 64), &
                                                                                    ACHAR(  0) // ACHAR(190) // ACHAR( 65), &
                                                                                    ACHAR(  0) // ACHAR(189) // ACHAR( 66), &
                                                                                    ACHAR(  0) // ACHAR(188) // ACHAR( 67), &
                                                                                    ACHAR(  0) // ACHAR(187) // ACHAR( 68), &
                                                                                    ACHAR(  0) // ACHAR(186) // ACHAR( 69), &
                                                                                    ACHAR(  0) // ACHAR(185) // ACHAR( 70), &
                                                                                    ACHAR(  0) // ACHAR(184) // ACHAR( 71), &
                                                                                    ACHAR(  0) // ACHAR(183) // ACHAR( 72), &
                                                                                    ACHAR(  0) // ACHAR(182) // ACHAR( 73), &
                                                                                    ACHAR(  0) // ACHAR(181) // ACHAR( 74), &
                                                                                    ACHAR(  0) // ACHAR(180) // ACHAR( 75), &
                                                                                    ACHAR(  0) // ACHAR(179) // ACHAR( 76), &
                                                                                    ACHAR(  0) // ACHAR(178) // ACHAR( 77), &
                                                                                    ACHAR(  0) // ACHAR(177) // ACHAR( 78), &
                                                                                    ACHAR(  0) // ACHAR(176) // ACHAR( 79), &
                                                                                    ACHAR(  0) // ACHAR(175) // ACHAR( 80), &
                                                                                    ACHAR(  0) // ACHAR(174) // ACHAR( 81), &
                                                                                    ACHAR(  0) // ACHAR(173) // ACHAR( 82), &
                                                                                    ACHAR(  0) // ACHAR(172) // ACHAR( 83), &
                                                                                    ACHAR(  0) // ACHAR(171) // ACHAR( 84), &
                                                                                    ACHAR(  0) // ACHAR(170) // ACHAR( 85), &
                                                                                    ACHAR(  0) // ACHAR(169) // ACHAR( 86), &
                                                                                    ACHAR(  0) // ACHAR(168) // ACHAR( 87), &
                                                                                    ACHAR(  0) // ACHAR(167) // ACHAR( 88), &
                                                                                    ACHAR(  0) // ACHAR(166) // ACHAR( 89), &
                                                                                    ACHAR(  0) // ACHAR(165) // ACHAR( 90), &
                                                                                    ACHAR(  0) // ACHAR(164) // ACHAR( 91), &
                                                                                    ACHAR(  0) // ACHAR(163) // ACHAR( 92), &
                                                                                    ACHAR(  0) // ACHAR(162) // ACHAR( 93), &
                                                                                    ACHAR(  0) // ACHAR(161) // ACHAR( 94), &
                                                                                    ACHAR(  0) // ACHAR(160) // ACHAR( 95), &
                                                                                    ACHAR(  0) // ACHAR(159) // ACHAR( 96), &
                                                                                    ACHAR(  0) // ACHAR(158) // ACHAR( 97), &
                                                                                    ACHAR(  0) // ACHAR(157) // ACHAR( 98), &
                                                                                    ACHAR(  0) // ACHAR(156) // ACHAR( 99), &
                                                                                    ACHAR(  0) // ACHAR(155) // ACHAR(100), &
                                                                                    ACHAR(  0) // ACHAR(154) // ACHAR(101), &
                                                                                    ACHAR(  0) // ACHAR(153) // ACHAR(102), &
                                                                                    ACHAR(  0) // ACHAR(152) // ACHAR(103), &
                                                                                    ACHAR(  0) // ACHAR(151) // ACHAR(104), &
                                                                                    ACHAR(  0) // ACHAR(150) // ACHAR(105), &
                                                                                    ACHAR(  0) // ACHAR(149) // ACHAR(106), &
                                                                                    ACHAR(  0) // ACHAR(148) // ACHAR(107), &
                                                                                    ACHAR(  0) // ACHAR(147) // ACHAR(108), &
                                                                                    ACHAR(  0) // ACHAR(146) // ACHAR(109), &
                                                                                    ACHAR(  0) // ACHAR(145) // ACHAR(110), &
                                                                                    ACHAR(  0) // ACHAR(144) // ACHAR(111), &
                                                                                    ACHAR(  0) // ACHAR(143) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR(142) // ACHAR(113), &
                                                                                    ACHAR(  0) // ACHAR(141) // ACHAR(114), &
                                                                                    ACHAR(  0) // ACHAR(140) // ACHAR(115), &
                                                                                    ACHAR(  0) // ACHAR(139) // ACHAR(116), &
                                                                                    ACHAR(  0) // ACHAR(138) // ACHAR(117), &
                                                                                    ACHAR(  0) // ACHAR(137) // ACHAR(118), &
                                                                                    ACHAR(  0) // ACHAR(136) // ACHAR(119), &
                                                                                    ACHAR(  0) // ACHAR(135) // ACHAR(120), &
                                                                                    ACHAR(  0) // ACHAR(134) // ACHAR(121), &
                                                                                    ACHAR(  0) // ACHAR(133) // ACHAR(122), &
                                                                                    ACHAR(  0) // ACHAR(132) // ACHAR(123), &
                                                                                    ACHAR(  0) // ACHAR(131) // ACHAR(124), &
                                                                                    ACHAR(  0) // ACHAR(130) // ACHAR(125), &
                                                                                    ACHAR(  0) // ACHAR(129) // ACHAR(126), &
                                                                                    ACHAR(  0) // ACHAR(128) // ACHAR(127), &
                                                                                    ACHAR(  0) // ACHAR(127) // ACHAR(128), &
                                                                                    ACHAR(  0) // ACHAR(126) // ACHAR(129), &
                                                                                    ACHAR(  0) // ACHAR(125) // ACHAR(130), &
                                                                                    ACHAR(  0) // ACHAR(124) // ACHAR(131), &
                                                                                    ACHAR(  0) // ACHAR(123) // ACHAR(132), &
                                                                                    ACHAR(  0) // ACHAR(122) // ACHAR(133), &
                                                                                    ACHAR(  0) // ACHAR(121) // ACHAR(134), &
                                                                                    ACHAR(  0) // ACHAR(120) // ACHAR(135), &
                                                                                    ACHAR(  0) // ACHAR(119) // ACHAR(136), &
                                                                                    ACHAR(  0) // ACHAR(118) // ACHAR(137), &
                                                                                    ACHAR(  0) // ACHAR(117) // ACHAR(138), &
                                                                                    ACHAR(  0) // ACHAR(116) // ACHAR(139), &
                                                                                    ACHAR(  0) // ACHAR(115) // ACHAR(140), &
                                                                                    ACHAR(  0) // ACHAR(114) // ACHAR(141), &
                                                                                    ACHAR(  0) // ACHAR(113) // ACHAR(142), &
                                                                                    ACHAR(  0) // ACHAR(112) // ACHAR(143), &
                                                                                    ACHAR(  0) // ACHAR(111) // ACHAR(144), &
                                                                                    ACHAR(  0) // ACHAR(110) // ACHAR(145), &
                                                                                    ACHAR(  0) // ACHAR(109) // ACHAR(146), &
                                                                                    ACHAR(  0) // ACHAR(108) // ACHAR(147), &
                                                                                    ACHAR(  0) // ACHAR(107) // ACHAR(148), &
                                                                                    ACHAR(  0) // ACHAR(106) // ACHAR(149), &
                                                                                    ACHAR(  0) // ACHAR(105) // ACHAR(150), &
                                                                                    ACHAR(  0) // ACHAR(104) // ACHAR(151), &
                                                                                    ACHAR(  0) // ACHAR(103) // ACHAR(152), &
                                                                                    ACHAR(  0) // ACHAR(102) // ACHAR(153), &
                                                                                    ACHAR(  0) // ACHAR(101) // ACHAR(154), &
                                                                                    ACHAR(  0) // ACHAR(100) // ACHAR(155), &
                                                                                    ACHAR(  0) // ACHAR( 99) // ACHAR(156), &
                                                                                    ACHAR(  0) // ACHAR( 98) // ACHAR(157), &
                                                                                    ACHAR(  0) // ACHAR( 97) // ACHAR(158), &
                                                                                    ACHAR(  0) // ACHAR( 96) // ACHAR(159), &
                                                                                    ACHAR(  0) // ACHAR( 95) // ACHAR(160), &
                                                                                    ACHAR(  0) // ACHAR( 94) // ACHAR(161), &
                                                                                    ACHAR(  0) // ACHAR( 93) // ACHAR(162), &
                                                                                    ACHAR(  0) // ACHAR( 92) // ACHAR(163), &
                                                                                    ACHAR(  0) // ACHAR( 91) // ACHAR(164), &
                                                                                    ACHAR(  0) // ACHAR( 90) // ACHAR(165), &
                                                                                    ACHAR(  0) // ACHAR( 89) // ACHAR(166), &
                                                                                    ACHAR(  0) // ACHAR( 88) // ACHAR(167), &
                                                                                    ACHAR(  0) // ACHAR( 87) // ACHAR(168), &
                                                                                    ACHAR(  0) // ACHAR( 86) // ACHAR(169), &
                                                                                    ACHAR(  0) // ACHAR( 85) // ACHAR(170), &
                                                                                    ACHAR(  0) // ACHAR( 84) // ACHAR(171), &
                                                                                    ACHAR(  0) // ACHAR( 83) // ACHAR(172), &
                                                                                    ACHAR(  0) // ACHAR( 82) // ACHAR(173), &
                                                                                    ACHAR(  0) // ACHAR( 81) // ACHAR(174), &
                                                                                    ACHAR(  0) // ACHAR( 80) // ACHAR(175), &
                                                                                    ACHAR(  0) // ACHAR( 79) // ACHAR(176), &
                                                                                    ACHAR(  0) // ACHAR( 78) // ACHAR(177), &
                                                                                    ACHAR(  0) // ACHAR( 77) // ACHAR(178), &
                                                                                    ACHAR(  0) // ACHAR( 76) // ACHAR(179), &
                                                                                    ACHAR(  0) // ACHAR( 75) // ACHAR(180), &
                                                                                    ACHAR(  0) // ACHAR( 74) // ACHAR(181), &
                                                                                    ACHAR(  0) // ACHAR( 73) // ACHAR(182), &
                                                                                    ACHAR(  0) // ACHAR( 72) // ACHAR(183), &
                                                                                    ACHAR(  0) // ACHAR( 71) // ACHAR(184), &
                                                                                    ACHAR(  0) // ACHAR( 70) // ACHAR(185), &
                                                                                    ACHAR(  0) // ACHAR( 69) // ACHAR(186), &
                                                                                    ACHAR(  0) // ACHAR( 68) // ACHAR(187), &
                                                                                    ACHAR(  0) // ACHAR( 67) // ACHAR(188), &
                                                                                    ACHAR(  0) // ACHAR( 66) // ACHAR(189), &
                                                                                    ACHAR(  0) // ACHAR( 65) // ACHAR(190), &
                                                                                    ACHAR(  0) // ACHAR( 64) // ACHAR(191), &
                                                                                    ACHAR(  0) // ACHAR( 63) // ACHAR(192), &
                                                                                    ACHAR(  0) // ACHAR( 62) // ACHAR(193), &
                                                                                    ACHAR(  0) // ACHAR( 61) // ACHAR(194), &
                                                                                    ACHAR(  0) // ACHAR( 60) // ACHAR(195), &
                                                                                    ACHAR(  0) // ACHAR( 59) // ACHAR(196), &
                                                                                    ACHAR(  0) // ACHAR( 58) // ACHAR(197), &
                                                                                    ACHAR(  0) // ACHAR( 57) // ACHAR(198), &
                                                                                    ACHAR(  0) // ACHAR( 56) // ACHAR(199), &
                                                                                    ACHAR(  0) // ACHAR( 55) // ACHAR(200), &
                                                                                    ACHAR(  0) // ACHAR( 54) // ACHAR(201), &
                                                                                    ACHAR(  0) // ACHAR( 53) // ACHAR(202), &
                                                                                    ACHAR(  0) // ACHAR( 52) // ACHAR(203), &
                                                                                    ACHAR(  0) // ACHAR( 51) // ACHAR(204), &
                                                                                    ACHAR(  0) // ACHAR( 50) // ACHAR(205), &
                                                                                    ACHAR(  0) // ACHAR( 49) // ACHAR(206), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(207), &
                                                                                    ACHAR(  0) // ACHAR( 47) // ACHAR(208), &
                                                                                    ACHAR(  0) // ACHAR( 46) // ACHAR(209), &
                                                                                    ACHAR(  0) // ACHAR( 45) // ACHAR(210), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(211), &
                                                                                    ACHAR(  0) // ACHAR( 43) // ACHAR(212), &
                                                                                    ACHAR(  0) // ACHAR( 42) // ACHAR(213), &
                                                                                    ACHAR(  0) // ACHAR( 41) // ACHAR(214), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR(215), &
                                                                                    ACHAR(  0) // ACHAR( 39) // ACHAR(216), &
                                                                                    ACHAR(  0) // ACHAR( 38) // ACHAR(217), &
                                                                                    ACHAR(  0) // ACHAR( 37) // ACHAR(218), &
                                                                                    ACHAR(  0) // ACHAR( 36) // ACHAR(219), &
                                                                                    ACHAR(  0) // ACHAR( 35) // ACHAR(220), &
                                                                                    ACHAR(  0) // ACHAR( 34) // ACHAR(221), &
                                                                                    ACHAR(  0) // ACHAR( 33) // ACHAR(222), &
                                                                                    ACHAR(  0) // ACHAR( 32) // ACHAR(223), &
                                                                                    ACHAR(  0) // ACHAR( 31) // ACHAR(224), &
                                                                                    ACHAR(  0) // ACHAR( 30) // ACHAR(225), &
                                                                                    ACHAR(  0) // ACHAR( 29) // ACHAR(226), &
                                                                                    ACHAR(  0) // ACHAR( 28) // ACHAR(227), &
                                                                                    ACHAR(  0) // ACHAR( 27) // ACHAR(228), &
                                                                                    ACHAR(  0) // ACHAR( 26) // ACHAR(229), &
                                                                                    ACHAR(  0) // ACHAR( 25) // ACHAR(230), &
                                                                                    ACHAR(  0) // ACHAR( 24) // ACHAR(231), &
                                                                                    ACHAR(  0) // ACHAR( 23) // ACHAR(232), &
                                                                                    ACHAR(  0) // ACHAR( 22) // ACHAR(233), &
                                                                                    ACHAR(  0) // ACHAR( 21) // ACHAR(234), &
                                                                                    ACHAR(  0) // ACHAR( 20) // ACHAR(235), &
                                                                                    ACHAR(  0) // ACHAR( 19) // ACHAR(236), &
                                                                                    ACHAR(  0) // ACHAR( 18) // ACHAR(237), &
                                                                                    ACHAR(  0) // ACHAR( 17) // ACHAR(238), &
                                                                                    ACHAR(  0) // ACHAR( 16) // ACHAR(239), &
                                                                                    ACHAR(  0) // ACHAR( 15) // ACHAR(240), &
                                                                                    ACHAR(  0) // ACHAR( 14) // ACHAR(241), &
                                                                                    ACHAR(  0) // ACHAR( 13) // ACHAR(242), &
                                                                                    ACHAR(  0) // ACHAR( 12) // ACHAR(243), &
                                                                                    ACHAR(  0) // ACHAR( 11) // ACHAR(244), &
                                                                                    ACHAR(  0) // ACHAR( 10) // ACHAR(245), &
                                                                                    ACHAR(  0) // ACHAR(  9) // ACHAR(246), &
                                                                                    ACHAR(  0) // ACHAR(  8) // ACHAR(247), &
                                                                                    ACHAR(  0) // ACHAR(  7) // ACHAR(248), &
                                                                                    ACHAR(  0) // ACHAR(  6) // ACHAR(249), &
                                                                                    ACHAR(  0) // ACHAR(  5) // ACHAR(250), &
                                                                                    ACHAR(  0) // ACHAR(  4) // ACHAR(251), &
                                                                                    ACHAR(  0) // ACHAR(  3) // ACHAR(252), &
                                                                                    ACHAR(  0) // ACHAR(  2) // ACHAR(253), &
                                                                                    ACHAR(  0) // ACHAR(  1) // ACHAR(254), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2g = (/ &
                                                                                    ACHAR(255) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(254) // ACHAR(  1) // ACHAR(  0), &
                                                                                    ACHAR(253) // ACHAR(  2) // ACHAR(  0), &
                                                                                    ACHAR(252) // ACHAR(  3) // ACHAR(  0), &
                                                                                    ACHAR(251) // ACHAR(  4) // ACHAR(  0), &
                                                                                    ACHAR(250) // ACHAR(  5) // ACHAR(  0), &
                                                                                    ACHAR(249) // ACHAR(  6) // ACHAR(  0), &
                                                                                    ACHAR(248) // ACHAR(  7) // ACHAR(  0), &
                                                                                    ACHAR(247) // ACHAR(  8) // ACHAR(  0), &
                                                                                    ACHAR(246) // ACHAR(  9) // ACHAR(  0), &
                                                                                    ACHAR(245) // ACHAR( 10) // ACHAR(  0), &
                                                                                    ACHAR(244) // ACHAR( 11) // ACHAR(  0), &
                                                                                    ACHAR(243) // ACHAR( 12) // ACHAR(  0), &
                                                                                    ACHAR(242) // ACHAR( 13) // ACHAR(  0), &
                                                                                    ACHAR(241) // ACHAR( 14) // ACHAR(  0), &
                                                                                    ACHAR(240) // ACHAR( 15) // ACHAR(  0), &
                                                                                    ACHAR(239) // ACHAR( 16) // ACHAR(  0), &
                                                                                    ACHAR(238) // ACHAR( 17) // ACHAR(  0), &
                                                                                    ACHAR(237) // ACHAR( 18) // ACHAR(  0), &
                                                                                    ACHAR(236) // ACHAR( 19) // ACHAR(  0), &
                                                                                    ACHAR(235) // ACHAR( 20) // ACHAR(  0), &
                                                                                    ACHAR(234) // ACHAR( 21) // ACHAR(  0), &
                                                                                    ACHAR(233) // ACHAR( 22) // ACHAR(  0), &
                                                                                    ACHAR(232) // ACHAR( 23) // ACHAR(  0), &
                                                                                    ACHAR(231) // ACHAR( 24) // ACHAR(  0), &
                                                                                    ACHAR(230) // ACHAR( 25) // ACHAR(  0), &
                                                                                    ACHAR(229) // ACHAR( 26) // ACHAR(  0), &
                                                                                    ACHAR(228) // ACHAR( 27) // ACHAR(  0), &
                                                                                    ACHAR(227) // ACHAR( 28) // ACHAR(  0), &
                                                                                    ACHAR(226) // ACHAR( 29) // ACHAR(  0), &
                                                                                    ACHAR(225) // ACHAR( 30) // ACHAR(  0), &
                                                                                    ACHAR(224) // ACHAR( 31) // ACHAR(  0), &
                                                                                    ACHAR(223) // ACHAR( 32) // ACHAR(  0), &
                                                                                    ACHAR(222) // ACHAR( 33) // ACHAR(  0), &
                                                                                    ACHAR(221) // ACHAR( 34) // ACHAR(  0), &
                                                                                    ACHAR(220) // ACHAR( 35) // ACHAR(  0), &
                                                                                    ACHAR(219) // ACHAR( 36) // ACHAR(  0), &
                                                                                    ACHAR(218) // ACHAR( 37) // ACHAR(  0), &
                                                                                    ACHAR(217) // ACHAR( 38) // ACHAR(  0), &
                                                                                    ACHAR(216) // ACHAR( 39) // ACHAR(  0), &
                                                                                    ACHAR(215) // ACHAR( 40) // ACHAR(  0), &
                                                                                    ACHAR(214) // ACHAR( 41) // ACHAR(  0), &
                                                                                    ACHAR(213) // ACHAR( 42) // ACHAR(  0), &
                                                                                    ACHAR(212) // ACHAR( 43) // ACHAR(  0), &
                                                                                    ACHAR(211) // ACHAR( 44) // ACHAR(  0), &
                                                                                    ACHAR(210) // ACHAR( 45) // ACHAR(  0), &
                                                                                    ACHAR(209) // ACHAR( 46) // ACHAR(  0), &
                                                                                    ACHAR(208) // ACHAR( 47) // ACHAR(  0), &
                                                                                    ACHAR(207) // ACHAR( 48) // ACHAR(  0), &
                                                                                    ACHAR(206) // ACHAR( 49) // ACHAR(  0), &
                                                                                    ACHAR(205) // ACHAR( 50) // ACHAR(  0), &
                                                                                    ACHAR(204) // ACHAR( 51) // ACHAR(  0), &
                                                                                    ACHAR(203) // ACHAR( 52) // ACHAR(  0), &
                                                                                    ACHAR(202) // ACHAR( 53) // ACHAR(  0), &
                                                                                    ACHAR(201) // ACHAR( 54) // ACHAR(  0), &
                                                                                    ACHAR(200) // ACHAR( 55) // ACHAR(  0), &
                                                                                    ACHAR(199) // ACHAR( 56) // ACHAR(  0), &
                                                                                    ACHAR(198) // ACHAR( 57) // ACHAR(  0), &
                                                                                    ACHAR(197) // ACHAR( 58) // ACHAR(  0), &
                                                                                    ACHAR(196) // ACHAR( 59) // ACHAR(  0), &
                                                                                    ACHAR(195) // ACHAR( 60) // ACHAR(  0), &
                                                                                    ACHAR(194) // ACHAR( 61) // ACHAR(  0), &
                                                                                    ACHAR(193) // ACHAR( 62) // ACHAR(  0), &
                                                                                    ACHAR(192) // ACHAR( 63) // ACHAR(  0), &
                                                                                    ACHAR(191) // ACHAR( 64) // ACHAR(  0), &
                                                                                    ACHAR(190) // ACHAR( 65) // ACHAR(  0), &
                                                                                    ACHAR(189) // ACHAR( 66) // ACHAR(  0), &
                                                                                    ACHAR(188) // ACHAR( 67) // ACHAR(  0), &
                                                                                    ACHAR(187) // ACHAR( 68) // ACHAR(  0), &
                                                                                    ACHAR(186) // ACHAR( 69) // ACHAR(  0), &
                                                                                    ACHAR(185) // ACHAR( 70) // ACHAR(  0), &
                                                                                    ACHAR(184) // ACHAR( 71) // ACHAR(  0), &
                                                                                    ACHAR(183) // ACHAR( 72) // ACHAR(  0), &
                                                                                    ACHAR(182) // ACHAR( 73) // ACHAR(  0), &
                                                                                    ACHAR(181) // ACHAR( 74) // ACHAR(  0), &
                                                                                    ACHAR(180) // ACHAR( 75) // ACHAR(  0), &
                                                                                    ACHAR(179) // ACHAR( 76) // ACHAR(  0), &
                                                                                    ACHAR(178) // ACHAR( 77) // ACHAR(  0), &
                                                                                    ACHAR(177) // ACHAR( 78) // ACHAR(  0), &
                                                                                    ACHAR(176) // ACHAR( 79) // ACHAR(  0), &
                                                                                    ACHAR(175) // ACHAR( 80) // ACHAR(  0), &
                                                                                    ACHAR(174) // ACHAR( 81) // ACHAR(  0), &
                                                                                    ACHAR(173) // ACHAR( 82) // ACHAR(  0), &
                                                                                    ACHAR(172) // ACHAR( 83) // ACHAR(  0), &
                                                                                    ACHAR(171) // ACHAR( 84) // ACHAR(  0), &
                                                                                    ACHAR(170) // ACHAR( 85) // ACHAR(  0), &
                                                                                    ACHAR(169) // ACHAR( 86) // ACHAR(  0), &
                                                                                    ACHAR(168) // ACHAR( 87) // ACHAR(  0), &
                                                                                    ACHAR(167) // ACHAR( 88) // ACHAR(  0), &
                                                                                    ACHAR(166) // ACHAR( 89) // ACHAR(  0), &
                                                                                    ACHAR(165) // ACHAR( 90) // ACHAR(  0), &
                                                                                    ACHAR(164) // ACHAR( 91) // ACHAR(  0), &
                                                                                    ACHAR(163) // ACHAR( 92) // ACHAR(  0), &
                                                                                    ACHAR(162) // ACHAR( 93) // ACHAR(  0), &
                                                                                    ACHAR(161) // ACHAR( 94) // ACHAR(  0), &
                                                                                    ACHAR(160) // ACHAR( 95) // ACHAR(  0), &
                                                                                    ACHAR(159) // ACHAR( 96) // ACHAR(  0), &
                                                                                    ACHAR(158) // ACHAR( 97) // ACHAR(  0), &
                                                                                    ACHAR(157) // ACHAR( 98) // ACHAR(  0), &
                                                                                    ACHAR(156) // ACHAR( 99) // ACHAR(  0), &
                                                                                    ACHAR(155) // ACHAR(100) // ACHAR(  0), &
                                                                                    ACHAR(154) // ACHAR(101) // ACHAR(  0), &
                                                                                    ACHAR(153) // ACHAR(102) // ACHAR(  0), &
                                                                                    ACHAR(152) // ACHAR(103) // ACHAR(  0), &
                                                                                    ACHAR(151) // ACHAR(104) // ACHAR(  0), &
                                                                                    ACHAR(150) // ACHAR(105) // ACHAR(  0), &
                                                                                    ACHAR(149) // ACHAR(106) // ACHAR(  0), &
                                                                                    ACHAR(148) // ACHAR(107) // ACHAR(  0), &
                                                                                    ACHAR(147) // ACHAR(108) // ACHAR(  0), &
                                                                                    ACHAR(146) // ACHAR(109) // ACHAR(  0), &
                                                                                    ACHAR(145) // ACHAR(110) // ACHAR(  0), &
                                                                                    ACHAR(144) // ACHAR(111) // ACHAR(  0), &
                                                                                    ACHAR(143) // ACHAR(112) // ACHAR(  0), &
                                                                                    ACHAR(142) // ACHAR(113) // ACHAR(  0), &
                                                                                    ACHAR(141) // ACHAR(114) // ACHAR(  0), &
                                                                                    ACHAR(140) // ACHAR(115) // ACHAR(  0), &
                                                                                    ACHAR(139) // ACHAR(116) // ACHAR(  0), &
                                                                                    ACHAR(138) // ACHAR(117) // ACHAR(  0), &
                                                                                    ACHAR(137) // ACHAR(118) // ACHAR(  0), &
                                                                                    ACHAR(136) // ACHAR(119) // ACHAR(  0), &
                                                                                    ACHAR(135) // ACHAR(120) // ACHAR(  0), &
                                                                                    ACHAR(134) // ACHAR(121) // ACHAR(  0), &
                                                                                    ACHAR(133) // ACHAR(122) // ACHAR(  0), &
                                                                                    ACHAR(132) // ACHAR(123) // ACHAR(  0), &
                                                                                    ACHAR(131) // ACHAR(124) // ACHAR(  0), &
                                                                                    ACHAR(130) // ACHAR(125) // ACHAR(  0), &
                                                                                    ACHAR(129) // ACHAR(126) // ACHAR(  0), &
                                                                                    ACHAR(128) // ACHAR(127) // ACHAR(  0), &
                                                                                    ACHAR(127) // ACHAR(128) // ACHAR(  0), &
                                                                                    ACHAR(126) // ACHAR(129) // ACHAR(  0), &
                                                                                    ACHAR(125) // ACHAR(130) // ACHAR(  0), &
                                                                                    ACHAR(124) // ACHAR(131) // ACHAR(  0), &
                                                                                    ACHAR(123) // ACHAR(132) // ACHAR(  0), &
                                                                                    ACHAR(122) // ACHAR(133) // ACHAR(  0), &
                                                                                    ACHAR(121) // ACHAR(134) // ACHAR(  0), &
                                                                                    ACHAR(120) // ACHAR(135) // ACHAR(  0), &
                                                                                    ACHAR(119) // ACHAR(136) // ACHAR(  0), &
                                                                                    ACHAR(118) // ACHAR(137) // ACHAR(  0), &
                                                                                    ACHAR(117) // ACHAR(138) // ACHAR(  0), &
                                                                                    ACHAR(116) // ACHAR(139) // ACHAR(  0), &
                                                                                    ACHAR(115) // ACHAR(140) // ACHAR(  0), &
                                                                                    ACHAR(114) // ACHAR(141) // ACHAR(  0), &
                                                                                    ACHAR(113) // ACHAR(142) // ACHAR(  0), &
                                                                                    ACHAR(112) // ACHAR(143) // ACHAR(  0), &
                                                                                    ACHAR(111) // ACHAR(144) // ACHAR(  0), &
                                                                                    ACHAR(110) // ACHAR(145) // ACHAR(  0), &
                                                                                    ACHAR(109) // ACHAR(146) // ACHAR(  0), &
                                                                                    ACHAR(108) // ACHAR(147) // ACHAR(  0), &
                                                                                    ACHAR(107) // ACHAR(148) // ACHAR(  0), &
                                                                                    ACHAR(106) // ACHAR(149) // ACHAR(  0), &
                                                                                    ACHAR(105) // ACHAR(150) // ACHAR(  0), &
                                                                                    ACHAR(104) // ACHAR(151) // ACHAR(  0), &
                                                                                    ACHAR(103) // ACHAR(152) // ACHAR(  0), &
                                                                                    ACHAR(102) // ACHAR(153) // ACHAR(  0), &
                                                                                    ACHAR(101) // ACHAR(154) // ACHAR(  0), &
                                                                                    ACHAR(100) // ACHAR(155) // ACHAR(  0), &
                                                                                    ACHAR( 99) // ACHAR(156) // ACHAR(  0), &
                                                                                    ACHAR( 98) // ACHAR(157) // ACHAR(  0), &
                                                                                    ACHAR( 97) // ACHAR(158) // ACHAR(  0), &
                                                                                    ACHAR( 96) // ACHAR(159) // ACHAR(  0), &
                                                                                    ACHAR( 95) // ACHAR(160) // ACHAR(  0), &
                                                                                    ACHAR( 94) // ACHAR(161) // ACHAR(  0), &
                                                                                    ACHAR( 93) // ACHAR(162) // ACHAR(  0), &
                                                                                    ACHAR( 92) // ACHAR(163) // ACHAR(  0), &
                                                                                    ACHAR( 91) // ACHAR(164) // ACHAR(  0), &
                                                                                    ACHAR( 90) // ACHAR(165) // ACHAR(  0), &
                                                                                    ACHAR( 89) // ACHAR(166) // ACHAR(  0), &
                                                                                    ACHAR( 88) // ACHAR(167) // ACHAR(  0), &
                                                                                    ACHAR( 87) // ACHAR(168) // ACHAR(  0), &
                                                                                    ACHAR( 86) // ACHAR(169) // ACHAR(  0), &
                                                                                    ACHAR( 85) // ACHAR(170) // ACHAR(  0), &
                                                                                    ACHAR( 84) // ACHAR(171) // ACHAR(  0), &
                                                                                    ACHAR( 83) // ACHAR(172) // ACHAR(  0), &
                                                                                    ACHAR( 82) // ACHAR(173) // ACHAR(  0), &
                                                                                    ACHAR( 81) // ACHAR(174) // ACHAR(  0), &
                                                                                    ACHAR( 80) // ACHAR(175) // ACHAR(  0), &
                                                                                    ACHAR( 79) // ACHAR(176) // ACHAR(  0), &
                                                                                    ACHAR( 78) // ACHAR(177) // ACHAR(  0), &
                                                                                    ACHAR( 77) // ACHAR(178) // ACHAR(  0), &
                                                                                    ACHAR( 76) // ACHAR(179) // ACHAR(  0), &
                                                                                    ACHAR( 75) // ACHAR(180) // ACHAR(  0), &
                                                                                    ACHAR( 74) // ACHAR(181) // ACHAR(  0), &
                                                                                    ACHAR( 73) // ACHAR(182) // ACHAR(  0), &
                                                                                    ACHAR( 72) // ACHAR(183) // ACHAR(  0), &
                                                                                    ACHAR( 71) // ACHAR(184) // ACHAR(  0), &
                                                                                    ACHAR( 70) // ACHAR(185) // ACHAR(  0), &
                                                                                    ACHAR( 69) // ACHAR(186) // ACHAR(  0), &
                                                                                    ACHAR( 68) // ACHAR(187) // ACHAR(  0), &
                                                                                    ACHAR( 67) // ACHAR(188) // ACHAR(  0), &
                                                                                    ACHAR( 66) // ACHAR(189) // ACHAR(  0), &
                                                                                    ACHAR( 65) // ACHAR(190) // ACHAR(  0), &
                                                                                    ACHAR( 64) // ACHAR(191) // ACHAR(  0), &
                                                                                    ACHAR( 63) // ACHAR(192) // ACHAR(  0), &
                                                                                    ACHAR( 62) // ACHAR(193) // ACHAR(  0), &
                                                                                    ACHAR( 61) // ACHAR(194) // ACHAR(  0), &
                                                                                    ACHAR( 60) // ACHAR(195) // ACHAR(  0), &
                                                                                    ACHAR( 59) // ACHAR(196) // ACHAR(  0), &
                                                                                    ACHAR( 58) // ACHAR(197) // ACHAR(  0), &
                                                                                    ACHAR( 57) // ACHAR(198) // ACHAR(  0), &
                                                                                    ACHAR( 56) // ACHAR(199) // ACHAR(  0), &
                                                                                    ACHAR( 55) // ACHAR(200) // ACHAR(  0), &
                                                                                    ACHAR( 54) // ACHAR(201) // ACHAR(  0), &
                                                                                    ACHAR( 53) // ACHAR(202) // ACHAR(  0), &
                                                                                    ACHAR( 52) // ACHAR(203) // ACHAR(  0), &
                                                                                    ACHAR( 51) // ACHAR(204) // ACHAR(  0), &
                                                                                    ACHAR( 50) // ACHAR(205) // ACHAR(  0), &
                                                                                    ACHAR( 49) // ACHAR(206) // ACHAR(  0), &
                                                                                    ACHAR( 48) // ACHAR(207) // ACHAR(  0), &
                                                                                    ACHAR( 47) // ACHAR(208) // ACHAR(  0), &
                                                                                    ACHAR( 46) // ACHAR(209) // ACHAR(  0), &
                                                                                    ACHAR( 45) // ACHAR(210) // ACHAR(  0), &
                                                                                    ACHAR( 44) // ACHAR(211) // ACHAR(  0), &
                                                                                    ACHAR( 43) // ACHAR(212) // ACHAR(  0), &
                                                                                    ACHAR( 42) // ACHAR(213) // ACHAR(  0), &
                                                                                    ACHAR( 41) // ACHAR(214) // ACHAR(  0), &
                                                                                    ACHAR( 40) // ACHAR(215) // ACHAR(  0), &
                                                                                    ACHAR( 39) // ACHAR(216) // ACHAR(  0), &
                                                                                    ACHAR( 38) // ACHAR(217) // ACHAR(  0), &
                                                                                    ACHAR( 37) // ACHAR(218) // ACHAR(  0), &
                                                                                    ACHAR( 36) // ACHAR(219) // ACHAR(  0), &
                                                                                    ACHAR( 35) // ACHAR(220) // ACHAR(  0), &
                                                                                    ACHAR( 34) // ACHAR(221) // ACHAR(  0), &
                                                                                    ACHAR( 33) // ACHAR(222) // ACHAR(  0), &
                                                                                    ACHAR( 32) // ACHAR(223) // ACHAR(  0), &
                                                                                    ACHAR( 31) // ACHAR(224) // ACHAR(  0), &
                                                                                    ACHAR( 30) // ACHAR(225) // ACHAR(  0), &
                                                                                    ACHAR( 29) // ACHAR(226) // ACHAR(  0), &
                                                                                    ACHAR( 28) // ACHAR(227) // ACHAR(  0), &
                                                                                    ACHAR( 27) // ACHAR(228) // ACHAR(  0), &
                                                                                    ACHAR( 26) // ACHAR(229) // ACHAR(  0), &
                                                                                    ACHAR( 25) // ACHAR(230) // ACHAR(  0), &
                                                                                    ACHAR( 24) // ACHAR(231) // ACHAR(  0), &
                                                                                    ACHAR( 23) // ACHAR(232) // ACHAR(  0), &
                                                                                    ACHAR( 22) // ACHAR(233) // ACHAR(  0), &
                                                                                    ACHAR( 21) // ACHAR(234) // ACHAR(  0), &
                                                                                    ACHAR( 20) // ACHAR(235) // ACHAR(  0), &
                                                                                    ACHAR( 19) // ACHAR(236) // ACHAR(  0), &
                                                                                    ACHAR( 18) // ACHAR(237) // ACHAR(  0), &
                                                                                    ACHAR( 17) // ACHAR(238) // ACHAR(  0), &
                                                                                    ACHAR( 16) // ACHAR(239) // ACHAR(  0), &
                                                                                    ACHAR( 15) // ACHAR(240) // ACHAR(  0), &
                                                                                    ACHAR( 14) // ACHAR(241) // ACHAR(  0), &
                                                                                    ACHAR( 13) // ACHAR(242) // ACHAR(  0), &
                                                                                    ACHAR( 12) // ACHAR(243) // ACHAR(  0), &
                                                                                    ACHAR( 11) // ACHAR(244) // ACHAR(  0), &
                                                                                    ACHAR( 10) // ACHAR(245) // ACHAR(  0), &
                                                                                    ACHAR(  9) // ACHAR(246) // ACHAR(  0), &
                                                                                    ACHAR(  8) // ACHAR(247) // ACHAR(  0), &
                                                                                    ACHAR(  7) // ACHAR(248) // ACHAR(  0), &
                                                                                    ACHAR(  6) // ACHAR(249) // ACHAR(  0), &
                                                                                    ACHAR(  5) // ACHAR(250) // ACHAR(  0), &
                                                                                    ACHAR(  4) // ACHAR(251) // ACHAR(  0), &
                                                                                    ACHAR(  3) // ACHAR(252) // ACHAR(  0), &
                                                                                    ACHAR(  2) // ACHAR(253) // ACHAR(  0), &
                                                                                    ACHAR(  1) // ACHAR(254) // ACHAR(  0), &
                                                                                    ACHAR(  0) // ACHAR(255) // ACHAR(  0)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2o2g = (/ &
                                                                                    ACHAR(255) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  1) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  2) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  3) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  4) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  5) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  6) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  7) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  8) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(  9) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 10) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 11) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 12) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 13) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 14) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 15) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 16) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 17) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 18) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 19) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 20) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 21) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 22) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 23) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 24) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 25) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 26) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 27) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 28) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 29) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 30) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 31) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 32) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 33) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 34) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 35) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 36) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 37) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 38) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 39) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 40) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 41) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 42) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 43) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 44) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 45) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 46) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 47) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 48) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 49) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 50) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 51) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 52) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 53) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 54) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 55) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 56) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 57) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 58) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 59) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 60) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 61) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 62) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 63) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 64) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 65) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 66) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 67) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 68) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 69) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 70) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 71) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 72) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 73) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 74) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 75) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 76) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 77) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 78) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 79) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 80) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 81) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 82) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 83) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 84) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 85) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 86) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 87) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 88) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 89) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 90) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 91) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 92) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 93) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 94) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 95) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 96) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 97) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 98) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 99) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(100) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(101) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(102) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(103) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(104) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(105) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(106) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(107) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(108) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(109) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(110) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(111) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(112) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(113) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(114) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(115) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(116) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(117) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(118) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(119) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(120) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(121) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(122) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(123) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(124) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(125) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(126) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(127) // ACHAR(  0), &
                                                                                    ACHAR(254) // ACHAR(128) // ACHAR(  0), &
                                                                                    ACHAR(252) // ACHAR(129) // ACHAR(  0), &
                                                                                    ACHAR(250) // ACHAR(130) // ACHAR(  0), &
                                                                                    ACHAR(248) // ACHAR(131) // ACHAR(  0), &
                                                                                    ACHAR(246) // ACHAR(132) // ACHAR(  0), &
                                                                                    ACHAR(244) // ACHAR(133) // ACHAR(  0), &
                                                                                    ACHAR(242) // ACHAR(134) // ACHAR(  0), &
                                                                                    ACHAR(240) // ACHAR(135) // ACHAR(  0), &
                                                                                    ACHAR(238) // ACHAR(136) // ACHAR(  0), &
                                                                                    ACHAR(236) // ACHAR(137) // ACHAR(  0), &
                                                                                    ACHAR(234) // ACHAR(138) // ACHAR(  0), &
                                                                                    ACHAR(232) // ACHAR(139) // ACHAR(  0), &
                                                                                    ACHAR(230) // ACHAR(140) // ACHAR(  0), &
                                                                                    ACHAR(228) // ACHAR(141) // ACHAR(  0), &
                                                                                    ACHAR(226) // ACHAR(142) // ACHAR(  0), &
                                                                                    ACHAR(224) // ACHAR(143) // ACHAR(  0), &
                                                                                    ACHAR(222) // ACHAR(144) // ACHAR(  0), &
                                                                                    ACHAR(220) // ACHAR(145) // ACHAR(  0), &
                                                                                    ACHAR(218) // ACHAR(146) // ACHAR(  0), &
                                                                                    ACHAR(216) // ACHAR(147) // ACHAR(  0), &
                                                                                    ACHAR(214) // ACHAR(148) // ACHAR(  0), &
                                                                                    ACHAR(212) // ACHAR(149) // ACHAR(  0), &
                                                                                    ACHAR(210) // ACHAR(150) // ACHAR(  0), &
                                                                                    ACHAR(208) // ACHAR(151) // ACHAR(  0), &
                                                                                    ACHAR(206) // ACHAR(152) // ACHAR(  0), &
                                                                                    ACHAR(204) // ACHAR(153) // ACHAR(  0), &
                                                                                    ACHAR(202) // ACHAR(154) // ACHAR(  0), &
                                                                                    ACHAR(200) // ACHAR(155) // ACHAR(  0), &
                                                                                    ACHAR(198) // ACHAR(156) // ACHAR(  0), &
                                                                                    ACHAR(196) // ACHAR(157) // ACHAR(  0), &
                                                                                    ACHAR(194) // ACHAR(158) // ACHAR(  0), &
                                                                                    ACHAR(192) // ACHAR(159) // ACHAR(  0), &
                                                                                    ACHAR(190) // ACHAR(160) // ACHAR(  0), &
                                                                                    ACHAR(188) // ACHAR(161) // ACHAR(  0), &
                                                                                    ACHAR(186) // ACHAR(162) // ACHAR(  0), &
                                                                                    ACHAR(184) // ACHAR(163) // ACHAR(  0), &
                                                                                    ACHAR(182) // ACHAR(164) // ACHAR(  0), &
                                                                                    ACHAR(180) // ACHAR(165) // ACHAR(  0), &
                                                                                    ACHAR(178) // ACHAR(166) // ACHAR(  0), &
                                                                                    ACHAR(176) // ACHAR(167) // ACHAR(  0), &
                                                                                    ACHAR(174) // ACHAR(168) // ACHAR(  0), &
                                                                                    ACHAR(172) // ACHAR(169) // ACHAR(  0), &
                                                                                    ACHAR(170) // ACHAR(170) // ACHAR(  0), &
                                                                                    ACHAR(168) // ACHAR(171) // ACHAR(  0), &
                                                                                    ACHAR(166) // ACHAR(172) // ACHAR(  0), &
                                                                                    ACHAR(164) // ACHAR(173) // ACHAR(  0), &
                                                                                    ACHAR(162) // ACHAR(174) // ACHAR(  0), &
                                                                                    ACHAR(160) // ACHAR(175) // ACHAR(  0), &
                                                                                    ACHAR(158) // ACHAR(176) // ACHAR(  0), &
                                                                                    ACHAR(156) // ACHAR(177) // ACHAR(  0), &
                                                                                    ACHAR(154) // ACHAR(178) // ACHAR(  0), &
                                                                                    ACHAR(152) // ACHAR(179) // ACHAR(  0), &
                                                                                    ACHAR(150) // ACHAR(180) // ACHAR(  0), &
                                                                                    ACHAR(148) // ACHAR(181) // ACHAR(  0), &
                                                                                    ACHAR(146) // ACHAR(182) // ACHAR(  0), &
                                                                                    ACHAR(144) // ACHAR(183) // ACHAR(  0), &
                                                                                    ACHAR(142) // ACHAR(184) // ACHAR(  0), &
                                                                                    ACHAR(140) // ACHAR(185) // ACHAR(  0), &
                                                                                    ACHAR(138) // ACHAR(186) // ACHAR(  0), &
                                                                                    ACHAR(136) // ACHAR(187) // ACHAR(  0), &
                                                                                    ACHAR(134) // ACHAR(188) // ACHAR(  0), &
                                                                                    ACHAR(132) // ACHAR(189) // ACHAR(  0), &
                                                                                    ACHAR(130) // ACHAR(190) // ACHAR(  0), &
                                                                                    ACHAR(128) // ACHAR(191) // ACHAR(  0), &
                                                                                    ACHAR(126) // ACHAR(192) // ACHAR(  0), &
                                                                                    ACHAR(124) // ACHAR(193) // ACHAR(  0), &
                                                                                    ACHAR(122) // ACHAR(194) // ACHAR(  0), &
                                                                                    ACHAR(120) // ACHAR(195) // ACHAR(  0), &
                                                                                    ACHAR(118) // ACHAR(196) // ACHAR(  0), &
                                                                                    ACHAR(116) // ACHAR(197) // ACHAR(  0), &
                                                                                    ACHAR(114) // ACHAR(198) // ACHAR(  0), &
                                                                                    ACHAR(112) // ACHAR(199) // ACHAR(  0), &
                                                                                    ACHAR(110) // ACHAR(200) // ACHAR(  0), &
                                                                                    ACHAR(108) // ACHAR(201) // ACHAR(  0), &
                                                                                    ACHAR(106) // ACHAR(202) // ACHAR(  0), &
                                                                                    ACHAR(104) // ACHAR(203) // ACHAR(  0), &
                                                                                    ACHAR(102) // ACHAR(204) // ACHAR(  0), &
                                                                                    ACHAR(100) // ACHAR(205) // ACHAR(  0), &
                                                                                    ACHAR( 98) // ACHAR(206) // ACHAR(  0), &
                                                                                    ACHAR( 96) // ACHAR(207) // ACHAR(  0), &
                                                                                    ACHAR( 94) // ACHAR(208) // ACHAR(  0), &
                                                                                    ACHAR( 92) // ACHAR(209) // ACHAR(  0), &
                                                                                    ACHAR( 90) // ACHAR(210) // ACHAR(  0), &
                                                                                    ACHAR( 88) // ACHAR(211) // ACHAR(  0), &
                                                                                    ACHAR( 86) // ACHAR(212) // ACHAR(  0), &
                                                                                    ACHAR( 84) // ACHAR(213) // ACHAR(  0), &
                                                                                    ACHAR( 82) // ACHAR(214) // ACHAR(  0), &
                                                                                    ACHAR( 80) // ACHAR(215) // ACHAR(  0), &
                                                                                    ACHAR( 78) // ACHAR(216) // ACHAR(  0), &
                                                                                    ACHAR( 76) // ACHAR(217) // ACHAR(  0), &
                                                                                    ACHAR( 74) // ACHAR(218) // ACHAR(  0), &
                                                                                    ACHAR( 72) // ACHAR(219) // ACHAR(  0), &
                                                                                    ACHAR( 70) // ACHAR(220) // ACHAR(  0), &
                                                                                    ACHAR( 68) // ACHAR(221) // ACHAR(  0), &
                                                                                    ACHAR( 66) // ACHAR(222) // ACHAR(  0), &
                                                                                    ACHAR( 64) // ACHAR(223) // ACHAR(  0), &
                                                                                    ACHAR( 62) // ACHAR(224) // ACHAR(  0), &
                                                                                    ACHAR( 60) // ACHAR(225) // ACHAR(  0), &
                                                                                    ACHAR( 58) // ACHAR(226) // ACHAR(  0), &
                                                                                    ACHAR( 56) // ACHAR(227) // ACHAR(  0), &
                                                                                    ACHAR( 54) // ACHAR(228) // ACHAR(  0), &
                                                                                    ACHAR( 52) // ACHAR(229) // ACHAR(  0), &
                                                                                    ACHAR( 50) // ACHAR(230) // ACHAR(  0), &
                                                                                    ACHAR( 48) // ACHAR(231) // ACHAR(  0), &
                                                                                    ACHAR( 46) // ACHAR(232) // ACHAR(  0), &
                                                                                    ACHAR( 44) // ACHAR(233) // ACHAR(  0), &
                                                                                    ACHAR( 42) // ACHAR(234) // ACHAR(  0), &
                                                                                    ACHAR( 40) // ACHAR(235) // ACHAR(  0), &
                                                                                    ACHAR( 38) // ACHAR(236) // ACHAR(  0), &
                                                                                    ACHAR( 36) // ACHAR(237) // ACHAR(  0), &
                                                                                    ACHAR( 34) // ACHAR(238) // ACHAR(  0), &
                                                                                    ACHAR( 32) // ACHAR(239) // ACHAR(  0), &
                                                                                    ACHAR( 30) // ACHAR(240) // ACHAR(  0), &
                                                                                    ACHAR( 28) // ACHAR(241) // ACHAR(  0), &
                                                                                    ACHAR( 26) // ACHAR(242) // ACHAR(  0), &
                                                                                    ACHAR( 24) // ACHAR(243) // ACHAR(  0), &
                                                                                    ACHAR( 22) // ACHAR(244) // ACHAR(  0), &
                                                                                    ACHAR( 20) // ACHAR(245) // ACHAR(  0), &
                                                                                    ACHAR( 18) // ACHAR(246) // ACHAR(  0), &
                                                                                    ACHAR( 16) // ACHAR(247) // ACHAR(  0), &
                                                                                    ACHAR( 14) // ACHAR(248) // ACHAR(  0), &
                                                                                    ACHAR( 12) // ACHAR(249) // ACHAR(  0), &
                                                                                    ACHAR( 10) // ACHAR(250) // ACHAR(  0), &
                                                                                    ACHAR(  8) // ACHAR(251) // ACHAR(  0), &
                                                                                    ACHAR(  6) // ACHAR(252) // ACHAR(  0), &
                                                                                    ACHAR(  4) // ACHAR(253) // ACHAR(  0), &
                                                                                    ACHAR(  2) // ACHAR(254) // ACHAR(  0), &
                                                                                    ACHAR(  0) // ACHAR(255) // ACHAR(  0)  &
                                                                                /)
