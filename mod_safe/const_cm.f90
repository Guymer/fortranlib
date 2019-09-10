CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_fire = (/ &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR( 16) // ACHAR(  0) // ACHAR(  6), &
                                                                                    ACHAR( 23) // ACHAR(  0) // ACHAR( 13), &
                                                                                    ACHAR( 28) // ACHAR(  0) // ACHAR( 19), &
                                                                                    ACHAR( 32) // ACHAR(  0) // ACHAR( 25), &
                                                                                    ACHAR( 36) // ACHAR(  0) // ACHAR( 31), &
                                                                                    ACHAR( 39) // ACHAR(  0) // ACHAR( 38), &
                                                                                    ACHAR( 42) // ACHAR(  0) // ACHAR( 44), &
                                                                                    ACHAR( 45) // ACHAR(  0) // ACHAR( 50), &
                                                                                    ACHAR( 48) // ACHAR(  0) // ACHAR( 56), &
                                                                                    ACHAR( 50) // ACHAR(  0) // ACHAR( 62), &
                                                                                    ACHAR( 53) // ACHAR(  0) // ACHAR( 68), &
                                                                                    ACHAR( 55) // ACHAR(  0) // ACHAR( 74), &
                                                                                    ACHAR( 58) // ACHAR(  0) // ACHAR( 80), &
                                                                                    ACHAR( 60) // ACHAR(  0) // ACHAR( 86), &
                                                                                    ACHAR( 62) // ACHAR(  0) // ACHAR( 92), &
                                                                                    ACHAR( 64) // ACHAR(  0) // ACHAR( 98), &
                                                                                    ACHAR( 66) // ACHAR(  0) // ACHAR(104), &
                                                                                    ACHAR( 68) // ACHAR(  0) // ACHAR(109), &
                                                                                    ACHAR( 70) // ACHAR(  0) // ACHAR(115), &
                                                                                    ACHAR( 71) // ACHAR(  0) // ACHAR(121), &
                                                                                    ACHAR( 73) // ACHAR(  0) // ACHAR(126), &
                                                                                    ACHAR( 75) // ACHAR(  0) // ACHAR(132), &
                                                                                    ACHAR( 77) // ACHAR(  0) // ACHAR(137), &
                                                                                    ACHAR( 78) // ACHAR(  0) // ACHAR(142), &
                                                                                    ACHAR( 80) // ACHAR(  0) // ACHAR(147), &
                                                                                    ACHAR( 81) // ACHAR(  0) // ACHAR(152), &
                                                                                    ACHAR( 83) // ACHAR(  0) // ACHAR(157), &
                                                                                    ACHAR( 84) // ACHAR(  0) // ACHAR(162), &
                                                                                    ACHAR( 86) // ACHAR(  0) // ACHAR(167), &
                                                                                    ACHAR( 87) // ACHAR(  0) // ACHAR(172), &
                                                                                    ACHAR( 89) // ACHAR(  0) // ACHAR(176), &
                                                                                    ACHAR( 90) // ACHAR(  1) // ACHAR(181), &
                                                                                    ACHAR( 92) // ACHAR(  1) // ACHAR(185), &
                                                                                    ACHAR( 93) // ACHAR(  1) // ACHAR(190), &
                                                                                    ACHAR( 94) // ACHAR(  1) // ACHAR(194), &
                                                                                    ACHAR( 96) // ACHAR(  1) // ACHAR(198), &
                                                                                    ACHAR( 97) // ACHAR(  1) // ACHAR(202), &
                                                                                    ACHAR( 98) // ACHAR(  1) // ACHAR(205), &
                                                                                    ACHAR(100) // ACHAR(  1) // ACHAR(209), &
                                                                                    ACHAR(101) // ACHAR(  1) // ACHAR(213), &
                                                                                    ACHAR(102) // ACHAR(  1) // ACHAR(216), &
                                                                                    ACHAR(103) // ACHAR(  1) // ACHAR(219), &
                                                                                    ACHAR(105) // ACHAR(  1) // ACHAR(222), &
                                                                                    ACHAR(106) // ACHAR(  1) // ACHAR(225), &
                                                                                    ACHAR(107) // ACHAR(  1) // ACHAR(228), &
                                                                                    ACHAR(108) // ACHAR(  1) // ACHAR(231), &
                                                                                    ACHAR(109) // ACHAR(  2) // ACHAR(234), &
                                                                                    ACHAR(111) // ACHAR(  2) // ACHAR(236), &
                                                                                    ACHAR(112) // ACHAR(  2) // ACHAR(238), &
                                                                                    ACHAR(113) // ACHAR(  2) // ACHAR(241), &
                                                                                    ACHAR(114) // ACHAR(  2) // ACHAR(243), &
                                                                                    ACHAR(115) // ACHAR(  2) // ACHAR(244), &
                                                                                    ACHAR(116) // ACHAR(  2) // ACHAR(246), &
                                                                                    ACHAR(117) // ACHAR(  2) // ACHAR(248), &
                                                                                    ACHAR(118) // ACHAR(  3) // ACHAR(249), &
                                                                                    ACHAR(119) // ACHAR(  3) // ACHAR(250), &
                                                                                    ACHAR(121) // ACHAR(  3) // ACHAR(251), &
                                                                                    ACHAR(122) // ACHAR(  3) // ACHAR(252), &
                                                                                    ACHAR(123) // ACHAR(  3) // ACHAR(253), &
                                                                                    ACHAR(124) // ACHAR(  3) // ACHAR(254), &
                                                                                    ACHAR(125) // ACHAR(  3) // ACHAR(254), &
                                                                                    ACHAR(126) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(127) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(128) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(129) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(130) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(131) // ACHAR(  5) // ACHAR(254), &
                                                                                    ACHAR(132) // ACHAR(  5) // ACHAR(254), &
                                                                                    ACHAR(133) // ACHAR(  5) // ACHAR(253), &
                                                                                    ACHAR(134) // ACHAR(  5) // ACHAR(252), &
                                                                                    ACHAR(135) // ACHAR(  6) // ACHAR(251), &
                                                                                    ACHAR(135) // ACHAR(  6) // ACHAR(250), &
                                                                                    ACHAR(136) // ACHAR(  6) // ACHAR(248), &
                                                                                    ACHAR(137) // ACHAR(  6) // ACHAR(247), &
                                                                                    ACHAR(138) // ACHAR(  6) // ACHAR(245), &
                                                                                    ACHAR(139) // ACHAR(  7) // ACHAR(243), &
                                                                                    ACHAR(140) // ACHAR(  7) // ACHAR(242), &
                                                                                    ACHAR(141) // ACHAR(  7) // ACHAR(239), &
                                                                                    ACHAR(142) // ACHAR(  8) // ACHAR(237), &
                                                                                    ACHAR(143) // ACHAR(  8) // ACHAR(235), &
                                                                                    ACHAR(144) // ACHAR(  8) // ACHAR(232), &
                                                                                    ACHAR(145) // ACHAR(  8) // ACHAR(230), &
                                                                                    ACHAR(145) // ACHAR(  9) // ACHAR(227), &
                                                                                    ACHAR(146) // ACHAR(  9) // ACHAR(224), &
                                                                                    ACHAR(147) // ACHAR(  9) // ACHAR(221), &
                                                                                    ACHAR(148) // ACHAR( 10) // ACHAR(218), &
                                                                                    ACHAR(149) // ACHAR( 10) // ACHAR(214), &
                                                                                    ACHAR(150) // ACHAR( 10) // ACHAR(211), &
                                                                                    ACHAR(151) // ACHAR( 11) // ACHAR(207), &
                                                                                    ACHAR(151) // ACHAR( 11) // ACHAR(203), &
                                                                                    ACHAR(152) // ACHAR( 12) // ACHAR(200), &
                                                                                    ACHAR(153) // ACHAR( 12) // ACHAR(196), &
                                                                                    ACHAR(154) // ACHAR( 12) // ACHAR(192), &
                                                                                    ACHAR(155) // ACHAR( 13) // ACHAR(187), &
                                                                                    ACHAR(156) // ACHAR( 13) // ACHAR(183), &
                                                                                    ACHAR(156) // ACHAR( 14) // ACHAR(179), &
                                                                                    ACHAR(157) // ACHAR( 14) // ACHAR(174), &
                                                                                    ACHAR(158) // ACHAR( 14) // ACHAR(169), &
                                                                                    ACHAR(159) // ACHAR( 15) // ACHAR(165), &
                                                                                    ACHAR(160) // ACHAR( 15) // ACHAR(160), &
                                                                                    ACHAR(160) // ACHAR( 16) // ACHAR(155), &
                                                                                    ACHAR(161) // ACHAR( 16) // ACHAR(150), &
                                                                                    ACHAR(162) // ACHAR( 17) // ACHAR(145), &
                                                                                    ACHAR(163) // ACHAR( 17) // ACHAR(140), &
                                                                                    ACHAR(164) // ACHAR( 18) // ACHAR(134), &
                                                                                    ACHAR(164) // ACHAR( 18) // ACHAR(129), &
                                                                                    ACHAR(165) // ACHAR( 19) // ACHAR(123), &
                                                                                    ACHAR(166) // ACHAR( 19) // ACHAR(118), &
                                                                                    ACHAR(167) // ACHAR( 20) // ACHAR(112), &
                                                                                    ACHAR(167) // ACHAR( 20) // ACHAR(107), &
                                                                                    ACHAR(168) // ACHAR( 21) // ACHAR(101), &
                                                                                    ACHAR(169) // ACHAR( 22) // ACHAR( 95), &
                                                                                    ACHAR(170) // ACHAR( 22) // ACHAR( 89), &
                                                                                    ACHAR(170) // ACHAR( 23) // ACHAR( 83), &
                                                                                    ACHAR(171) // ACHAR( 23) // ACHAR( 77), &
                                                                                    ACHAR(172) // ACHAR( 24) // ACHAR( 71), &
                                                                                    ACHAR(173) // ACHAR( 25) // ACHAR( 65), &
                                                                                    ACHAR(173) // ACHAR( 25) // ACHAR( 59), &
                                                                                    ACHAR(174) // ACHAR( 26) // ACHAR( 53), &
                                                                                    ACHAR(175) // ACHAR( 27) // ACHAR( 47), &
                                                                                    ACHAR(176) // ACHAR( 27) // ACHAR( 41), &
                                                                                    ACHAR(176) // ACHAR( 28) // ACHAR( 34), &
                                                                                    ACHAR(177) // ACHAR( 29) // ACHAR( 28), &
                                                                                    ACHAR(178) // ACHAR( 29) // ACHAR( 22), &
                                                                                    ACHAR(179) // ACHAR( 30) // ACHAR( 16), &
                                                                                    ACHAR(179) // ACHAR( 31) // ACHAR(  9), &
                                                                                    ACHAR(180) // ACHAR( 32) // ACHAR(  3), &
                                                                                    ACHAR(181) // ACHAR( 32) // ACHAR(  0), &
                                                                                    ACHAR(181) // ACHAR( 33) // ACHAR(  0), &
                                                                                    ACHAR(182) // ACHAR( 34) // ACHAR(  0), &
                                                                                    ACHAR(183) // ACHAR( 35) // ACHAR(  0), &
                                                                                    ACHAR(183) // ACHAR( 35) // ACHAR(  0), &
                                                                                    ACHAR(184) // ACHAR( 36) // ACHAR(  0), &
                                                                                    ACHAR(185) // ACHAR( 37) // ACHAR(  0), &
                                                                                    ACHAR(186) // ACHAR( 38) // ACHAR(  0), &
                                                                                    ACHAR(186) // ACHAR( 39) // ACHAR(  0), &
                                                                                    ACHAR(187) // ACHAR( 40) // ACHAR(  0), &
                                                                                    ACHAR(188) // ACHAR( 40) // ACHAR(  0), &
                                                                                    ACHAR(188) // ACHAR( 41) // ACHAR(  0), &
                                                                                    ACHAR(189) // ACHAR( 42) // ACHAR(  0), &
                                                                                    ACHAR(190) // ACHAR( 43) // ACHAR(  0), &
                                                                                    ACHAR(190) // ACHAR( 44) // ACHAR(  0), &
                                                                                    ACHAR(191) // ACHAR( 45) // ACHAR(  0), &
                                                                                    ACHAR(192) // ACHAR( 46) // ACHAR(  0), &
                                                                                    ACHAR(192) // ACHAR( 47) // ACHAR(  0), &
                                                                                    ACHAR(193) // ACHAR( 48) // ACHAR(  0), &
                                                                                    ACHAR(194) // ACHAR( 49) // ACHAR(  0), &
                                                                                    ACHAR(194) // ACHAR( 50) // ACHAR(  0), &
                                                                                    ACHAR(195) // ACHAR( 51) // ACHAR(  0), &
                                                                                    ACHAR(196) // ACHAR( 52) // ACHAR(  0), &
                                                                                    ACHAR(196) // ACHAR( 53) // ACHAR(  0), &
                                                                                    ACHAR(197) // ACHAR( 54) // ACHAR(  0), &
                                                                                    ACHAR(198) // ACHAR( 55) // ACHAR(  0), &
                                                                                    ACHAR(198) // ACHAR( 56) // ACHAR(  0), &
                                                                                    ACHAR(199) // ACHAR( 57) // ACHAR(  0), &
                                                                                    ACHAR(199) // ACHAR( 58) // ACHAR(  0), &
                                                                                    ACHAR(200) // ACHAR( 60) // ACHAR(  0), &
                                                                                    ACHAR(201) // ACHAR( 61) // ACHAR(  0), &
                                                                                    ACHAR(201) // ACHAR( 62) // ACHAR(  0), &
                                                                                    ACHAR(202) // ACHAR( 63) // ACHAR(  0), &
                                                                                    ACHAR(203) // ACHAR( 64) // ACHAR(  0), &
                                                                                    ACHAR(203) // ACHAR( 65) // ACHAR(  0), &
                                                                                    ACHAR(204) // ACHAR( 67) // ACHAR(  0), &
                                                                                    ACHAR(204) // ACHAR( 68) // ACHAR(  0), &
                                                                                    ACHAR(205) // ACHAR( 69) // ACHAR(  0), &
                                                                                    ACHAR(206) // ACHAR( 70) // ACHAR(  0), &
                                                                                    ACHAR(206) // ACHAR( 72) // ACHAR(  0), &
                                                                                    ACHAR(207) // ACHAR( 73) // ACHAR(  0), &
                                                                                    ACHAR(208) // ACHAR( 74) // ACHAR(  0), &
                                                                                    ACHAR(208) // ACHAR( 76) // ACHAR(  0), &
                                                                                    ACHAR(209) // ACHAR( 77) // ACHAR(  0), &
                                                                                    ACHAR(209) // ACHAR( 78) // ACHAR(  0), &
                                                                                    ACHAR(210) // ACHAR( 80) // ACHAR(  0), &
                                                                                    ACHAR(211) // ACHAR( 81) // ACHAR(  0), &
                                                                                    ACHAR(211) // ACHAR( 82) // ACHAR(  0), &
                                                                                    ACHAR(212) // ACHAR( 84) // ACHAR(  0), &
                                                                                    ACHAR(212) // ACHAR( 85) // ACHAR(  0), &
                                                                                    ACHAR(213) // ACHAR( 87) // ACHAR(  0), &
                                                                                    ACHAR(214) // ACHAR( 88) // ACHAR(  0), &
                                                                                    ACHAR(214) // ACHAR( 90) // ACHAR(  0), &
                                                                                    ACHAR(215) // ACHAR( 91) // ACHAR(  0), &
                                                                                    ACHAR(215) // ACHAR( 93) // ACHAR(  0), &
                                                                                    ACHAR(216) // ACHAR( 94) // ACHAR(  0), &
                                                                                    ACHAR(217) // ACHAR( 96) // ACHAR(  0), &
                                                                                    ACHAR(217) // ACHAR( 97) // ACHAR(  0), &
                                                                                    ACHAR(218) // ACHAR( 99) // ACHAR(  0), &
                                                                                    ACHAR(218) // ACHAR(101) // ACHAR(  0), &
                                                                                    ACHAR(219) // ACHAR(102) // ACHAR(  0), &
                                                                                    ACHAR(220) // ACHAR(104) // ACHAR(  0), &
                                                                                    ACHAR(220) // ACHAR(105) // ACHAR(  0), &
                                                                                    ACHAR(221) // ACHAR(107) // ACHAR(  0), &
                                                                                    ACHAR(221) // ACHAR(109) // ACHAR(  0), &
                                                                                    ACHAR(222) // ACHAR(111) // ACHAR(  0), &
                                                                                    ACHAR(222) // ACHAR(112) // ACHAR(  0), &
                                                                                    ACHAR(223) // ACHAR(114) // ACHAR(  0), &
                                                                                    ACHAR(224) // ACHAR(116) // ACHAR(  0), &
                                                                                    ACHAR(224) // ACHAR(118) // ACHAR(  0), &
                                                                                    ACHAR(225) // ACHAR(119) // ACHAR(  0), &
                                                                                    ACHAR(225) // ACHAR(121) // ACHAR(  0), &
                                                                                    ACHAR(226) // ACHAR(123) // ACHAR(  0), &
                                                                                    ACHAR(226) // ACHAR(125) // ACHAR(  0), &
                                                                                    ACHAR(227) // ACHAR(127) // ACHAR(  0), &
                                                                                    ACHAR(228) // ACHAR(129) // ACHAR(  0), &
                                                                                    ACHAR(228) // ACHAR(131) // ACHAR(  0), &
                                                                                    ACHAR(229) // ACHAR(132) // ACHAR(  0), &
                                                                                    ACHAR(229) // ACHAR(134) // ACHAR(  0), &
                                                                                    ACHAR(230) // ACHAR(136) // ACHAR(  0), &
                                                                                    ACHAR(230) // ACHAR(138) // ACHAR(  0), &
                                                                                    ACHAR(231) // ACHAR(140) // ACHAR(  0), &
                                                                                    ACHAR(231) // ACHAR(142) // ACHAR(  0), &
                                                                                    ACHAR(232) // ACHAR(144) // ACHAR(  0), &
                                                                                    ACHAR(233) // ACHAR(147) // ACHAR(  0), &
                                                                                    ACHAR(233) // ACHAR(149) // ACHAR(  0), &
                                                                                    ACHAR(234) // ACHAR(151) // ACHAR(  0), &
                                                                                    ACHAR(234) // ACHAR(153) // ACHAR(  0), &
                                                                                    ACHAR(235) // ACHAR(155) // ACHAR(  0), &
                                                                                    ACHAR(235) // ACHAR(157) // ACHAR(  0), &
                                                                                    ACHAR(236) // ACHAR(159) // ACHAR(  0), &
                                                                                    ACHAR(236) // ACHAR(162) // ACHAR(  0), &
                                                                                    ACHAR(237) // ACHAR(164) // ACHAR(  0), &
                                                                                    ACHAR(237) // ACHAR(166) // ACHAR(  0), &
                                                                                    ACHAR(238) // ACHAR(168) // ACHAR(  0), &
                                                                                    ACHAR(238) // ACHAR(171) // ACHAR(  0), &
                                                                                    ACHAR(239) // ACHAR(173) // ACHAR(  0), &
                                                                                    ACHAR(240) // ACHAR(175) // ACHAR(  0), &
                                                                                    ACHAR(240) // ACHAR(178) // ACHAR(  0), &
                                                                                    ACHAR(241) // ACHAR(180) // ACHAR(  0), &
                                                                                    ACHAR(241) // ACHAR(182) // ACHAR(  0), &
                                                                                    ACHAR(242) // ACHAR(185) // ACHAR(  0), &
                                                                                    ACHAR(242) // ACHAR(187) // ACHAR(  0), &
                                                                                    ACHAR(243) // ACHAR(190) // ACHAR(  0), &
                                                                                    ACHAR(243) // ACHAR(192) // ACHAR(  0), &
                                                                                    ACHAR(244) // ACHAR(195) // ACHAR(  0), &
                                                                                    ACHAR(244) // ACHAR(197) // ACHAR(  0), &
                                                                                    ACHAR(245) // ACHAR(200) // ACHAR(  0), &
                                                                                    ACHAR(245) // ACHAR(202) // ACHAR(  0), &
                                                                                    ACHAR(246) // ACHAR(205) // ACHAR(  0), &
                                                                                    ACHAR(246) // ACHAR(207) // ACHAR(  0), &
                                                                                    ACHAR(247) // ACHAR(210) // ACHAR(  0), &
                                                                                    ACHAR(247) // ACHAR(213) // ACHAR(  0), &
                                                                                    ACHAR(248) // ACHAR(215) // ACHAR(  0), &
                                                                                    ACHAR(248) // ACHAR(218) // ACHAR(  0), &
                                                                                    ACHAR(249) // ACHAR(221) // ACHAR(  0), &
                                                                                    ACHAR(249) // ACHAR(223) // ACHAR(  0), &
                                                                                    ACHAR(250) // ACHAR(226) // ACHAR(  0), &
                                                                                    ACHAR(250) // ACHAR(229) // ACHAR(  0), &
                                                                                    ACHAR(251) // ACHAR(232) // ACHAR(  0), &
                                                                                    ACHAR(251) // ACHAR(235) // ACHAR(  0), &
                                                                                    ACHAR(252) // ACHAR(237) // ACHAR(  0), &
                                                                                    ACHAR(252) // ACHAR(240) // ACHAR(  0), &
                                                                                    ACHAR(253) // ACHAR(243) // ACHAR(  0), &
                                                                                    ACHAR(253) // ACHAR(246) // ACHAR(  0), &
                                                                                    ACHAR(254) // ACHAR(249) // ACHAR(  0), &
                                                                                    ACHAR(254) // ACHAR(252) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(255) // ACHAR(  0)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_jet = (/ &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(128), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(132), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(137), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(141), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(146), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(150), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(155), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(159), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(164), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(168), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(173), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(178), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(182), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(187), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(191), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(196), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(200), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(205), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(209), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(214), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(218), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(223), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(227), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(232), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(237), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(241), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(246), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(250), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  0) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  4) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(  8) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 12) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 16) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 20) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 24) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 28) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 32) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 36) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 40) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 44) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 48) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 52) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 56) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 60) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 64) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 68) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 72) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 76) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 80) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 84) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 88) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 92) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR( 96) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(100) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(104) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(108) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(112) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(116) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(120) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(124) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(128) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(132) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(136) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(140) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(144) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(148) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(152) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(156) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(160) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(164) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(168) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(172) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(176) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(180) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(184) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(188) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(192) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(196) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(200) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(204) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(208) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(212) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(216) // ACHAR(255), &
                                                                                    ACHAR(  0) // ACHAR(220) // ACHAR(254), &
                                                                                    ACHAR(  0) // ACHAR(224) // ACHAR(251), &
                                                                                    ACHAR(  0) // ACHAR(228) // ACHAR(248), &
                                                                                    ACHAR(  2) // ACHAR(232) // ACHAR(244), &
                                                                                    ACHAR(  6) // ACHAR(236) // ACHAR(241), &
                                                                                    ACHAR(  9) // ACHAR(240) // ACHAR(238), &
                                                                                    ACHAR( 12) // ACHAR(244) // ACHAR(235), &
                                                                                    ACHAR( 15) // ACHAR(248) // ACHAR(231), &
                                                                                    ACHAR( 19) // ACHAR(252) // ACHAR(228), &
                                                                                    ACHAR( 22) // ACHAR(255) // ACHAR(225), &
                                                                                    ACHAR( 25) // ACHAR(255) // ACHAR(222), &
                                                                                    ACHAR( 28) // ACHAR(255) // ACHAR(219), &
                                                                                    ACHAR( 31) // ACHAR(255) // ACHAR(215), &
                                                                                    ACHAR( 35) // ACHAR(255) // ACHAR(212), &
                                                                                    ACHAR( 38) // ACHAR(255) // ACHAR(209), &
                                                                                    ACHAR( 41) // ACHAR(255) // ACHAR(206), &
                                                                                    ACHAR( 44) // ACHAR(255) // ACHAR(202), &
                                                                                    ACHAR( 48) // ACHAR(255) // ACHAR(199), &
                                                                                    ACHAR( 51) // ACHAR(255) // ACHAR(196), &
                                                                                    ACHAR( 54) // ACHAR(255) // ACHAR(193), &
                                                                                    ACHAR( 57) // ACHAR(255) // ACHAR(190), &
                                                                                    ACHAR( 60) // ACHAR(255) // ACHAR(186), &
                                                                                    ACHAR( 64) // ACHAR(255) // ACHAR(183), &
                                                                                    ACHAR( 67) // ACHAR(255) // ACHAR(180), &
                                                                                    ACHAR( 70) // ACHAR(255) // ACHAR(177), &
                                                                                    ACHAR( 73) // ACHAR(255) // ACHAR(173), &
                                                                                    ACHAR( 77) // ACHAR(255) // ACHAR(170), &
                                                                                    ACHAR( 80) // ACHAR(255) // ACHAR(167), &
                                                                                    ACHAR( 83) // ACHAR(255) // ACHAR(164), &
                                                                                    ACHAR( 86) // ACHAR(255) // ACHAR(160), &
                                                                                    ACHAR( 90) // ACHAR(255) // ACHAR(157), &
                                                                                    ACHAR( 93) // ACHAR(255) // ACHAR(154), &
                                                                                    ACHAR( 96) // ACHAR(255) // ACHAR(151), &
                                                                                    ACHAR( 99) // ACHAR(255) // ACHAR(148), &
                                                                                    ACHAR(102) // ACHAR(255) // ACHAR(144), &
                                                                                    ACHAR(106) // ACHAR(255) // ACHAR(141), &
                                                                                    ACHAR(109) // ACHAR(255) // ACHAR(138), &
                                                                                    ACHAR(112) // ACHAR(255) // ACHAR(135), &
                                                                                    ACHAR(115) // ACHAR(255) // ACHAR(131), &
                                                                                    ACHAR(119) // ACHAR(255) // ACHAR(128), &
                                                                                    ACHAR(122) // ACHAR(255) // ACHAR(125), &
                                                                                    ACHAR(125) // ACHAR(255) // ACHAR(122), &
                                                                                    ACHAR(128) // ACHAR(255) // ACHAR(119), &
                                                                                    ACHAR(131) // ACHAR(255) // ACHAR(115), &
                                                                                    ACHAR(135) // ACHAR(255) // ACHAR(112), &
                                                                                    ACHAR(138) // ACHAR(255) // ACHAR(109), &
                                                                                    ACHAR(141) // ACHAR(255) // ACHAR(106), &
                                                                                    ACHAR(144) // ACHAR(255) // ACHAR(102), &
                                                                                    ACHAR(148) // ACHAR(255) // ACHAR( 99), &
                                                                                    ACHAR(151) // ACHAR(255) // ACHAR( 96), &
                                                                                    ACHAR(154) // ACHAR(255) // ACHAR( 93), &
                                                                                    ACHAR(157) // ACHAR(255) // ACHAR( 90), &
                                                                                    ACHAR(160) // ACHAR(255) // ACHAR( 86), &
                                                                                    ACHAR(164) // ACHAR(255) // ACHAR( 83), &
                                                                                    ACHAR(167) // ACHAR(255) // ACHAR( 80), &
                                                                                    ACHAR(170) // ACHAR(255) // ACHAR( 77), &
                                                                                    ACHAR(173) // ACHAR(255) // ACHAR( 73), &
                                                                                    ACHAR(177) // ACHAR(255) // ACHAR( 70), &
                                                                                    ACHAR(180) // ACHAR(255) // ACHAR( 67), &
                                                                                    ACHAR(183) // ACHAR(255) // ACHAR( 64), &
                                                                                    ACHAR(186) // ACHAR(255) // ACHAR( 60), &
                                                                                    ACHAR(190) // ACHAR(255) // ACHAR( 57), &
                                                                                    ACHAR(193) // ACHAR(255) // ACHAR( 54), &
                                                                                    ACHAR(196) // ACHAR(255) // ACHAR( 51), &
                                                                                    ACHAR(199) // ACHAR(255) // ACHAR( 48), &
                                                                                    ACHAR(202) // ACHAR(255) // ACHAR( 44), &
                                                                                    ACHAR(206) // ACHAR(255) // ACHAR( 41), &
                                                                                    ACHAR(209) // ACHAR(255) // ACHAR( 38), &
                                                                                    ACHAR(212) // ACHAR(255) // ACHAR( 35), &
                                                                                    ACHAR(215) // ACHAR(255) // ACHAR( 31), &
                                                                                    ACHAR(219) // ACHAR(255) // ACHAR( 28), &
                                                                                    ACHAR(222) // ACHAR(255) // ACHAR( 25), &
                                                                                    ACHAR(225) // ACHAR(255) // ACHAR( 22), &
                                                                                    ACHAR(228) // ACHAR(255) // ACHAR( 19), &
                                                                                    ACHAR(231) // ACHAR(255) // ACHAR( 15), &
                                                                                    ACHAR(235) // ACHAR(255) // ACHAR( 12), &
                                                                                    ACHAR(238) // ACHAR(255) // ACHAR(  9), &
                                                                                    ACHAR(241) // ACHAR(252) // ACHAR(  6), &
                                                                                    ACHAR(244) // ACHAR(248) // ACHAR(  2), &
                                                                                    ACHAR(248) // ACHAR(245) // ACHAR(  0), &
                                                                                    ACHAR(251) // ACHAR(241) // ACHAR(  0), &
                                                                                    ACHAR(254) // ACHAR(237) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(234) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(230) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(226) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(222) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(219) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(215) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(211) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(208) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(204) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(200) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(196) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(193) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(189) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(185) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(182) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(178) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(174) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(171) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(167) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(163) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(159) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(156) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(152) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(148) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(145) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(141) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(137) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(134) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(130) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(126) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(122) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(119) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(115) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(111) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(108) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(104) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR(100) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 96) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 93) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 89) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 85) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 82) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 78) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 74) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 71) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 67) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 63) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 59) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 56) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 52) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 48) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 45) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 41) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 37) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 34) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 30) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 26) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 22) // ACHAR(  0), &
                                                                                    ACHAR(255) // ACHAR( 19) // ACHAR(  0), &
                                                                                    ACHAR(250) // ACHAR( 15) // ACHAR(  0), &
                                                                                    ACHAR(246) // ACHAR( 11) // ACHAR(  0), &
                                                                                    ACHAR(241) // ACHAR(  8) // ACHAR(  0), &
                                                                                    ACHAR(237) // ACHAR(  4) // ACHAR(  0), &
                                                                                    ACHAR(232) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(228) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(223) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(218) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(214) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(209) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(205) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(200) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(196) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(191) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(187) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(182) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(178) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(173) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(168) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(164) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(159) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(155) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(150) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(146) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(141) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(137) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(132) // ACHAR(  0) // ACHAR(  0), &
                                                                                    ACHAR(128) // ACHAR(  0) // ACHAR(  0)  &
                                                                                /)
