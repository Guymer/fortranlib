CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_fire = (/ &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR( 16) // CHAR(  0) // CHAR(  6), &
                                                                                    CHAR( 23) // CHAR(  0) // CHAR( 13), &
                                                                                    CHAR( 28) // CHAR(  0) // CHAR( 19), &
                                                                                    CHAR( 32) // CHAR(  0) // CHAR( 25), &
                                                                                    CHAR( 36) // CHAR(  0) // CHAR( 31), &
                                                                                    CHAR( 39) // CHAR(  0) // CHAR( 38), &
                                                                                    CHAR( 42) // CHAR(  0) // CHAR( 44), &
                                                                                    CHAR( 45) // CHAR(  0) // CHAR( 50), &
                                                                                    CHAR( 48) // CHAR(  0) // CHAR( 56), &
                                                                                    CHAR( 50) // CHAR(  0) // CHAR( 62), &
                                                                                    CHAR( 53) // CHAR(  0) // CHAR( 68), &
                                                                                    CHAR( 55) // CHAR(  0) // CHAR( 74), &
                                                                                    CHAR( 58) // CHAR(  0) // CHAR( 80), &
                                                                                    CHAR( 60) // CHAR(  0) // CHAR( 86), &
                                                                                    CHAR( 62) // CHAR(  0) // CHAR( 92), &
                                                                                    CHAR( 64) // CHAR(  0) // CHAR( 98), &
                                                                                    CHAR( 66) // CHAR(  0) // CHAR(104), &
                                                                                    CHAR( 68) // CHAR(  0) // CHAR(109), &
                                                                                    CHAR( 70) // CHAR(  0) // CHAR(115), &
                                                                                    CHAR( 71) // CHAR(  0) // CHAR(121), &
                                                                                    CHAR( 73) // CHAR(  0) // CHAR(126), &
                                                                                    CHAR( 75) // CHAR(  0) // CHAR(132), &
                                                                                    CHAR( 77) // CHAR(  0) // CHAR(137), &
                                                                                    CHAR( 78) // CHAR(  0) // CHAR(142), &
                                                                                    CHAR( 80) // CHAR(  0) // CHAR(147), &
                                                                                    CHAR( 81) // CHAR(  0) // CHAR(152), &
                                                                                    CHAR( 83) // CHAR(  0) // CHAR(157), &
                                                                                    CHAR( 84) // CHAR(  0) // CHAR(162), &
                                                                                    CHAR( 86) // CHAR(  0) // CHAR(167), &
                                                                                    CHAR( 87) // CHAR(  0) // CHAR(172), &
                                                                                    CHAR( 89) // CHAR(  0) // CHAR(176), &
                                                                                    CHAR( 90) // CHAR(  1) // CHAR(181), &
                                                                                    CHAR( 92) // CHAR(  1) // CHAR(185), &
                                                                                    CHAR( 93) // CHAR(  1) // CHAR(190), &
                                                                                    CHAR( 94) // CHAR(  1) // CHAR(194), &
                                                                                    CHAR( 96) // CHAR(  1) // CHAR(198), &
                                                                                    CHAR( 97) // CHAR(  1) // CHAR(202), &
                                                                                    CHAR( 98) // CHAR(  1) // CHAR(205), &
                                                                                    CHAR(100) // CHAR(  1) // CHAR(209), &
                                                                                    CHAR(101) // CHAR(  1) // CHAR(213), &
                                                                                    CHAR(102) // CHAR(  1) // CHAR(216), &
                                                                                    CHAR(103) // CHAR(  1) // CHAR(219), &
                                                                                    CHAR(105) // CHAR(  1) // CHAR(222), &
                                                                                    CHAR(106) // CHAR(  1) // CHAR(225), &
                                                                                    CHAR(107) // CHAR(  1) // CHAR(228), &
                                                                                    CHAR(108) // CHAR(  1) // CHAR(231), &
                                                                                    CHAR(109) // CHAR(  2) // CHAR(234), &
                                                                                    CHAR(111) // CHAR(  2) // CHAR(236), &
                                                                                    CHAR(112) // CHAR(  2) // CHAR(238), &
                                                                                    CHAR(113) // CHAR(  2) // CHAR(241), &
                                                                                    CHAR(114) // CHAR(  2) // CHAR(243), &
                                                                                    CHAR(115) // CHAR(  2) // CHAR(244), &
                                                                                    CHAR(116) // CHAR(  2) // CHAR(246), &
                                                                                    CHAR(117) // CHAR(  2) // CHAR(248), &
                                                                                    CHAR(118) // CHAR(  3) // CHAR(249), &
                                                                                    CHAR(119) // CHAR(  3) // CHAR(250), &
                                                                                    CHAR(121) // CHAR(  3) // CHAR(251), &
                                                                                    CHAR(122) // CHAR(  3) // CHAR(252), &
                                                                                    CHAR(123) // CHAR(  3) // CHAR(253), &
                                                                                    CHAR(124) // CHAR(  3) // CHAR(254), &
                                                                                    CHAR(125) // CHAR(  3) // CHAR(254), &
                                                                                    CHAR(126) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(127) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(128) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(129) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(130) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(131) // CHAR(  5) // CHAR(254), &
                                                                                    CHAR(132) // CHAR(  5) // CHAR(254), &
                                                                                    CHAR(133) // CHAR(  5) // CHAR(253), &
                                                                                    CHAR(134) // CHAR(  5) // CHAR(252), &
                                                                                    CHAR(135) // CHAR(  6) // CHAR(251), &
                                                                                    CHAR(135) // CHAR(  6) // CHAR(250), &
                                                                                    CHAR(136) // CHAR(  6) // CHAR(248), &
                                                                                    CHAR(137) // CHAR(  6) // CHAR(247), &
                                                                                    CHAR(138) // CHAR(  6) // CHAR(245), &
                                                                                    CHAR(139) // CHAR(  7) // CHAR(243), &
                                                                                    CHAR(140) // CHAR(  7) // CHAR(242), &
                                                                                    CHAR(141) // CHAR(  7) // CHAR(239), &
                                                                                    CHAR(142) // CHAR(  8) // CHAR(237), &
                                                                                    CHAR(143) // CHAR(  8) // CHAR(235), &
                                                                                    CHAR(144) // CHAR(  8) // CHAR(232), &
                                                                                    CHAR(145) // CHAR(  8) // CHAR(230), &
                                                                                    CHAR(145) // CHAR(  9) // CHAR(227), &
                                                                                    CHAR(146) // CHAR(  9) // CHAR(224), &
                                                                                    CHAR(147) // CHAR(  9) // CHAR(221), &
                                                                                    CHAR(148) // CHAR( 10) // CHAR(218), &
                                                                                    CHAR(149) // CHAR( 10) // CHAR(214), &
                                                                                    CHAR(150) // CHAR( 10) // CHAR(211), &
                                                                                    CHAR(151) // CHAR( 11) // CHAR(207), &
                                                                                    CHAR(151) // CHAR( 11) // CHAR(203), &
                                                                                    CHAR(152) // CHAR( 12) // CHAR(200), &
                                                                                    CHAR(153) // CHAR( 12) // CHAR(196), &
                                                                                    CHAR(154) // CHAR( 12) // CHAR(192), &
                                                                                    CHAR(155) // CHAR( 13) // CHAR(187), &
                                                                                    CHAR(156) // CHAR( 13) // CHAR(183), &
                                                                                    CHAR(156) // CHAR( 14) // CHAR(179), &
                                                                                    CHAR(157) // CHAR( 14) // CHAR(174), &
                                                                                    CHAR(158) // CHAR( 14) // CHAR(169), &
                                                                                    CHAR(159) // CHAR( 15) // CHAR(165), &
                                                                                    CHAR(160) // CHAR( 15) // CHAR(160), &
                                                                                    CHAR(160) // CHAR( 16) // CHAR(155), &
                                                                                    CHAR(161) // CHAR( 16) // CHAR(150), &
                                                                                    CHAR(162) // CHAR( 17) // CHAR(145), &
                                                                                    CHAR(163) // CHAR( 17) // CHAR(140), &
                                                                                    CHAR(164) // CHAR( 18) // CHAR(134), &
                                                                                    CHAR(164) // CHAR( 18) // CHAR(129), &
                                                                                    CHAR(165) // CHAR( 19) // CHAR(123), &
                                                                                    CHAR(166) // CHAR( 19) // CHAR(118), &
                                                                                    CHAR(167) // CHAR( 20) // CHAR(112), &
                                                                                    CHAR(167) // CHAR( 20) // CHAR(107), &
                                                                                    CHAR(168) // CHAR( 21) // CHAR(101), &
                                                                                    CHAR(169) // CHAR( 22) // CHAR( 95), &
                                                                                    CHAR(170) // CHAR( 22) // CHAR( 89), &
                                                                                    CHAR(170) // CHAR( 23) // CHAR( 83), &
                                                                                    CHAR(171) // CHAR( 23) // CHAR( 77), &
                                                                                    CHAR(172) // CHAR( 24) // CHAR( 71), &
                                                                                    CHAR(173) // CHAR( 25) // CHAR( 65), &
                                                                                    CHAR(173) // CHAR( 25) // CHAR( 59), &
                                                                                    CHAR(174) // CHAR( 26) // CHAR( 53), &
                                                                                    CHAR(175) // CHAR( 27) // CHAR( 47), &
                                                                                    CHAR(176) // CHAR( 27) // CHAR( 41), &
                                                                                    CHAR(176) // CHAR( 28) // CHAR( 34), &
                                                                                    CHAR(177) // CHAR( 29) // CHAR( 28), &
                                                                                    CHAR(178) // CHAR( 29) // CHAR( 22), &
                                                                                    CHAR(179) // CHAR( 30) // CHAR( 16), &
                                                                                    CHAR(179) // CHAR( 31) // CHAR(  9), &
                                                                                    CHAR(180) // CHAR( 32) // CHAR(  3), &
                                                                                    CHAR(181) // CHAR( 32) // CHAR(  0), &
                                                                                    CHAR(181) // CHAR( 33) // CHAR(  0), &
                                                                                    CHAR(182) // CHAR( 34) // CHAR(  0), &
                                                                                    CHAR(183) // CHAR( 35) // CHAR(  0), &
                                                                                    CHAR(183) // CHAR( 35) // CHAR(  0), &
                                                                                    CHAR(184) // CHAR( 36) // CHAR(  0), &
                                                                                    CHAR(185) // CHAR( 37) // CHAR(  0), &
                                                                                    CHAR(186) // CHAR( 38) // CHAR(  0), &
                                                                                    CHAR(186) // CHAR( 39) // CHAR(  0), &
                                                                                    CHAR(187) // CHAR( 40) // CHAR(  0), &
                                                                                    CHAR(188) // CHAR( 40) // CHAR(  0), &
                                                                                    CHAR(188) // CHAR( 41) // CHAR(  0), &
                                                                                    CHAR(189) // CHAR( 42) // CHAR(  0), &
                                                                                    CHAR(190) // CHAR( 43) // CHAR(  0), &
                                                                                    CHAR(190) // CHAR( 44) // CHAR(  0), &
                                                                                    CHAR(191) // CHAR( 45) // CHAR(  0), &
                                                                                    CHAR(192) // CHAR( 46) // CHAR(  0), &
                                                                                    CHAR(192) // CHAR( 47) // CHAR(  0), &
                                                                                    CHAR(193) // CHAR( 48) // CHAR(  0), &
                                                                                    CHAR(194) // CHAR( 49) // CHAR(  0), &
                                                                                    CHAR(194) // CHAR( 50) // CHAR(  0), &
                                                                                    CHAR(195) // CHAR( 51) // CHAR(  0), &
                                                                                    CHAR(196) // CHAR( 52) // CHAR(  0), &
                                                                                    CHAR(196) // CHAR( 53) // CHAR(  0), &
                                                                                    CHAR(197) // CHAR( 54) // CHAR(  0), &
                                                                                    CHAR(198) // CHAR( 55) // CHAR(  0), &
                                                                                    CHAR(198) // CHAR( 56) // CHAR(  0), &
                                                                                    CHAR(199) // CHAR( 57) // CHAR(  0), &
                                                                                    CHAR(199) // CHAR( 58) // CHAR(  0), &
                                                                                    CHAR(200) // CHAR( 60) // CHAR(  0), &
                                                                                    CHAR(201) // CHAR( 61) // CHAR(  0), &
                                                                                    CHAR(201) // CHAR( 62) // CHAR(  0), &
                                                                                    CHAR(202) // CHAR( 63) // CHAR(  0), &
                                                                                    CHAR(203) // CHAR( 64) // CHAR(  0), &
                                                                                    CHAR(203) // CHAR( 65) // CHAR(  0), &
                                                                                    CHAR(204) // CHAR( 67) // CHAR(  0), &
                                                                                    CHAR(204) // CHAR( 68) // CHAR(  0), &
                                                                                    CHAR(205) // CHAR( 69) // CHAR(  0), &
                                                                                    CHAR(206) // CHAR( 70) // CHAR(  0), &
                                                                                    CHAR(206) // CHAR( 72) // CHAR(  0), &
                                                                                    CHAR(207) // CHAR( 73) // CHAR(  0), &
                                                                                    CHAR(208) // CHAR( 74) // CHAR(  0), &
                                                                                    CHAR(208) // CHAR( 76) // CHAR(  0), &
                                                                                    CHAR(209) // CHAR( 77) // CHAR(  0), &
                                                                                    CHAR(209) // CHAR( 78) // CHAR(  0), &
                                                                                    CHAR(210) // CHAR( 80) // CHAR(  0), &
                                                                                    CHAR(211) // CHAR( 81) // CHAR(  0), &
                                                                                    CHAR(211) // CHAR( 82) // CHAR(  0), &
                                                                                    CHAR(212) // CHAR( 84) // CHAR(  0), &
                                                                                    CHAR(212) // CHAR( 85) // CHAR(  0), &
                                                                                    CHAR(213) // CHAR( 87) // CHAR(  0), &
                                                                                    CHAR(214) // CHAR( 88) // CHAR(  0), &
                                                                                    CHAR(214) // CHAR( 90) // CHAR(  0), &
                                                                                    CHAR(215) // CHAR( 91) // CHAR(  0), &
                                                                                    CHAR(215) // CHAR( 93) // CHAR(  0), &
                                                                                    CHAR(216) // CHAR( 94) // CHAR(  0), &
                                                                                    CHAR(217) // CHAR( 96) // CHAR(  0), &
                                                                                    CHAR(217) // CHAR( 97) // CHAR(  0), &
                                                                                    CHAR(218) // CHAR( 99) // CHAR(  0), &
                                                                                    CHAR(218) // CHAR(101) // CHAR(  0), &
                                                                                    CHAR(219) // CHAR(102) // CHAR(  0), &
                                                                                    CHAR(220) // CHAR(104) // CHAR(  0), &
                                                                                    CHAR(220) // CHAR(105) // CHAR(  0), &
                                                                                    CHAR(221) // CHAR(107) // CHAR(  0), &
                                                                                    CHAR(221) // CHAR(109) // CHAR(  0), &
                                                                                    CHAR(222) // CHAR(111) // CHAR(  0), &
                                                                                    CHAR(222) // CHAR(112) // CHAR(  0), &
                                                                                    CHAR(223) // CHAR(114) // CHAR(  0), &
                                                                                    CHAR(224) // CHAR(116) // CHAR(  0), &
                                                                                    CHAR(224) // CHAR(118) // CHAR(  0), &
                                                                                    CHAR(225) // CHAR(119) // CHAR(  0), &
                                                                                    CHAR(225) // CHAR(121) // CHAR(  0), &
                                                                                    CHAR(226) // CHAR(123) // CHAR(  0), &
                                                                                    CHAR(226) // CHAR(125) // CHAR(  0), &
                                                                                    CHAR(227) // CHAR(127) // CHAR(  0), &
                                                                                    CHAR(228) // CHAR(129) // CHAR(  0), &
                                                                                    CHAR(228) // CHAR(131) // CHAR(  0), &
                                                                                    CHAR(229) // CHAR(132) // CHAR(  0), &
                                                                                    CHAR(229) // CHAR(134) // CHAR(  0), &
                                                                                    CHAR(230) // CHAR(136) // CHAR(  0), &
                                                                                    CHAR(230) // CHAR(138) // CHAR(  0), &
                                                                                    CHAR(231) // CHAR(140) // CHAR(  0), &
                                                                                    CHAR(231) // CHAR(142) // CHAR(  0), &
                                                                                    CHAR(232) // CHAR(144) // CHAR(  0), &
                                                                                    CHAR(233) // CHAR(147) // CHAR(  0), &
                                                                                    CHAR(233) // CHAR(149) // CHAR(  0), &
                                                                                    CHAR(234) // CHAR(151) // CHAR(  0), &
                                                                                    CHAR(234) // CHAR(153) // CHAR(  0), &
                                                                                    CHAR(235) // CHAR(155) // CHAR(  0), &
                                                                                    CHAR(235) // CHAR(157) // CHAR(  0), &
                                                                                    CHAR(236) // CHAR(159) // CHAR(  0), &
                                                                                    CHAR(236) // CHAR(162) // CHAR(  0), &
                                                                                    CHAR(237) // CHAR(164) // CHAR(  0), &
                                                                                    CHAR(237) // CHAR(166) // CHAR(  0), &
                                                                                    CHAR(238) // CHAR(168) // CHAR(  0), &
                                                                                    CHAR(238) // CHAR(171) // CHAR(  0), &
                                                                                    CHAR(239) // CHAR(173) // CHAR(  0), &
                                                                                    CHAR(240) // CHAR(175) // CHAR(  0), &
                                                                                    CHAR(240) // CHAR(178) // CHAR(  0), &
                                                                                    CHAR(241) // CHAR(180) // CHAR(  0), &
                                                                                    CHAR(241) // CHAR(182) // CHAR(  0), &
                                                                                    CHAR(242) // CHAR(185) // CHAR(  0), &
                                                                                    CHAR(242) // CHAR(187) // CHAR(  0), &
                                                                                    CHAR(243) // CHAR(190) // CHAR(  0), &
                                                                                    CHAR(243) // CHAR(192) // CHAR(  0), &
                                                                                    CHAR(244) // CHAR(195) // CHAR(  0), &
                                                                                    CHAR(244) // CHAR(197) // CHAR(  0), &
                                                                                    CHAR(245) // CHAR(200) // CHAR(  0), &
                                                                                    CHAR(245) // CHAR(202) // CHAR(  0), &
                                                                                    CHAR(246) // CHAR(205) // CHAR(  0), &
                                                                                    CHAR(246) // CHAR(207) // CHAR(  0), &
                                                                                    CHAR(247) // CHAR(210) // CHAR(  0), &
                                                                                    CHAR(247) // CHAR(213) // CHAR(  0), &
                                                                                    CHAR(248) // CHAR(215) // CHAR(  0), &
                                                                                    CHAR(248) // CHAR(218) // CHAR(  0), &
                                                                                    CHAR(249) // CHAR(221) // CHAR(  0), &
                                                                                    CHAR(249) // CHAR(223) // CHAR(  0), &
                                                                                    CHAR(250) // CHAR(226) // CHAR(  0), &
                                                                                    CHAR(250) // CHAR(229) // CHAR(  0), &
                                                                                    CHAR(251) // CHAR(232) // CHAR(  0), &
                                                                                    CHAR(251) // CHAR(235) // CHAR(  0), &
                                                                                    CHAR(252) // CHAR(237) // CHAR(  0), &
                                                                                    CHAR(252) // CHAR(240) // CHAR(  0), &
                                                                                    CHAR(253) // CHAR(243) // CHAR(  0), &
                                                                                    CHAR(253) // CHAR(246) // CHAR(  0), &
                                                                                    CHAR(254) // CHAR(249) // CHAR(  0), &
                                                                                    CHAR(254) // CHAR(252) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(255) // CHAR(  0)  &
                                                                                /)
