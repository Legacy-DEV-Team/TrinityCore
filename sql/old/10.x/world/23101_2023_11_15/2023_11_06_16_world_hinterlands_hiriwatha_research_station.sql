SET @OGUID := 3003647;

-- Gameobject templates
UPDATE `gameobject_template` SET `Data6`=0, `ContentTuningId`=425, `VerifiedBuild`=51886 WHERE `entry`=208148; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=208148; -- Candy Bucket

-- Quests
DELETE FROM `quest_offer_reward` WHERE `ID`=28971;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28971, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 51886); -- Candy Bucket

DELETE FROM `gameobject_queststarter` WHERE `id`=208148;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208148, 28971, 51886);

UPDATE `gameobject_questender` SET `VerifiedBuild`=51886 WHERE (`id`=208148 AND `quest`=28971);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=208148;

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 230383 AND 230457;
DELETE FROM `gameobject` WHERE `guid`=231995;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 230383 AND 230457;
DELETE FROM `game_event_gameobject` WHERE `guid`=231995;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+40;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 0, 47, 1885, '0', 0, 0, -30.4670143127441406, -2799.882080078125, 123.3467178344726562, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 0, 47, 1885, '0', 0, 0, -2.25173616409301757, -2829.098876953125, 120.656890869140625, 1.48352813720703125, 0, 0, 0.675589561462402343, 0.737277925014495849, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+2, 180405, 0, 47, 1885, '0', 0, 0, -36.3732643127441406, -2805.663330078125, 123.3467178344726562, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+3, 180406, 0, 47, 1885, '0', 0, 0, 4.78993082046508789, -2821.41845703125, 120.8081207275390625, 0.750490784645080566, 0, 0, 0.3665008544921875, 0.93041771650314331, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+4, 180406, 0, 47, 1885, '0', 0, 0, -29.7517356872558593, -2827.185791015625, 125.8238906860351562, 3.508116960525512695, 0, 0, -0.98325443267822265, 0.182238012552261352, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+5, 180406, 0, 47, 1885, '0', 0, 0, -55.2951393127441406, -2838.911376953125, 121.5378189086914062, 5.497788906097412109, 0, 0, -0.38268280029296875, 0.923879802227020263, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+6, 180407, 0, 47, 1885, '0', 0, 0, -62.3923606872558593, -2830.907958984375, 123.0560226440429687, 6.09120035171508789, 0, 0, -0.09584522247314453, 0.995396256446838378, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+7, 180407, 0, 47, 1885, '0', 0, 0, -18.1961803436279296, -2822.98779296875, 125.7594375610351562, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+8, 180408, 0, 47, 1885, '0', 0, 0, -30.3923606872558593, -2799.96533203125, 124.96826171875, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+9, 180408, 0, 47, 1885, '0', 0, 0, -36.3125, -2805.770751953125, 124.9587020874023437, 0.349065244197845458, 0, 0, 0.173647880554199218, 0.984807789325714111, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+10, 180415, 0, 47, 1885, '0', 0, 0, -64.0850677490234375, -2829.23095703125, 126.0993728637695312, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+11, 180415, 0, 47, 1885, '0', 0, 0, -5.59375, -2807.085205078125, 127.3749771118164062, 2.565631866455078125, 0, 0, 0.958819389343261718, 0.284016460180282592, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+12, 180415, 0, 47, 1885, '0', 0, 0, -46.8107643127441406, -2816.564208984375, 125.2691421508789062, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+13, 180415, 0, 47, 1885, '0', 0, 0, -63.8836822509765625, -2829.5400390625, 125.94476318359375, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+14, 180415, 0, 47, 1885, '0', 0, 0, -63.7621536254882812, -2829.17529296875, 125.9222183227539062, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+15, 180415, 0, 47, 1885, '0', 0, 0, -6.94791650772094726, -2795.538330078125, 126.8768081665039062, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+16, 180415, 0, 47, 1885, '0', 0, 0, -6.93923616409301757, -2795.229248046875, 126.9227676391601562, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+17, 180415, 0, 47, 1885, '0', 0, 0, -47.1649322509765625, -2817.100830078125, 125.0144195556640625, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+18, 180415, 0, 47, 1885, '0', 0, 0, -5.59895849227905273, -2806.638916015625, 127.4177780151367187, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+19, 180415, 0, 47, 1885, '0', 0, 0, -7.19618082046508789, -2795.208251953125, 126.72509765625, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+20, 180425, 0, 47, 1885, '0', 0, 0, -46.7083320617675781, -2817.046875, 125.2868728637695312, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 51886), -- SkullCandle01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+21, 180426, 0, 47, 1885, '0', 0, 0, -20.7100696563720703, -2810.166748046875, 137.744903564453125, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 120, 255, 1, 51886), -- Bat01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+22, 180426, 0, 47, 1885, '0', 0, 0, -24.6857643127441406, -2801.52783203125, 135.47216796875, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494, 120, 255, 1, 51886), -- Bat01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+23, 180426, 0, 47, 1885, '0', 0, 0, -35.3159713745117187, -2817.48779296875, 136.742706298828125, 5.742135047912597656, 0, 0, -0.26723766326904296, 0.96363067626953125, 120, 255, 1, 51886), -- Bat01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+24, 180426, 0, 47, 1885, '0', 0, 0, -22.6579856872558593, -2818.704833984375, 138.9788055419921875, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652, 120, 255, 1, 51886), -- Bat01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+25, 180427, 0, 47, 1885, '0', 0, 0, -29.7864589691162109, -2806.576416015625, 139.372772216796875, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292, 120, 255, 1, 51886), -- Bat02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+26, 180427, 0, 47, 1885, '0', 0, 0, -27.2326393127441406, -2806.923583984375, 135.824066162109375, 0.802850961685180664, 0, 0, 0.390730857849121093, 0.920504987239837646, 120, 255, 1, 51886), -- Bat02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+27, 180427, 0, 47, 1885, '0', 0, 0, -25.28125, -2811.357666015625, 140.7371368408203125, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 120, 255, 1, 51886), -- Bat02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+28, 180427, 0, 47, 1885, '0', 0, 0, -30.9583339691162109, -2812.34375, 138.4758758544921875, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106, 120, 255, 1, 51886), -- Bat02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+29, 180471, 0, 47, 1885, '0', 0, 0, -18.4774303436279296, -2793.828125, 125.5235366821289062, 1.815141916275024414, 0, 0, 0.788010597229003906, 0.615661680698394775, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+30, 180471, 0, 47, 1885, '0', 0, 0, -23.6267356872558593, -2790.607666015625, 125.6942291259765625, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+31, 180471, 0, 47, 1885, '0', 0, 0, -26.8559036254882812, -2795.798583984375, 125.6960830688476562, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+32, 180471, 0, 47, 1885, '0', 0, 0, -30.8177089691162109, -2798.545166015625, 130.7800140380859375, 1.797688722610473632, 0, 0, 0.7826080322265625, 0.622514784336090087, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+33, 180471, 0, 47, 1885, '0', 0, 0, -21.7100696563720703, -2798.944580078125, 125.707550048828125, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+34, 180471, 0, 47, 1885, '0', 0, 0, -37.515625, -2805.41845703125, 130.8957366943359375, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+35, 180472, 0, 47, 1885, '0', 0, 0, -33.1701393127441406, -2802.90966796875, 130.7775115966796875, 5.462882041931152343, 0, 0, -0.39874839782714843, 0.917060375213623046, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+36, 180523, 0, 47, 1885, '0', 0, 0, -24.3368053436279296, -2801.001708984375, 121.9005508422851562, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, 120, 255, 1, 51886), -- Apple Bob (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+37, 208069, 0, 47, 1885, '0', 0, 0, -4.63020849227905273, -2806.642333984375, 125.6697769165039062, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023, 120, 255, 1, 51886), -- G_Pumpkin_02 Scale 0.5 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+38, 208072, 0, 47, 1885, '0', 0, 0, -5.28645849227905273, -2805.967041015625, 127.6161422729492187, 4.939284324645996093, 0, 0, -0.6225137710571289, 0.78260880708694458, 120, 255, 1, 51886), -- G_Pumpkin_03 Scale 0.5 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+39, 208078, 0, 47, 1885, '0', 0, 0, -5.20833349227905273, -2807.755126953125, 127.3490371704101562, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 120, 255, 1, 51886), -- G_Pumpkin_01 scale 0.5 (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1
(@OGUID+40, 208148, 0, 47, 1885, '0', 0, 0, -18.5954856872558593, -2799.447998046875, 121.9956588745117187, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 120, 255, 1, 51886); -- Candy Bucket (Area: Hiri'watha Research Station - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+40;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40);