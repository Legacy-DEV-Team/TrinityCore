SET @CGUID := 9800101;
SET @OGUID := 9804500;
SET @POOL := 5705;
SET @EVENT := 9;

-- Gameobject templates
DELETE FROM `gameobject_template` WHERE `entry` IN (415724 /*Noblegarden Hanging Wreath 0.5 [DNT]*/, 415073 /*Noblegarden Streamers - Large Hanging [DNT]*/, 415072 /*Noblegarden Streamers - Small Hanging [DNT]*/, 415060 /*Noblegarden Candle - Blue [DNT]*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(415724, 5, 86405, 'Noblegarden Hanging Wreath 0.5 [DNT]', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53989), -- Noblegarden Hanging Wreath 0.5 [DNT]
(415073, 5, 86403, 'Noblegarden Streamers - Large Hanging [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53989), -- Noblegarden Streamers - Large Hanging [DNT]
(415072, 5, 86402, 'Noblegarden Streamers - Small Hanging [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53989), -- Noblegarden Streamers - Small Hanging [DNT]
(415060, 5, 86396, 'Noblegarden Candle - Blue [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53989); -- Noblegarden Candle - Blue [DNT]

-- Creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curHealthPct`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 32798, 0, 85, 159, '0', 0, 0, 0, 0, 2233.68408203125, 264.579864501953125, 33.57424545288085937, 3.584307432174682617, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, 53989), -- Spring Gatherer (Area: Brill - Difficulty: 0) CreateObject1
(@CGUID+1, 32837, 0, 85, 159, '0', 0, 0, 0, 1, 2232.520751953125, 266.170135498046875, 33.52007675170898437, 4.237258434295654296, 120, 0, 0, 100, 0, NULL, NULL, NULL, NULL, 53989); -- Noblegarden Merchant (Area: Brill - Difficulty: 0) CreateObject1

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+97;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 113770, 0, 85, 159, '0', 0, 0, 2200.06591796875, 286.6475830078125, 39.90793991088867187, 0.099453896284103393, 0, 0, 0.049706459045410156, 0.998763859272003173, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+1, 113771, 0, 85, 159, '0', 0, 0, 2216.580078125, 270.954986572265625, 33.5885009765625, 2.251473426818847656, 0, 0, 0.902585029602050781, 0.430511653423309326, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+2, 113771, 0, 85, 159, '0', 0, 0, 2218.340087890625, 326.714996337890625, 33.57400131225585937, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+3, 113770, 0, 85, 159, '0', 0, 0, 2224.3701171875, 318.531005859375, 33.573699951171875, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+4, 113771, 0, 85, 159, '0', 0, 0, 2225.169921875, 291.09698486328125, 36.64530181884765625, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+5, 113769, 0, 85, 159, '0', 0, 0, 2225.4599609375, 243.240997314453125, 33.57440185546875, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+6, 113771, 0, 85, 159, '0', 0, 0, 2226.22998046875, 332.584991455078125, 33.57360076904296875, 3.78736734390258789, 0, 0, -0.94832324981689453, 0.317305892705917358, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+7, 113769, 0, 85, 159, '0', 0, 0, 2226.35009765625, 313.22601318359375, 33.57469940185546875, 3.22885894775390625, 0, 0, -0.99904823303222656, 0.043619260191917419, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+8, 113771, 0, 85, 159, '0', 0, 0, 2229.449951171875, 222.8040008544921875, 33.58140182495117187, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+9, 113771, 0, 85, 159, '0', 0, 0, 2229.64990234375, 295.531005859375, 36.52610015869140625, 0.925023794174194335, 0, 0, 0.446197509765625, 0.894934535026550292, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+10, 113770, 0, 85, 159, '0', 0, 0, 2232.6298828125, 236.4579925537109375, 33.5959014892578125, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+11, 113768, 0, 85, 159, '0', 0, 0, 2233.2900390625, 339.730987548828125, 33.57360076904296875, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+12, 113769, 0, 85, 159, '0', 0, 0, 2233.590087890625, 305.42401123046875, 35.49129867553710937, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+13, 113768, 0, 85, 159, '0', 0, 0, 2234.723876953125, 244.64410400390625, 33.57365036010742187, 1.444589138031005859, 0, 0, 0.661108016967773437, 0.750290751457214355, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+14, 113769, 0, 85, 159, '0', 0, 0, 2234.919921875, 256.678985595703125, 38.50370025634765625, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+15, 113769, 0, 85, 159, '0', 0, 0, 2236.6806640625, 263.482635498046875, 33.44508743286132812, 1.444589138031005859, 0, 0, 0.661108016967773437, 0.750290751457214355, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+16, 113770, 0, 85, 159, '0', 0, 0, 2237.81005859375, 239.4969940185546875, 33.65549850463867187, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+17, 113770, 0, 85, 159, '0', 0, 0, 2238.31005859375, 302.87200927734375, 33.632598876953125, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+18, 113770, 0, 85, 159, '0', 0, 0, 2238.550048828125, 271.907989501953125, 35.32059860229492187, 2.059488296508789062, 0, 0, 0.857167243957519531, 0.515038192272186279, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+19, 113770, 0, 85, 159, '0', 0, 0, 2241.2900390625, 266.7449951171875, 35.32049942016601562, 5.201082706451416015, 0, 0, -0.51503753662109375, 0.857167601585388183, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+20, 113769, 0, 85, 159, '0', 0, 0, 2243.25, 255.1649932861328125, 38.505401611328125, 5.148722648620605468, 0, 0, -0.53729915618896484, 0.843391716480255126, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+21, 113771, 0, 85, 159, '0', 0, 0, 2243.510009765625, 302.970001220703125, 39.810699462890625, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+22, 113770, 0, 85, 159, '0', 0, 0, 2245.090087890625, 242.5780029296875, 33.68539810180664062, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+23, 113770, 0, 85, 159, '0', 0, 0, 2246.860107421875, 246.3419952392578125, 33.69150161743164062, 1.727874636650085449, 0, 0, 0.760405540466308593, 0.649448513984680175, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+24, 113769, 0, 85, 159, '0', 0, 0, 2247.389892578125, 220.113006591796875, 33.574798583984375, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+25, 113770, 0, 85, 159, '0', 0, 0, 2248.10009765625, 307.697998046875, 36.00139999389648437, 2.042035102844238281, 0, 0, 0.852640151977539062, 0.522498607635498046, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+26, 113769, 0, 85, 159, '0', 0, 0, 2248.5, 297.636993408203125, 34.5998992919921875, 0.471238493919372558, 0, 0, 0.233445167541503906, 0.972369968891143798, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+27, 113769, 0, 85, 159, '0', 0, 0, 2249.68994140625, 337.790008544921875, 39.80630111694335937, 0.942476630210876464, 0, 0, 0.453989982604980468, 0.891006767749786376, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+28, 113768, 0, 85, 159, '0', 0, 0, 2249.820068359375, 330.875, 36.35770034790039062, 4.101525306701660156, 0, 0, -0.88701057434082031, 0.461749136447906494, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+29, 113769, 0, 85, 159, '0', 0, 0, 2253.6298828125, 308.60198974609375, 33.69060134887695312, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+30, 113768, 0, 85, 159, '0', 0, 0, 2254.010009765625, 318.489990234375, 33.69060134887695312, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+31, 113770, 0, 85, 159, '0', 0, 0, 2255.820068359375, 299.696014404296875, 38.559600830078125, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+32, 113769, 0, 85, 159, '0', 0, 0, 2256.340087890625, 324.12799072265625, 33.65000152587890625, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+33, 113768, 0, 85, 159, '0', 0, 0, 2258.0400390625, 328.014007568359375, 33.57960128784179687, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+34, 113771, 0, 85, 159, '0', 0, 0, 2258.820068359375, 331.14898681640625, 33.59650039672851562, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+35, 113771, 0, 85, 159, '0', 0, 0, 2259.8701171875, 266.459991455078125, 33.68849945068359375, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+36, 113768, 0, 85, 159, '0', 0, 0, 2259.89990234375, 269.25201416015625, 38.457000732421875, 5.375615119934082031, 0, 0, -0.4383707046508789, 0.898794233798980712, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+37, 113771, 0, 85, 159, '0', 0, 0, 2261.090087890625, 269.993011474609375, 35.17490005493164062, 0.959929943084716796, 0, 0, 0.461748123168945312, 0.887011110782623291, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+38, 113768, 0, 85, 159, '0', 0, 0, 2261.580078125, 343.506988525390625, 33.57379913330078125, 5.969027042388916015, 0, 0, -0.1564340591430664, 0.987688362598419189, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+39, 113770, 0, 85, 159, '0', 0, 0, 2264.22998046875, 281.4219970703125, 38.56010055541992187, 1.902408957481384277, 0, 0, 0.814115524291992187, 0.580702960491180419, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+40, 113768, 0, 85, 159, '0', 0, 0, 2264.679931640625, 324.295013427734375, 37.55250167846679687, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+41, 113769, 0, 85, 159, '0', 0, 0, 2265.159912109375, 347.70001220703125, 33.57709884643554687, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+42, 113770, 0, 85, 159, '0', 0, 0, 2266.989990234375, 325.785003662109375, 34.81570053100585937, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+43, 113768, 0, 85, 159, '0', 0, 0, 2267.31005859375, 320.264007568359375, 38.44390106201171875, 6.213373661041259765, 0, 0, -0.03489875793457031, 0.999390840530395507, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+44, 113771, 0, 85, 159, '0', 0, 0, 2268.260009765625, 233.5850067138671875, 33.69060134887695312, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+45, 113768, 0, 85, 159, '0', 0, 0, 2268.929931640625, 292.09698486328125, 38.55830001831054687, 1.012289404869079589, 0, 0, 0.484808921813964843, 0.87462007999420166, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+46, 113770, 0, 85, 159, '0', 0, 0, 2271.909912109375, 277.436004638671875, 33.69060134887695312, 4.520402908325195312, 0, 0, -0.77162456512451171, 0.636078238487243652, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+47, 113769, 0, 85, 159, '0', 0, 0, 2274.489990234375, 220.389007568359375, 33.70220184326171875, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+48, 113769, 0, 85, 159, '0', 0, 0, 2275.2099609375, 270.79998779296875, 39.8291015625, 5.288348197937011718, 0, 0, -0.4771585464477539, 0.878817260265350341, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+49, 113771, 0, 85, 159, '0', 0, 0, 2275.75, 288.2969970703125, 35.8842010498046875, 5.777040958404541015, 0, 0, -0.25037956237792968, 0.968147754669189453, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+50, 113770, 0, 85, 159, '0', 0, 0, 2275.760009765625, 271.389007568359375, 33.6885986328125, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+51, 113770, 0, 85, 159, '0', 0, 0, 2276.2119140625, 291.703125, 33.68943023681640625, 0.099453896284103393, 0, 0, 0.049706459045410156, 0.998763859272003173, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+52, 113769, 0, 85, 159, '0', 0, 0, 2279.320068359375, 253.457000732421875, 34.59640121459960937, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+53, 113768, 0, 85, 159, '0', 0, 0, 2280.1201171875, 226.9239959716796875, 33.9468994140625, 2.426007747650146484, 0, 0, 0.936672210693359375, 0.350207358598709106, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+54, 113771, 0, 85, 159, '0', 0, 0, 2280.550048828125, 264.85198974609375, 34.1277008056640625, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+55, 113768, 0, 85, 159, '0', 0, 0, 2284.689208984375, 299.743072509765625, 36.90770339965820312, 4.642575740814208984, 0, 0, -0.731353759765625, 0.681998312473297119, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+56, 113768, 0, 85, 159, '0', 0, 0, 2292.93994140625, 295.52099609375, 33.527801513671875, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+57, 113768, 0, 85, 159, '0', 0, 0, 2294.5400390625, 256.571014404296875, 38.93349838256835937, 5.480334281921386718, 0, 0, -0.39073085784912109, 0.920504987239837646, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+58, 113771, 0, 85, 159, '0', 0, 0, 2299.3701171875, 253.6999969482421875, 33.57519912719726562, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+59, 113771, 0, 85, 159, '0', 0, 0, 2304.449951171875, 263.511993408203125, 38.83810043334960937, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+60, 113771, 0, 85, 159, '0', 0, 0, 2304.580078125, 303.792999267578125, 38.9337005615234375, 4.747295856475830078, 0, 0, -0.69465827941894531, 0.719339847564697265, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+61, 113770, 0, 85, 159, '0', 0, 0, 2304.820068359375, 258.35101318359375, 36.22169876098632812, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject2
(@OGUID+62, 113769, 0, 85, 159, '0', 0, 0, 2313.300048828125, 298.292999267578125, 36.31480026245117187, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+63, 113769, 0, 85, 159, '0', 0, 0, 2327.669921875, 271.490997314453125, 33.76340103149414062, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+64, 113769, 0, 85, 159, '0', 0, 0, 2336.860107421875, 269.738006591796875, 34.220001220703125, 3.560472726821899414, 0, 0, -0.97814750671386718, 0.207912087440490722, 300, 255, 1, 53989), -- Brightly Colored Egg (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+65, 415057, 0, 85, 159, '0', 0, 0, 2314.345458984375, 239.814239501953125, 31.21323394775390625, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Banner - Single Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+66, 415057, 0, 85, 159, '0', 0, 0, 2313.765625, 218.921875, 31.84782600402832031, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Banner - Single Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+67, 415057, 0, 85, 159, '0', 0, 0, 2285.68408203125, 418.015625, 34.01450347900390625, 1.692954897880554199, 0, 0, 0.748950958251953125, 0.662625432014465332, 120, 255, 1, 53989), -- Noblegarden Banner - Single Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+68, 415057, 0, 85, 159, '0', 0, 0, 2272.71533203125, 415.5, 33.91143798828125, 1.625529170036315917, 0, 0, 0.726190567016601562, 0.687493443489074707, 120, 255, 1, 53989), -- Noblegarden Banner - Single Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+69, 415058, 0, 85, 159, '0', 0, 0, 2233.755126953125, 265.845489501953125, 33.12548446655273437, 3.740759134292602539, 0, 0, -0.9554595947265625, 0.295121997594833374, 120, 255, 1, 53989), -- Noblegarden Banner - Double Post [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+70, 415060, 0, 85, 159, '0', 0, 0, 2275.70654296875, 269.729156494140625, 34.67569732666015625, 6.278814315795898437, 0.012763023376464843, -0.01806640625, -0.0019540786743164, 0.999753415584564208, 120, 255, 1, 53989), -- Noblegarden Candle - Blue [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+71, 415060, 0, 85, 159, '0', 0, 0, 2316.48095703125, 272.380218505859375, 48.72955322265625, 6.251262664794921875, -0.00016260147094726, -0.01327800750732421, -0.01595878601074218, 0.999784469604492187, 120, 255, 1, 53989), -- Noblegarden Candle - Blue [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+72, 415060, 0, 85, 159, '0', 0, 0, 2313.545166015625, 268.854156494140625, 23.89660072326660156, 6.251262664794921875, -0.00016260147094726, -0.01327800750732421, -0.01595878601074218, 0.999784469604492187, 120, 255, 1, 53989), -- Noblegarden Candle - Blue [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+73, 415060, 0, 85, 159, '0', 0, 0, 2323.94091796875, 281.842010498046875, 24.02024650573730468, 6.251262664794921875, -0.00016260147094726, -0.01327800750732421, -0.01595878601074218, 0.999784469604492187, 120, 255, 1, 53989), -- Noblegarden Candle - Blue [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+74, 415066, 0, 85, 159, '0', 0, 0, 2273.520751953125, 272.579864501953125, 36.80141067504882812, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Candle - Pink [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+75, 415066, 0, 85, 159, '0', 0, 0, 2295.166748046875, 267.354156494140625, 34.37846755981445312, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Candle - Pink [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+76, 415066, 0, 85, 159, '0', 0, 0, 2318.342041015625, 279.984375, 48.88999176025390625, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Candle - Pink [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+77, 415067, 0, 85, 159, '0', 0, 0, 2200.892333984375, 286.977447509765625, 39.64017486572265625, 0.070040896534919738, -0.00211286544799804, 0.101741790771484375, 0.0346832275390625, 0.994203805923461914, 120, 255, 1, 53989), -- Noblegarden Crate - Closed [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+78, 415067, 0, 85, 159, '0', 0, 0, 2199.060791015625, 285.244781494140625, 39.93814849853515625, 0.607910335063934326, 0, 0, 0.299296379089355468, 0.954160213470458984, 120, 255, 1, 53989), -- Noblegarden Crate - Closed [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+79, 415067, 0, 85, 159, '0', 0, 0, 2275.314208984375, 291.39410400390625, 33.6905364990234375, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Crate - Closed [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+80, 415069, 0, 85, 159, '0', 0, 0, 2236.7587890625, 263.461822509765625, 33.44726943969726562, 5.274363994598388671, 0, 0, -0.4832916259765625, 0.87545943260192871, 120, 255, 1, 53989), -- Noblegarden Crate - Open [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+81, 415070, 0, 85, 159, '0', 0, 0, 2270.8056640625, 277.557281494140625, 35.35729598999023437, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Flower Vase [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+82, 415070, 0, 85, 159, '0', 0, 0, 2300.140625, 261.4444580078125, 34.71903228759765625, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Flower Vase [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+83, 415070, 0, 85, 159, '0', 0, 0, 2318.552001953125, 275.789947509765625, 46.18410110473632812, 0, 0, 0, 0, 1, 120, 255, 1, 53989), -- Noblegarden Flower Vase [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+84, 415072, 0, 85, 159, '0', 0, 0, 2239.861083984375, 244.9600677490234375, 42.72079849243164062, 1.960405468940734863, 0, 0, 0.830610275268554687, 0.556854128837585449, 120, 255, 1, 53989), -- Noblegarden Streamers - Small Hanging [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+85, 415072, 0, 85, 159, '0', 0, 0, 2255.310791015625, 313.795135498046875, 41.12495040893554687, 2.621130228042602539, 0, 0, 0.966330528259277343, 0.257303953170776367, 120, 255, 1, 53989), -- Noblegarden Streamers - Small Hanging [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+86, 415073, 0, 85, 159, '0', 0, 0, 2270.74658203125, 285.84375, 48.04613113403320312, 6.073506355285644531, 0, 0, -0.10464763641357421, 0.994509398937225341, 120, 255, 1, 53989), -- Noblegarden Streamers - Large Hanging [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+87, 415073, 0, 85, 159, '0', 0, 0, 2288.25341796875, 257.817718505859375, 59.59684371948242187, 4.136396408081054687, 0, 0, -0.87882518768310546, 0.477143913507461547, 120, 255, 1, 53989), -- Noblegarden Streamers - Large Hanging [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+88, 415073, 0, 85, 159, '0', 0, 0, 2300.77783203125, 255.1944427490234375, 59.74460220336914062, 4.902821063995361328, 0, 0, -0.63667774200439453, 0.771129965782165527, 120, 255, 1, 53989), -- Noblegarden Streamers - Large Hanging [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+89, 415074, 0, 85, 159, '0', 0, 0, 2234.76904296875, 244.4114532470703125, 33.57362747192382812, 1.0846940279006958, 0, 0, 0.516147613525390625, 0.856499671936035156, 120, 255, 1, 53989), -- Noblegarden Wreath Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+90, 415074, 0, 85, 159, '0', 0, 0, 2255.932373046875, 306.529510498046875, 33.69062042236328125, 0.034204240888357162, 0, 0, 0.017101287841796875, 0.999853730201721191, 120, 255, 1, 53989), -- Noblegarden Wreath Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+91, 415074, 0, 85, 159, '0', 0, 0, 2259.2587890625, 273.69964599609375, 33.69063186645507812, 1.822601199150085449, 0, 0, 0.790301322937011718, 0.612718403339385986, 120, 255, 1, 53989), -- Noblegarden Wreath Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+92, 415074, 0, 85, 159, '0', 0, 0, 2261.06591796875, 320.62152099609375, 33.61124038696289062, 0.021166242659091949, 0, 0, 0.010582923889160156, 0.999943971633911132, 120, 255, 1, 53989), -- Noblegarden Wreath Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+93, 415074, 0, 85, 159, '0', 0, 0, 2263.307373046875, 334.0694580078125, 33.57361221313476562, 5.705726146697998046, 0, 0, -0.28473472595214843, 0.958606362342834472, 120, 255, 1, 53989), -- Noblegarden Wreath Standing [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+94, 415075, 0, 85, 159, '0', 0, 0, 2217.697998046875, 269.84027099609375, 35.90684890747070312, 5.461043357849121093, 0, 0, -0.39959144592285156, 0.916693329811096191, 120, 255, 1, 53989), -- Noblegarden Hanging Wreath 0.1 [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+95, 415075, 0, 85, 159, '0', 0, 0, 2245.770751953125, 223.9583282470703125, 36.74085235595703125, 1.970075488090515136, 0, 0, 0.833292961120605468, 0.552831649780273437, 120, 255, 1, 53989), -- Noblegarden Hanging Wreath 0.1 [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+96, 415075, 0, 85, 159, '0', 0, 0, 2306.795166015625, 278.62152099609375, 33.53081893920898437, 2.884984254837036132, 0, 0, 0.991780281066894531, 0.127952516078948974, 120, 255, 1, 53989), -- Noblegarden Hanging Wreath 0.1 [DNT] (Area: Brill - Difficulty: 0) CreateObject1
(@OGUID+97, 415724, 0, 85, 159, '0', 0, 0, 2294.07470703125, 254.9340362548828125, 49.124786376953125, 4.354984283447265625, 0.040994167327880859, -0.01206493377685546, -0.82129478454589843, 0.568901360034942626, 120, 255, 1, 53989); -- Noblegarden Hanging Wreath 0.5 [DNT] (Area: Brill - Difficulty: 0) CreateObject1

DELETE FROM `pool_members` WHERE `type`=1 AND `spawnId` BETWEEN @OGUID+0 AND @OGUID+64;
INSERT INTO `pool_members` (`type`, `spawnId`, `poolSpawnId`, `chance`, `description`) VALUES
(1, @OGUID+0, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+1, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+2, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+3, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+4, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+5, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+6, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+7, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+8, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+9, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+10, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+11, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+12, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+13, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+14, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+15, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+16, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+17, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+18, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+19, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+20, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+21, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+22, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+23, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+24, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+25, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+26, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+27, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+28, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+29, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+30, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+31, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+32, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+33, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+34, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+35, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+36, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+37, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+38, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+39, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+40, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+41, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+42, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+43, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+44, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+45, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+46, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+47, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+48, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+49, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+50, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+51, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+52, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+53, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+54, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+55, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+56, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+57, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+58, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+59, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+60, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+61, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+62, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+63, @POOL, 0, 'Noblegarden - Brightly Colored Egg'),
(1, @OGUID+64, @POOL, 0, 'Noblegarden - Brightly Colored Egg');

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @CGUID+0 AND @CGUID+1;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(@EVENT, @CGUID+0),
(@EVENT, @CGUID+1);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID+0 AND @OGUID+97;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@EVENT, @OGUID+65),
(@EVENT, @OGUID+66),
(@EVENT, @OGUID+67),
(@EVENT, @OGUID+68),
(@EVENT, @OGUID+69),
(@EVENT, @OGUID+70),
(@EVENT, @OGUID+71),
(@EVENT, @OGUID+72),
(@EVENT, @OGUID+73),
(@EVENT, @OGUID+74),
(@EVENT, @OGUID+75),
(@EVENT, @OGUID+76),
(@EVENT, @OGUID+77),
(@EVENT, @OGUID+78),
(@EVENT, @OGUID+79),
(@EVENT, @OGUID+80),
(@EVENT, @OGUID+81),
(@EVENT, @OGUID+82),
(@EVENT, @OGUID+83),
(@EVENT, @OGUID+84),
(@EVENT, @OGUID+85),
(@EVENT, @OGUID+86),
(@EVENT, @OGUID+87),
(@EVENT, @OGUID+88),
(@EVENT, @OGUID+89),
(@EVENT, @OGUID+90),
(@EVENT, @OGUID+91),
(@EVENT, @OGUID+92),
(@EVENT, @OGUID+93),
(@EVENT, @OGUID+94),
(@EVENT, @OGUID+95),
(@EVENT, @OGUID+96),
(@EVENT, @OGUID+97);