CHARACTER(len = 3), DIMENSION(256), PARAMETER                                :: const_cm_jet = (/ &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(128), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(132), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(137), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(141), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(146), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(150), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(155), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(159), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(164), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(168), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(173), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(178), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(182), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(187), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(191), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(196), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(200), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(205), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(209), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(214), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(218), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(223), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(227), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(232), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(237), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(241), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(246), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(250), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  0) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  4) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(  8) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 12) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 16) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 20) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 24) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 28) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 32) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 36) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 40) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 44) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 48) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 52) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 56) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 60) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 64) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 68) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 72) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 76) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 80) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 84) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 88) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 92) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR( 96) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(100) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(104) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(108) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(112) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(116) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(120) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(124) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(128) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(132) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(136) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(140) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(144) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(148) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(152) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(156) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(160) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(164) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(168) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(172) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(176) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(180) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(184) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(188) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(192) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(196) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(200) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(204) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(208) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(212) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(216) // CHAR(255), &
                                                                                    CHAR(  0) // CHAR(220) // CHAR(254), &
                                                                                    CHAR(  0) // CHAR(224) // CHAR(251), &
                                                                                    CHAR(  0) // CHAR(228) // CHAR(248), &
                                                                                    CHAR(  2) // CHAR(232) // CHAR(244), &
                                                                                    CHAR(  6) // CHAR(236) // CHAR(241), &
                                                                                    CHAR(  9) // CHAR(240) // CHAR(238), &
                                                                                    CHAR( 12) // CHAR(244) // CHAR(235), &
                                                                                    CHAR( 15) // CHAR(248) // CHAR(231), &
                                                                                    CHAR( 19) // CHAR(252) // CHAR(228), &
                                                                                    CHAR( 22) // CHAR(255) // CHAR(225), &
                                                                                    CHAR( 25) // CHAR(255) // CHAR(222), &
                                                                                    CHAR( 28) // CHAR(255) // CHAR(219), &
                                                                                    CHAR( 31) // CHAR(255) // CHAR(215), &
                                                                                    CHAR( 35) // CHAR(255) // CHAR(212), &
                                                                                    CHAR( 38) // CHAR(255) // CHAR(209), &
                                                                                    CHAR( 41) // CHAR(255) // CHAR(206), &
                                                                                    CHAR( 44) // CHAR(255) // CHAR(202), &
                                                                                    CHAR( 48) // CHAR(255) // CHAR(199), &
                                                                                    CHAR( 51) // CHAR(255) // CHAR(196), &
                                                                                    CHAR( 54) // CHAR(255) // CHAR(193), &
                                                                                    CHAR( 57) // CHAR(255) // CHAR(190), &
                                                                                    CHAR( 60) // CHAR(255) // CHAR(186), &
                                                                                    CHAR( 64) // CHAR(255) // CHAR(183), &
                                                                                    CHAR( 67) // CHAR(255) // CHAR(180), &
                                                                                    CHAR( 70) // CHAR(255) // CHAR(177), &
                                                                                    CHAR( 73) // CHAR(255) // CHAR(173), &
                                                                                    CHAR( 77) // CHAR(255) // CHAR(170), &
                                                                                    CHAR( 80) // CHAR(255) // CHAR(167), &
                                                                                    CHAR( 83) // CHAR(255) // CHAR(164), &
                                                                                    CHAR( 86) // CHAR(255) // CHAR(160), &
                                                                                    CHAR( 90) // CHAR(255) // CHAR(157), &
                                                                                    CHAR( 93) // CHAR(255) // CHAR(154), &
                                                                                    CHAR( 96) // CHAR(255) // CHAR(151), &
                                                                                    CHAR( 99) // CHAR(255) // CHAR(148), &
                                                                                    CHAR(102) // CHAR(255) // CHAR(144), &
                                                                                    CHAR(106) // CHAR(255) // CHAR(141), &
                                                                                    CHAR(109) // CHAR(255) // CHAR(138), &
                                                                                    CHAR(112) // CHAR(255) // CHAR(135), &
                                                                                    CHAR(115) // CHAR(255) // CHAR(131), &
                                                                                    CHAR(119) // CHAR(255) // CHAR(128), &
                                                                                    CHAR(122) // CHAR(255) // CHAR(125), &
                                                                                    CHAR(125) // CHAR(255) // CHAR(122), &
                                                                                    CHAR(128) // CHAR(255) // CHAR(119), &
                                                                                    CHAR(131) // CHAR(255) // CHAR(115), &
                                                                                    CHAR(135) // CHAR(255) // CHAR(112), &
                                                                                    CHAR(138) // CHAR(255) // CHAR(109), &
                                                                                    CHAR(141) // CHAR(255) // CHAR(106), &
                                                                                    CHAR(144) // CHAR(255) // CHAR(102), &
                                                                                    CHAR(148) // CHAR(255) // CHAR( 99), &
                                                                                    CHAR(151) // CHAR(255) // CHAR( 96), &
                                                                                    CHAR(154) // CHAR(255) // CHAR( 93), &
                                                                                    CHAR(157) // CHAR(255) // CHAR( 90), &
                                                                                    CHAR(160) // CHAR(255) // CHAR( 86), &
                                                                                    CHAR(164) // CHAR(255) // CHAR( 83), &
                                                                                    CHAR(167) // CHAR(255) // CHAR( 80), &
                                                                                    CHAR(170) // CHAR(255) // CHAR( 77), &
                                                                                    CHAR(173) // CHAR(255) // CHAR( 73), &
                                                                                    CHAR(177) // CHAR(255) // CHAR( 70), &
                                                                                    CHAR(180) // CHAR(255) // CHAR( 67), &
                                                                                    CHAR(183) // CHAR(255) // CHAR( 64), &
                                                                                    CHAR(186) // CHAR(255) // CHAR( 60), &
                                                                                    CHAR(190) // CHAR(255) // CHAR( 57), &
                                                                                    CHAR(193) // CHAR(255) // CHAR( 54), &
                                                                                    CHAR(196) // CHAR(255) // CHAR( 51), &
                                                                                    CHAR(199) // CHAR(255) // CHAR( 48), &
                                                                                    CHAR(202) // CHAR(255) // CHAR( 44), &
                                                                                    CHAR(206) // CHAR(255) // CHAR( 41), &
                                                                                    CHAR(209) // CHAR(255) // CHAR( 38), &
                                                                                    CHAR(212) // CHAR(255) // CHAR( 35), &
                                                                                    CHAR(215) // CHAR(255) // CHAR( 31), &
                                                                                    CHAR(219) // CHAR(255) // CHAR( 28), &
                                                                                    CHAR(222) // CHAR(255) // CHAR( 25), &
                                                                                    CHAR(225) // CHAR(255) // CHAR( 22), &
                                                                                    CHAR(228) // CHAR(255) // CHAR( 19), &
                                                                                    CHAR(231) // CHAR(255) // CHAR( 15), &
                                                                                    CHAR(235) // CHAR(255) // CHAR( 12), &
                                                                                    CHAR(238) // CHAR(255) // CHAR(  9), &
                                                                                    CHAR(241) // CHAR(252) // CHAR(  6), &
                                                                                    CHAR(244) // CHAR(248) // CHAR(  2), &
                                                                                    CHAR(248) // CHAR(245) // CHAR(  0), &
                                                                                    CHAR(251) // CHAR(241) // CHAR(  0), &
                                                                                    CHAR(254) // CHAR(237) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(234) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(230) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(226) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(222) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(219) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(215) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(211) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(208) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(204) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(200) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(196) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(193) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(189) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(185) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(182) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(178) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(174) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(171) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(167) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(163) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(159) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(156) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(152) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(148) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(145) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(141) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(137) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(134) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(130) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(126) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(122) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(119) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(115) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(111) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(108) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(104) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR(100) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 96) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 93) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 89) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 85) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 82) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 78) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 74) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 71) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 67) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 63) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 59) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 56) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 52) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 48) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 45) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 41) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 37) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 34) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 30) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 26) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 22) // CHAR(  0), &
                                                                                    CHAR(255) // CHAR( 19) // CHAR(  0), &
                                                                                    CHAR(250) // CHAR( 15) // CHAR(  0), &
                                                                                    CHAR(246) // CHAR( 11) // CHAR(  0), &
                                                                                    CHAR(241) // CHAR(  8) // CHAR(  0), &
                                                                                    CHAR(237) // CHAR(  4) // CHAR(  0), &
                                                                                    CHAR(232) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(228) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(223) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(218) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(214) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(209) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(205) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(200) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(196) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(191) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(187) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(182) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(178) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(173) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(168) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(164) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(159) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(155) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(150) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(146) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(141) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(137) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(132) // CHAR(  0) // CHAR(  0), &
                                                                                    CHAR(128) // CHAR(  0) // CHAR(  0)  &
                                                                                /)
