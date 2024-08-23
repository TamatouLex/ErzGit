// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1000000; // objWorld
global.__objectDepths[1] = 0; // objCamera
global.__objectDepths[2] = 0; // objSmoothCamera
global.__objectDepths[3] = 0; // objPlayMusic
global.__objectDepths[4] = 0; // objTitleMenu
global.__objectDepths[5] = 0; // objDifficultyMenu
global.__objectDepths[6] = 0; // objOptionsMenu
global.__objectDepths[7] = 0; // objKeyboardControlsMenu
global.__objectDepths[8] = 0; // objControllerMenu
global.__objectDepths[9] = -10; // objPlayerStart
global.__objectDepths[10] = -10; // objPlayer
global.__objectDepths[11] = -10; // obj7735
global.__objectDepths[12] = -10; // obj7735climb
global.__objectDepths[13] = -99; // ladder
global.__objectDepths[14] = -10; // kidle
global.__objectDepths[15] = -12; // lidle
global.__objectDepths[16] = -10; // kshoot
global.__objectDepths[17] = -11; // krun
global.__objectDepths[18] = -6; // kMinecart
global.__objectDepths[19] = -12; // lrun
global.__objectDepths[20] = -10; // climb
global.__objectDepths[21] = -10; // kump
global.__objectDepths[22] = -12; // lump
global.__objectDepths[23] = -10; // kall
global.__objectDepths[24] = -12; // lall
global.__objectDepths[25] = -10; // land
global.__objectDepths[26] = -11; // objBow
global.__objectDepths[27] = -20; // eyesneut
global.__objectDepths[28] = -30; // mundneut
global.__objectDepths[29] = -1; // objBullet
global.__objectDepths[30] = 0; // objBloodEmitter
global.__objectDepths[31] = -10; // objBlood
global.__objectDepths[32] = -100; // objGameOver
global.__objectDepths[33] = -101; // objBlock
global.__objectDepths[34] = 100; // objMiniBlock
global.__objectDepths[35] = 100; // objSlipBlock
global.__objectDepths[36] = 2000000; // objBlockInvis
global.__objectDepths[37] = 0; // objBlockFake
global.__objectDepths[38] = 100; // objSlideBlock
global.__objectDepths[39] = 100; // objSlideBlockL
global.__objectDepths[40] = 100; // objSlideBlockR
global.__objectDepths[41] = 1; // objBossBlock
global.__objectDepths[42] = 0; // objSaveBlocker
global.__objectDepths[43] = 100; // objSlope
global.__objectDepths[44] = 100; // objSlopeDownLeft
global.__objectDepths[45] = 100; // objSlopeDownRight
global.__objectDepths[46] = 100; // objSlopeUpLeft
global.__objectDepths[47] = 100; // objSlopeUpRight
global.__objectDepths[48] = 1; // objPlatform
global.__objectDepths[49] = 1; // objMovingPlatform
global.__objectDepths[50] = 1; // objMovingPlatformNoBounce
global.__objectDepths[51] = 1; // objBlockRise
global.__objectDepths[52] = 1; // objBlockFall
global.__objectDepths[53] = 0; // objPlayerKiller
global.__objectDepths[54] = 10; // objSpikeUp
global.__objectDepths[55] = 10; // objSpikeRight
global.__objectDepths[56] = 10; // objSpikeLeft
global.__objectDepths[57] = 10; // objSpikeDown
global.__objectDepths[58] = 10; // objMiniUp
global.__objectDepths[59] = 10; // objMiniRight
global.__objectDepths[60] = 10; // objMiniLeft
global.__objectDepths[61] = 10; // objMiniDown
global.__objectDepths[62] = 0; // objCherry
global.__objectDepths[63] = 0; // objCherryBounce
global.__objectDepths[64] = 0; // objCherryBounceRandom
global.__objectDepths[65] = 0; // objCherryBounceLat
global.__objectDepths[66] = 0; // objCherryBounceVert
global.__objectDepths[67] = 0; // objKillerBlock
global.__objectDepths[68] = 0; // objCherryEnemyTest
global.__objectDepths[69] = 0; // objCherryBossTest
global.__objectDepths[70] = 10; // objMiku
global.__objectDepths[71] = 0; // objCherryRandomCol
global.__objectDepths[72] = 0; // objCherryRandomColExplode
global.__objectDepths[73] = 0; // objCherryRandomColBounce
global.__objectDepths[74] = 0; // objFreeTrigger
global.__objectDepths[75] = 0; // objTriggerButton
global.__objectDepths[76] = 0; // objKillerTrigger
global.__objectDepths[77] = 10; // objSpikeTriggerUp
global.__objectDepths[78] = 10; // objSpikeTriggerRight
global.__objectDepths[79] = 10; // objSpikeTriggerLeft
global.__objectDepths[80] = 10; // objSpikeTriggerDown
global.__objectDepths[81] = 0; // objCherryTrigger
global.__objectDepths[82] = -50; // objWater
global.__objectDepths[83] = -50; // objWater2
global.__objectDepths[84] = -50; // objWater3
global.__objectDepths[85] = 11; // objWalljumpR
global.__objectDepths[86] = 11; // objWalljumpL
global.__objectDepths[87] = 0; // objJumpRefresher
global.__objectDepths[88] = 10; // objSign
global.__objectDepths[89] = 0; // objGravityUp
global.__objectDepths[90] = 0; // objGravityDown
global.__objectDepths[91] = 1; // objSaveMedium
global.__objectDepths[92] = 1; // objSave
global.__objectDepths[93] = 1; // objSaveVHard
global.__objectDepths[94] = 1; // objSaveMediumFlip
global.__objectDepths[95] = 1; // objSaveFlip
global.__objectDepths[96] = 1; // objSaveVHardFlip
global.__objectDepths[97] = 0; // objWarpStart
global.__objectDepths[98] = 10; // objRoomChanger
global.__objectDepths[99] = 0; // objWarp
global.__objectDepths[100] = 0; // objWarpNext
global.__objectDepths[101] = 0; // objWarpAutosaveNext
global.__objectDepths[102] = 10; // objOutsideRoomChanger
global.__objectDepths[103] = 0; // objSecretItem
global.__objectDepths[104] = 0; // objSecretIndicator
global.__objectDepths[105] = 0; // objBossItem
global.__objectDepths[106] = 0; // objBossIndicator
global.__objectDepths[107] = 0; // objGameClear
global.__objectDepths[108] = -999; // ladderheight
global.__objectDepths[109] = -999; // debugtext
global.__objectDepths[110] = 0; // camera
global.__objectDepths[111] = 5; // cameraflag
global.__objectDepths[112] = 0; // flash
global.__objectDepths[113] = 0; // screenShake
global.__objectDepths[114] = -999; // convo1
global.__objectDepths[115] = -999; // conpaddy
global.__objectDepths[116] = -999; // conBangFirst
global.__objectDepths[117] = -999; // conBangSecond
global.__objectDepths[118] = -999; // conBangTNT
global.__objectDepths[119] = -999; // conBangTNTEscape
global.__objectDepths[120] = -999; // conBangPostTNT
global.__objectDepths[121] = -999; // conBangFlogRein
global.__objectDepths[122] = -999; // conArielleSewer
global.__objectDepths[123] = -999; // conPandy
global.__objectDepths[124] = 0; // dialogbox
global.__objectDepths[125] = -200; // objarial
global.__objectDepths[126] = -200; // objchoicetext
global.__objectDepths[127] = -200; // objeventstext
global.__objectDepths[128] = -200; // objdesctext
global.__objectDepths[129] = -200; // objneweventtext
global.__objectDepths[130] = 10; // diatestchara1
global.__objectDepths[131] = 10; // diatestchara2
global.__objectDepths[132] = 99999999; // dialogblackness
global.__objectDepths[133] = 0; // dialogtrigger
global.__objectDepths[134] = 0; // hplattest
global.__objectDepths[135] = -30; // stone
global.__objectDepths[136] = -30; // knife
global.__objectDepths[137] = 0; // stonesplitter
global.__objectDepths[138] = -2000000; // lizard
global.__objectDepths[139] = -10; // lizardspurnase
global.__objectDepths[140] = -2000000; // clownbot
global.__objectDepths[141] = -10; // clownspurnase
global.__objectDepths[142] = -10; // plant
global.__objectDepths[143] = -2000; // cursorevents
global.__objectDepths[144] = -20; // bevent1
global.__objectDepths[145] = -20; // event1
global.__objectDepths[146] = -20; // eventcount
global.__objectDepths[147] = -9999; // eventmaster
global.__objectDepths[148] = 0; // newevent
global.__objectDepths[149] = 0; // clearevent
global.__objectDepths[150] = -1; // stoneitem
global.__objectDepths[151] = -1; // knifeitem
global.__objectDepths[152] = 0; // dummyitem
global.__objectDepths[153] = 0; // dummyitem2
global.__objectDepths[154] = -20; // cursor
global.__objectDepths[155] = -10; // obj7735inv
global.__objectDepths[156] = -50; // equipweapon
global.__objectDepths[157] = 0; // pausescreen
global.__objectDepths[158] = 0; // saved
global.__objectDepths[159] = -20; // saveboxdach
global.__objectDepths[160] = -20; // saveboxlinke
global.__objectDepths[161] = -20; // saveboxrechte
global.__objectDepths[162] = -20; // saveboxboden
global.__objectDepths[163] = 0; // saveslotstats
global.__objectDepths[164] = -2000; // cursorlong
global.__objectDepths[165] = -2000; // cursorsave
global.__objectDepths[166] = 0; // pauseloadsave
global.__objectDepths[167] = 0; // pauseinv
global.__objectDepths[168] = 0; // pauseevents
global.__objectDepths[169] = 0; // pauseoptions
global.__objectDepths[170] = -20; // descboxboden
global.__objectDepths[171] = -20; // descboxrechts
global.__objectDepths[172] = -20; // descboxdach
global.__objectDepths[173] = -20; // descboxlinks
global.__objectDepths[174] = 1215752192; // pauseblackness
global.__objectDepths[175] = 0; // drakken
global.__objectDepths[176] = -9999; // timemaster
global.__objectDepths[177] = 0; // debug
global.__objectDepths[178] = 0; // worldchanger
global.__objectDepths[179] = 0; // windUp
global.__objectDepths[180] = 0; // windRight
global.__objectDepths[181] = 0; // windLeft
global.__objectDepths[182] = 0; // windDown
global.__objectDepths[183] = -6; // BigTNT99
global.__objectDepths[184] = -6; // BigTNT
global.__objectDepths[185] = 0; // TNTCount
global.__objectDepths[186] = 0; // TNTExplosion
global.__objectDepths[187] = -2; // TRButtonHold
global.__objectDepths[188] = 0; // TNTCursor
global.__objectDepths[189] = 0; // TNTBarricade
global.__objectDepths[190] = 0; // TNTBurner
global.__objectDepths[191] = 0; // pistonV
global.__objectDepths[192] = 0; // pistonH
global.__objectDepths[193] = 0; // TNTScreenTarget
global.__objectDepths[194] = -2; // TNTgo
global.__objectDepths[195] = -2; // TNTstop
global.__objectDepths[196] = -2; // downArrow
global.__objectDepths[197] = -2; // leftArrow
global.__objectDepths[198] = -2; // rightArrow
global.__objectDepths[199] = -2; // upArrow
global.__objectDepths[200] = -2; // TNTconfirm
global.__objectDepths[201] = -7; // schubkarre
global.__objectDepths[202] = -8; // minecartIN
global.__objectDepths[203] = -8; // schubkarreWallRay
global.__objectDepths[204] = 0; // schubkarreGrabTrigger
global.__objectDepths[205] = 0; // conveyorBelt
global.__objectDepths[206] = 0; // here
global.__objectDepths[207] = 0; // debuginfo
global.__objectDepths[208] = 0; // mapDrasche
global.__objectDepths[209] = 0; // mapPrater
global.__objectDepths[210] = 0; // mapSpain
global.__objectDepths[211] = 0; // mapTNTRush
global.__objectDepths[212] = 0; // mapReumann
global.__objectDepths[213] = 0; // mapSatzberg
global.__objectDepths[214] = 0; // mapBLBHQ
global.__objectDepths[215] = -10; // map7735Icon
global.__objectDepths[216] = 0; // mapArrow
global.__objectDepths[217] = 0; // BGPlantMaster
global.__objectDepths[218] = 0; // clone7736
global.__objectDepths[219] = 0; // cloneShot
global.__objectDepths[220] = -5; // cloneBigShot
global.__objectDepths[221] = 0; // BGPlant
global.__objectDepths[222] = 0; // explosion
global.__objectDepths[223] = 0; // boRed
global.__objectDepths[224] = 0; // boYellow
global.__objectDepths[225] = 0; // boGreen
global.__objectDepths[226] = 0; // boBlue
global.__objectDepths[227] = 0; // boNavy
global.__objectDepths[228] = 0; // boPurple
global.__objectDepths[229] = -1; // testskew
global.__objectDepths[230] = 0; // bush
global.__objectDepths[231] = 0; // bushmaster
global.__objectDepths[232] = 0; // hilfslinie
global.__objectDepths[233] = 100; // testHQR
global.__objectDepths[234] = 100; // testHQL
global.__objectDepths[235] = 100; // HQWall
global.__objectDepths[236] = 99999; // HQTower
global.__objectDepths[237] = 0; // pandy
global.__objectDepths[238] = 0; // arielleIdle
global.__objectDepths[239] = 0; // bangjet
global.__objectDepths[240] = 0; // SMB2Whale
global.__objectDepths[241] = -1; // SMB2WhaleTail
global.__objectDepths[242] = 0; // upTrigger
global.__objectDepths[243] = 0; // spotlight
global.__objectDepths[244] = 0; // spotlightManager
global.__objectDepths[245] = 0; // zement
global.__objectDepths[246] = 0; // zementDrop
global.__objectDepths[247] = 0; // zementSpawner
global.__objectDepths[248] = 0; // playerShmup
global.__objectDepths[249] = 0; // mm10Target
global.__objectDepths[250] = 0; // shmupFocus
global.__objectDepths[251] = 0; // TutorialTargetManager
global.__objectDepths[252] = 0; // TutMovingBlock
global.__objectDepths[253] = 0; // TutSpawningBlock
global.__objectDepths[254] = 0; // slingshot
global.__objectDepths[255] = 0; // slingshotArm
global.__objectDepths[256] = 0; // levelAnzeige
global.__objectDepths[257] = 0; // wyattManager
global.__objectDepths[258] = 0; // BspikeD
global.__objectDepths[259] = 0; // BspikeU
global.__objectDepths[260] = 0; // BspikeR
global.__objectDepths[261] = 0; // BspikeL
global.__objectDepths[262] = 0; // centerGhostBall
global.__objectDepths[263] = 0; // innerGhostBall
global.__objectDepths[264] = 0; // outerGhostBall
global.__objectDepths[265] = 0; // geist
global.__objectDepths[266] = 0; // geistDeath
global.__objectDepths[267] = 0; // geistGDeath
global.__objectDepths[268] = 0; // ironCrate
global.__objectDepths[269] = 0; // fehlstartManager
global.__objectDepths[270] = 0; // fehlstartBlock
global.__objectDepths[271] = 0; // regenbogenAuto
global.__objectDepths[272] = 0; // mrPeanut
global.__objectDepths[273] = 0; // mrMagoo
global.__objectDepths[274] = 0; // redCar
global.__objectDepths[275] = -1; // traffyRoom
global.__objectDepths[276] = -1; // spyDrone
global.__objectDepths[277] = 0; // spyDroneLight
global.__objectDepths[278] = 0; // silverWarpPipe
global.__objectDepths[279] = 0; // sixTrailsPushBlock
global.__objectDepths[280] = 0; // sixTrailsWall
global.__objectDepths[281] = 0; // trailElevator
global.__objectDepths[282] = 0; // playerLaunched
global.__objectDepths[283] = 0; // pillarMaker
global.__objectDepths[284] = 0; // trackMaster
global.__objectDepths[285] = 0; // trolleyFront
global.__objectDepths[286] = 0; // trolleyFloor
global.__objectDepths[287] = 0; // trolleySchiene
global.__objectDepths[288] = 0; // trolleyHorizon
global.__objectDepths[289] = 0; // trolleyFullHorizon
global.__objectDepths[290] = 0; // gate
global.__objectDepths[291] = 0; // trapdoorCutsceneManager
global.__objectDepths[292] = 0; // movingLightFX
global.__objectDepths[293] = 0; // lightFX
global.__objectDepths[294] = 0; // lightSetup


