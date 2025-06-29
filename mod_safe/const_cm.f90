CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_viridis = (/                    &
                                                                                    ACHAR( 68) // ACHAR(  1) // ACHAR( 84), &
                                                                                    ACHAR( 68) // ACHAR(  2) // ACHAR( 85), &
                                                                                    ACHAR( 68) // ACHAR(  3) // ACHAR( 87), &
                                                                                    ACHAR( 69) // ACHAR(  5) // ACHAR( 88), &
                                                                                    ACHAR( 69) // ACHAR(  6) // ACHAR( 90), &
                                                                                    ACHAR( 69) // ACHAR(  8) // ACHAR( 91), &
                                                                                    ACHAR( 70) // ACHAR(  9) // ACHAR( 92), &
                                                                                    ACHAR( 70) // ACHAR( 11) // ACHAR( 94), &
                                                                                    ACHAR( 70) // ACHAR( 12) // ACHAR( 95), &
                                                                                    ACHAR( 70) // ACHAR( 14) // ACHAR( 97), &
                                                                                    ACHAR( 71) // ACHAR( 15) // ACHAR( 98), &
                                                                                    ACHAR( 71) // ACHAR( 17) // ACHAR( 99), &
                                                                                    ACHAR( 71) // ACHAR( 18) // ACHAR(101), &
                                                                                    ACHAR( 71) // ACHAR( 20) // ACHAR(102), &
                                                                                    ACHAR( 71) // ACHAR( 21) // ACHAR(103), &
                                                                                    ACHAR( 71) // ACHAR( 22) // ACHAR(105), &
                                                                                    ACHAR( 71) // ACHAR( 24) // ACHAR(106), &
                                                                                    ACHAR( 72) // ACHAR( 25) // ACHAR(107), &
                                                                                    ACHAR( 72) // ACHAR( 26) // ACHAR(108), &
                                                                                    ACHAR( 72) // ACHAR( 28) // ACHAR(110), &
                                                                                    ACHAR( 72) // ACHAR( 29) // ACHAR(111), &
                                                                                    ACHAR( 72) // ACHAR( 30) // ACHAR(112), &
                                                                                    ACHAR( 72) // ACHAR( 32) // ACHAR(113), &
                                                                                    ACHAR( 72) // ACHAR( 33) // ACHAR(114), &
                                                                                    ACHAR( 72) // ACHAR( 34) // ACHAR(115), &
                                                                                    ACHAR( 72) // ACHAR( 35) // ACHAR(116), &
                                                                                    ACHAR( 71) // ACHAR( 37) // ACHAR(117), &
                                                                                    ACHAR( 71) // ACHAR( 38) // ACHAR(118), &
                                                                                    ACHAR( 71) // ACHAR( 39) // ACHAR(119), &
                                                                                    ACHAR( 71) // ACHAR( 40) // ACHAR(120), &
                                                                                    ACHAR( 71) // ACHAR( 42) // ACHAR(121), &
                                                                                    ACHAR( 71) // ACHAR( 43) // ACHAR(122), &
                                                                                    ACHAR( 71) // ACHAR( 44) // ACHAR(123), &
                                                                                    ACHAR( 70) // ACHAR( 45) // ACHAR(124), &
                                                                                    ACHAR( 70) // ACHAR( 47) // ACHAR(124), &
                                                                                    ACHAR( 70) // ACHAR( 48) // ACHAR(125), &
                                                                                    ACHAR( 70) // ACHAR( 49) // ACHAR(126), &
                                                                                    ACHAR( 69) // ACHAR( 50) // ACHAR(127), &
                                                                                    ACHAR( 69) // ACHAR( 52) // ACHAR(127), &
                                                                                    ACHAR( 69) // ACHAR( 53) // ACHAR(128), &
                                                                                    ACHAR( 69) // ACHAR( 54) // ACHAR(129), &
                                                                                    ACHAR( 68) // ACHAR( 55) // ACHAR(129), &
                                                                                    ACHAR( 68) // ACHAR( 57) // ACHAR(130), &
                                                                                    ACHAR( 67) // ACHAR( 58) // ACHAR(131), &
                                                                                    ACHAR( 67) // ACHAR( 59) // ACHAR(131), &
                                                                                    ACHAR( 67) // ACHAR( 60) // ACHAR(132), &
                                                                                    ACHAR( 66) // ACHAR( 61) // ACHAR(132), &
                                                                                    ACHAR( 66) // ACHAR( 62) // ACHAR(133), &
                                                                                    ACHAR( 66) // ACHAR( 64) // ACHAR(133), &
                                                                                    ACHAR( 65) // ACHAR( 65) // ACHAR(134), &
                                                                                    ACHAR( 65) // ACHAR( 66) // ACHAR(134), &
                                                                                    ACHAR( 64) // ACHAR( 67) // ACHAR(135), &
                                                                                    ACHAR( 64) // ACHAR( 68) // ACHAR(135), &
                                                                                    ACHAR( 63) // ACHAR( 69) // ACHAR(135), &
                                                                                    ACHAR( 63) // ACHAR( 71) // ACHAR(136), &
                                                                                    ACHAR( 62) // ACHAR( 72) // ACHAR(136), &
                                                                                    ACHAR( 62) // ACHAR( 73) // ACHAR(137), &
                                                                                    ACHAR( 61) // ACHAR( 74) // ACHAR(137), &
                                                                                    ACHAR( 61) // ACHAR( 75) // ACHAR(137), &
                                                                                    ACHAR( 61) // ACHAR( 76) // ACHAR(137), &
                                                                                    ACHAR( 60) // ACHAR( 77) // ACHAR(138), &
                                                                                    ACHAR( 60) // ACHAR( 78) // ACHAR(138), &
                                                                                    ACHAR( 59) // ACHAR( 80) // ACHAR(138), &
                                                                                    ACHAR( 59) // ACHAR( 81) // ACHAR(138), &
                                                                                    ACHAR( 58) // ACHAR( 82) // ACHAR(139), &
                                                                                    ACHAR( 58) // ACHAR( 83) // ACHAR(139), &
                                                                                    ACHAR( 57) // ACHAR( 84) // ACHAR(139), &
                                                                                    ACHAR( 57) // ACHAR( 85) // ACHAR(139), &
                                                                                    ACHAR( 56) // ACHAR( 86) // ACHAR(139), &
                                                                                    ACHAR( 56) // ACHAR( 87) // ACHAR(140), &
                                                                                    ACHAR( 55) // ACHAR( 88) // ACHAR(140), &
                                                                                    ACHAR( 55) // ACHAR( 89) // ACHAR(140), &
                                                                                    ACHAR( 54) // ACHAR( 90) // ACHAR(140), &
                                                                                    ACHAR( 54) // ACHAR( 91) // ACHAR(140), &
                                                                                    ACHAR( 53) // ACHAR( 92) // ACHAR(140), &
                                                                                    ACHAR( 53) // ACHAR( 93) // ACHAR(140), &
                                                                                    ACHAR( 52) // ACHAR( 94) // ACHAR(141), &
                                                                                    ACHAR( 52) // ACHAR( 95) // ACHAR(141), &
                                                                                    ACHAR( 51) // ACHAR( 96) // ACHAR(141), &
                                                                                    ACHAR( 51) // ACHAR( 97) // ACHAR(141), &
                                                                                    ACHAR( 50) // ACHAR( 98) // ACHAR(141), &
                                                                                    ACHAR( 50) // ACHAR( 99) // ACHAR(141), &
                                                                                    ACHAR( 49) // ACHAR(100) // ACHAR(141), &
                                                                                    ACHAR( 49) // ACHAR(101) // ACHAR(141), &
                                                                                    ACHAR( 49) // ACHAR(102) // ACHAR(141), &
                                                                                    ACHAR( 48) // ACHAR(103) // ACHAR(141), &
                                                                                    ACHAR( 48) // ACHAR(104) // ACHAR(141), &
                                                                                    ACHAR( 47) // ACHAR(105) // ACHAR(141), &
                                                                                    ACHAR( 47) // ACHAR(106) // ACHAR(141), &
                                                                                    ACHAR( 46) // ACHAR(107) // ACHAR(142), &
                                                                                    ACHAR( 46) // ACHAR(108) // ACHAR(142), &
                                                                                    ACHAR( 46) // ACHAR(109) // ACHAR(142), &
                                                                                    ACHAR( 45) // ACHAR(110) // ACHAR(142), &
                                                                                    ACHAR( 45) // ACHAR(111) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(112) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(113) // ACHAR(142), &
                                                                                    ACHAR( 44) // ACHAR(114) // ACHAR(142), &
                                                                                    ACHAR( 43) // ACHAR(115) // ACHAR(142), &
                                                                                    ACHAR( 43) // ACHAR(116) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(117) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(118) // ACHAR(142), &
                                                                                    ACHAR( 42) // ACHAR(119) // ACHAR(142), &
                                                                                    ACHAR( 41) // ACHAR(120) // ACHAR(142), &
                                                                                    ACHAR( 41) // ACHAR(121) // ACHAR(142), &
                                                                                    ACHAR( 40) // ACHAR(122) // ACHAR(142), &
                                                                                    ACHAR( 40) // ACHAR(122) // ACHAR(142), &
                                                                                    ACHAR( 40) // ACHAR(123) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(124) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(125) // ACHAR(142), &
                                                                                    ACHAR( 39) // ACHAR(126) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(127) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(128) // ACHAR(142), &
                                                                                    ACHAR( 38) // ACHAR(129) // ACHAR(142), &
                                                                                    ACHAR( 37) // ACHAR(130) // ACHAR(142), &
                                                                                    ACHAR( 37) // ACHAR(131) // ACHAR(141), &
                                                                                    ACHAR( 36) // ACHAR(132) // ACHAR(141), &
                                                                                    ACHAR( 36) // ACHAR(133) // ACHAR(141), &
                                                                                    ACHAR( 36) // ACHAR(134) // ACHAR(141), &
                                                                                    ACHAR( 35) // ACHAR(135) // ACHAR(141), &
                                                                                    ACHAR( 35) // ACHAR(136) // ACHAR(141), &
                                                                                    ACHAR( 35) // ACHAR(137) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(137) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(138) // ACHAR(141), &
                                                                                    ACHAR( 34) // ACHAR(139) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(140) // ACHAR(141), &
                                                                                    ACHAR( 33) // ACHAR(141) // ACHAR(140), &
                                                                                    ACHAR( 33) // ACHAR(142) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(143) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(144) // ACHAR(140), &
                                                                                    ACHAR( 32) // ACHAR(145) // ACHAR(140), &
                                                                                    ACHAR( 31) // ACHAR(146) // ACHAR(140), &
                                                                                    ACHAR( 31) // ACHAR(147) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(148) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(149) // ACHAR(139), &
                                                                                    ACHAR( 31) // ACHAR(150) // ACHAR(139), &
                                                                                    ACHAR( 30) // ACHAR(151) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(152) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(153) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(153) // ACHAR(138), &
                                                                                    ACHAR( 30) // ACHAR(154) // ACHAR(137), &
                                                                                    ACHAR( 30) // ACHAR(155) // ACHAR(137), &
                                                                                    ACHAR( 30) // ACHAR(156) // ACHAR(137), &
                                                                                    ACHAR( 30) // ACHAR(157) // ACHAR(136), &
                                                                                    ACHAR( 30) // ACHAR(158) // ACHAR(136), &
                                                                                    ACHAR( 30) // ACHAR(159) // ACHAR(136), &
                                                                                    ACHAR( 30) // ACHAR(160) // ACHAR(135), &
                                                                                    ACHAR( 31) // ACHAR(161) // ACHAR(135), &
                                                                                    ACHAR( 31) // ACHAR(162) // ACHAR(134), &
                                                                                    ACHAR( 31) // ACHAR(163) // ACHAR(134), &
                                                                                    ACHAR( 32) // ACHAR(164) // ACHAR(133), &
                                                                                    ACHAR( 32) // ACHAR(165) // ACHAR(133), &
                                                                                    ACHAR( 33) // ACHAR(166) // ACHAR(133), &
                                                                                    ACHAR( 33) // ACHAR(167) // ACHAR(132), &
                                                                                    ACHAR( 34) // ACHAR(167) // ACHAR(132), &
                                                                                    ACHAR( 35) // ACHAR(168) // ACHAR(131), &
                                                                                    ACHAR( 35) // ACHAR(169) // ACHAR(130), &
                                                                                    ACHAR( 36) // ACHAR(170) // ACHAR(130), &
                                                                                    ACHAR( 37) // ACHAR(171) // ACHAR(129), &
                                                                                    ACHAR( 38) // ACHAR(172) // ACHAR(129), &
                                                                                    ACHAR( 39) // ACHAR(173) // ACHAR(128), &
                                                                                    ACHAR( 40) // ACHAR(174) // ACHAR(127), &
                                                                                    ACHAR( 41) // ACHAR(175) // ACHAR(127), &
                                                                                    ACHAR( 42) // ACHAR(176) // ACHAR(126), &
                                                                                    ACHAR( 43) // ACHAR(177) // ACHAR(125), &
                                                                                    ACHAR( 44) // ACHAR(177) // ACHAR(125), &
                                                                                    ACHAR( 46) // ACHAR(178) // ACHAR(124), &
                                                                                    ACHAR( 47) // ACHAR(179) // ACHAR(123), &
                                                                                    ACHAR( 48) // ACHAR(180) // ACHAR(122), &
                                                                                    ACHAR( 50) // ACHAR(181) // ACHAR(122), &
                                                                                    ACHAR( 51) // ACHAR(182) // ACHAR(121), &
                                                                                    ACHAR( 53) // ACHAR(183) // ACHAR(120), &
                                                                                    ACHAR( 54) // ACHAR(184) // ACHAR(119), &
                                                                                    ACHAR( 56) // ACHAR(185) // ACHAR(118), &
                                                                                    ACHAR( 57) // ACHAR(185) // ACHAR(118), &
                                                                                    ACHAR( 59) // ACHAR(186) // ACHAR(117), &
                                                                                    ACHAR( 61) // ACHAR(187) // ACHAR(116), &
                                                                                    ACHAR( 62) // ACHAR(188) // ACHAR(115), &
                                                                                    ACHAR( 64) // ACHAR(189) // ACHAR(114), &
                                                                                    ACHAR( 66) // ACHAR(190) // ACHAR(113), &
                                                                                    ACHAR( 68) // ACHAR(190) // ACHAR(112), &
                                                                                    ACHAR( 69) // ACHAR(191) // ACHAR(111), &
                                                                                    ACHAR( 71) // ACHAR(192) // ACHAR(110), &
                                                                                    ACHAR( 73) // ACHAR(193) // ACHAR(109), &
                                                                                    ACHAR( 75) // ACHAR(194) // ACHAR(108), &
                                                                                    ACHAR( 77) // ACHAR(194) // ACHAR(107), &
                                                                                    ACHAR( 79) // ACHAR(195) // ACHAR(105), &
                                                                                    ACHAR( 81) // ACHAR(196) // ACHAR(104), &
                                                                                    ACHAR( 83) // ACHAR(197) // ACHAR(103), &
                                                                                    ACHAR( 85) // ACHAR(198) // ACHAR(102), &
                                                                                    ACHAR( 87) // ACHAR(198) // ACHAR(101), &
                                                                                    ACHAR( 89) // ACHAR(199) // ACHAR(100), &
                                                                                    ACHAR( 91) // ACHAR(200) // ACHAR( 98), &
                                                                                    ACHAR( 94) // ACHAR(201) // ACHAR( 97), &
                                                                                    ACHAR( 96) // ACHAR(201) // ACHAR( 96), &
                                                                                    ACHAR( 98) // ACHAR(202) // ACHAR( 95), &
                                                                                    ACHAR(100) // ACHAR(203) // ACHAR( 93), &
                                                                                    ACHAR(103) // ACHAR(204) // ACHAR( 92), &
                                                                                    ACHAR(105) // ACHAR(204) // ACHAR( 91), &
                                                                                    ACHAR(107) // ACHAR(205) // ACHAR( 89), &
                                                                                    ACHAR(109) // ACHAR(206) // ACHAR( 88), &
                                                                                    ACHAR(112) // ACHAR(206) // ACHAR( 86), &
                                                                                    ACHAR(114) // ACHAR(207) // ACHAR( 85), &
                                                                                    ACHAR(116) // ACHAR(208) // ACHAR( 84), &
                                                                                    ACHAR(119) // ACHAR(208) // ACHAR( 82), &
                                                                                    ACHAR(121) // ACHAR(209) // ACHAR( 81), &
                                                                                    ACHAR(124) // ACHAR(210) // ACHAR( 79), &
                                                                                    ACHAR(126) // ACHAR(210) // ACHAR( 78), &
                                                                                    ACHAR(129) // ACHAR(211) // ACHAR( 76), &
                                                                                    ACHAR(131) // ACHAR(211) // ACHAR( 75), &
                                                                                    ACHAR(134) // ACHAR(212) // ACHAR( 73), &
                                                                                    ACHAR(136) // ACHAR(213) // ACHAR( 71), &
                                                                                    ACHAR(139) // ACHAR(213) // ACHAR( 70), &
                                                                                    ACHAR(141) // ACHAR(214) // ACHAR( 68), &
                                                                                    ACHAR(144) // ACHAR(214) // ACHAR( 67), &
                                                                                    ACHAR(146) // ACHAR(215) // ACHAR( 65), &
                                                                                    ACHAR(149) // ACHAR(215) // ACHAR( 63), &
                                                                                    ACHAR(151) // ACHAR(216) // ACHAR( 62), &
                                                                                    ACHAR(154) // ACHAR(216) // ACHAR( 60), &
                                                                                    ACHAR(157) // ACHAR(217) // ACHAR( 58), &
                                                                                    ACHAR(159) // ACHAR(217) // ACHAR( 56), &
                                                                                    ACHAR(162) // ACHAR(218) // ACHAR( 55), &
                                                                                    ACHAR(165) // ACHAR(218) // ACHAR( 53), &
                                                                                    ACHAR(167) // ACHAR(219) // ACHAR( 51), &
                                                                                    ACHAR(170) // ACHAR(219) // ACHAR( 50), &
                                                                                    ACHAR(173) // ACHAR(220) // ACHAR( 48), &
                                                                                    ACHAR(175) // ACHAR(220) // ACHAR( 46), &
                                                                                    ACHAR(178) // ACHAR(221) // ACHAR( 44), &
                                                                                    ACHAR(181) // ACHAR(221) // ACHAR( 43), &
                                                                                    ACHAR(183) // ACHAR(221) // ACHAR( 41), &
                                                                                    ACHAR(186) // ACHAR(222) // ACHAR( 39), &
                                                                                    ACHAR(189) // ACHAR(222) // ACHAR( 38), &
                                                                                    ACHAR(191) // ACHAR(223) // ACHAR( 36), &
                                                                                    ACHAR(194) // ACHAR(223) // ACHAR( 34), &
                                                                                    ACHAR(197) // ACHAR(223) // ACHAR( 33), &
                                                                                    ACHAR(199) // ACHAR(224) // ACHAR( 31), &
                                                                                    ACHAR(202) // ACHAR(224) // ACHAR( 30), &
                                                                                    ACHAR(205) // ACHAR(224) // ACHAR( 29), &
                                                                                    ACHAR(207) // ACHAR(225) // ACHAR( 28), &
                                                                                    ACHAR(210) // ACHAR(225) // ACHAR( 27), &
                                                                                    ACHAR(212) // ACHAR(225) // ACHAR( 26), &
                                                                                    ACHAR(215) // ACHAR(226) // ACHAR( 25), &
                                                                                    ACHAR(218) // ACHAR(226) // ACHAR( 24), &
                                                                                    ACHAR(220) // ACHAR(226) // ACHAR( 24), &
                                                                                    ACHAR(223) // ACHAR(227) // ACHAR( 24), &
                                                                                    ACHAR(225) // ACHAR(227) // ACHAR( 24), &
                                                                                    ACHAR(228) // ACHAR(227) // ACHAR( 24), &
                                                                                    ACHAR(231) // ACHAR(228) // ACHAR( 25), &
                                                                                    ACHAR(233) // ACHAR(228) // ACHAR( 25), &
                                                                                    ACHAR(236) // ACHAR(228) // ACHAR( 26), &
                                                                                    ACHAR(238) // ACHAR(229) // ACHAR( 27), &
                                                                                    ACHAR(241) // ACHAR(229) // ACHAR( 28), &
                                                                                    ACHAR(243) // ACHAR(229) // ACHAR( 30), &
                                                                                    ACHAR(246) // ACHAR(230) // ACHAR( 31), &
                                                                                    ACHAR(248) // ACHAR(230) // ACHAR( 33), &
                                                                                    ACHAR(250) // ACHAR(230) // ACHAR( 34), &
                                                                                    ACHAR(253) // ACHAR(231) // ACHAR( 36)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_plasma = (/                     &
                                                                                    ACHAR( 12) // ACHAR(  7) // ACHAR(134), &
                                                                                    ACHAR( 16) // ACHAR(  7) // ACHAR(135), &
                                                                                    ACHAR( 19) // ACHAR(  6) // ACHAR(137), &
                                                                                    ACHAR( 21) // ACHAR(  6) // ACHAR(138), &
                                                                                    ACHAR( 24) // ACHAR(  6) // ACHAR(139), &
                                                                                    ACHAR( 27) // ACHAR(  6) // ACHAR(140), &
                                                                                    ACHAR( 29) // ACHAR(  6) // ACHAR(141), &
                                                                                    ACHAR( 31) // ACHAR(  5) // ACHAR(142), &
                                                                                    ACHAR( 33) // ACHAR(  5) // ACHAR(143), &
                                                                                    ACHAR( 35) // ACHAR(  5) // ACHAR(144), &
                                                                                    ACHAR( 37) // ACHAR(  5) // ACHAR(145), &
                                                                                    ACHAR( 39) // ACHAR(  5) // ACHAR(146), &
                                                                                    ACHAR( 41) // ACHAR(  5) // ACHAR(147), &
                                                                                    ACHAR( 43) // ACHAR(  5) // ACHAR(148), &
                                                                                    ACHAR( 45) // ACHAR(  4) // ACHAR(148), &
                                                                                    ACHAR( 47) // ACHAR(  4) // ACHAR(149), &
                                                                                    ACHAR( 49) // ACHAR(  4) // ACHAR(150), &
                                                                                    ACHAR( 51) // ACHAR(  4) // ACHAR(151), &
                                                                                    ACHAR( 52) // ACHAR(  4) // ACHAR(152), &
                                                                                    ACHAR( 54) // ACHAR(  4) // ACHAR(152), &
                                                                                    ACHAR( 56) // ACHAR(  4) // ACHAR(153), &
                                                                                    ACHAR( 58) // ACHAR(  4) // ACHAR(154), &
                                                                                    ACHAR( 59) // ACHAR(  3) // ACHAR(154), &
                                                                                    ACHAR( 61) // ACHAR(  3) // ACHAR(155), &
                                                                                    ACHAR( 63) // ACHAR(  3) // ACHAR(156), &
                                                                                    ACHAR( 64) // ACHAR(  3) // ACHAR(156), &
                                                                                    ACHAR( 66) // ACHAR(  3) // ACHAR(157), &
                                                                                    ACHAR( 68) // ACHAR(  3) // ACHAR(158), &
                                                                                    ACHAR( 69) // ACHAR(  3) // ACHAR(158), &
                                                                                    ACHAR( 71) // ACHAR(  2) // ACHAR(159), &
                                                                                    ACHAR( 73) // ACHAR(  2) // ACHAR(159), &
                                                                                    ACHAR( 74) // ACHAR(  2) // ACHAR(160), &
                                                                                    ACHAR( 76) // ACHAR(  2) // ACHAR(161), &
                                                                                    ACHAR( 78) // ACHAR(  2) // ACHAR(161), &
                                                                                    ACHAR( 79) // ACHAR(  2) // ACHAR(162), &
                                                                                    ACHAR( 81) // ACHAR(  1) // ACHAR(162), &
                                                                                    ACHAR( 82) // ACHAR(  1) // ACHAR(163), &
                                                                                    ACHAR( 84) // ACHAR(  1) // ACHAR(163), &
                                                                                    ACHAR( 86) // ACHAR(  1) // ACHAR(163), &
                                                                                    ACHAR( 87) // ACHAR(  1) // ACHAR(164), &
                                                                                    ACHAR( 89) // ACHAR(  1) // ACHAR(164), &
                                                                                    ACHAR( 90) // ACHAR(  0) // ACHAR(165), &
                                                                                    ACHAR( 92) // ACHAR(  0) // ACHAR(165), &
                                                                                    ACHAR( 94) // ACHAR(  0) // ACHAR(165), &
                                                                                    ACHAR( 95) // ACHAR(  0) // ACHAR(166), &
                                                                                    ACHAR( 97) // ACHAR(  0) // ACHAR(166), &
                                                                                    ACHAR( 98) // ACHAR(  0) // ACHAR(166), &
                                                                                    ACHAR(100) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(101) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(103) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(104) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(106) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR(108) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(109) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(111) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(112) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(114) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(115) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(117) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(118) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(120) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(121) // ACHAR(  1) // ACHAR(168), &
                                                                                    ACHAR(123) // ACHAR(  2) // ACHAR(168), &
                                                                                    ACHAR(124) // ACHAR(  2) // ACHAR(167), &
                                                                                    ACHAR(126) // ACHAR(  3) // ACHAR(167), &
                                                                                    ACHAR(127) // ACHAR(  3) // ACHAR(167), &
                                                                                    ACHAR(129) // ACHAR(  4) // ACHAR(167), &
                                                                                    ACHAR(130) // ACHAR(  4) // ACHAR(167), &
                                                                                    ACHAR(132) // ACHAR(  5) // ACHAR(166), &
                                                                                    ACHAR(133) // ACHAR(  6) // ACHAR(166), &
                                                                                    ACHAR(134) // ACHAR(  7) // ACHAR(166), &
                                                                                    ACHAR(136) // ACHAR(  7) // ACHAR(165), &
                                                                                    ACHAR(137) // ACHAR(  8) // ACHAR(165), &
                                                                                    ACHAR(139) // ACHAR(  9) // ACHAR(164), &
                                                                                    ACHAR(140) // ACHAR( 10) // ACHAR(164), &
                                                                                    ACHAR(142) // ACHAR( 12) // ACHAR(164), &
                                                                                    ACHAR(143) // ACHAR( 13) // ACHAR(163), &
                                                                                    ACHAR(144) // ACHAR( 14) // ACHAR(163), &
                                                                                    ACHAR(146) // ACHAR( 15) // ACHAR(162), &
                                                                                    ACHAR(147) // ACHAR( 16) // ACHAR(161), &
                                                                                    ACHAR(149) // ACHAR( 17) // ACHAR(161), &
                                                                                    ACHAR(150) // ACHAR( 18) // ACHAR(160), &
                                                                                    ACHAR(151) // ACHAR( 19) // ACHAR(160), &
                                                                                    ACHAR(153) // ACHAR( 20) // ACHAR(159), &
                                                                                    ACHAR(154) // ACHAR( 21) // ACHAR(158), &
                                                                                    ACHAR(155) // ACHAR( 23) // ACHAR(158), &
                                                                                    ACHAR(157) // ACHAR( 24) // ACHAR(157), &
                                                                                    ACHAR(158) // ACHAR( 25) // ACHAR(156), &
                                                                                    ACHAR(159) // ACHAR( 26) // ACHAR(155), &
                                                                                    ACHAR(160) // ACHAR( 27) // ACHAR(155), &
                                                                                    ACHAR(162) // ACHAR( 28) // ACHAR(154), &
                                                                                    ACHAR(163) // ACHAR( 29) // ACHAR(153), &
                                                                                    ACHAR(164) // ACHAR( 30) // ACHAR(152), &
                                                                                    ACHAR(165) // ACHAR( 31) // ACHAR(151), &
                                                                                    ACHAR(167) // ACHAR( 33) // ACHAR(151), &
                                                                                    ACHAR(168) // ACHAR( 34) // ACHAR(150), &
                                                                                    ACHAR(169) // ACHAR( 35) // ACHAR(149), &
                                                                                    ACHAR(170) // ACHAR( 36) // ACHAR(148), &
                                                                                    ACHAR(172) // ACHAR( 37) // ACHAR(147), &
                                                                                    ACHAR(173) // ACHAR( 38) // ACHAR(146), &
                                                                                    ACHAR(174) // ACHAR( 39) // ACHAR(145), &
                                                                                    ACHAR(175) // ACHAR( 40) // ACHAR(144), &
                                                                                    ACHAR(176) // ACHAR( 42) // ACHAR(143), &
                                                                                    ACHAR(177) // ACHAR( 43) // ACHAR(143), &
                                                                                    ACHAR(178) // ACHAR( 44) // ACHAR(142), &
                                                                                    ACHAR(180) // ACHAR( 45) // ACHAR(141), &
                                                                                    ACHAR(181) // ACHAR( 46) // ACHAR(140), &
                                                                                    ACHAR(182) // ACHAR( 47) // ACHAR(139), &
                                                                                    ACHAR(183) // ACHAR( 48) // ACHAR(138), &
                                                                                    ACHAR(184) // ACHAR( 50) // ACHAR(137), &
                                                                                    ACHAR(185) // ACHAR( 51) // ACHAR(136), &
                                                                                    ACHAR(186) // ACHAR( 52) // ACHAR(135), &
                                                                                    ACHAR(187) // ACHAR( 53) // ACHAR(134), &
                                                                                    ACHAR(188) // ACHAR( 54) // ACHAR(133), &
                                                                                    ACHAR(189) // ACHAR( 55) // ACHAR(132), &
                                                                                    ACHAR(190) // ACHAR( 56) // ACHAR(131), &
                                                                                    ACHAR(191) // ACHAR( 57) // ACHAR(130), &
                                                                                    ACHAR(192) // ACHAR( 59) // ACHAR(129), &
                                                                                    ACHAR(193) // ACHAR( 60) // ACHAR(128), &
                                                                                    ACHAR(194) // ACHAR( 61) // ACHAR(128), &
                                                                                    ACHAR(195) // ACHAR( 62) // ACHAR(127), &
                                                                                    ACHAR(196) // ACHAR( 63) // ACHAR(126), &
                                                                                    ACHAR(197) // ACHAR( 64) // ACHAR(125), &
                                                                                    ACHAR(198) // ACHAR( 65) // ACHAR(124), &
                                                                                    ACHAR(199) // ACHAR( 66) // ACHAR(123), &
                                                                                    ACHAR(200) // ACHAR( 68) // ACHAR(122), &
                                                                                    ACHAR(201) // ACHAR( 69) // ACHAR(121), &
                                                                                    ACHAR(202) // ACHAR( 70) // ACHAR(120), &
                                                                                    ACHAR(203) // ACHAR( 71) // ACHAR(119), &
                                                                                    ACHAR(204) // ACHAR( 72) // ACHAR(118), &
                                                                                    ACHAR(205) // ACHAR( 73) // ACHAR(117), &
                                                                                    ACHAR(206) // ACHAR( 74) // ACHAR(117), &
                                                                                    ACHAR(207) // ACHAR( 75) // ACHAR(116), &
                                                                                    ACHAR(208) // ACHAR( 77) // ACHAR(115), &
                                                                                    ACHAR(209) // ACHAR( 78) // ACHAR(114), &
                                                                                    ACHAR(209) // ACHAR( 79) // ACHAR(113), &
                                                                                    ACHAR(210) // ACHAR( 80) // ACHAR(112), &
                                                                                    ACHAR(211) // ACHAR( 81) // ACHAR(111), &
                                                                                    ACHAR(212) // ACHAR( 82) // ACHAR(110), &
                                                                                    ACHAR(213) // ACHAR( 83) // ACHAR(109), &
                                                                                    ACHAR(214) // ACHAR( 85) // ACHAR(109), &
                                                                                    ACHAR(215) // ACHAR( 86) // ACHAR(108), &
                                                                                    ACHAR(215) // ACHAR( 87) // ACHAR(107), &
                                                                                    ACHAR(216) // ACHAR( 88) // ACHAR(106), &
                                                                                    ACHAR(217) // ACHAR( 89) // ACHAR(105), &
                                                                                    ACHAR(218) // ACHAR( 90) // ACHAR(104), &
                                                                                    ACHAR(219) // ACHAR( 91) // ACHAR(103), &
                                                                                    ACHAR(220) // ACHAR( 93) // ACHAR(102), &
                                                                                    ACHAR(220) // ACHAR( 94) // ACHAR(102), &
                                                                                    ACHAR(221) // ACHAR( 95) // ACHAR(101), &
                                                                                    ACHAR(222) // ACHAR( 96) // ACHAR(100), &
                                                                                    ACHAR(223) // ACHAR( 97) // ACHAR( 99), &
                                                                                    ACHAR(223) // ACHAR( 98) // ACHAR( 98), &
                                                                                    ACHAR(224) // ACHAR(100) // ACHAR( 97), &
                                                                                    ACHAR(225) // ACHAR(101) // ACHAR( 96), &
                                                                                    ACHAR(226) // ACHAR(102) // ACHAR( 96), &
                                                                                    ACHAR(227) // ACHAR(103) // ACHAR( 95), &
                                                                                    ACHAR(227) // ACHAR(104) // ACHAR( 94), &
                                                                                    ACHAR(228) // ACHAR(106) // ACHAR( 93), &
                                                                                    ACHAR(229) // ACHAR(107) // ACHAR( 92), &
                                                                                    ACHAR(229) // ACHAR(108) // ACHAR( 91), &
                                                                                    ACHAR(230) // ACHAR(109) // ACHAR( 90), &
                                                                                    ACHAR(231) // ACHAR(110) // ACHAR( 90), &
                                                                                    ACHAR(232) // ACHAR(112) // ACHAR( 89), &
                                                                                    ACHAR(232) // ACHAR(113) // ACHAR( 88), &
                                                                                    ACHAR(233) // ACHAR(114) // ACHAR( 87), &
                                                                                    ACHAR(234) // ACHAR(115) // ACHAR( 86), &
                                                                                    ACHAR(234) // ACHAR(116) // ACHAR( 85), &
                                                                                    ACHAR(235) // ACHAR(118) // ACHAR( 84), &
                                                                                    ACHAR(236) // ACHAR(119) // ACHAR( 84), &
                                                                                    ACHAR(236) // ACHAR(120) // ACHAR( 83), &
                                                                                    ACHAR(237) // ACHAR(121) // ACHAR( 82), &
                                                                                    ACHAR(237) // ACHAR(123) // ACHAR( 81), &
                                                                                    ACHAR(238) // ACHAR(124) // ACHAR( 80), &
                                                                                    ACHAR(239) // ACHAR(125) // ACHAR( 79), &
                                                                                    ACHAR(239) // ACHAR(126) // ACHAR( 78), &
                                                                                    ACHAR(240) // ACHAR(128) // ACHAR( 77), &
                                                                                    ACHAR(240) // ACHAR(129) // ACHAR( 77), &
                                                                                    ACHAR(241) // ACHAR(130) // ACHAR( 76), &
                                                                                    ACHAR(242) // ACHAR(132) // ACHAR( 75), &
                                                                                    ACHAR(242) // ACHAR(133) // ACHAR( 74), &
                                                                                    ACHAR(243) // ACHAR(134) // ACHAR( 73), &
                                                                                    ACHAR(243) // ACHAR(135) // ACHAR( 72), &
                                                                                    ACHAR(244) // ACHAR(137) // ACHAR( 71), &
                                                                                    ACHAR(244) // ACHAR(138) // ACHAR( 71), &
                                                                                    ACHAR(245) // ACHAR(139) // ACHAR( 70), &
                                                                                    ACHAR(245) // ACHAR(141) // ACHAR( 69), &
                                                                                    ACHAR(246) // ACHAR(142) // ACHAR( 68), &
                                                                                    ACHAR(246) // ACHAR(143) // ACHAR( 67), &
                                                                                    ACHAR(246) // ACHAR(145) // ACHAR( 66), &
                                                                                    ACHAR(247) // ACHAR(146) // ACHAR( 65), &
                                                                                    ACHAR(247) // ACHAR(147) // ACHAR( 65), &
                                                                                    ACHAR(248) // ACHAR(149) // ACHAR( 64), &
                                                                                    ACHAR(248) // ACHAR(150) // ACHAR( 63), &
                                                                                    ACHAR(248) // ACHAR(152) // ACHAR( 62), &
                                                                                    ACHAR(249) // ACHAR(153) // ACHAR( 61), &
                                                                                    ACHAR(249) // ACHAR(154) // ACHAR( 60), &
                                                                                    ACHAR(250) // ACHAR(156) // ACHAR( 59), &
                                                                                    ACHAR(250) // ACHAR(157) // ACHAR( 58), &
                                                                                    ACHAR(250) // ACHAR(159) // ACHAR( 58), &
                                                                                    ACHAR(250) // ACHAR(160) // ACHAR( 57), &
                                                                                    ACHAR(251) // ACHAR(162) // ACHAR( 56), &
                                                                                    ACHAR(251) // ACHAR(163) // ACHAR( 55), &
                                                                                    ACHAR(251) // ACHAR(164) // ACHAR( 54), &
                                                                                    ACHAR(252) // ACHAR(166) // ACHAR( 53), &
                                                                                    ACHAR(252) // ACHAR(167) // ACHAR( 53), &
                                                                                    ACHAR(252) // ACHAR(169) // ACHAR( 52), &
                                                                                    ACHAR(252) // ACHAR(170) // ACHAR( 51), &
                                                                                    ACHAR(252) // ACHAR(172) // ACHAR( 50), &
                                                                                    ACHAR(252) // ACHAR(173) // ACHAR( 49), &
                                                                                    ACHAR(253) // ACHAR(175) // ACHAR( 49), &
                                                                                    ACHAR(253) // ACHAR(176) // ACHAR( 48), &
                                                                                    ACHAR(253) // ACHAR(178) // ACHAR( 47), &
                                                                                    ACHAR(253) // ACHAR(179) // ACHAR( 46), &
                                                                                    ACHAR(253) // ACHAR(181) // ACHAR( 45), &
                                                                                    ACHAR(253) // ACHAR(182) // ACHAR( 45), &
                                                                                    ACHAR(253) // ACHAR(184) // ACHAR( 44), &
                                                                                    ACHAR(253) // ACHAR(185) // ACHAR( 43), &
                                                                                    ACHAR(253) // ACHAR(187) // ACHAR( 43), &
                                                                                    ACHAR(253) // ACHAR(188) // ACHAR( 42), &
                                                                                    ACHAR(253) // ACHAR(190) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(192) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(193) // ACHAR( 40), &
                                                                                    ACHAR(253) // ACHAR(195) // ACHAR( 40), &
                                                                                    ACHAR(253) // ACHAR(196) // ACHAR( 39), &
                                                                                    ACHAR(253) // ACHAR(198) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(199) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(201) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(203) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(204) // ACHAR( 37), &
                                                                                    ACHAR(252) // ACHAR(206) // ACHAR( 37), &
                                                                                    ACHAR(251) // ACHAR(208) // ACHAR( 36), &
                                                                                    ACHAR(251) // ACHAR(209) // ACHAR( 36), &
                                                                                    ACHAR(251) // ACHAR(211) // ACHAR( 36), &
                                                                                    ACHAR(250) // ACHAR(213) // ACHAR( 36), &
                                                                                    ACHAR(250) // ACHAR(214) // ACHAR( 36), &
                                                                                    ACHAR(250) // ACHAR(216) // ACHAR( 36), &
                                                                                    ACHAR(249) // ACHAR(217) // ACHAR( 36), &
                                                                                    ACHAR(249) // ACHAR(219) // ACHAR( 36), &
                                                                                    ACHAR(248) // ACHAR(221) // ACHAR( 36), &
                                                                                    ACHAR(248) // ACHAR(223) // ACHAR( 36), &
                                                                                    ACHAR(247) // ACHAR(224) // ACHAR( 36), &
                                                                                    ACHAR(247) // ACHAR(226) // ACHAR( 37), &
                                                                                    ACHAR(246) // ACHAR(228) // ACHAR( 37), &
                                                                                    ACHAR(246) // ACHAR(229) // ACHAR( 37), &
                                                                                    ACHAR(245) // ACHAR(231) // ACHAR( 38), &
                                                                                    ACHAR(245) // ACHAR(233) // ACHAR( 38), &
                                                                                    ACHAR(244) // ACHAR(234) // ACHAR( 38), &
                                                                                    ACHAR(243) // ACHAR(236) // ACHAR( 38), &
                                                                                    ACHAR(243) // ACHAR(238) // ACHAR( 38), &
                                                                                    ACHAR(242) // ACHAR(240) // ACHAR( 38), &
                                                                                    ACHAR(242) // ACHAR(241) // ACHAR( 38), &
                                                                                    ACHAR(241) // ACHAR(243) // ACHAR( 38), &
                                                                                    ACHAR(240) // ACHAR(245) // ACHAR( 37), &
                                                                                    ACHAR(240) // ACHAR(246) // ACHAR( 35), &
                                                                                    ACHAR(239) // ACHAR(248) // ACHAR( 33)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_inferno = (/                    &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  3), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  4), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  6), &
                                                                                    ACHAR(  1) // ACHAR(  0) // ACHAR(  7), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  9), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR( 11), &
                                                                                    ACHAR(  2) // ACHAR(  1) // ACHAR( 14), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 16), &
                                                                                    ACHAR(  3) // ACHAR(  2) // ACHAR( 18), &
                                                                                    ACHAR(  4) // ACHAR(  3) // ACHAR( 20), &
                                                                                    ACHAR(  4) // ACHAR(  3) // ACHAR( 22), &
                                                                                    ACHAR(  5) // ACHAR(  4) // ACHAR( 24), &
                                                                                    ACHAR(  6) // ACHAR(  4) // ACHAR( 27), &
                                                                                    ACHAR(  7) // ACHAR(  5) // ACHAR( 29), &
                                                                                    ACHAR(  8) // ACHAR(  6) // ACHAR( 31), &
                                                                                    ACHAR(  9) // ACHAR(  6) // ACHAR( 33), &
                                                                                    ACHAR( 10) // ACHAR(  7) // ACHAR( 35), &
                                                                                    ACHAR( 11) // ACHAR(  7) // ACHAR( 38), &
                                                                                    ACHAR( 13) // ACHAR(  8) // ACHAR( 40), &
                                                                                    ACHAR( 14) // ACHAR(  8) // ACHAR( 42), &
                                                                                    ACHAR( 15) // ACHAR(  9) // ACHAR( 45), &
                                                                                    ACHAR( 16) // ACHAR(  9) // ACHAR( 47), &
                                                                                    ACHAR( 18) // ACHAR( 10) // ACHAR( 50), &
                                                                                    ACHAR( 19) // ACHAR( 10) // ACHAR( 52), &
                                                                                    ACHAR( 20) // ACHAR( 11) // ACHAR( 54), &
                                                                                    ACHAR( 22) // ACHAR( 11) // ACHAR( 57), &
                                                                                    ACHAR( 23) // ACHAR( 11) // ACHAR( 59), &
                                                                                    ACHAR( 25) // ACHAR( 11) // ACHAR( 62), &
                                                                                    ACHAR( 26) // ACHAR( 11) // ACHAR( 64), &
                                                                                    ACHAR( 28) // ACHAR( 12) // ACHAR( 67), &
                                                                                    ACHAR( 29) // ACHAR( 12) // ACHAR( 69), &
                                                                                    ACHAR( 31) // ACHAR( 12) // ACHAR( 71), &
                                                                                    ACHAR( 32) // ACHAR( 12) // ACHAR( 74), &
                                                                                    ACHAR( 34) // ACHAR( 11) // ACHAR( 76), &
                                                                                    ACHAR( 36) // ACHAR( 11) // ACHAR( 78), &
                                                                                    ACHAR( 38) // ACHAR( 11) // ACHAR( 80), &
                                                                                    ACHAR( 39) // ACHAR( 11) // ACHAR( 82), &
                                                                                    ACHAR( 41) // ACHAR( 11) // ACHAR( 84), &
                                                                                    ACHAR( 43) // ACHAR( 10) // ACHAR( 86), &
                                                                                    ACHAR( 45) // ACHAR( 10) // ACHAR( 88), &
                                                                                    ACHAR( 46) // ACHAR( 10) // ACHAR( 90), &
                                                                                    ACHAR( 48) // ACHAR( 10) // ACHAR( 92), &
                                                                                    ACHAR( 50) // ACHAR(  9) // ACHAR( 93), &
                                                                                    ACHAR( 52) // ACHAR(  9) // ACHAR( 95), &
                                                                                    ACHAR( 53) // ACHAR(  9) // ACHAR( 96), &
                                                                                    ACHAR( 55) // ACHAR(  9) // ACHAR( 97), &
                                                                                    ACHAR( 57) // ACHAR(  9) // ACHAR( 98), &
                                                                                    ACHAR( 59) // ACHAR(  9) // ACHAR(100), &
                                                                                    ACHAR( 60) // ACHAR(  9) // ACHAR(101), &
                                                                                    ACHAR( 62) // ACHAR(  9) // ACHAR(102), &
                                                                                    ACHAR( 64) // ACHAR(  9) // ACHAR(102), &
                                                                                    ACHAR( 65) // ACHAR(  9) // ACHAR(103), &
                                                                                    ACHAR( 67) // ACHAR( 10) // ACHAR(104), &
                                                                                    ACHAR( 69) // ACHAR( 10) // ACHAR(105), &
                                                                                    ACHAR( 70) // ACHAR( 10) // ACHAR(105), &
                                                                                    ACHAR( 72) // ACHAR( 11) // ACHAR(106), &
                                                                                    ACHAR( 74) // ACHAR( 11) // ACHAR(106), &
                                                                                    ACHAR( 75) // ACHAR( 12) // ACHAR(107), &
                                                                                    ACHAR( 77) // ACHAR( 12) // ACHAR(107), &
                                                                                    ACHAR( 79) // ACHAR( 13) // ACHAR(108), &
                                                                                    ACHAR( 80) // ACHAR( 13) // ACHAR(108), &
                                                                                    ACHAR( 82) // ACHAR( 14) // ACHAR(108), &
                                                                                    ACHAR( 83) // ACHAR( 14) // ACHAR(109), &
                                                                                    ACHAR( 85) // ACHAR( 15) // ACHAR(109), &
                                                                                    ACHAR( 87) // ACHAR( 15) // ACHAR(109), &
                                                                                    ACHAR( 88) // ACHAR( 16) // ACHAR(109), &
                                                                                    ACHAR( 90) // ACHAR( 17) // ACHAR(109), &
                                                                                    ACHAR( 91) // ACHAR( 17) // ACHAR(110), &
                                                                                    ACHAR( 93) // ACHAR( 18) // ACHAR(110), &
                                                                                    ACHAR( 95) // ACHAR( 18) // ACHAR(110), &
                                                                                    ACHAR( 96) // ACHAR( 19) // ACHAR(110), &
                                                                                    ACHAR( 98) // ACHAR( 20) // ACHAR(110), &
                                                                                    ACHAR( 99) // ACHAR( 20) // ACHAR(110), &
                                                                                    ACHAR(101) // ACHAR( 21) // ACHAR(110), &
                                                                                    ACHAR(102) // ACHAR( 21) // ACHAR(110), &
                                                                                    ACHAR(104) // ACHAR( 22) // ACHAR(110), &
                                                                                    ACHAR(106) // ACHAR( 23) // ACHAR(110), &
                                                                                    ACHAR(107) // ACHAR( 23) // ACHAR(110), &
                                                                                    ACHAR(109) // ACHAR( 24) // ACHAR(110), &
                                                                                    ACHAR(110) // ACHAR( 24) // ACHAR(110), &
                                                                                    ACHAR(112) // ACHAR( 25) // ACHAR(110), &
                                                                                    ACHAR(114) // ACHAR( 25) // ACHAR(109), &
                                                                                    ACHAR(115) // ACHAR( 26) // ACHAR(109), &
                                                                                    ACHAR(117) // ACHAR( 27) // ACHAR(109), &
                                                                                    ACHAR(118) // ACHAR( 27) // ACHAR(109), &
                                                                                    ACHAR(120) // ACHAR( 28) // ACHAR(109), &
                                                                                    ACHAR(122) // ACHAR( 28) // ACHAR(109), &
                                                                                    ACHAR(123) // ACHAR( 29) // ACHAR(108), &
                                                                                    ACHAR(125) // ACHAR( 29) // ACHAR(108), &
                                                                                    ACHAR(126) // ACHAR( 30) // ACHAR(108), &
                                                                                    ACHAR(128) // ACHAR( 31) // ACHAR(107), &
                                                                                    ACHAR(129) // ACHAR( 31) // ACHAR(107), &
                                                                                    ACHAR(131) // ACHAR( 32) // ACHAR(107), &
                                                                                    ACHAR(133) // ACHAR( 32) // ACHAR(106), &
                                                                                    ACHAR(134) // ACHAR( 33) // ACHAR(106), &
                                                                                    ACHAR(136) // ACHAR( 33) // ACHAR(106), &
                                                                                    ACHAR(137) // ACHAR( 34) // ACHAR(105), &
                                                                                    ACHAR(139) // ACHAR( 34) // ACHAR(105), &
                                                                                    ACHAR(141) // ACHAR( 35) // ACHAR(105), &
                                                                                    ACHAR(142) // ACHAR( 36) // ACHAR(104), &
                                                                                    ACHAR(144) // ACHAR( 36) // ACHAR(104), &
                                                                                    ACHAR(145) // ACHAR( 37) // ACHAR(103), &
                                                                                    ACHAR(147) // ACHAR( 37) // ACHAR(103), &
                                                                                    ACHAR(149) // ACHAR( 38) // ACHAR(102), &
                                                                                    ACHAR(150) // ACHAR( 38) // ACHAR(102), &
                                                                                    ACHAR(152) // ACHAR( 39) // ACHAR(101), &
                                                                                    ACHAR(153) // ACHAR( 40) // ACHAR(100), &
                                                                                    ACHAR(155) // ACHAR( 40) // ACHAR(100), &
                                                                                    ACHAR(156) // ACHAR( 41) // ACHAR( 99), &
                                                                                    ACHAR(158) // ACHAR( 41) // ACHAR( 99), &
                                                                                    ACHAR(160) // ACHAR( 42) // ACHAR( 98), &
                                                                                    ACHAR(161) // ACHAR( 43) // ACHAR( 97), &
                                                                                    ACHAR(163) // ACHAR( 43) // ACHAR( 97), &
                                                                                    ACHAR(164) // ACHAR( 44) // ACHAR( 96), &
                                                                                    ACHAR(166) // ACHAR( 44) // ACHAR( 95), &
                                                                                    ACHAR(167) // ACHAR( 45) // ACHAR( 95), &
                                                                                    ACHAR(169) // ACHAR( 46) // ACHAR( 94), &
                                                                                    ACHAR(171) // ACHAR( 46) // ACHAR( 93), &
                                                                                    ACHAR(172) // ACHAR( 47) // ACHAR( 92), &
                                                                                    ACHAR(174) // ACHAR( 48) // ACHAR( 91), &
                                                                                    ACHAR(175) // ACHAR( 49) // ACHAR( 91), &
                                                                                    ACHAR(177) // ACHAR( 49) // ACHAR( 90), &
                                                                                    ACHAR(178) // ACHAR( 50) // ACHAR( 89), &
                                                                                    ACHAR(180) // ACHAR( 51) // ACHAR( 88), &
                                                                                    ACHAR(181) // ACHAR( 51) // ACHAR( 87), &
                                                                                    ACHAR(183) // ACHAR( 52) // ACHAR( 86), &
                                                                                    ACHAR(184) // ACHAR( 53) // ACHAR( 86), &
                                                                                    ACHAR(186) // ACHAR( 54) // ACHAR( 85), &
                                                                                    ACHAR(187) // ACHAR( 55) // ACHAR( 84), &
                                                                                    ACHAR(189) // ACHAR( 55) // ACHAR( 83), &
                                                                                    ACHAR(190) // ACHAR( 56) // ACHAR( 82), &
                                                                                    ACHAR(191) // ACHAR( 57) // ACHAR( 81), &
                                                                                    ACHAR(193) // ACHAR( 58) // ACHAR( 80), &
                                                                                    ACHAR(194) // ACHAR( 59) // ACHAR( 79), &
                                                                                    ACHAR(196) // ACHAR( 60) // ACHAR( 78), &
                                                                                    ACHAR(197) // ACHAR( 61) // ACHAR( 77), &
                                                                                    ACHAR(199) // ACHAR( 62) // ACHAR( 76), &
                                                                                    ACHAR(200) // ACHAR( 62) // ACHAR( 75), &
                                                                                    ACHAR(201) // ACHAR( 63) // ACHAR( 74), &
                                                                                    ACHAR(203) // ACHAR( 64) // ACHAR( 73), &
                                                                                    ACHAR(204) // ACHAR( 65) // ACHAR( 72), &
                                                                                    ACHAR(205) // ACHAR( 66) // ACHAR( 71), &
                                                                                    ACHAR(207) // ACHAR( 68) // ACHAR( 70), &
                                                                                    ACHAR(208) // ACHAR( 69) // ACHAR( 68), &
                                                                                    ACHAR(209) // ACHAR( 70) // ACHAR( 67), &
                                                                                    ACHAR(210) // ACHAR( 71) // ACHAR( 66), &
                                                                                    ACHAR(212) // ACHAR( 72) // ACHAR( 65), &
                                                                                    ACHAR(213) // ACHAR( 73) // ACHAR( 64), &
                                                                                    ACHAR(214) // ACHAR( 74) // ACHAR( 63), &
                                                                                    ACHAR(215) // ACHAR( 75) // ACHAR( 62), &
                                                                                    ACHAR(217) // ACHAR( 77) // ACHAR( 61), &
                                                                                    ACHAR(218) // ACHAR( 78) // ACHAR( 59), &
                                                                                    ACHAR(219) // ACHAR( 79) // ACHAR( 58), &
                                                                                    ACHAR(220) // ACHAR( 80) // ACHAR( 57), &
                                                                                    ACHAR(221) // ACHAR( 82) // ACHAR( 56), &
                                                                                    ACHAR(222) // ACHAR( 83) // ACHAR( 55), &
                                                                                    ACHAR(223) // ACHAR( 84) // ACHAR( 54), &
                                                                                    ACHAR(224) // ACHAR( 86) // ACHAR( 52), &
                                                                                    ACHAR(226) // ACHAR( 87) // ACHAR( 51), &
                                                                                    ACHAR(227) // ACHAR( 88) // ACHAR( 50), &
                                                                                    ACHAR(228) // ACHAR( 90) // ACHAR( 49), &
                                                                                    ACHAR(229) // ACHAR( 91) // ACHAR( 48), &
                                                                                    ACHAR(230) // ACHAR( 92) // ACHAR( 46), &
                                                                                    ACHAR(230) // ACHAR( 94) // ACHAR( 45), &
                                                                                    ACHAR(231) // ACHAR( 95) // ACHAR( 44), &
                                                                                    ACHAR(232) // ACHAR( 97) // ACHAR( 43), &
                                                                                    ACHAR(233) // ACHAR( 98) // ACHAR( 42), &
                                                                                    ACHAR(234) // ACHAR(100) // ACHAR( 40), &
                                                                                    ACHAR(235) // ACHAR(101) // ACHAR( 39), &
                                                                                    ACHAR(236) // ACHAR(103) // ACHAR( 38), &
                                                                                    ACHAR(237) // ACHAR(104) // ACHAR( 37), &
                                                                                    ACHAR(237) // ACHAR(106) // ACHAR( 35), &
                                                                                    ACHAR(238) // ACHAR(108) // ACHAR( 34), &
                                                                                    ACHAR(239) // ACHAR(109) // ACHAR( 33), &
                                                                                    ACHAR(240) // ACHAR(111) // ACHAR( 31), &
                                                                                    ACHAR(240) // ACHAR(112) // ACHAR( 30), &
                                                                                    ACHAR(241) // ACHAR(114) // ACHAR( 29), &
                                                                                    ACHAR(242) // ACHAR(116) // ACHAR( 28), &
                                                                                    ACHAR(242) // ACHAR(117) // ACHAR( 26), &
                                                                                    ACHAR(243) // ACHAR(119) // ACHAR( 25), &
                                                                                    ACHAR(243) // ACHAR(121) // ACHAR( 24), &
                                                                                    ACHAR(244) // ACHAR(122) // ACHAR( 22), &
                                                                                    ACHAR(245) // ACHAR(124) // ACHAR( 21), &
                                                                                    ACHAR(245) // ACHAR(126) // ACHAR( 20), &
                                                                                    ACHAR(246) // ACHAR(128) // ACHAR( 18), &
                                                                                    ACHAR(246) // ACHAR(129) // ACHAR( 17), &
                                                                                    ACHAR(247) // ACHAR(131) // ACHAR( 16), &
                                                                                    ACHAR(247) // ACHAR(133) // ACHAR( 14), &
                                                                                    ACHAR(248) // ACHAR(135) // ACHAR( 13), &
                                                                                    ACHAR(248) // ACHAR(136) // ACHAR( 12), &
                                                                                    ACHAR(248) // ACHAR(138) // ACHAR( 11), &
                                                                                    ACHAR(249) // ACHAR(140) // ACHAR(  9), &
                                                                                    ACHAR(249) // ACHAR(142) // ACHAR(  8), &
                                                                                    ACHAR(249) // ACHAR(144) // ACHAR(  8), &
                                                                                    ACHAR(250) // ACHAR(145) // ACHAR(  7), &
                                                                                    ACHAR(250) // ACHAR(147) // ACHAR(  6), &
                                                                                    ACHAR(250) // ACHAR(149) // ACHAR(  6), &
                                                                                    ACHAR(250) // ACHAR(151) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(153) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(155) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(157) // ACHAR(  6), &
                                                                                    ACHAR(251) // ACHAR(158) // ACHAR(  7), &
                                                                                    ACHAR(251) // ACHAR(160) // ACHAR(  7), &
                                                                                    ACHAR(251) // ACHAR(162) // ACHAR(  8), &
                                                                                    ACHAR(251) // ACHAR(164) // ACHAR( 10), &
                                                                                    ACHAR(251) // ACHAR(166) // ACHAR( 11), &
                                                                                    ACHAR(251) // ACHAR(168) // ACHAR( 13), &
                                                                                    ACHAR(251) // ACHAR(170) // ACHAR( 14), &
                                                                                    ACHAR(251) // ACHAR(172) // ACHAR( 16), &
                                                                                    ACHAR(251) // ACHAR(174) // ACHAR( 18), &
                                                                                    ACHAR(251) // ACHAR(176) // ACHAR( 20), &
                                                                                    ACHAR(251) // ACHAR(177) // ACHAR( 22), &
                                                                                    ACHAR(251) // ACHAR(179) // ACHAR( 24), &
                                                                                    ACHAR(251) // ACHAR(181) // ACHAR( 26), &
                                                                                    ACHAR(251) // ACHAR(183) // ACHAR( 28), &
                                                                                    ACHAR(251) // ACHAR(185) // ACHAR( 30), &
                                                                                    ACHAR(250) // ACHAR(187) // ACHAR( 33), &
                                                                                    ACHAR(250) // ACHAR(189) // ACHAR( 35), &
                                                                                    ACHAR(250) // ACHAR(191) // ACHAR( 37), &
                                                                                    ACHAR(250) // ACHAR(193) // ACHAR( 40), &
                                                                                    ACHAR(249) // ACHAR(195) // ACHAR( 42), &
                                                                                    ACHAR(249) // ACHAR(197) // ACHAR( 44), &
                                                                                    ACHAR(249) // ACHAR(199) // ACHAR( 47), &
                                                                                    ACHAR(248) // ACHAR(201) // ACHAR( 49), &
                                                                                    ACHAR(248) // ACHAR(203) // ACHAR( 52), &
                                                                                    ACHAR(248) // ACHAR(205) // ACHAR( 55), &
                                                                                    ACHAR(247) // ACHAR(207) // ACHAR( 58), &
                                                                                    ACHAR(247) // ACHAR(209) // ACHAR( 60), &
                                                                                    ACHAR(246) // ACHAR(211) // ACHAR( 63), &
                                                                                    ACHAR(246) // ACHAR(213) // ACHAR( 66), &
                                                                                    ACHAR(245) // ACHAR(215) // ACHAR( 69), &
                                                                                    ACHAR(245) // ACHAR(217) // ACHAR( 72), &
                                                                                    ACHAR(244) // ACHAR(219) // ACHAR( 75), &
                                                                                    ACHAR(244) // ACHAR(220) // ACHAR( 79), &
                                                                                    ACHAR(243) // ACHAR(222) // ACHAR( 82), &
                                                                                    ACHAR(243) // ACHAR(224) // ACHAR( 86), &
                                                                                    ACHAR(243) // ACHAR(226) // ACHAR( 89), &
                                                                                    ACHAR(242) // ACHAR(228) // ACHAR( 93), &
                                                                                    ACHAR(242) // ACHAR(230) // ACHAR( 96), &
                                                                                    ACHAR(241) // ACHAR(232) // ACHAR(100), &
                                                                                    ACHAR(241) // ACHAR(233) // ACHAR(104), &
                                                                                    ACHAR(241) // ACHAR(235) // ACHAR(108), &
                                                                                    ACHAR(241) // ACHAR(237) // ACHAR(112), &
                                                                                    ACHAR(241) // ACHAR(238) // ACHAR(116), &
                                                                                    ACHAR(241) // ACHAR(240) // ACHAR(121), &
                                                                                    ACHAR(241) // ACHAR(242) // ACHAR(125), &
                                                                                    ACHAR(242) // ACHAR(243) // ACHAR(129), &
                                                                                    ACHAR(242) // ACHAR(244) // ACHAR(133), &
                                                                                    ACHAR(243) // ACHAR(246) // ACHAR(137), &
                                                                                    ACHAR(244) // ACHAR(247) // ACHAR(141), &
                                                                                    ACHAR(245) // ACHAR(248) // ACHAR(145), &
                                                                                    ACHAR(246) // ACHAR(250) // ACHAR(149), &
                                                                                    ACHAR(247) // ACHAR(251) // ACHAR(153), &
                                                                                    ACHAR(249) // ACHAR(252) // ACHAR(157), &
                                                                                    ACHAR(250) // ACHAR(253) // ACHAR(160), &
                                                                                    ACHAR(252) // ACHAR(254) // ACHAR(164)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_magma = (/                      &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  3), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  4), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  6), &
                                                                                    ACHAR(  1) // ACHAR(  0) // ACHAR(  7), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  9), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR( 11), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 13), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR( 15), &
                                                                                    ACHAR(  3) // ACHAR(  3) // ACHAR( 17), &
                                                                                    ACHAR(  4) // ACHAR(  3) // ACHAR( 19), &
                                                                                    ACHAR(  4) // ACHAR(  4) // ACHAR( 21), &
                                                                                    ACHAR(  5) // ACHAR(  4) // ACHAR( 23), &
                                                                                    ACHAR(  6) // ACHAR(  5) // ACHAR( 25), &
                                                                                    ACHAR(  7) // ACHAR(  5) // ACHAR( 27), &
                                                                                    ACHAR(  8) // ACHAR(  6) // ACHAR( 29), &
                                                                                    ACHAR(  9) // ACHAR(  7) // ACHAR( 31), &
                                                                                    ACHAR( 10) // ACHAR(  7) // ACHAR( 34), &
                                                                                    ACHAR( 11) // ACHAR(  8) // ACHAR( 36), &
                                                                                    ACHAR( 12) // ACHAR(  9) // ACHAR( 38), &
                                                                                    ACHAR( 13) // ACHAR( 10) // ACHAR( 40), &
                                                                                    ACHAR( 14) // ACHAR( 10) // ACHAR( 42), &
                                                                                    ACHAR( 15) // ACHAR( 11) // ACHAR( 44), &
                                                                                    ACHAR( 16) // ACHAR( 12) // ACHAR( 47), &
                                                                                    ACHAR( 17) // ACHAR( 12) // ACHAR( 49), &
                                                                                    ACHAR( 18) // ACHAR( 13) // ACHAR( 51), &
                                                                                    ACHAR( 20) // ACHAR( 13) // ACHAR( 53), &
                                                                                    ACHAR( 21) // ACHAR( 14) // ACHAR( 56), &
                                                                                    ACHAR( 22) // ACHAR( 14) // ACHAR( 58), &
                                                                                    ACHAR( 23) // ACHAR( 15) // ACHAR( 60), &
                                                                                    ACHAR( 24) // ACHAR( 15) // ACHAR( 63), &
                                                                                    ACHAR( 26) // ACHAR( 16) // ACHAR( 65), &
                                                                                    ACHAR( 27) // ACHAR( 16) // ACHAR( 68), &
                                                                                    ACHAR( 28) // ACHAR( 16) // ACHAR( 70), &
                                                                                    ACHAR( 30) // ACHAR( 16) // ACHAR( 73), &
                                                                                    ACHAR( 31) // ACHAR( 17) // ACHAR( 75), &
                                                                                    ACHAR( 32) // ACHAR( 17) // ACHAR( 77), &
                                                                                    ACHAR( 34) // ACHAR( 17) // ACHAR( 80), &
                                                                                    ACHAR( 35) // ACHAR( 17) // ACHAR( 82), &
                                                                                    ACHAR( 37) // ACHAR( 17) // ACHAR( 85), &
                                                                                    ACHAR( 38) // ACHAR( 17) // ACHAR( 87), &
                                                                                    ACHAR( 40) // ACHAR( 17) // ACHAR( 89), &
                                                                                    ACHAR( 42) // ACHAR( 17) // ACHAR( 92), &
                                                                                    ACHAR( 43) // ACHAR( 17) // ACHAR( 94), &
                                                                                    ACHAR( 45) // ACHAR( 16) // ACHAR( 96), &
                                                                                    ACHAR( 47) // ACHAR( 16) // ACHAR( 98), &
                                                                                    ACHAR( 48) // ACHAR( 16) // ACHAR(101), &
                                                                                    ACHAR( 50) // ACHAR( 16) // ACHAR(103), &
                                                                                    ACHAR( 52) // ACHAR( 16) // ACHAR(104), &
                                                                                    ACHAR( 53) // ACHAR( 15) // ACHAR(106), &
                                                                                    ACHAR( 55) // ACHAR( 15) // ACHAR(108), &
                                                                                    ACHAR( 57) // ACHAR( 15) // ACHAR(110), &
                                                                                    ACHAR( 59) // ACHAR( 15) // ACHAR(111), &
                                                                                    ACHAR( 60) // ACHAR( 15) // ACHAR(113), &
                                                                                    ACHAR( 62) // ACHAR( 15) // ACHAR(114), &
                                                                                    ACHAR( 64) // ACHAR( 15) // ACHAR(115), &
                                                                                    ACHAR( 66) // ACHAR( 15) // ACHAR(116), &
                                                                                    ACHAR( 67) // ACHAR( 15) // ACHAR(117), &
                                                                                    ACHAR( 69) // ACHAR( 15) // ACHAR(118), &
                                                                                    ACHAR( 71) // ACHAR( 15) // ACHAR(119), &
                                                                                    ACHAR( 72) // ACHAR( 16) // ACHAR(120), &
                                                                                    ACHAR( 74) // ACHAR( 16) // ACHAR(121), &
                                                                                    ACHAR( 75) // ACHAR( 16) // ACHAR(121), &
                                                                                    ACHAR( 77) // ACHAR( 17) // ACHAR(122), &
                                                                                    ACHAR( 79) // ACHAR( 17) // ACHAR(123), &
                                                                                    ACHAR( 80) // ACHAR( 18) // ACHAR(123), &
                                                                                    ACHAR( 82) // ACHAR( 18) // ACHAR(124), &
                                                                                    ACHAR( 83) // ACHAR( 19) // ACHAR(124), &
                                                                                    ACHAR( 85) // ACHAR( 19) // ACHAR(125), &
                                                                                    ACHAR( 87) // ACHAR( 20) // ACHAR(125), &
                                                                                    ACHAR( 88) // ACHAR( 21) // ACHAR(126), &
                                                                                    ACHAR( 90) // ACHAR( 21) // ACHAR(126), &
                                                                                    ACHAR( 91) // ACHAR( 22) // ACHAR(126), &
                                                                                    ACHAR( 93) // ACHAR( 23) // ACHAR(126), &
                                                                                    ACHAR( 94) // ACHAR( 23) // ACHAR(127), &
                                                                                    ACHAR( 96) // ACHAR( 24) // ACHAR(127), &
                                                                                    ACHAR( 97) // ACHAR( 24) // ACHAR(127), &
                                                                                    ACHAR( 99) // ACHAR( 25) // ACHAR(127), &
                                                                                    ACHAR(101) // ACHAR( 26) // ACHAR(128), &
                                                                                    ACHAR(102) // ACHAR( 26) // ACHAR(128), &
                                                                                    ACHAR(104) // ACHAR( 27) // ACHAR(128), &
                                                                                    ACHAR(105) // ACHAR( 28) // ACHAR(128), &
                                                                                    ACHAR(107) // ACHAR( 28) // ACHAR(128), &
                                                                                    ACHAR(108) // ACHAR( 29) // ACHAR(128), &
                                                                                    ACHAR(110) // ACHAR( 30) // ACHAR(129), &
                                                                                    ACHAR(111) // ACHAR( 30) // ACHAR(129), &
                                                                                    ACHAR(113) // ACHAR( 31) // ACHAR(129), &
                                                                                    ACHAR(115) // ACHAR( 31) // ACHAR(129), &
                                                                                    ACHAR(116) // ACHAR( 32) // ACHAR(129), &
                                                                                    ACHAR(118) // ACHAR( 33) // ACHAR(129), &
                                                                                    ACHAR(119) // ACHAR( 33) // ACHAR(129), &
                                                                                    ACHAR(121) // ACHAR( 34) // ACHAR(129), &
                                                                                    ACHAR(122) // ACHAR( 34) // ACHAR(129), &
                                                                                    ACHAR(124) // ACHAR( 35) // ACHAR(129), &
                                                                                    ACHAR(126) // ACHAR( 36) // ACHAR(129), &
                                                                                    ACHAR(127) // ACHAR( 36) // ACHAR(129), &
                                                                                    ACHAR(129) // ACHAR( 37) // ACHAR(129), &
                                                                                    ACHAR(130) // ACHAR( 37) // ACHAR(129), &
                                                                                    ACHAR(132) // ACHAR( 38) // ACHAR(129), &
                                                                                    ACHAR(133) // ACHAR( 38) // ACHAR(129), &
                                                                                    ACHAR(135) // ACHAR( 39) // ACHAR(129), &
                                                                                    ACHAR(137) // ACHAR( 40) // ACHAR(129), &
                                                                                    ACHAR(138) // ACHAR( 40) // ACHAR(129), &
                                                                                    ACHAR(140) // ACHAR( 41) // ACHAR(128), &
                                                                                    ACHAR(141) // ACHAR( 41) // ACHAR(128), &
                                                                                    ACHAR(143) // ACHAR( 42) // ACHAR(128), &
                                                                                    ACHAR(145) // ACHAR( 42) // ACHAR(128), &
                                                                                    ACHAR(146) // ACHAR( 43) // ACHAR(128), &
                                                                                    ACHAR(148) // ACHAR( 43) // ACHAR(128), &
                                                                                    ACHAR(149) // ACHAR( 44) // ACHAR(128), &
                                                                                    ACHAR(151) // ACHAR( 44) // ACHAR(127), &
                                                                                    ACHAR(153) // ACHAR( 45) // ACHAR(127), &
                                                                                    ACHAR(154) // ACHAR( 45) // ACHAR(127), &
                                                                                    ACHAR(156) // ACHAR( 46) // ACHAR(127), &
                                                                                    ACHAR(158) // ACHAR( 46) // ACHAR(126), &
                                                                                    ACHAR(159) // ACHAR( 47) // ACHAR(126), &
                                                                                    ACHAR(161) // ACHAR( 47) // ACHAR(126), &
                                                                                    ACHAR(163) // ACHAR( 48) // ACHAR(126), &
                                                                                    ACHAR(164) // ACHAR( 48) // ACHAR(125), &
                                                                                    ACHAR(166) // ACHAR( 49) // ACHAR(125), &
                                                                                    ACHAR(167) // ACHAR( 49) // ACHAR(125), &
                                                                                    ACHAR(169) // ACHAR( 50) // ACHAR(124), &
                                                                                    ACHAR(171) // ACHAR( 51) // ACHAR(124), &
                                                                                    ACHAR(172) // ACHAR( 51) // ACHAR(123), &
                                                                                    ACHAR(174) // ACHAR( 52) // ACHAR(123), &
                                                                                    ACHAR(176) // ACHAR( 52) // ACHAR(123), &
                                                                                    ACHAR(177) // ACHAR( 53) // ACHAR(122), &
                                                                                    ACHAR(179) // ACHAR( 53) // ACHAR(122), &
                                                                                    ACHAR(181) // ACHAR( 54) // ACHAR(121), &
                                                                                    ACHAR(182) // ACHAR( 54) // ACHAR(121), &
                                                                                    ACHAR(184) // ACHAR( 55) // ACHAR(120), &
                                                                                    ACHAR(185) // ACHAR( 55) // ACHAR(120), &
                                                                                    ACHAR(187) // ACHAR( 56) // ACHAR(119), &
                                                                                    ACHAR(189) // ACHAR( 57) // ACHAR(119), &
                                                                                    ACHAR(190) // ACHAR( 57) // ACHAR(118), &
                                                                                    ACHAR(192) // ACHAR( 58) // ACHAR(117), &
                                                                                    ACHAR(194) // ACHAR( 58) // ACHAR(117), &
                                                                                    ACHAR(195) // ACHAR( 59) // ACHAR(116), &
                                                                                    ACHAR(197) // ACHAR( 60) // ACHAR(116), &
                                                                                    ACHAR(198) // ACHAR( 60) // ACHAR(115), &
                                                                                    ACHAR(200) // ACHAR( 61) // ACHAR(114), &
                                                                                    ACHAR(202) // ACHAR( 62) // ACHAR(114), &
                                                                                    ACHAR(203) // ACHAR( 62) // ACHAR(113), &
                                                                                    ACHAR(205) // ACHAR( 63) // ACHAR(112), &
                                                                                    ACHAR(206) // ACHAR( 64) // ACHAR(112), &
                                                                                    ACHAR(208) // ACHAR( 65) // ACHAR(111), &
                                                                                    ACHAR(209) // ACHAR( 66) // ACHAR(110), &
                                                                                    ACHAR(211) // ACHAR( 66) // ACHAR(109), &
                                                                                    ACHAR(212) // ACHAR( 67) // ACHAR(109), &
                                                                                    ACHAR(214) // ACHAR( 68) // ACHAR(108), &
                                                                                    ACHAR(215) // ACHAR( 69) // ACHAR(107), &
                                                                                    ACHAR(217) // ACHAR( 70) // ACHAR(106), &
                                                                                    ACHAR(218) // ACHAR( 71) // ACHAR(105), &
                                                                                    ACHAR(220) // ACHAR( 72) // ACHAR(105), &
                                                                                    ACHAR(221) // ACHAR( 73) // ACHAR(104), &
                                                                                    ACHAR(222) // ACHAR( 74) // ACHAR(103), &
                                                                                    ACHAR(224) // ACHAR( 75) // ACHAR(102), &
                                                                                    ACHAR(225) // ACHAR( 76) // ACHAR(102), &
                                                                                    ACHAR(226) // ACHAR( 77) // ACHAR(101), &
                                                                                    ACHAR(228) // ACHAR( 78) // ACHAR(100), &
                                                                                    ACHAR(229) // ACHAR( 80) // ACHAR( 99), &
                                                                                    ACHAR(230) // ACHAR( 81) // ACHAR( 98), &
                                                                                    ACHAR(231) // ACHAR( 82) // ACHAR( 98), &
                                                                                    ACHAR(232) // ACHAR( 84) // ACHAR( 97), &
                                                                                    ACHAR(234) // ACHAR( 85) // ACHAR( 96), &
                                                                                    ACHAR(235) // ACHAR( 86) // ACHAR( 96), &
                                                                                    ACHAR(236) // ACHAR( 88) // ACHAR( 95), &
                                                                                    ACHAR(237) // ACHAR( 89) // ACHAR( 95), &
                                                                                    ACHAR(238) // ACHAR( 91) // ACHAR( 94), &
                                                                                    ACHAR(238) // ACHAR( 93) // ACHAR( 93), &
                                                                                    ACHAR(239) // ACHAR( 94) // ACHAR( 93), &
                                                                                    ACHAR(240) // ACHAR( 96) // ACHAR( 93), &
                                                                                    ACHAR(241) // ACHAR( 97) // ACHAR( 92), &
                                                                                    ACHAR(242) // ACHAR( 99) // ACHAR( 92), &
                                                                                    ACHAR(243) // ACHAR(101) // ACHAR( 92), &
                                                                                    ACHAR(243) // ACHAR(103) // ACHAR( 91), &
                                                                                    ACHAR(244) // ACHAR(104) // ACHAR( 91), &
                                                                                    ACHAR(245) // ACHAR(106) // ACHAR( 91), &
                                                                                    ACHAR(245) // ACHAR(108) // ACHAR( 91), &
                                                                                    ACHAR(246) // ACHAR(110) // ACHAR( 91), &
                                                                                    ACHAR(246) // ACHAR(112) // ACHAR( 91), &
                                                                                    ACHAR(247) // ACHAR(113) // ACHAR( 91), &
                                                                                    ACHAR(247) // ACHAR(115) // ACHAR( 92), &
                                                                                    ACHAR(248) // ACHAR(117) // ACHAR( 92), &
                                                                                    ACHAR(248) // ACHAR(119) // ACHAR( 92), &
                                                                                    ACHAR(249) // ACHAR(121) // ACHAR( 92), &
                                                                                    ACHAR(249) // ACHAR(123) // ACHAR( 93), &
                                                                                    ACHAR(249) // ACHAR(125) // ACHAR( 93), &
                                                                                    ACHAR(250) // ACHAR(127) // ACHAR( 94), &
                                                                                    ACHAR(250) // ACHAR(128) // ACHAR( 94), &
                                                                                    ACHAR(250) // ACHAR(130) // ACHAR( 95), &
                                                                                    ACHAR(251) // ACHAR(132) // ACHAR( 96), &
                                                                                    ACHAR(251) // ACHAR(134) // ACHAR( 96), &
                                                                                    ACHAR(251) // ACHAR(136) // ACHAR( 97), &
                                                                                    ACHAR(251) // ACHAR(138) // ACHAR( 98), &
                                                                                    ACHAR(252) // ACHAR(140) // ACHAR( 99), &
                                                                                    ACHAR(252) // ACHAR(142) // ACHAR( 99), &
                                                                                    ACHAR(252) // ACHAR(144) // ACHAR(100), &
                                                                                    ACHAR(252) // ACHAR(146) // ACHAR(101), &
                                                                                    ACHAR(252) // ACHAR(147) // ACHAR(102), &
                                                                                    ACHAR(253) // ACHAR(149) // ACHAR(103), &
                                                                                    ACHAR(253) // ACHAR(151) // ACHAR(104), &
                                                                                    ACHAR(253) // ACHAR(153) // ACHAR(105), &
                                                                                    ACHAR(253) // ACHAR(155) // ACHAR(106), &
                                                                                    ACHAR(253) // ACHAR(157) // ACHAR(107), &
                                                                                    ACHAR(253) // ACHAR(159) // ACHAR(108), &
                                                                                    ACHAR(253) // ACHAR(161) // ACHAR(110), &
                                                                                    ACHAR(253) // ACHAR(162) // ACHAR(111), &
                                                                                    ACHAR(253) // ACHAR(164) // ACHAR(112), &
                                                                                    ACHAR(254) // ACHAR(166) // ACHAR(113), &
                                                                                    ACHAR(254) // ACHAR(168) // ACHAR(115), &
                                                                                    ACHAR(254) // ACHAR(170) // ACHAR(116), &
                                                                                    ACHAR(254) // ACHAR(172) // ACHAR(117), &
                                                                                    ACHAR(254) // ACHAR(174) // ACHAR(118), &
                                                                                    ACHAR(254) // ACHAR(175) // ACHAR(120), &
                                                                                    ACHAR(254) // ACHAR(177) // ACHAR(121), &
                                                                                    ACHAR(254) // ACHAR(179) // ACHAR(123), &
                                                                                    ACHAR(254) // ACHAR(181) // ACHAR(124), &
                                                                                    ACHAR(254) // ACHAR(183) // ACHAR(125), &
                                                                                    ACHAR(254) // ACHAR(185) // ACHAR(127), &
                                                                                    ACHAR(254) // ACHAR(187) // ACHAR(128), &
                                                                                    ACHAR(254) // ACHAR(188) // ACHAR(130), &
                                                                                    ACHAR(254) // ACHAR(190) // ACHAR(131), &
                                                                                    ACHAR(254) // ACHAR(192) // ACHAR(133), &
                                                                                    ACHAR(254) // ACHAR(194) // ACHAR(134), &
                                                                                    ACHAR(254) // ACHAR(196) // ACHAR(136), &
                                                                                    ACHAR(254) // ACHAR(198) // ACHAR(137), &
                                                                                    ACHAR(254) // ACHAR(199) // ACHAR(139), &
                                                                                    ACHAR(254) // ACHAR(201) // ACHAR(141), &
                                                                                    ACHAR(254) // ACHAR(203) // ACHAR(142), &
                                                                                    ACHAR(253) // ACHAR(205) // ACHAR(144), &
                                                                                    ACHAR(253) // ACHAR(207) // ACHAR(146), &
                                                                                    ACHAR(253) // ACHAR(209) // ACHAR(147), &
                                                                                    ACHAR(253) // ACHAR(210) // ACHAR(149), &
                                                                                    ACHAR(253) // ACHAR(212) // ACHAR(151), &
                                                                                    ACHAR(253) // ACHAR(214) // ACHAR(152), &
                                                                                    ACHAR(253) // ACHAR(216) // ACHAR(154), &
                                                                                    ACHAR(253) // ACHAR(218) // ACHAR(156), &
                                                                                    ACHAR(253) // ACHAR(220) // ACHAR(157), &
                                                                                    ACHAR(253) // ACHAR(221) // ACHAR(159), &
                                                                                    ACHAR(253) // ACHAR(223) // ACHAR(161), &
                                                                                    ACHAR(253) // ACHAR(225) // ACHAR(163), &
                                                                                    ACHAR(252) // ACHAR(227) // ACHAR(165), &
                                                                                    ACHAR(252) // ACHAR(229) // ACHAR(166), &
                                                                                    ACHAR(252) // ACHAR(230) // ACHAR(168), &
                                                                                    ACHAR(252) // ACHAR(232) // ACHAR(170), &
                                                                                    ACHAR(252) // ACHAR(234) // ACHAR(172), &
                                                                                    ACHAR(252) // ACHAR(236) // ACHAR(174), &
                                                                                    ACHAR(252) // ACHAR(238) // ACHAR(176), &
                                                                                    ACHAR(252) // ACHAR(240) // ACHAR(177), &
                                                                                    ACHAR(252) // ACHAR(241) // ACHAR(179), &
                                                                                    ACHAR(252) // ACHAR(243) // ACHAR(181), &
                                                                                    ACHAR(252) // ACHAR(245) // ACHAR(183), &
                                                                                    ACHAR(251) // ACHAR(247) // ACHAR(185), &
                                                                                    ACHAR(251) // ACHAR(249) // ACHAR(187), &
                                                                                    ACHAR(251) // ACHAR(250) // ACHAR(189), &
                                                                                    ACHAR(251) // ACHAR(252) // ACHAR(191)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_cividis = (/                    &
                                                                                    ACHAR(  0) // ACHAR( 34) // ACHAR( 77), &
                                                                                    ACHAR(  0) // ACHAR( 35) // ACHAR( 79), &
                                                                                    ACHAR(  0) // ACHAR( 35) // ACHAR( 80), &
                                                                                    ACHAR(  0) // ACHAR( 36) // ACHAR( 82), &
                                                                                    ACHAR(  0) // ACHAR( 37) // ACHAR( 84), &
                                                                                    ACHAR(  0) // ACHAR( 38) // ACHAR( 85), &
                                                                                    ACHAR(  0) // ACHAR( 38) // ACHAR( 87), &
                                                                                    ACHAR(  0) // ACHAR( 39) // ACHAR( 89), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR( 91), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR( 92), &
                                                                                    ACHAR(  0) // ACHAR( 41) // ACHAR( 94), &
                                                                                    ACHAR(  0) // ACHAR( 42) // ACHAR( 96), &
                                                                                    ACHAR(  0) // ACHAR( 42) // ACHAR( 98), &
                                                                                    ACHAR(  0) // ACHAR( 43) // ACHAR(100), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(102), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(103), &
                                                                                    ACHAR(  0) // ACHAR( 45) // ACHAR(105), &
                                                                                    ACHAR(  0) // ACHAR( 46) // ACHAR(107), &
                                                                                    ACHAR(  0) // ACHAR( 47) // ACHAR(109), &
                                                                                    ACHAR(  0) // ACHAR( 47) // ACHAR(111), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR( 49) // ACHAR(112), &
                                                                                    ACHAR(  0) // ACHAR( 49) // ACHAR(112), &
                                                                                    ACHAR(  4) // ACHAR( 50) // ACHAR(112), &
                                                                                    ACHAR(  8) // ACHAR( 51) // ACHAR(112), &
                                                                                    ACHAR( 11) // ACHAR( 51) // ACHAR(112), &
                                                                                    ACHAR( 14) // ACHAR( 52) // ACHAR(112), &
                                                                                    ACHAR( 17) // ACHAR( 53) // ACHAR(111), &
                                                                                    ACHAR( 20) // ACHAR( 54) // ACHAR(111), &
                                                                                    ACHAR( 22) // ACHAR( 54) // ACHAR(111), &
                                                                                    ACHAR( 24) // ACHAR( 55) // ACHAR(111), &
                                                                                    ACHAR( 26) // ACHAR( 56) // ACHAR(111), &
                                                                                    ACHAR( 28) // ACHAR( 56) // ACHAR(110), &
                                                                                    ACHAR( 29) // ACHAR( 57) // ACHAR(110), &
                                                                                    ACHAR( 31) // ACHAR( 58) // ACHAR(110), &
                                                                                    ACHAR( 33) // ACHAR( 59) // ACHAR(110), &
                                                                                    ACHAR( 34) // ACHAR( 59) // ACHAR(110), &
                                                                                    ACHAR( 36) // ACHAR( 60) // ACHAR(110), &
                                                                                    ACHAR( 37) // ACHAR( 61) // ACHAR(109), &
                                                                                    ACHAR( 39) // ACHAR( 61) // ACHAR(109), &
                                                                                    ACHAR( 40) // ACHAR( 62) // ACHAR(109), &
                                                                                    ACHAR( 42) // ACHAR( 63) // ACHAR(109), &
                                                                                    ACHAR( 43) // ACHAR( 63) // ACHAR(109), &
                                                                                    ACHAR( 44) // ACHAR( 64) // ACHAR(109), &
                                                                                    ACHAR( 46) // ACHAR( 65) // ACHAR(108), &
                                                                                    ACHAR( 47) // ACHAR( 66) // ACHAR(108), &
                                                                                    ACHAR( 48) // ACHAR( 66) // ACHAR(108), &
                                                                                    ACHAR( 49) // ACHAR( 67) // ACHAR(108), &
                                                                                    ACHAR( 50) // ACHAR( 68) // ACHAR(108), &
                                                                                    ACHAR( 52) // ACHAR( 68) // ACHAR(108), &
                                                                                    ACHAR( 53) // ACHAR( 69) // ACHAR(108), &
                                                                                    ACHAR( 54) // ACHAR( 70) // ACHAR(108), &
                                                                                    ACHAR( 55) // ACHAR( 70) // ACHAR(108), &
                                                                                    ACHAR( 56) // ACHAR( 71) // ACHAR(108), &
                                                                                    ACHAR( 57) // ACHAR( 72) // ACHAR(108), &
                                                                                    ACHAR( 58) // ACHAR( 72) // ACHAR(107), &
                                                                                    ACHAR( 59) // ACHAR( 73) // ACHAR(107), &
                                                                                    ACHAR( 61) // ACHAR( 74) // ACHAR(107), &
                                                                                    ACHAR( 62) // ACHAR( 75) // ACHAR(107), &
                                                                                    ACHAR( 63) // ACHAR( 75) // ACHAR(107), &
                                                                                    ACHAR( 64) // ACHAR( 76) // ACHAR(107), &
                                                                                    ACHAR( 65) // ACHAR( 77) // ACHAR(107), &
                                                                                    ACHAR( 66) // ACHAR( 77) // ACHAR(107), &
                                                                                    ACHAR( 67) // ACHAR( 78) // ACHAR(107), &
                                                                                    ACHAR( 68) // ACHAR( 79) // ACHAR(107), &
                                                                                    ACHAR( 69) // ACHAR( 79) // ACHAR(107), &
                                                                                    ACHAR( 70) // ACHAR( 80) // ACHAR(107), &
                                                                                    ACHAR( 71) // ACHAR( 81) // ACHAR(107), &
                                                                                    ACHAR( 72) // ACHAR( 81) // ACHAR(107), &
                                                                                    ACHAR( 73) // ACHAR( 82) // ACHAR(107), &
                                                                                    ACHAR( 74) // ACHAR( 83) // ACHAR(107), &
                                                                                    ACHAR( 75) // ACHAR( 84) // ACHAR(108), &
                                                                                    ACHAR( 76) // ACHAR( 84) // ACHAR(108), &
                                                                                    ACHAR( 77) // ACHAR( 85) // ACHAR(108), &
                                                                                    ACHAR( 78) // ACHAR( 86) // ACHAR(108), &
                                                                                    ACHAR( 78) // ACHAR( 86) // ACHAR(108), &
                                                                                    ACHAR( 79) // ACHAR( 87) // ACHAR(108), &
                                                                                    ACHAR( 80) // ACHAR( 88) // ACHAR(108), &
                                                                                    ACHAR( 81) // ACHAR( 88) // ACHAR(108), &
                                                                                    ACHAR( 82) // ACHAR( 89) // ACHAR(108), &
                                                                                    ACHAR( 83) // ACHAR( 90) // ACHAR(108), &
                                                                                    ACHAR( 84) // ACHAR( 90) // ACHAR(108), &
                                                                                    ACHAR( 85) // ACHAR( 91) // ACHAR(109), &
                                                                                    ACHAR( 86) // ACHAR( 92) // ACHAR(109), &
                                                                                    ACHAR( 87) // ACHAR( 93) // ACHAR(109), &
                                                                                    ACHAR( 88) // ACHAR( 93) // ACHAR(109), &
                                                                                    ACHAR( 89) // ACHAR( 94) // ACHAR(109), &
                                                                                    ACHAR( 89) // ACHAR( 95) // ACHAR(109), &
                                                                                    ACHAR( 90) // ACHAR( 95) // ACHAR(109), &
                                                                                    ACHAR( 91) // ACHAR( 96) // ACHAR(110), &
                                                                                    ACHAR( 92) // ACHAR( 97) // ACHAR(110), &
                                                                                    ACHAR( 93) // ACHAR( 97) // ACHAR(110), &
                                                                                    ACHAR( 94) // ACHAR( 98) // ACHAR(110), &
                                                                                    ACHAR( 95) // ACHAR( 99) // ACHAR(110), &
                                                                                    ACHAR( 96) // ACHAR(100) // ACHAR(110), &
                                                                                    ACHAR( 97) // ACHAR(100) // ACHAR(111), &
                                                                                    ACHAR( 97) // ACHAR(101) // ACHAR(111), &
                                                                                    ACHAR( 98) // ACHAR(102) // ACHAR(111), &
                                                                                    ACHAR( 99) // ACHAR(102) // ACHAR(111), &
                                                                                    ACHAR(100) // ACHAR(103) // ACHAR(111), &
                                                                                    ACHAR(101) // ACHAR(104) // ACHAR(112), &
                                                                                    ACHAR(102) // ACHAR(105) // ACHAR(112), &
                                                                                    ACHAR(103) // ACHAR(105) // ACHAR(112), &
                                                                                    ACHAR(104) // ACHAR(106) // ACHAR(112), &
                                                                                    ACHAR(104) // ACHAR(107) // ACHAR(113), &
                                                                                    ACHAR(105) // ACHAR(107) // ACHAR(113), &
                                                                                    ACHAR(106) // ACHAR(108) // ACHAR(113), &
                                                                                    ACHAR(107) // ACHAR(109) // ACHAR(113), &
                                                                                    ACHAR(108) // ACHAR(109) // ACHAR(114), &
                                                                                    ACHAR(109) // ACHAR(110) // ACHAR(114), &
                                                                                    ACHAR(110) // ACHAR(111) // ACHAR(114), &
                                                                                    ACHAR(110) // ACHAR(112) // ACHAR(115), &
                                                                                    ACHAR(111) // ACHAR(112) // ACHAR(115), &
                                                                                    ACHAR(112) // ACHAR(113) // ACHAR(115), &
                                                                                    ACHAR(113) // ACHAR(114) // ACHAR(115), &
                                                                                    ACHAR(114) // ACHAR(115) // ACHAR(116), &
                                                                                    ACHAR(115) // ACHAR(115) // ACHAR(116), &
                                                                                    ACHAR(116) // ACHAR(116) // ACHAR(117), &
                                                                                    ACHAR(116) // ACHAR(117) // ACHAR(117), &
                                                                                    ACHAR(117) // ACHAR(117) // ACHAR(117), &
                                                                                    ACHAR(118) // ACHAR(118) // ACHAR(118), &
                                                                                    ACHAR(119) // ACHAR(119) // ACHAR(118), &
                                                                                    ACHAR(120) // ACHAR(120) // ACHAR(118), &
                                                                                    ACHAR(121) // ACHAR(120) // ACHAR(119), &
                                                                                    ACHAR(121) // ACHAR(121) // ACHAR(119), &
                                                                                    ACHAR(122) // ACHAR(122) // ACHAR(119), &
                                                                                    ACHAR(123) // ACHAR(123) // ACHAR(119), &
                                                                                    ACHAR(124) // ACHAR(123) // ACHAR(120), &
                                                                                    ACHAR(125) // ACHAR(124) // ACHAR(120), &
                                                                                    ACHAR(126) // ACHAR(125) // ACHAR(120), &
                                                                                    ACHAR(127) // ACHAR(125) // ACHAR(120), &
                                                                                    ACHAR(128) // ACHAR(126) // ACHAR(120), &
                                                                                    ACHAR(129) // ACHAR(127) // ACHAR(120), &
                                                                                    ACHAR(130) // ACHAR(128) // ACHAR(120), &
                                                                                    ACHAR(131) // ACHAR(128) // ACHAR(120), &
                                                                                    ACHAR(132) // ACHAR(129) // ACHAR(120), &
                                                                                    ACHAR(133) // ACHAR(130) // ACHAR(120), &
                                                                                    ACHAR(133) // ACHAR(131) // ACHAR(120), &
                                                                                    ACHAR(134) // ACHAR(131) // ACHAR(120), &
                                                                                    ACHAR(135) // ACHAR(132) // ACHAR(120), &
                                                                                    ACHAR(136) // ACHAR(133) // ACHAR(120), &
                                                                                    ACHAR(137) // ACHAR(134) // ACHAR(120), &
                                                                                    ACHAR(138) // ACHAR(134) // ACHAR(120), &
                                                                                    ACHAR(139) // ACHAR(135) // ACHAR(120), &
                                                                                    ACHAR(140) // ACHAR(136) // ACHAR(120), &
                                                                                    ACHAR(141) // ACHAR(137) // ACHAR(120), &
                                                                                    ACHAR(142) // ACHAR(137) // ACHAR(120), &
                                                                                    ACHAR(143) // ACHAR(138) // ACHAR(119), &
                                                                                    ACHAR(144) // ACHAR(139) // ACHAR(119), &
                                                                                    ACHAR(145) // ACHAR(140) // ACHAR(119), &
                                                                                    ACHAR(146) // ACHAR(140) // ACHAR(119), &
                                                                                    ACHAR(147) // ACHAR(141) // ACHAR(119), &
                                                                                    ACHAR(148) // ACHAR(142) // ACHAR(119), &
                                                                                    ACHAR(149) // ACHAR(143) // ACHAR(119), &
                                                                                    ACHAR(150) // ACHAR(143) // ACHAR(119), &
                                                                                    ACHAR(151) // ACHAR(144) // ACHAR(118), &
                                                                                    ACHAR(152) // ACHAR(145) // ACHAR(118), &
                                                                                    ACHAR(153) // ACHAR(146) // ACHAR(118), &
                                                                                    ACHAR(154) // ACHAR(147) // ACHAR(118), &
                                                                                    ACHAR(155) // ACHAR(147) // ACHAR(118), &
                                                                                    ACHAR(156) // ACHAR(148) // ACHAR(118), &
                                                                                    ACHAR(157) // ACHAR(149) // ACHAR(117), &
                                                                                    ACHAR(158) // ACHAR(150) // ACHAR(117), &
                                                                                    ACHAR(159) // ACHAR(150) // ACHAR(117), &
                                                                                    ACHAR(160) // ACHAR(151) // ACHAR(117), &
                                                                                    ACHAR(161) // ACHAR(152) // ACHAR(116), &
                                                                                    ACHAR(162) // ACHAR(153) // ACHAR(116), &
                                                                                    ACHAR(163) // ACHAR(154) // ACHAR(116), &
                                                                                    ACHAR(164) // ACHAR(154) // ACHAR(116), &
                                                                                    ACHAR(165) // ACHAR(155) // ACHAR(115), &
                                                                                    ACHAR(166) // ACHAR(156) // ACHAR(115), &
                                                                                    ACHAR(167) // ACHAR(157) // ACHAR(115), &
                                                                                    ACHAR(168) // ACHAR(158) // ACHAR(115), &
                                                                                    ACHAR(169) // ACHAR(158) // ACHAR(114), &
                                                                                    ACHAR(170) // ACHAR(159) // ACHAR(114), &
                                                                                    ACHAR(171) // ACHAR(160) // ACHAR(114), &
                                                                                    ACHAR(172) // ACHAR(161) // ACHAR(113), &
                                                                                    ACHAR(173) // ACHAR(162) // ACHAR(113), &
                                                                                    ACHAR(174) // ACHAR(162) // ACHAR(113), &
                                                                                    ACHAR(175) // ACHAR(163) // ACHAR(112), &
                                                                                    ACHAR(176) // ACHAR(164) // ACHAR(112), &
                                                                                    ACHAR(177) // ACHAR(165) // ACHAR(112), &
                                                                                    ACHAR(178) // ACHAR(166) // ACHAR(111), &
                                                                                    ACHAR(179) // ACHAR(166) // ACHAR(111), &
                                                                                    ACHAR(180) // ACHAR(167) // ACHAR(111), &
                                                                                    ACHAR(181) // ACHAR(168) // ACHAR(110), &
                                                                                    ACHAR(182) // ACHAR(169) // ACHAR(110), &
                                                                                    ACHAR(183) // ACHAR(170) // ACHAR(109), &
                                                                                    ACHAR(184) // ACHAR(171) // ACHAR(109), &
                                                                                    ACHAR(185) // ACHAR(171) // ACHAR(109), &
                                                                                    ACHAR(186) // ACHAR(172) // ACHAR(108), &
                                                                                    ACHAR(187) // ACHAR(173) // ACHAR(108), &
                                                                                    ACHAR(188) // ACHAR(174) // ACHAR(107), &
                                                                                    ACHAR(189) // ACHAR(175) // ACHAR(107), &
                                                                                    ACHAR(190) // ACHAR(176) // ACHAR(106), &
                                                                                    ACHAR(191) // ACHAR(176) // ACHAR(106), &
                                                                                    ACHAR(193) // ACHAR(177) // ACHAR(105), &
                                                                                    ACHAR(194) // ACHAR(178) // ACHAR(105), &
                                                                                    ACHAR(195) // ACHAR(179) // ACHAR(104), &
                                                                                    ACHAR(196) // ACHAR(180) // ACHAR(104), &
                                                                                    ACHAR(197) // ACHAR(181) // ACHAR(103), &
                                                                                    ACHAR(198) // ACHAR(181) // ACHAR(103), &
                                                                                    ACHAR(199) // ACHAR(182) // ACHAR(102), &
                                                                                    ACHAR(200) // ACHAR(183) // ACHAR(101), &
                                                                                    ACHAR(201) // ACHAR(184) // ACHAR(101), &
                                                                                    ACHAR(202) // ACHAR(185) // ACHAR(100), &
                                                                                    ACHAR(203) // ACHAR(186) // ACHAR(100), &
                                                                                    ACHAR(204) // ACHAR(187) // ACHAR( 99), &
                                                                                    ACHAR(205) // ACHAR(188) // ACHAR( 98), &
                                                                                    ACHAR(206) // ACHAR(188) // ACHAR( 98), &
                                                                                    ACHAR(207) // ACHAR(189) // ACHAR( 97), &
                                                                                    ACHAR(208) // ACHAR(190) // ACHAR( 96), &
                                                                                    ACHAR(210) // ACHAR(191) // ACHAR( 96), &
                                                                                    ACHAR(211) // ACHAR(192) // ACHAR( 95), &
                                                                                    ACHAR(212) // ACHAR(193) // ACHAR( 94), &
                                                                                    ACHAR(213) // ACHAR(194) // ACHAR( 94), &
                                                                                    ACHAR(214) // ACHAR(195) // ACHAR( 93), &
                                                                                    ACHAR(215) // ACHAR(195) // ACHAR( 92), &
                                                                                    ACHAR(216) // ACHAR(196) // ACHAR( 91), &
                                                                                    ACHAR(217) // ACHAR(197) // ACHAR( 90), &
                                                                                    ACHAR(218) // ACHAR(198) // ACHAR( 90), &
                                                                                    ACHAR(219) // ACHAR(199) // ACHAR( 89), &
                                                                                    ACHAR(220) // ACHAR(200) // ACHAR( 88), &
                                                                                    ACHAR(222) // ACHAR(201) // ACHAR( 87), &
                                                                                    ACHAR(223) // ACHAR(202) // ACHAR( 86), &
                                                                                    ACHAR(224) // ACHAR(203) // ACHAR( 85), &
                                                                                    ACHAR(225) // ACHAR(204) // ACHAR( 84), &
                                                                                    ACHAR(226) // ACHAR(204) // ACHAR( 83), &
                                                                                    ACHAR(227) // ACHAR(205) // ACHAR( 82), &
                                                                                    ACHAR(228) // ACHAR(206) // ACHAR( 81), &
                                                                                    ACHAR(229) // ACHAR(207) // ACHAR( 80), &
                                                                                    ACHAR(230) // ACHAR(208) // ACHAR( 79), &
                                                                                    ACHAR(232) // ACHAR(209) // ACHAR( 78), &
                                                                                    ACHAR(233) // ACHAR(210) // ACHAR( 77), &
                                                                                    ACHAR(234) // ACHAR(211) // ACHAR( 76), &
                                                                                    ACHAR(235) // ACHAR(212) // ACHAR( 75), &
                                                                                    ACHAR(236) // ACHAR(213) // ACHAR( 74), &
                                                                                    ACHAR(237) // ACHAR(214) // ACHAR( 72), &
                                                                                    ACHAR(238) // ACHAR(215) // ACHAR( 71), &
                                                                                    ACHAR(239) // ACHAR(216) // ACHAR( 70), &
                                                                                    ACHAR(241) // ACHAR(217) // ACHAR( 68), &
                                                                                    ACHAR(242) // ACHAR(218) // ACHAR( 67), &
                                                                                    ACHAR(243) // ACHAR(218) // ACHAR( 66), &
                                                                                    ACHAR(244) // ACHAR(219) // ACHAR( 64), &
                                                                                    ACHAR(245) // ACHAR(220) // ACHAR( 63), &
                                                                                    ACHAR(246) // ACHAR(221) // ACHAR( 61), &
                                                                                    ACHAR(248) // ACHAR(222) // ACHAR( 59), &
                                                                                    ACHAR(249) // ACHAR(223) // ACHAR( 58), &
                                                                                    ACHAR(250) // ACHAR(224) // ACHAR( 56), &
                                                                                    ACHAR(251) // ACHAR(225) // ACHAR( 54), &
                                                                                    ACHAR(253) // ACHAR(226) // ACHAR( 52), &
                                                                                    ACHAR(253) // ACHAR(227) // ACHAR( 51), &
                                                                                    ACHAR(253) // ACHAR(229) // ACHAR( 52), &
                                                                                    ACHAR(253) // ACHAR(230) // ACHAR( 54), &
                                                                                    ACHAR(253) // ACHAR(231) // ACHAR( 55)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_coolwarm = (/                   &
                                                                                    ACHAR( 58) // ACHAR( 76) // ACHAR(192), &
                                                                                    ACHAR( 59) // ACHAR( 77) // ACHAR(193), &
                                                                                    ACHAR( 60) // ACHAR( 79) // ACHAR(195), &
                                                                                    ACHAR( 62) // ACHAR( 81) // ACHAR(196), &
                                                                                    ACHAR( 63) // ACHAR( 83) // ACHAR(198), &
                                                                                    ACHAR( 64) // ACHAR( 84) // ACHAR(199), &
                                                                                    ACHAR( 65) // ACHAR( 86) // ACHAR(201), &
                                                                                    ACHAR( 66) // ACHAR( 88) // ACHAR(202), &
                                                                                    ACHAR( 67) // ACHAR( 90) // ACHAR(204), &
                                                                                    ACHAR( 69) // ACHAR( 91) // ACHAR(205), &
                                                                                    ACHAR( 70) // ACHAR( 93) // ACHAR(207), &
                                                                                    ACHAR( 71) // ACHAR( 95) // ACHAR(208), &
                                                                                    ACHAR( 72) // ACHAR( 96) // ACHAR(209), &
                                                                                    ACHAR( 73) // ACHAR( 98) // ACHAR(211), &
                                                                                    ACHAR( 75) // ACHAR(100) // ACHAR(212), &
                                                                                    ACHAR( 76) // ACHAR(102) // ACHAR(214), &
                                                                                    ACHAR( 77) // ACHAR(103) // ACHAR(215), &
                                                                                    ACHAR( 78) // ACHAR(105) // ACHAR(216), &
                                                                                    ACHAR( 80) // ACHAR(107) // ACHAR(218), &
                                                                                    ACHAR( 81) // ACHAR(108) // ACHAR(219), &
                                                                                    ACHAR( 82) // ACHAR(110) // ACHAR(220), &
                                                                                    ACHAR( 83) // ACHAR(112) // ACHAR(221), &
                                                                                    ACHAR( 85) // ACHAR(113) // ACHAR(222), &
                                                                                    ACHAR( 86) // ACHAR(115) // ACHAR(224), &
                                                                                    ACHAR( 87) // ACHAR(117) // ACHAR(225), &
                                                                                    ACHAR( 88) // ACHAR(118) // ACHAR(226), &
                                                                                    ACHAR( 90) // ACHAR(120) // ACHAR(227), &
                                                                                    ACHAR( 91) // ACHAR(121) // ACHAR(228), &
                                                                                    ACHAR( 92) // ACHAR(123) // ACHAR(229), &
                                                                                    ACHAR( 93) // ACHAR(125) // ACHAR(230), &
                                                                                    ACHAR( 95) // ACHAR(126) // ACHAR(231), &
                                                                                    ACHAR( 96) // ACHAR(128) // ACHAR(232), &
                                                                                    ACHAR( 97) // ACHAR(130) // ACHAR(234), &
                                                                                    ACHAR( 99) // ACHAR(131) // ACHAR(234), &
                                                                                    ACHAR(100) // ACHAR(133) // ACHAR(235), &
                                                                                    ACHAR(101) // ACHAR(134) // ACHAR(236), &
                                                                                    ACHAR(103) // ACHAR(136) // ACHAR(237), &
                                                                                    ACHAR(104) // ACHAR(137) // ACHAR(238), &
                                                                                    ACHAR(105) // ACHAR(139) // ACHAR(239), &
                                                                                    ACHAR(107) // ACHAR(141) // ACHAR(240), &
                                                                                    ACHAR(108) // ACHAR(142) // ACHAR(241), &
                                                                                    ACHAR(109) // ACHAR(144) // ACHAR(241), &
                                                                                    ACHAR(111) // ACHAR(145) // ACHAR(242), &
                                                                                    ACHAR(112) // ACHAR(147) // ACHAR(243), &
                                                                                    ACHAR(113) // ACHAR(148) // ACHAR(244), &
                                                                                    ACHAR(115) // ACHAR(149) // ACHAR(244), &
                                                                                    ACHAR(116) // ACHAR(151) // ACHAR(245), &
                                                                                    ACHAR(117) // ACHAR(152) // ACHAR(246), &
                                                                                    ACHAR(119) // ACHAR(154) // ACHAR(246), &
                                                                                    ACHAR(120) // ACHAR(155) // ACHAR(247), &
                                                                                    ACHAR(122) // ACHAR(157) // ACHAR(248), &
                                                                                    ACHAR(123) // ACHAR(158) // ACHAR(248), &
                                                                                    ACHAR(124) // ACHAR(160) // ACHAR(249), &
                                                                                    ACHAR(126) // ACHAR(161) // ACHAR(249), &
                                                                                    ACHAR(127) // ACHAR(162) // ACHAR(250), &
                                                                                    ACHAR(128) // ACHAR(164) // ACHAR(250), &
                                                                                    ACHAR(130) // ACHAR(165) // ACHAR(251), &
                                                                                    ACHAR(131) // ACHAR(166) // ACHAR(251), &
                                                                                    ACHAR(133) // ACHAR(168) // ACHAR(251), &
                                                                                    ACHAR(134) // ACHAR(169) // ACHAR(252), &
                                                                                    ACHAR(135) // ACHAR(170) // ACHAR(252), &
                                                                                    ACHAR(137) // ACHAR(172) // ACHAR(252), &
                                                                                    ACHAR(138) // ACHAR(173) // ACHAR(253), &
                                                                                    ACHAR(139) // ACHAR(174) // ACHAR(253), &
                                                                                    ACHAR(141) // ACHAR(175) // ACHAR(253), &
                                                                                    ACHAR(142) // ACHAR(177) // ACHAR(253), &
                                                                                    ACHAR(144) // ACHAR(178) // ACHAR(254), &
                                                                                    ACHAR(145) // ACHAR(179) // ACHAR(254), &
                                                                                    ACHAR(146) // ACHAR(180) // ACHAR(254), &
                                                                                    ACHAR(148) // ACHAR(181) // ACHAR(254), &
                                                                                    ACHAR(149) // ACHAR(183) // ACHAR(254), &
                                                                                    ACHAR(151) // ACHAR(184) // ACHAR(254), &
                                                                                    ACHAR(152) // ACHAR(185) // ACHAR(254), &
                                                                                    ACHAR(153) // ACHAR(186) // ACHAR(254), &
                                                                                    ACHAR(155) // ACHAR(187) // ACHAR(254), &
                                                                                    ACHAR(156) // ACHAR(188) // ACHAR(254), &
                                                                                    ACHAR(157) // ACHAR(189) // ACHAR(254), &
                                                                                    ACHAR(159) // ACHAR(190) // ACHAR(254), &
                                                                                    ACHAR(160) // ACHAR(191) // ACHAR(254), &
                                                                                    ACHAR(162) // ACHAR(192) // ACHAR(254), &
                                                                                    ACHAR(163) // ACHAR(193) // ACHAR(254), &
                                                                                    ACHAR(164) // ACHAR(194) // ACHAR(254), &
                                                                                    ACHAR(166) // ACHAR(195) // ACHAR(253), &
                                                                                    ACHAR(167) // ACHAR(196) // ACHAR(253), &
                                                                                    ACHAR(168) // ACHAR(197) // ACHAR(253), &
                                                                                    ACHAR(170) // ACHAR(198) // ACHAR(253), &
                                                                                    ACHAR(171) // ACHAR(199) // ACHAR(252), &
                                                                                    ACHAR(172) // ACHAR(200) // ACHAR(252), &
                                                                                    ACHAR(174) // ACHAR(201) // ACHAR(252), &
                                                                                    ACHAR(175) // ACHAR(202) // ACHAR(251), &
                                                                                    ACHAR(176) // ACHAR(203) // ACHAR(251), &
                                                                                    ACHAR(178) // ACHAR(203) // ACHAR(251), &
                                                                                    ACHAR(179) // ACHAR(204) // ACHAR(250), &
                                                                                    ACHAR(180) // ACHAR(205) // ACHAR(250), &
                                                                                    ACHAR(182) // ACHAR(206) // ACHAR(249), &
                                                                                    ACHAR(183) // ACHAR(207) // ACHAR(249), &
                                                                                    ACHAR(184) // ACHAR(207) // ACHAR(248), &
                                                                                    ACHAR(185) // ACHAR(208) // ACHAR(248), &
                                                                                    ACHAR(187) // ACHAR(209) // ACHAR(247), &
                                                                                    ACHAR(188) // ACHAR(209) // ACHAR(246), &
                                                                                    ACHAR(189) // ACHAR(210) // ACHAR(246), &
                                                                                    ACHAR(190) // ACHAR(211) // ACHAR(245), &
                                                                                    ACHAR(192) // ACHAR(211) // ACHAR(245), &
                                                                                    ACHAR(193) // ACHAR(212) // ACHAR(244), &
                                                                                    ACHAR(194) // ACHAR(212) // ACHAR(243), &
                                                                                    ACHAR(195) // ACHAR(213) // ACHAR(242), &
                                                                                    ACHAR(197) // ACHAR(213) // ACHAR(242), &
                                                                                    ACHAR(198) // ACHAR(214) // ACHAR(241), &
                                                                                    ACHAR(199) // ACHAR(214) // ACHAR(240), &
                                                                                    ACHAR(200) // ACHAR(215) // ACHAR(239), &
                                                                                    ACHAR(201) // ACHAR(215) // ACHAR(238), &
                                                                                    ACHAR(202) // ACHAR(216) // ACHAR(238), &
                                                                                    ACHAR(204) // ACHAR(216) // ACHAR(237), &
                                                                                    ACHAR(205) // ACHAR(217) // ACHAR(236), &
                                                                                    ACHAR(206) // ACHAR(217) // ACHAR(235), &
                                                                                    ACHAR(207) // ACHAR(217) // ACHAR(234), &
                                                                                    ACHAR(208) // ACHAR(218) // ACHAR(233), &
                                                                                    ACHAR(209) // ACHAR(218) // ACHAR(232), &
                                                                                    ACHAR(210) // ACHAR(218) // ACHAR(231), &
                                                                                    ACHAR(211) // ACHAR(219) // ACHAR(230), &
                                                                                    ACHAR(213) // ACHAR(219) // ACHAR(229), &
                                                                                    ACHAR(214) // ACHAR(219) // ACHAR(228), &
                                                                                    ACHAR(215) // ACHAR(219) // ACHAR(226), &
                                                                                    ACHAR(216) // ACHAR(219) // ACHAR(225), &
                                                                                    ACHAR(217) // ACHAR(220) // ACHAR(224), &
                                                                                    ACHAR(218) // ACHAR(220) // ACHAR(223), &
                                                                                    ACHAR(219) // ACHAR(220) // ACHAR(222), &
                                                                                    ACHAR(220) // ACHAR(220) // ACHAR(221), &
                                                                                    ACHAR(221) // ACHAR(220) // ACHAR(219), &
                                                                                    ACHAR(222) // ACHAR(219) // ACHAR(218), &
                                                                                    ACHAR(223) // ACHAR(219) // ACHAR(217), &
                                                                                    ACHAR(224) // ACHAR(218) // ACHAR(215), &
                                                                                    ACHAR(225) // ACHAR(218) // ACHAR(214), &
                                                                                    ACHAR(226) // ACHAR(217) // ACHAR(212), &
                                                                                    ACHAR(227) // ACHAR(217) // ACHAR(211), &
                                                                                    ACHAR(228) // ACHAR(216) // ACHAR(209), &
                                                                                    ACHAR(229) // ACHAR(216) // ACHAR(208), &
                                                                                    ACHAR(230) // ACHAR(215) // ACHAR(207), &
                                                                                    ACHAR(231) // ACHAR(214) // ACHAR(205), &
                                                                                    ACHAR(231) // ACHAR(214) // ACHAR(204), &
                                                                                    ACHAR(232) // ACHAR(213) // ACHAR(202), &
                                                                                    ACHAR(233) // ACHAR(212) // ACHAR(201), &
                                                                                    ACHAR(234) // ACHAR(211) // ACHAR(199), &
                                                                                    ACHAR(235) // ACHAR(211) // ACHAR(198), &
                                                                                    ACHAR(236) // ACHAR(210) // ACHAR(196), &
                                                                                    ACHAR(236) // ACHAR(209) // ACHAR(195), &
                                                                                    ACHAR(237) // ACHAR(208) // ACHAR(193), &
                                                                                    ACHAR(237) // ACHAR(207) // ACHAR(192), &
                                                                                    ACHAR(238) // ACHAR(207) // ACHAR(190), &
                                                                                    ACHAR(239) // ACHAR(206) // ACHAR(188), &
                                                                                    ACHAR(239) // ACHAR(205) // ACHAR(187), &
                                                                                    ACHAR(240) // ACHAR(204) // ACHAR(185), &
                                                                                    ACHAR(241) // ACHAR(203) // ACHAR(184), &
                                                                                    ACHAR(241) // ACHAR(202) // ACHAR(182), &
                                                                                    ACHAR(242) // ACHAR(201) // ACHAR(181), &
                                                                                    ACHAR(242) // ACHAR(200) // ACHAR(179), &
                                                                                    ACHAR(242) // ACHAR(199) // ACHAR(178), &
                                                                                    ACHAR(243) // ACHAR(198) // ACHAR(176), &
                                                                                    ACHAR(243) // ACHAR(197) // ACHAR(175), &
                                                                                    ACHAR(244) // ACHAR(196) // ACHAR(173), &
                                                                                    ACHAR(244) // ACHAR(195) // ACHAR(171), &
                                                                                    ACHAR(244) // ACHAR(194) // ACHAR(170), &
                                                                                    ACHAR(245) // ACHAR(193) // ACHAR(168), &
                                                                                    ACHAR(245) // ACHAR(192) // ACHAR(167), &
                                                                                    ACHAR(245) // ACHAR(191) // ACHAR(165), &
                                                                                    ACHAR(246) // ACHAR(189) // ACHAR(164), &
                                                                                    ACHAR(246) // ACHAR(188) // ACHAR(162), &
                                                                                    ACHAR(246) // ACHAR(187) // ACHAR(160), &
                                                                                    ACHAR(246) // ACHAR(186) // ACHAR(159), &
                                                                                    ACHAR(246) // ACHAR(185) // ACHAR(157), &
                                                                                    ACHAR(246) // ACHAR(183) // ACHAR(156), &
                                                                                    ACHAR(246) // ACHAR(182) // ACHAR(154), &
                                                                                    ACHAR(247) // ACHAR(181) // ACHAR(152), &
                                                                                    ACHAR(247) // ACHAR(179) // ACHAR(151), &
                                                                                    ACHAR(247) // ACHAR(178) // ACHAR(149), &
                                                                                    ACHAR(247) // ACHAR(177) // ACHAR(148), &
                                                                                    ACHAR(247) // ACHAR(176) // ACHAR(146), &
                                                                                    ACHAR(247) // ACHAR(174) // ACHAR(145), &
                                                                                    ACHAR(247) // ACHAR(173) // ACHAR(143), &
                                                                                    ACHAR(246) // ACHAR(171) // ACHAR(141), &
                                                                                    ACHAR(246) // ACHAR(170) // ACHAR(140), &
                                                                                    ACHAR(246) // ACHAR(169) // ACHAR(138), &
                                                                                    ACHAR(246) // ACHAR(167) // ACHAR(137), &
                                                                                    ACHAR(246) // ACHAR(166) // ACHAR(135), &
                                                                                    ACHAR(246) // ACHAR(164) // ACHAR(134), &
                                                                                    ACHAR(246) // ACHAR(163) // ACHAR(132), &
                                                                                    ACHAR(245) // ACHAR(161) // ACHAR(130), &
                                                                                    ACHAR(245) // ACHAR(160) // ACHAR(129), &
                                                                                    ACHAR(245) // ACHAR(158) // ACHAR(127), &
                                                                                    ACHAR(244) // ACHAR(157) // ACHAR(126), &
                                                                                    ACHAR(244) // ACHAR(155) // ACHAR(124), &
                                                                                    ACHAR(244) // ACHAR(154) // ACHAR(123), &
                                                                                    ACHAR(243) // ACHAR(152) // ACHAR(121), &
                                                                                    ACHAR(243) // ACHAR(150) // ACHAR(120), &
                                                                                    ACHAR(243) // ACHAR(149) // ACHAR(118), &
                                                                                    ACHAR(242) // ACHAR(147) // ACHAR(117), &
                                                                                    ACHAR(242) // ACHAR(145) // ACHAR(115), &
                                                                                    ACHAR(241) // ACHAR(144) // ACHAR(114), &
                                                                                    ACHAR(241) // ACHAR(142) // ACHAR(112), &
                                                                                    ACHAR(240) // ACHAR(141) // ACHAR(111), &
                                                                                    ACHAR(240) // ACHAR(139) // ACHAR(109), &
                                                                                    ACHAR(239) // ACHAR(137) // ACHAR(108), &
                                                                                    ACHAR(238) // ACHAR(135) // ACHAR(106), &
                                                                                    ACHAR(238) // ACHAR(134) // ACHAR(105), &
                                                                                    ACHAR(237) // ACHAR(132) // ACHAR(103), &
                                                                                    ACHAR(236) // ACHAR(130) // ACHAR(102), &
                                                                                    ACHAR(236) // ACHAR(128) // ACHAR(100), &
                                                                                    ACHAR(235) // ACHAR(127) // ACHAR( 99), &
                                                                                    ACHAR(234) // ACHAR(125) // ACHAR( 97), &
                                                                                    ACHAR(234) // ACHAR(123) // ACHAR( 96), &
                                                                                    ACHAR(233) // ACHAR(121) // ACHAR( 94), &
                                                                                    ACHAR(232) // ACHAR(119) // ACHAR( 93), &
                                                                                    ACHAR(231) // ACHAR(117) // ACHAR( 92), &
                                                                                    ACHAR(230) // ACHAR(116) // ACHAR( 90), &
                                                                                    ACHAR(230) // ACHAR(114) // ACHAR( 89), &
                                                                                    ACHAR(229) // ACHAR(112) // ACHAR( 87), &
                                                                                    ACHAR(228) // ACHAR(110) // ACHAR( 86), &
                                                                                    ACHAR(227) // ACHAR(108) // ACHAR( 84), &
                                                                                    ACHAR(226) // ACHAR(106) // ACHAR( 83), &
                                                                                    ACHAR(225) // ACHAR(104) // ACHAR( 82), &
                                                                                    ACHAR(224) // ACHAR(102) // ACHAR( 80), &
                                                                                    ACHAR(223) // ACHAR(100) // ACHAR( 79), &
                                                                                    ACHAR(222) // ACHAR( 98) // ACHAR( 78), &
                                                                                    ACHAR(221) // ACHAR( 96) // ACHAR( 76), &
                                                                                    ACHAR(220) // ACHAR( 94) // ACHAR( 75), &
                                                                                    ACHAR(219) // ACHAR( 92) // ACHAR( 74), &
                                                                                    ACHAR(218) // ACHAR( 90) // ACHAR( 72), &
                                                                                    ACHAR(217) // ACHAR( 88) // ACHAR( 71), &
                                                                                    ACHAR(216) // ACHAR( 86) // ACHAR( 70), &
                                                                                    ACHAR(215) // ACHAR( 84) // ACHAR( 68), &
                                                                                    ACHAR(214) // ACHAR( 82) // ACHAR( 67), &
                                                                                    ACHAR(212) // ACHAR( 79) // ACHAR( 66), &
                                                                                    ACHAR(211) // ACHAR( 77) // ACHAR( 64), &
                                                                                    ACHAR(210) // ACHAR( 75) // ACHAR( 63), &
                                                                                    ACHAR(209) // ACHAR( 73) // ACHAR( 62), &
                                                                                    ACHAR(207) // ACHAR( 70) // ACHAR( 61), &
                                                                                    ACHAR(206) // ACHAR( 68) // ACHAR( 60), &
                                                                                    ACHAR(205) // ACHAR( 66) // ACHAR( 58), &
                                                                                    ACHAR(204) // ACHAR( 63) // ACHAR( 57), &
                                                                                    ACHAR(202) // ACHAR( 61) // ACHAR( 56), &
                                                                                    ACHAR(201) // ACHAR( 59) // ACHAR( 55), &
                                                                                    ACHAR(200) // ACHAR( 56) // ACHAR( 53), &
                                                                                    ACHAR(198) // ACHAR( 53) // ACHAR( 52), &
                                                                                    ACHAR(197) // ACHAR( 50) // ACHAR( 51), &
                                                                                    ACHAR(196) // ACHAR( 48) // ACHAR( 50), &
                                                                                    ACHAR(194) // ACHAR( 45) // ACHAR( 49), &
                                                                                    ACHAR(193) // ACHAR( 42) // ACHAR( 48), &
                                                                                    ACHAR(191) // ACHAR( 40) // ACHAR( 46), &
                                                                                    ACHAR(190) // ACHAR( 35) // ACHAR( 45), &
                                                                                    ACHAR(188) // ACHAR( 31) // ACHAR( 44), &
                                                                                    ACHAR(187) // ACHAR( 26) // ACHAR( 43), &
                                                                                    ACHAR(185) // ACHAR( 22) // ACHAR( 42), &
                                                                                    ACHAR(184) // ACHAR( 17) // ACHAR( 41), &
                                                                                    ACHAR(182) // ACHAR( 13) // ACHAR( 40), &
                                                                                    ACHAR(181) // ACHAR(  8) // ACHAR( 39), &
                                                                                    ACHAR(179) // ACHAR(  3) // ACHAR( 38)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_turbo = (/                      &
                                                                                    ACHAR( 48) // ACHAR( 18) // ACHAR( 59), &
                                                                                    ACHAR( 49) // ACHAR( 21) // ACHAR( 66), &
                                                                                    ACHAR( 50) // ACHAR( 24) // ACHAR( 74), &
                                                                                    ACHAR( 52) // ACHAR( 27) // ACHAR( 81), &
                                                                                    ACHAR( 53) // ACHAR( 30) // ACHAR( 88), &
                                                                                    ACHAR( 54) // ACHAR( 33) // ACHAR( 95), &
                                                                                    ACHAR( 55) // ACHAR( 35) // ACHAR(101), &
                                                                                    ACHAR( 56) // ACHAR( 38) // ACHAR(108), &
                                                                                    ACHAR( 57) // ACHAR( 41) // ACHAR(114), &
                                                                                    ACHAR( 58) // ACHAR( 44) // ACHAR(121), &
                                                                                    ACHAR( 59) // ACHAR( 47) // ACHAR(127), &
                                                                                    ACHAR( 60) // ACHAR( 50) // ACHAR(133), &
                                                                                    ACHAR( 60) // ACHAR( 53) // ACHAR(139), &
                                                                                    ACHAR( 61) // ACHAR( 55) // ACHAR(145), &
                                                                                    ACHAR( 62) // ACHAR( 58) // ACHAR(150), &
                                                                                    ACHAR( 63) // ACHAR( 61) // ACHAR(156), &
                                                                                    ACHAR( 64) // ACHAR( 64) // ACHAR(161), &
                                                                                    ACHAR( 64) // ACHAR( 67) // ACHAR(166), &
                                                                                    ACHAR( 65) // ACHAR( 69) // ACHAR(171), &
                                                                                    ACHAR( 65) // ACHAR( 72) // ACHAR(176), &
                                                                                    ACHAR( 66) // ACHAR( 75) // ACHAR(181), &
                                                                                    ACHAR( 67) // ACHAR( 78) // ACHAR(186), &
                                                                                    ACHAR( 67) // ACHAR( 80) // ACHAR(190), &
                                                                                    ACHAR( 67) // ACHAR( 83) // ACHAR(194), &
                                                                                    ACHAR( 68) // ACHAR( 86) // ACHAR(199), &
                                                                                    ACHAR( 68) // ACHAR( 88) // ACHAR(203), &
                                                                                    ACHAR( 69) // ACHAR( 91) // ACHAR(206), &
                                                                                    ACHAR( 69) // ACHAR( 94) // ACHAR(210), &
                                                                                    ACHAR( 69) // ACHAR( 96) // ACHAR(214), &
                                                                                    ACHAR( 69) // ACHAR( 99) // ACHAR(217), &
                                                                                    ACHAR( 70) // ACHAR(102) // ACHAR(221), &
                                                                                    ACHAR( 70) // ACHAR(104) // ACHAR(224), &
                                                                                    ACHAR( 70) // ACHAR(107) // ACHAR(227), &
                                                                                    ACHAR( 70) // ACHAR(109) // ACHAR(230), &
                                                                                    ACHAR( 70) // ACHAR(112) // ACHAR(232), &
                                                                                    ACHAR( 70) // ACHAR(115) // ACHAR(235), &
                                                                                    ACHAR( 70) // ACHAR(117) // ACHAR(237), &
                                                                                    ACHAR( 70) // ACHAR(120) // ACHAR(240), &
                                                                                    ACHAR( 70) // ACHAR(122) // ACHAR(242), &
                                                                                    ACHAR( 70) // ACHAR(125) // ACHAR(244), &
                                                                                    ACHAR( 70) // ACHAR(127) // ACHAR(246), &
                                                                                    ACHAR( 70) // ACHAR(130) // ACHAR(248), &
                                                                                    ACHAR( 69) // ACHAR(132) // ACHAR(249), &
                                                                                    ACHAR( 69) // ACHAR(135) // ACHAR(251), &
                                                                                    ACHAR( 69) // ACHAR(137) // ACHAR(252), &
                                                                                    ACHAR( 68) // ACHAR(140) // ACHAR(253), &
                                                                                    ACHAR( 67) // ACHAR(142) // ACHAR(253), &
                                                                                    ACHAR( 66) // ACHAR(145) // ACHAR(254), &
                                                                                    ACHAR( 65) // ACHAR(147) // ACHAR(254), &
                                                                                    ACHAR( 64) // ACHAR(150) // ACHAR(254), &
                                                                                    ACHAR( 63) // ACHAR(152) // ACHAR(254), &
                                                                                    ACHAR( 62) // ACHAR(155) // ACHAR(254), &
                                                                                    ACHAR( 60) // ACHAR(157) // ACHAR(253), &
                                                                                    ACHAR( 59) // ACHAR(160) // ACHAR(252), &
                                                                                    ACHAR( 57) // ACHAR(162) // ACHAR(252), &
                                                                                    ACHAR( 56) // ACHAR(165) // ACHAR(251), &
                                                                                    ACHAR( 54) // ACHAR(168) // ACHAR(249), &
                                                                                    ACHAR( 52) // ACHAR(170) // ACHAR(248), &
                                                                                    ACHAR( 51) // ACHAR(172) // ACHAR(246), &
                                                                                    ACHAR( 49) // ACHAR(175) // ACHAR(245), &
                                                                                    ACHAR( 47) // ACHAR(177) // ACHAR(243), &
                                                                                    ACHAR( 45) // ACHAR(180) // ACHAR(241), &
                                                                                    ACHAR( 43) // ACHAR(182) // ACHAR(239), &
                                                                                    ACHAR( 42) // ACHAR(185) // ACHAR(237), &
                                                                                    ACHAR( 40) // ACHAR(187) // ACHAR(235), &
                                                                                    ACHAR( 38) // ACHAR(189) // ACHAR(233), &
                                                                                    ACHAR( 37) // ACHAR(192) // ACHAR(230), &
                                                                                    ACHAR( 35) // ACHAR(194) // ACHAR(228), &
                                                                                    ACHAR( 33) // ACHAR(196) // ACHAR(225), &
                                                                                    ACHAR( 32) // ACHAR(198) // ACHAR(223), &
                                                                                    ACHAR( 30) // ACHAR(201) // ACHAR(220), &
                                                                                    ACHAR( 29) // ACHAR(203) // ACHAR(218), &
                                                                                    ACHAR( 28) // ACHAR(205) // ACHAR(215), &
                                                                                    ACHAR( 27) // ACHAR(207) // ACHAR(212), &
                                                                                    ACHAR( 26) // ACHAR(209) // ACHAR(210), &
                                                                                    ACHAR( 25) // ACHAR(211) // ACHAR(207), &
                                                                                    ACHAR( 24) // ACHAR(213) // ACHAR(204), &
                                                                                    ACHAR( 24) // ACHAR(215) // ACHAR(202), &
                                                                                    ACHAR( 23) // ACHAR(217) // ACHAR(199), &
                                                                                    ACHAR( 23) // ACHAR(218) // ACHAR(196), &
                                                                                    ACHAR( 23) // ACHAR(220) // ACHAR(194), &
                                                                                    ACHAR( 23) // ACHAR(222) // ACHAR(191), &
                                                                                    ACHAR( 24) // ACHAR(224) // ACHAR(189), &
                                                                                    ACHAR( 24) // ACHAR(225) // ACHAR(186), &
                                                                                    ACHAR( 25) // ACHAR(227) // ACHAR(184), &
                                                                                    ACHAR( 26) // ACHAR(228) // ACHAR(182), &
                                                                                    ACHAR( 27) // ACHAR(229) // ACHAR(180), &
                                                                                    ACHAR( 29) // ACHAR(231) // ACHAR(177), &
                                                                                    ACHAR( 30) // ACHAR(232) // ACHAR(175), &
                                                                                    ACHAR( 32) // ACHAR(233) // ACHAR(172), &
                                                                                    ACHAR( 34) // ACHAR(235) // ACHAR(169), &
                                                                                    ACHAR( 36) // ACHAR(236) // ACHAR(166), &
                                                                                    ACHAR( 39) // ACHAR(237) // ACHAR(163), &
                                                                                    ACHAR( 41) // ACHAR(238) // ACHAR(160), &
                                                                                    ACHAR( 44) // ACHAR(239) // ACHAR(157), &
                                                                                    ACHAR( 47) // ACHAR(240) // ACHAR(154), &
                                                                                    ACHAR( 50) // ACHAR(241) // ACHAR(151), &
                                                                                    ACHAR( 53) // ACHAR(243) // ACHAR(148), &
                                                                                    ACHAR( 56) // ACHAR(244) // ACHAR(145), &
                                                                                    ACHAR( 59) // ACHAR(244) // ACHAR(141), &
                                                                                    ACHAR( 63) // ACHAR(245) // ACHAR(138), &
                                                                                    ACHAR( 66) // ACHAR(246) // ACHAR(135), &
                                                                                    ACHAR( 70) // ACHAR(247) // ACHAR(131), &
                                                                                    ACHAR( 74) // ACHAR(248) // ACHAR(128), &
                                                                                    ACHAR( 77) // ACHAR(249) // ACHAR(124), &
                                                                                    ACHAR( 81) // ACHAR(249) // ACHAR(121), &
                                                                                    ACHAR( 85) // ACHAR(250) // ACHAR(118), &
                                                                                    ACHAR( 89) // ACHAR(251) // ACHAR(114), &
                                                                                    ACHAR( 93) // ACHAR(251) // ACHAR(111), &
                                                                                    ACHAR( 97) // ACHAR(252) // ACHAR(108), &
                                                                                    ACHAR(101) // ACHAR(252) // ACHAR(104), &
                                                                                    ACHAR(105) // ACHAR(253) // ACHAR(101), &
                                                                                    ACHAR(109) // ACHAR(253) // ACHAR( 98), &
                                                                                    ACHAR(113) // ACHAR(253) // ACHAR( 95), &
                                                                                    ACHAR(116) // ACHAR(254) // ACHAR( 92), &
                                                                                    ACHAR(120) // ACHAR(254) // ACHAR( 89), &
                                                                                    ACHAR(124) // ACHAR(254) // ACHAR( 86), &
                                                                                    ACHAR(128) // ACHAR(254) // ACHAR( 83), &
                                                                                    ACHAR(132) // ACHAR(254) // ACHAR( 80), &
                                                                                    ACHAR(135) // ACHAR(254) // ACHAR( 77), &
                                                                                    ACHAR(139) // ACHAR(254) // ACHAR( 75), &
                                                                                    ACHAR(142) // ACHAR(254) // ACHAR( 72), &
                                                                                    ACHAR(146) // ACHAR(254) // ACHAR( 70), &
                                                                                    ACHAR(149) // ACHAR(254) // ACHAR( 68), &
                                                                                    ACHAR(152) // ACHAR(254) // ACHAR( 66), &
                                                                                    ACHAR(155) // ACHAR(253) // ACHAR( 64), &
                                                                                    ACHAR(158) // ACHAR(253) // ACHAR( 62), &
                                                                                    ACHAR(161) // ACHAR(252) // ACHAR( 61), &
                                                                                    ACHAR(164) // ACHAR(252) // ACHAR( 59), &
                                                                                    ACHAR(166) // ACHAR(251) // ACHAR( 58), &
                                                                                    ACHAR(169) // ACHAR(251) // ACHAR( 57), &
                                                                                    ACHAR(172) // ACHAR(250) // ACHAR( 55), &
                                                                                    ACHAR(174) // ACHAR(249) // ACHAR( 55), &
                                                                                    ACHAR(177) // ACHAR(248) // ACHAR( 54), &
                                                                                    ACHAR(179) // ACHAR(248) // ACHAR( 53), &
                                                                                    ACHAR(182) // ACHAR(247) // ACHAR( 53), &
                                                                                    ACHAR(185) // ACHAR(245) // ACHAR( 52), &
                                                                                    ACHAR(187) // ACHAR(244) // ACHAR( 52), &
                                                                                    ACHAR(190) // ACHAR(243) // ACHAR( 52), &
                                                                                    ACHAR(192) // ACHAR(242) // ACHAR( 51), &
                                                                                    ACHAR(195) // ACHAR(241) // ACHAR( 51), &
                                                                                    ACHAR(197) // ACHAR(239) // ACHAR( 51), &
                                                                                    ACHAR(200) // ACHAR(238) // ACHAR( 51), &
                                                                                    ACHAR(202) // ACHAR(237) // ACHAR( 51), &
                                                                                    ACHAR(205) // ACHAR(235) // ACHAR( 52), &
                                                                                    ACHAR(207) // ACHAR(234) // ACHAR( 52), &
                                                                                    ACHAR(209) // ACHAR(232) // ACHAR( 52), &
                                                                                    ACHAR(212) // ACHAR(231) // ACHAR( 53), &
                                                                                    ACHAR(214) // ACHAR(229) // ACHAR( 53), &
                                                                                    ACHAR(216) // ACHAR(227) // ACHAR( 53), &
                                                                                    ACHAR(218) // ACHAR(226) // ACHAR( 54), &
                                                                                    ACHAR(221) // ACHAR(224) // ACHAR( 54), &
                                                                                    ACHAR(223) // ACHAR(222) // ACHAR( 54), &
                                                                                    ACHAR(225) // ACHAR(220) // ACHAR( 55), &
                                                                                    ACHAR(227) // ACHAR(218) // ACHAR( 55), &
                                                                                    ACHAR(229) // ACHAR(216) // ACHAR( 56), &
                                                                                    ACHAR(231) // ACHAR(215) // ACHAR( 56), &
                                                                                    ACHAR(232) // ACHAR(213) // ACHAR( 56), &
                                                                                    ACHAR(234) // ACHAR(211) // ACHAR( 57), &
                                                                                    ACHAR(236) // ACHAR(209) // ACHAR( 57), &
                                                                                    ACHAR(237) // ACHAR(207) // ACHAR( 57), &
                                                                                    ACHAR(239) // ACHAR(205) // ACHAR( 57), &
                                                                                    ACHAR(240) // ACHAR(203) // ACHAR( 58), &
                                                                                    ACHAR(242) // ACHAR(200) // ACHAR( 58), &
                                                                                    ACHAR(243) // ACHAR(198) // ACHAR( 58), &
                                                                                    ACHAR(244) // ACHAR(196) // ACHAR( 58), &
                                                                                    ACHAR(246) // ACHAR(194) // ACHAR( 58), &
                                                                                    ACHAR(247) // ACHAR(192) // ACHAR( 57), &
                                                                                    ACHAR(248) // ACHAR(190) // ACHAR( 57), &
                                                                                    ACHAR(249) // ACHAR(188) // ACHAR( 57), &
                                                                                    ACHAR(249) // ACHAR(186) // ACHAR( 56), &
                                                                                    ACHAR(250) // ACHAR(183) // ACHAR( 55), &
                                                                                    ACHAR(251) // ACHAR(181) // ACHAR( 55), &
                                                                                    ACHAR(251) // ACHAR(179) // ACHAR( 54), &
                                                                                    ACHAR(252) // ACHAR(176) // ACHAR( 53), &
                                                                                    ACHAR(252) // ACHAR(174) // ACHAR( 52), &
                                                                                    ACHAR(253) // ACHAR(171) // ACHAR( 51), &
                                                                                    ACHAR(253) // ACHAR(169) // ACHAR( 50), &
                                                                                    ACHAR(253) // ACHAR(166) // ACHAR( 49), &
                                                                                    ACHAR(253) // ACHAR(163) // ACHAR( 48), &
                                                                                    ACHAR(254) // ACHAR(161) // ACHAR( 47), &
                                                                                    ACHAR(254) // ACHAR(158) // ACHAR( 46), &
                                                                                    ACHAR(254) // ACHAR(155) // ACHAR( 45), &
                                                                                    ACHAR(254) // ACHAR(152) // ACHAR( 44), &
                                                                                    ACHAR(253) // ACHAR(149) // ACHAR( 43), &
                                                                                    ACHAR(253) // ACHAR(146) // ACHAR( 41), &
                                                                                    ACHAR(253) // ACHAR(143) // ACHAR( 40), &
                                                                                    ACHAR(253) // ACHAR(140) // ACHAR( 39), &
                                                                                    ACHAR(252) // ACHAR(137) // ACHAR( 38), &
                                                                                    ACHAR(252) // ACHAR(134) // ACHAR( 36), &
                                                                                    ACHAR(251) // ACHAR(131) // ACHAR( 35), &
                                                                                    ACHAR(251) // ACHAR(128) // ACHAR( 34), &
                                                                                    ACHAR(250) // ACHAR(125) // ACHAR( 32), &
                                                                                    ACHAR(250) // ACHAR(122) // ACHAR( 31), &
                                                                                    ACHAR(249) // ACHAR(119) // ACHAR( 30), &
                                                                                    ACHAR(248) // ACHAR(116) // ACHAR( 28), &
                                                                                    ACHAR(247) // ACHAR(113) // ACHAR( 27), &
                                                                                    ACHAR(247) // ACHAR(110) // ACHAR( 26), &
                                                                                    ACHAR(246) // ACHAR(107) // ACHAR( 24), &
                                                                                    ACHAR(245) // ACHAR(104) // ACHAR( 23), &
                                                                                    ACHAR(244) // ACHAR(101) // ACHAR( 22), &
                                                                                    ACHAR(243) // ACHAR( 99) // ACHAR( 21), &
                                                                                    ACHAR(242) // ACHAR( 96) // ACHAR( 20), &
                                                                                    ACHAR(241) // ACHAR( 93) // ACHAR( 19), &
                                                                                    ACHAR(239) // ACHAR( 90) // ACHAR( 17), &
                                                                                    ACHAR(238) // ACHAR( 88) // ACHAR( 16), &
                                                                                    ACHAR(237) // ACHAR( 85) // ACHAR( 15), &
                                                                                    ACHAR(236) // ACHAR( 82) // ACHAR( 14), &
                                                                                    ACHAR(234) // ACHAR( 80) // ACHAR( 13), &
                                                                                    ACHAR(233) // ACHAR( 77) // ACHAR( 13), &
                                                                                    ACHAR(232) // ACHAR( 75) // ACHAR( 12), &
                                                                                    ACHAR(230) // ACHAR( 73) // ACHAR( 11), &
                                                                                    ACHAR(229) // ACHAR( 70) // ACHAR( 10), &
                                                                                    ACHAR(227) // ACHAR( 68) // ACHAR( 10), &
                                                                                    ACHAR(226) // ACHAR( 66) // ACHAR(  9), &
                                                                                    ACHAR(224) // ACHAR( 64) // ACHAR(  8), &
                                                                                    ACHAR(222) // ACHAR( 62) // ACHAR(  8), &
                                                                                    ACHAR(221) // ACHAR( 60) // ACHAR(  7), &
                                                                                    ACHAR(219) // ACHAR( 58) // ACHAR(  7), &
                                                                                    ACHAR(217) // ACHAR( 56) // ACHAR(  6), &
                                                                                    ACHAR(215) // ACHAR( 54) // ACHAR(  6), &
                                                                                    ACHAR(214) // ACHAR( 52) // ACHAR(  5), &
                                                                                    ACHAR(212) // ACHAR( 50) // ACHAR(  5), &
                                                                                    ACHAR(210) // ACHAR( 48) // ACHAR(  5), &
                                                                                    ACHAR(208) // ACHAR( 47) // ACHAR(  4), &
                                                                                    ACHAR(206) // ACHAR( 45) // ACHAR(  4), &
                                                                                    ACHAR(203) // ACHAR( 43) // ACHAR(  3), &
                                                                                    ACHAR(201) // ACHAR( 41) // ACHAR(  3), &
                                                                                    ACHAR(199) // ACHAR( 40) // ACHAR(  3), &
                                                                                    ACHAR(197) // ACHAR( 38) // ACHAR(  2), &
                                                                                    ACHAR(195) // ACHAR( 36) // ACHAR(  2), &
                                                                                    ACHAR(192) // ACHAR( 35) // ACHAR(  2), &
                                                                                    ACHAR(190) // ACHAR( 33) // ACHAR(  2), &
                                                                                    ACHAR(187) // ACHAR( 31) // ACHAR(  1), &
                                                                                    ACHAR(185) // ACHAR( 30) // ACHAR(  1), &
                                                                                    ACHAR(182) // ACHAR( 28) // ACHAR(  1), &
                                                                                    ACHAR(180) // ACHAR( 27) // ACHAR(  1), &
                                                                                    ACHAR(177) // ACHAR( 25) // ACHAR(  1), &
                                                                                    ACHAR(174) // ACHAR( 24) // ACHAR(  1), &
                                                                                    ACHAR(172) // ACHAR( 22) // ACHAR(  1), &
                                                                                    ACHAR(169) // ACHAR( 21) // ACHAR(  1), &
                                                                                    ACHAR(166) // ACHAR( 20) // ACHAR(  1), &
                                                                                    ACHAR(163) // ACHAR( 18) // ACHAR(  1), &
                                                                                    ACHAR(160) // ACHAR( 17) // ACHAR(  1), &
                                                                                    ACHAR(157) // ACHAR( 16) // ACHAR(  1), &
                                                                                    ACHAR(154) // ACHAR( 14) // ACHAR(  1), &
                                                                                    ACHAR(151) // ACHAR( 13) // ACHAR(  1), &
                                                                                    ACHAR(148) // ACHAR( 12) // ACHAR(  1), &
                                                                                    ACHAR(145) // ACHAR( 11) // ACHAR(  1), &
                                                                                    ACHAR(142) // ACHAR( 10) // ACHAR(  1), &
                                                                                    ACHAR(139) // ACHAR(  9) // ACHAR(  1), &
                                                                                    ACHAR(135) // ACHAR(  8) // ACHAR(  1), &
                                                                                    ACHAR(132) // ACHAR(  7) // ACHAR(  1), &
                                                                                    ACHAR(129) // ACHAR(  6) // ACHAR(  2), &
                                                                                    ACHAR(125) // ACHAR(  5) // ACHAR(  2), &
                                                                                    ACHAR(122) // ACHAR(  4) // ACHAR(  2)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_g2b = (/                        &
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
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2g = (/                        &
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
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_r2o2g = (/                      &
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
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                   :: const_cm_grey = (/                       &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(  1) // ACHAR(  1) // ACHAR(  1), &
                                                                                    ACHAR(  2) // ACHAR(  2) // ACHAR(  2), &
                                                                                    ACHAR(  3) // ACHAR(  3) // ACHAR(  3), &
                                                                                    ACHAR(  4) // ACHAR(  4) // ACHAR(  4), &
                                                                                    ACHAR(  5) // ACHAR(  5) // ACHAR(  5), &
                                                                                    ACHAR(  6) // ACHAR(  6) // ACHAR(  6), &
                                                                                    ACHAR(  7) // ACHAR(  7) // ACHAR(  7), &
                                                                                    ACHAR(  8) // ACHAR(  8) // ACHAR(  8), &
                                                                                    ACHAR(  9) // ACHAR(  9) // ACHAR(  9), &
                                                                                    ACHAR( 10) // ACHAR( 10) // ACHAR( 10), &
                                                                                    ACHAR( 11) // ACHAR( 11) // ACHAR( 11), &
                                                                                    ACHAR( 12) // ACHAR( 12) // ACHAR( 12), &
                                                                                    ACHAR( 13) // ACHAR( 13) // ACHAR( 13), &
                                                                                    ACHAR( 14) // ACHAR( 14) // ACHAR( 14), &
                                                                                    ACHAR( 15) // ACHAR( 15) // ACHAR( 15), &
                                                                                    ACHAR( 16) // ACHAR( 16) // ACHAR( 16), &
                                                                                    ACHAR( 17) // ACHAR( 17) // ACHAR( 17), &
                                                                                    ACHAR( 18) // ACHAR( 18) // ACHAR( 18), &
                                                                                    ACHAR( 19) // ACHAR( 19) // ACHAR( 19), &
                                                                                    ACHAR( 20) // ACHAR( 20) // ACHAR( 20), &
                                                                                    ACHAR( 21) // ACHAR( 21) // ACHAR( 21), &
                                                                                    ACHAR( 22) // ACHAR( 22) // ACHAR( 22), &
                                                                                    ACHAR( 23) // ACHAR( 23) // ACHAR( 23), &
                                                                                    ACHAR( 24) // ACHAR( 24) // ACHAR( 24), &
                                                                                    ACHAR( 25) // ACHAR( 25) // ACHAR( 25), &
                                                                                    ACHAR( 26) // ACHAR( 26) // ACHAR( 26), &
                                                                                    ACHAR( 27) // ACHAR( 27) // ACHAR( 27), &
                                                                                    ACHAR( 28) // ACHAR( 28) // ACHAR( 28), &
                                                                                    ACHAR( 29) // ACHAR( 29) // ACHAR( 29), &
                                                                                    ACHAR( 30) // ACHAR( 30) // ACHAR( 30), &
                                                                                    ACHAR( 31) // ACHAR( 31) // ACHAR( 31), &
                                                                                    ACHAR( 32) // ACHAR( 32) // ACHAR( 32), &
                                                                                    ACHAR( 33) // ACHAR( 33) // ACHAR( 33), &
                                                                                    ACHAR( 34) // ACHAR( 34) // ACHAR( 34), &
                                                                                    ACHAR( 35) // ACHAR( 35) // ACHAR( 35), &
                                                                                    ACHAR( 36) // ACHAR( 36) // ACHAR( 36), &
                                                                                    ACHAR( 37) // ACHAR( 37) // ACHAR( 37), &
                                                                                    ACHAR( 38) // ACHAR( 38) // ACHAR( 38), &
                                                                                    ACHAR( 39) // ACHAR( 39) // ACHAR( 39), &
                                                                                    ACHAR( 40) // ACHAR( 40) // ACHAR( 40), &
                                                                                    ACHAR( 41) // ACHAR( 41) // ACHAR( 41), &
                                                                                    ACHAR( 42) // ACHAR( 42) // ACHAR( 42), &
                                                                                    ACHAR( 43) // ACHAR( 43) // ACHAR( 43), &
                                                                                    ACHAR( 44) // ACHAR( 44) // ACHAR( 44), &
                                                                                    ACHAR( 45) // ACHAR( 45) // ACHAR( 45), &
                                                                                    ACHAR( 46) // ACHAR( 46) // ACHAR( 46), &
                                                                                    ACHAR( 47) // ACHAR( 47) // ACHAR( 47), &
                                                                                    ACHAR( 48) // ACHAR( 48) // ACHAR( 48), &
                                                                                    ACHAR( 49) // ACHAR( 49) // ACHAR( 49), &
                                                                                    ACHAR( 50) // ACHAR( 50) // ACHAR( 50), &
                                                                                    ACHAR( 51) // ACHAR( 51) // ACHAR( 51), &
                                                                                    ACHAR( 52) // ACHAR( 52) // ACHAR( 52), &
                                                                                    ACHAR( 53) // ACHAR( 53) // ACHAR( 53), &
                                                                                    ACHAR( 54) // ACHAR( 54) // ACHAR( 54), &
                                                                                    ACHAR( 55) // ACHAR( 55) // ACHAR( 55), &
                                                                                    ACHAR( 56) // ACHAR( 56) // ACHAR( 56), &
                                                                                    ACHAR( 57) // ACHAR( 57) // ACHAR( 57), &
                                                                                    ACHAR( 58) // ACHAR( 58) // ACHAR( 58), &
                                                                                    ACHAR( 59) // ACHAR( 59) // ACHAR( 59), &
                                                                                    ACHAR( 60) // ACHAR( 60) // ACHAR( 60), &
                                                                                    ACHAR( 61) // ACHAR( 61) // ACHAR( 61), &
                                                                                    ACHAR( 62) // ACHAR( 62) // ACHAR( 62), &
                                                                                    ACHAR( 63) // ACHAR( 63) // ACHAR( 63), &
                                                                                    ACHAR( 64) // ACHAR( 64) // ACHAR( 64), &
                                                                                    ACHAR( 65) // ACHAR( 65) // ACHAR( 65), &
                                                                                    ACHAR( 66) // ACHAR( 66) // ACHAR( 66), &
                                                                                    ACHAR( 67) // ACHAR( 67) // ACHAR( 67), &
                                                                                    ACHAR( 68) // ACHAR( 68) // ACHAR( 68), &
                                                                                    ACHAR( 69) // ACHAR( 69) // ACHAR( 69), &
                                                                                    ACHAR( 70) // ACHAR( 70) // ACHAR( 70), &
                                                                                    ACHAR( 71) // ACHAR( 71) // ACHAR( 71), &
                                                                                    ACHAR( 72) // ACHAR( 72) // ACHAR( 72), &
                                                                                    ACHAR( 73) // ACHAR( 73) // ACHAR( 73), &
                                                                                    ACHAR( 74) // ACHAR( 74) // ACHAR( 74), &
                                                                                    ACHAR( 75) // ACHAR( 75) // ACHAR( 75), &
                                                                                    ACHAR( 76) // ACHAR( 76) // ACHAR( 76), &
                                                                                    ACHAR( 77) // ACHAR( 77) // ACHAR( 77), &
                                                                                    ACHAR( 78) // ACHAR( 78) // ACHAR( 78), &
                                                                                    ACHAR( 79) // ACHAR( 79) // ACHAR( 79), &
                                                                                    ACHAR( 80) // ACHAR( 80) // ACHAR( 80), &
                                                                                    ACHAR( 81) // ACHAR( 81) // ACHAR( 81), &
                                                                                    ACHAR( 82) // ACHAR( 82) // ACHAR( 82), &
                                                                                    ACHAR( 83) // ACHAR( 83) // ACHAR( 83), &
                                                                                    ACHAR( 84) // ACHAR( 84) // ACHAR( 84), &
                                                                                    ACHAR( 85) // ACHAR( 85) // ACHAR( 85), &
                                                                                    ACHAR( 86) // ACHAR( 86) // ACHAR( 86), &
                                                                                    ACHAR( 87) // ACHAR( 87) // ACHAR( 87), &
                                                                                    ACHAR( 88) // ACHAR( 88) // ACHAR( 88), &
                                                                                    ACHAR( 89) // ACHAR( 89) // ACHAR( 89), &
                                                                                    ACHAR( 90) // ACHAR( 90) // ACHAR( 90), &
                                                                                    ACHAR( 91) // ACHAR( 91) // ACHAR( 91), &
                                                                                    ACHAR( 92) // ACHAR( 92) // ACHAR( 92), &
                                                                                    ACHAR( 93) // ACHAR( 93) // ACHAR( 93), &
                                                                                    ACHAR( 94) // ACHAR( 94) // ACHAR( 94), &
                                                                                    ACHAR( 95) // ACHAR( 95) // ACHAR( 95), &
                                                                                    ACHAR( 96) // ACHAR( 96) // ACHAR( 96), &
                                                                                    ACHAR( 97) // ACHAR( 97) // ACHAR( 97), &
                                                                                    ACHAR( 98) // ACHAR( 98) // ACHAR( 98), &
                                                                                    ACHAR( 99) // ACHAR( 99) // ACHAR( 99), &
                                                                                    ACHAR(100) // ACHAR(100) // ACHAR(100), &
                                                                                    ACHAR(101) // ACHAR(101) // ACHAR(101), &
                                                                                    ACHAR(102) // ACHAR(102) // ACHAR(102), &
                                                                                    ACHAR(103) // ACHAR(103) // ACHAR(103), &
                                                                                    ACHAR(104) // ACHAR(104) // ACHAR(104), &
                                                                                    ACHAR(105) // ACHAR(105) // ACHAR(105), &
                                                                                    ACHAR(106) // ACHAR(106) // ACHAR(106), &
                                                                                    ACHAR(107) // ACHAR(107) // ACHAR(107), &
                                                                                    ACHAR(108) // ACHAR(108) // ACHAR(108), &
                                                                                    ACHAR(109) // ACHAR(109) // ACHAR(109), &
                                                                                    ACHAR(110) // ACHAR(110) // ACHAR(110), &
                                                                                    ACHAR(111) // ACHAR(111) // ACHAR(111), &
                                                                                    ACHAR(112) // ACHAR(112) // ACHAR(112), &
                                                                                    ACHAR(113) // ACHAR(113) // ACHAR(113), &
                                                                                    ACHAR(114) // ACHAR(114) // ACHAR(114), &
                                                                                    ACHAR(115) // ACHAR(115) // ACHAR(115), &
                                                                                    ACHAR(116) // ACHAR(116) // ACHAR(116), &
                                                                                    ACHAR(117) // ACHAR(117) // ACHAR(117), &
                                                                                    ACHAR(118) // ACHAR(118) // ACHAR(118), &
                                                                                    ACHAR(119) // ACHAR(119) // ACHAR(119), &
                                                                                    ACHAR(120) // ACHAR(120) // ACHAR(120), &
                                                                                    ACHAR(121) // ACHAR(121) // ACHAR(121), &
                                                                                    ACHAR(122) // ACHAR(122) // ACHAR(122), &
                                                                                    ACHAR(123) // ACHAR(123) // ACHAR(123), &
                                                                                    ACHAR(124) // ACHAR(124) // ACHAR(124), &
                                                                                    ACHAR(125) // ACHAR(125) // ACHAR(125), &
                                                                                    ACHAR(126) // ACHAR(126) // ACHAR(126), &
                                                                                    ACHAR(127) // ACHAR(127) // ACHAR(127), &
                                                                                    ACHAR(128) // ACHAR(128) // ACHAR(128), &
                                                                                    ACHAR(129) // ACHAR(129) // ACHAR(129), &
                                                                                    ACHAR(130) // ACHAR(130) // ACHAR(130), &
                                                                                    ACHAR(131) // ACHAR(131) // ACHAR(131), &
                                                                                    ACHAR(132) // ACHAR(132) // ACHAR(132), &
                                                                                    ACHAR(133) // ACHAR(133) // ACHAR(133), &
                                                                                    ACHAR(134) // ACHAR(134) // ACHAR(134), &
                                                                                    ACHAR(135) // ACHAR(135) // ACHAR(135), &
                                                                                    ACHAR(136) // ACHAR(136) // ACHAR(136), &
                                                                                    ACHAR(137) // ACHAR(137) // ACHAR(137), &
                                                                                    ACHAR(138) // ACHAR(138) // ACHAR(138), &
                                                                                    ACHAR(139) // ACHAR(139) // ACHAR(139), &
                                                                                    ACHAR(140) // ACHAR(140) // ACHAR(140), &
                                                                                    ACHAR(141) // ACHAR(141) // ACHAR(141), &
                                                                                    ACHAR(142) // ACHAR(142) // ACHAR(142), &
                                                                                    ACHAR(143) // ACHAR(143) // ACHAR(143), &
                                                                                    ACHAR(144) // ACHAR(144) // ACHAR(144), &
                                                                                    ACHAR(145) // ACHAR(145) // ACHAR(145), &
                                                                                    ACHAR(146) // ACHAR(146) // ACHAR(146), &
                                                                                    ACHAR(147) // ACHAR(147) // ACHAR(147), &
                                                                                    ACHAR(148) // ACHAR(148) // ACHAR(148), &
                                                                                    ACHAR(149) // ACHAR(149) // ACHAR(149), &
                                                                                    ACHAR(150) // ACHAR(150) // ACHAR(150), &
                                                                                    ACHAR(151) // ACHAR(151) // ACHAR(151), &
                                                                                    ACHAR(152) // ACHAR(152) // ACHAR(152), &
                                                                                    ACHAR(153) // ACHAR(153) // ACHAR(153), &
                                                                                    ACHAR(154) // ACHAR(154) // ACHAR(154), &
                                                                                    ACHAR(155) // ACHAR(155) // ACHAR(155), &
                                                                                    ACHAR(156) // ACHAR(156) // ACHAR(156), &
                                                                                    ACHAR(157) // ACHAR(157) // ACHAR(157), &
                                                                                    ACHAR(158) // ACHAR(158) // ACHAR(158), &
                                                                                    ACHAR(159) // ACHAR(159) // ACHAR(159), &
                                                                                    ACHAR(160) // ACHAR(160) // ACHAR(160), &
                                                                                    ACHAR(161) // ACHAR(161) // ACHAR(161), &
                                                                                    ACHAR(162) // ACHAR(162) // ACHAR(162), &
                                                                                    ACHAR(163) // ACHAR(163) // ACHAR(163), &
                                                                                    ACHAR(164) // ACHAR(164) // ACHAR(164), &
                                                                                    ACHAR(165) // ACHAR(165) // ACHAR(165), &
                                                                                    ACHAR(166) // ACHAR(166) // ACHAR(166), &
                                                                                    ACHAR(167) // ACHAR(167) // ACHAR(167), &
                                                                                    ACHAR(168) // ACHAR(168) // ACHAR(168), &
                                                                                    ACHAR(169) // ACHAR(169) // ACHAR(169), &
                                                                                    ACHAR(170) // ACHAR(170) // ACHAR(170), &
                                                                                    ACHAR(171) // ACHAR(171) // ACHAR(171), &
                                                                                    ACHAR(172) // ACHAR(172) // ACHAR(172), &
                                                                                    ACHAR(173) // ACHAR(173) // ACHAR(173), &
                                                                                    ACHAR(174) // ACHAR(174) // ACHAR(174), &
                                                                                    ACHAR(175) // ACHAR(175) // ACHAR(175), &
                                                                                    ACHAR(176) // ACHAR(176) // ACHAR(176), &
                                                                                    ACHAR(177) // ACHAR(177) // ACHAR(177), &
                                                                                    ACHAR(178) // ACHAR(178) // ACHAR(178), &
                                                                                    ACHAR(179) // ACHAR(179) // ACHAR(179), &
                                                                                    ACHAR(180) // ACHAR(180) // ACHAR(180), &
                                                                                    ACHAR(181) // ACHAR(181) // ACHAR(181), &
                                                                                    ACHAR(182) // ACHAR(182) // ACHAR(182), &
                                                                                    ACHAR(183) // ACHAR(183) // ACHAR(183), &
                                                                                    ACHAR(184) // ACHAR(184) // ACHAR(184), &
                                                                                    ACHAR(185) // ACHAR(185) // ACHAR(185), &
                                                                                    ACHAR(186) // ACHAR(186) // ACHAR(186), &
                                                                                    ACHAR(187) // ACHAR(187) // ACHAR(187), &
                                                                                    ACHAR(188) // ACHAR(188) // ACHAR(188), &
                                                                                    ACHAR(189) // ACHAR(189) // ACHAR(189), &
                                                                                    ACHAR(190) // ACHAR(190) // ACHAR(190), &
                                                                                    ACHAR(191) // ACHAR(191) // ACHAR(191), &
                                                                                    ACHAR(192) // ACHAR(192) // ACHAR(192), &
                                                                                    ACHAR(193) // ACHAR(193) // ACHAR(193), &
                                                                                    ACHAR(194) // ACHAR(194) // ACHAR(194), &
                                                                                    ACHAR(195) // ACHAR(195) // ACHAR(195), &
                                                                                    ACHAR(196) // ACHAR(196) // ACHAR(196), &
                                                                                    ACHAR(197) // ACHAR(197) // ACHAR(197), &
                                                                                    ACHAR(198) // ACHAR(198) // ACHAR(198), &
                                                                                    ACHAR(199) // ACHAR(199) // ACHAR(199), &
                                                                                    ACHAR(200) // ACHAR(200) // ACHAR(200), &
                                                                                    ACHAR(201) // ACHAR(201) // ACHAR(201), &
                                                                                    ACHAR(202) // ACHAR(202) // ACHAR(202), &
                                                                                    ACHAR(203) // ACHAR(203) // ACHAR(203), &
                                                                                    ACHAR(204) // ACHAR(204) // ACHAR(204), &
                                                                                    ACHAR(205) // ACHAR(205) // ACHAR(205), &
                                                                                    ACHAR(206) // ACHAR(206) // ACHAR(206), &
                                                                                    ACHAR(207) // ACHAR(207) // ACHAR(207), &
                                                                                    ACHAR(208) // ACHAR(208) // ACHAR(208), &
                                                                                    ACHAR(209) // ACHAR(209) // ACHAR(209), &
                                                                                    ACHAR(210) // ACHAR(210) // ACHAR(210), &
                                                                                    ACHAR(211) // ACHAR(211) // ACHAR(211), &
                                                                                    ACHAR(212) // ACHAR(212) // ACHAR(212), &
                                                                                    ACHAR(213) // ACHAR(213) // ACHAR(213), &
                                                                                    ACHAR(214) // ACHAR(214) // ACHAR(214), &
                                                                                    ACHAR(215) // ACHAR(215) // ACHAR(215), &
                                                                                    ACHAR(216) // ACHAR(216) // ACHAR(216), &
                                                                                    ACHAR(217) // ACHAR(217) // ACHAR(217), &
                                                                                    ACHAR(218) // ACHAR(218) // ACHAR(218), &
                                                                                    ACHAR(219) // ACHAR(219) // ACHAR(219), &
                                                                                    ACHAR(220) // ACHAR(220) // ACHAR(220), &
                                                                                    ACHAR(221) // ACHAR(221) // ACHAR(221), &
                                                                                    ACHAR(222) // ACHAR(222) // ACHAR(222), &
                                                                                    ACHAR(223) // ACHAR(223) // ACHAR(223), &
                                                                                    ACHAR(224) // ACHAR(224) // ACHAR(224), &
                                                                                    ACHAR(225) // ACHAR(225) // ACHAR(225), &
                                                                                    ACHAR(226) // ACHAR(226) // ACHAR(226), &
                                                                                    ACHAR(227) // ACHAR(227) // ACHAR(227), &
                                                                                    ACHAR(228) // ACHAR(228) // ACHAR(228), &
                                                                                    ACHAR(229) // ACHAR(229) // ACHAR(229), &
                                                                                    ACHAR(230) // ACHAR(230) // ACHAR(230), &
                                                                                    ACHAR(231) // ACHAR(231) // ACHAR(231), &
                                                                                    ACHAR(232) // ACHAR(232) // ACHAR(232), &
                                                                                    ACHAR(233) // ACHAR(233) // ACHAR(233), &
                                                                                    ACHAR(234) // ACHAR(234) // ACHAR(234), &
                                                                                    ACHAR(235) // ACHAR(235) // ACHAR(235), &
                                                                                    ACHAR(236) // ACHAR(236) // ACHAR(236), &
                                                                                    ACHAR(237) // ACHAR(237) // ACHAR(237), &
                                                                                    ACHAR(238) // ACHAR(238) // ACHAR(238), &
                                                                                    ACHAR(239) // ACHAR(239) // ACHAR(239), &
                                                                                    ACHAR(240) // ACHAR(240) // ACHAR(240), &
                                                                                    ACHAR(241) // ACHAR(241) // ACHAR(241), &
                                                                                    ACHAR(242) // ACHAR(242) // ACHAR(242), &
                                                                                    ACHAR(243) // ACHAR(243) // ACHAR(243), &
                                                                                    ACHAR(244) // ACHAR(244) // ACHAR(244), &
                                                                                    ACHAR(245) // ACHAR(245) // ACHAR(245), &
                                                                                    ACHAR(246) // ACHAR(246) // ACHAR(246), &
                                                                                    ACHAR(247) // ACHAR(247) // ACHAR(247), &
                                                                                    ACHAR(248) // ACHAR(248) // ACHAR(248), &
                                                                                    ACHAR(249) // ACHAR(249) // ACHAR(249), &
                                                                                    ACHAR(250) // ACHAR(250) // ACHAR(250), &
                                                                                    ACHAR(251) // ACHAR(251) // ACHAR(251), &
                                                                                    ACHAR(252) // ACHAR(252) // ACHAR(252), &
                                                                                    ACHAR(253) // ACHAR(253) // ACHAR(253), &
                                                                                    ACHAR(254) // ACHAR(254) // ACHAR(254), &
                                                                                    ACHAR(255) // ACHAR(255) // ACHAR(255)  &
                                                                                /)