global.__objectNames[0] = "objWorld";
global.__objectNames[1] = "objCamera";
global.__objectNames[2] = "objSmoothCamera";
global.__objectNames[3] = "objPlayMusic";
global.__objectNames[4] = "objTitleMenu";
global.__objectNames[5] = "objDifficultyMenu";
global.__objectNames[6] = "objOptionsMenu";
global.__objectNames[7] = "objKeyboardControlsMenu";
global.__objectNames[8] = "objControllerMenu";
global.__objectNames[9] = "objPlayerStart";
global.__objectNames[10] = "objPlayer";
global.__objectNames[11] = "obj7735";
global.__objectNames[12] = "obj7735climb";
global.__objectNames[13] = "ladder";
global.__objectNames[14] = "kidle";
global.__objectNames[15] = "lidle";
global.__objectNames[16] = "kshoot";
global.__objectNames[17] = "krun";
global.__objectNames[18] = "kMinecart";
global.__objectNames[19] = "lrun";
global.__objectNames[20] = "climb";
global.__objectNames[21] = "kump";
global.__objectNames[22] = "lump";
global.__objectNames[23] = "kall";
global.__objectNames[24] = "lall";
global.__objectNames[25] = "land";
global.__objectNames[26] = "objBow";
global.__objectNames[27] = "eyesneut";
global.__objectNames[28] = "mundneut";
global.__objectNames[29] = "objBullet";
global.__objectNames[30] = "objBloodEmitter";
global.__objectNames[31] = "objBlood";
global.__objectNames[32] = "objGameOver";
global.__objectNames[33] = "objBlock";
global.__objectNames[34] = "objMiniBlock";
global.__objectNames[35] = "objSlipBlock";
global.__objectNames[36] = "objBlockInvis";
global.__objectNames[37] = "objBlockFake";
global.__objectNames[38] = "objSlideBlock";
global.__objectNames[39] = "objSlideBlockL";
global.__objectNames[40] = "objSlideBlockR";
global.__objectNames[41] = "objBossBlock";
global.__objectNames[42] = "objSaveBlocker";
global.__objectNames[43] = "objSlope";
global.__objectNames[44] = "objSlopeDownLeft";
global.__objectNames[45] = "objSlopeDownRight";
global.__objectNames[46] = "objSlopeUpLeft";
global.__objectNames[47] = "objSlopeUpRight";
global.__objectNames[48] = "objPlatform";
global.__objectNames[49] = "objMovingPlatform";
global.__objectNames[50] = "objMovingPlatformNoBounce";
global.__objectNames[51] = "objBlockRise";
global.__objectNames[52] = "objBlockFall";
global.__objectNames[53] = "objPlayerKiller";
global.__objectNames[54] = "objSpikeUp";
global.__objectNames[55] = "objSpikeRight";
global.__objectNames[56] = "objSpikeLeft";
global.__objectNames[57] = "objSpikeDown";
global.__objectNames[58] = "objMiniUp";
global.__objectNames[59] = "objMiniRight";
global.__objectNames[60] = "objMiniLeft";
global.__objectNames[61] = "objMiniDown";
global.__objectNames[62] = "objCherry";
global.__objectNames[63] = "objCherryBounce";
global.__objectNames[64] = "objCherryBounceRandom";
global.__objectNames[65] = "objCherryBounceLat";
global.__objectNames[66] = "objCherryBounceVert";
global.__objectNames[67] = "objKillerBlock";
global.__objectNames[68] = "objCherryEnemyTest";
global.__objectNames[69] = "objCherryBossTest";
global.__objectNames[70] = "objMiku";
global.__objectNames[71] = "objCherryRandomCol";
global.__objectNames[72] = "objCherryRandomColExplode";
global.__objectNames[73] = "objCherryRandomColBounce";
global.__objectNames[74] = "objFreeTrigger";
global.__objectNames[75] = "objTriggerButton";
global.__objectNames[76] = "objKillerTrigger";
global.__objectNames[77] = "objSpikeTriggerUp";
global.__objectNames[78] = "objSpikeTriggerRight";
global.__objectNames[79] = "objSpikeTriggerLeft";
global.__objectNames[80] = "objSpikeTriggerDown";
global.__objectNames[81] = "objCherryTrigger";
global.__objectNames[82] = "objWater";
global.__objectNames[83] = "objWater2";
global.__objectNames[84] = "objWater3";
global.__objectNames[85] = "objWalljumpR";
global.__objectNames[86] = "objWalljumpL";
global.__objectNames[87] = "objJumpRefresher";
global.__objectNames[88] = "objSign";
global.__objectNames[89] = "objGravityUp";
global.__objectNames[90] = "objGravityDown";
global.__objectNames[91] = "objSaveMedium";
global.__objectNames[92] = "objSave";
global.__objectNames[93] = "objSaveVHard";
global.__objectNames[94] = "objSaveMediumFlip";
global.__objectNames[95] = "objSaveFlip";
global.__objectNames[96] = "objSaveVHardFlip";
global.__objectNames[97] = "objWarpStart";
global.__objectNames[98] = "objRoomChanger";
global.__objectNames[99] = "objWarp";
global.__objectNames[100] = "objWarpNext";
global.__objectNames[101] = "objWarpAutosaveNext";
global.__objectNames[102] = "objOutsideRoomChanger";
global.__objectNames[103] = "objSecretItem";
global.__objectNames[104] = "objSecretIndicator";
global.__objectNames[105] = "objBossItem";
global.__objectNames[106] = "objBossIndicator";
global.__objectNames[107] = "objGameClear";
global.__objectNames[108] = "ladderheight";
global.__objectNames[109] = "debugtext";
global.__objectNames[110] = "camera";
global.__objectNames[111] = "cameraflag";
global.__objectNames[112] = "flash";
global.__objectNames[113] = "screenShake";
global.__objectNames[114] = "convo1";
global.__objectNames[115] = "conpaddy";
global.__objectNames[116] = "conBangFirst";
global.__objectNames[117] = "conBangSecond";
global.__objectNames[118] = "conBangTNT";
global.__objectNames[119] = "conBangTNTEscape";
global.__objectNames[120] = "conBangPostTNT";
global.__objectNames[121] = "conBangFlogRein";
global.__objectNames[122] = "conArielleSewer";
global.__objectNames[123] = "conPandy";
global.__objectNames[124] = "dialogbox";
global.__objectNames[125] = "objarial";
global.__objectNames[126] = "objchoicetext";
global.__objectNames[127] = "objeventstext";
global.__objectNames[128] = "objdesctext";
global.__objectNames[129] = "objneweventtext";
global.__objectNames[130] = "diatestchara1";
global.__objectNames[131] = "diatestchara2";
global.__objectNames[132] = "dialogblackness";
global.__objectNames[133] = "dialogtrigger";
global.__objectNames[134] = "hplattest";
global.__objectNames[135] = "stone";
global.__objectNames[136] = "knife";
global.__objectNames[137] = "stonesplitter";
global.__objectNames[138] = "lizard";
global.__objectNames[139] = "lizardspurnase";
global.__objectNames[140] = "clownbot";
global.__objectNames[141] = "clownspurnase";
global.__objectNames[142] = "plant";
global.__objectNames[143] = "cursorevents";
global.__objectNames[144] = "bevent1";
global.__objectNames[145] = "event1";
global.__objectNames[146] = "eventcount";
global.__objectNames[147] = "eventmaster";
global.__objectNames[148] = "newevent";
global.__objectNames[149] = "clearevent";
global.__objectNames[150] = "stoneitem";
global.__objectNames[151] = "knifeitem";
global.__objectNames[152] = "dummyitem";
global.__objectNames[153] = "dummyitem2";
global.__objectNames[154] = "cursor";
global.__objectNames[155] = "obj7735inv";
global.__objectNames[156] = "equipweapon";
global.__objectNames[157] = "pausescreen";
global.__objectNames[158] = "saved";
global.__objectNames[159] = "saveboxdach";
global.__objectNames[160] = "saveboxlinke";
global.__objectNames[161] = "saveboxrechte";
global.__objectNames[162] = "saveboxboden";
global.__objectNames[163] = "saveslotstats";
global.__objectNames[164] = "cursorlong";
global.__objectNames[165] = "cursorsave";
global.__objectNames[166] = "pauseloadsave";
global.__objectNames[167] = "pauseinv";
global.__objectNames[168] = "pauseevents";
global.__objectNames[169] = "pauseoptions";
global.__objectNames[170] = "descboxboden";
global.__objectNames[171] = "descboxrechts";
global.__objectNames[172] = "descboxdach";
global.__objectNames[173] = "descboxlinks";
global.__objectNames[174] = "pauseblackness";
global.__objectNames[175] = "drakken";
global.__objectNames[176] = "timemaster";
global.__objectNames[177] = "debug";
global.__objectNames[178] = "worldchanger";
global.__objectNames[179] = "windUp";
global.__objectNames[180] = "windRight";
global.__objectNames[181] = "windLeft";
global.__objectNames[182] = "windDown";
global.__objectNames[183] = "BigTNT99";
global.__objectNames[184] = "BigTNT";
global.__objectNames[185] = "TNTCount";
global.__objectNames[186] = "TNTExplosion";
global.__objectNames[187] = "TRButtonHold";
global.__objectNames[188] = "TNTCursor";
global.__objectNames[189] = "TNTBarricade";
global.__objectNames[190] = "TNTBurner";
global.__objectNames[191] = "pistonV";
global.__objectNames[192] = "pistonH";
global.__objectNames[193] = "TNTScreenTarget";
global.__objectNames[194] = "TNTgo";
global.__objectNames[195] = "TNTstop";
global.__objectNames[196] = "downArrow";
global.__objectNames[197] = "leftArrow";
global.__objectNames[198] = "rightArrow";
global.__objectNames[199] = "upArrow";
global.__objectNames[200] = "TNTconfirm";
global.__objectNames[201] = "schubkarre";
global.__objectNames[202] = "minecartIN";
global.__objectNames[203] = "schubkarreWallRay";
global.__objectNames[204] = "schubkarreGrabTrigger";
global.__objectNames[205] = "conveyorBelt";
global.__objectNames[206] = "here";
global.__objectNames[207] = "debuginfo";
global.__objectNames[208] = "mapDrasche";
global.__objectNames[209] = "mapPrater";
global.__objectNames[210] = "mapSpain";
global.__objectNames[211] = "mapTNTRush";
global.__objectNames[212] = "mapReumann";
global.__objectNames[213] = "mapSatzberg";
global.__objectNames[214] = "mapBLBHQ";
global.__objectNames[215] = "map7735Icon";
global.__objectNames[216] = "mapArrow";
global.__objectNames[217] = "BGPlantMaster";
global.__objectNames[218] = "clone7736";
global.__objectNames[219] = "cloneShot";
global.__objectNames[220] = "cloneBigShot";
global.__objectNames[221] = "BGPlant";
global.__objectNames[222] = "explosion";
global.__objectNames[223] = "boRed";
global.__objectNames[224] = "boYellow";
global.__objectNames[225] = "boGreen";
global.__objectNames[226] = "boBlue";
global.__objectNames[227] = "boNavy";
global.__objectNames[228] = "boPurple";
global.__objectNames[229] = "testskew";
global.__objectNames[230] = "bush";
global.__objectNames[231] = "bushmaster";
global.__objectNames[232] = "hilfslinie";
global.__objectNames[233] = "testHQR";
global.__objectNames[234] = "testHQL";
global.__objectNames[235] = "HQWall";
global.__objectNames[236] = "HQTower";
global.__objectNames[237] = "pandy";
global.__objectNames[238] = "arielleIdle";
global.__objectNames[239] = "bangjet";
global.__objectNames[240] = "SMB2Whale";
global.__objectNames[241] = "SMB2WhaleTail";
global.__objectNames[242] = "upTrigger";
global.__objectNames[243] = "spotlight";
global.__objectNames[244] = "spotlightManager";
global.__objectNames[245] = "zement";
global.__objectNames[246] = "zementDrop";
global.__objectNames[247] = "zementSpawner";
global.__objectNames[248] = "playerShmup";
global.__objectNames[249] = "mm10Target";
global.__objectNames[250] = "shmupFocus";
global.__objectNames[251] = "TutorialTargetManager";
global.__objectNames[252] = "TutMovingBlock";
global.__objectNames[253] = "TutSpawningBlock";
global.__objectNames[254] = "slingshot";
global.__objectNames[255] = "slingshotArm";
global.__objectNames[256] = "levelAnzeige";
global.__objectNames[257] = "wyattManager";
global.__objectNames[258] = "BspikeD";
global.__objectNames[259] = "BspikeU";
global.__objectNames[260] = "BspikeR";
global.__objectNames[261] = "BspikeL";
global.__objectNames[262] = "centerGhostBall";
global.__objectNames[263] = "innerGhostBall";
global.__objectNames[264] = "outerGhostBall";
global.__objectNames[265] = "geist";
global.__objectNames[266] = "geistDeath";
global.__objectNames[267] = "geistGDeath";
global.__objectNames[268] = "ironCrate";
global.__objectNames[269] = "fehlstartManager";
global.__objectNames[270] = "fehlstartBlock";
global.__objectNames[271] = "regenbogenAuto";
global.__objectNames[272] = "mrPeanut";
global.__objectNames[273] = "mrMagoo";
global.__objectNames[274] = "redCar";
global.__objectNames[275] = "traffyRoom";
global.__objectNames[276] = "spyDrone";
global.__objectNames[277] = "spyDroneLight";
global.__objectNames[278] = "silverWarpPipe";
global.__objectNames[279] = "sixTrailsPushBlock";
global.__objectNames[280] = "sixTrailsWall";
global.__objectNames[281] = "trailElevator";
global.__objectNames[282] = "playerLaunched";
global.__objectNames[283] = "pillarMaker";
global.__objectNames[284] = "trackMaster";
global.__objectNames[285] = "trolleyFront";
global.__objectNames[286] = "trolleyFloor";
global.__objectNames[287] = "trolleySchiene";
global.__objectNames[288] = "trolleyHorizon";
global.__objectNames[289] = "trolleyFullHorizon";
global.__objectNames[290] = "gate";
global.__objectNames[291] = "trapdoorCutsceneManager";
global.__objectNames[292] = "movingLightFX";
global.__objectNames[293] = "lightFX";
global.__objectNames[294] = "lightSetup";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for