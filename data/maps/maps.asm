MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_CableClub     ;  1
	dw MapGroup_BattleTower   ;  2
	dw MapGroup_NewBark       ;  3
	dw MapGroup_Indigo        ;  4
	dw MapGroup_Brologue      ;  5
	dw MapGroup_BrologueNorth ;  6
	dw MapGroup_Metroid       ;  7
	dw MapGroup_PalAtoll      ;  8
	dw MapGroup_EeveeRanch    ;  9
	dw MapGroup_JungleArea    ; 10
	dw MapGroup_LinksAwakening; 11
	dw MapGroup_IvyRoad       ; 12
	dw MapGroup_Dungeons      ; 13
	assert_table_length NUM_MAP_GROUPS

MapGroup_CableClub:
	table_width MAP_LENGTH, MapGroup_CableClub
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CABLE_CLUB_MAPS

MapGroup_BattleTower:
	table_width MAP_LENGTH, MapGroup_BattleTower
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, LANDMARK_THE_WINDFISH_EGG, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_THE_WINDFISH_EGG, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_THE_WINDFISH_EGG, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_THE_WINDFISH_EGG, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_THE_WINDFISH_EGG, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BATTLE_TOWER_MAPS

MapGroup_NewBark:
	table_width MAP_LENGTH, MapGroup_NewBark
	map NewBarkTown, TILESET_CHUMELAGO, TOWN, LANDMARK_AWAKENING_BEACH, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_AWAKENING_BEACH, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_AWAKENING_BEACH, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_NEW_BARK_MAPS

MapGroup_Indigo:
	table_width MAP_LENGTH, MapGroup_Indigo
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_INDIGO_MAPS

MapGroup_Brologue:
	table_width MAP_LENGTH, MapGroup_Brologue
	map AwakeningBeach, TILESET_CHUMELAGO, ROUTE, LANDMARK_AWAKENING_BEACH, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map AwakeningLab, TILESET_LAB, INDOOR, LANDMARK_AWAKENING_BEACH, MUSIC_LAVENDER_TOWN, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map DrNuggzMDExterior, TILESET_CHUMELAGO, ROUTE, LANDMARK_DR_NUGGZ_MD, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map DrNuggzMDInterior, TILESET_MART, INDOOR, LANDMARK_DR_NUGGZ_MD, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RouteA, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_A, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map RouteAPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_A, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCity, TILESET_CHUMELAGO, ROUTE, LANDMARK_GEAR_CITY, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map CityGearRetail, TILESET_MART, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_GEAR_CITY, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityMart, TILESET_MART, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map OldFisherFellowHouse, TILESET_HOUSE, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityWhiltenHouse, TILESET_HOUSE, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityNorthForestGate, TILESET_GATE, GATE, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BROLOGUE_MAPS

MapGroup_BrologueNorth:
	table_width MAP_LENGTH, MapGroup_BrologueNorth
	map WardensCabin, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_NORTHERN_FOREST, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map NorthernForestRouteBGate, TILESET_GATE, GATE, LANDMARK_NORTHERN_FOREST, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RouteB, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_B, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map RouteBNorth, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_B_N, MUSIC_ROUTE_26, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Cemetary, TILESET_CHUMELAGO, ROUTE, LANDMARK_CEMETARY, MUSIC_LAVENDER_TOWN, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map CemetaryLab, TILESET_FACILITY, INDOOR, LANDMARK_CEMETARY, MUSIC_LAVENDER_TOWN, TRUE, PALETTE_DAY, FISHGROUP_OCEAN
	map DangerousCave, TILESET_CAVE, DUNGEON, LANDMARK_ROUTE_B, MUSIC_VIOLET_CITY, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map RouteH, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_H, MUSIC_VIOLET_CITY, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map OceanDetour, TILESET_CAVE, CAVE, LANDMARK_OCEAN_DETOUR, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_OCEAN
	map IceTown, TILESET_CHUMELAGO, TOWN, LANDMARK_SPECIAL, MUSIC_VIOLET_CITY, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map IceTownPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map IceTownMart, TILESET_MART, INDOOR, LANDMARK_SPECIAL, MUSIC_MOBILE_CENTER, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map IceTownTrainerClub, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_GYM, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map IceTownHouse1, TILESET_HOUSE, INDOOR, LANDMARK_SPECIAL, MUSIC_VIOLET_CITY, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map IceTownHouse2, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_SPECIAL, MUSIC_VIOLET_CITY, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map SanhaHouse, TILESET_MANSION, INDOOR, LANDMARK_SPECIAL, MUSIC_VIOLET_CITY, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map SanhaHouse2F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_SPECIAL, MUSIC_BUG_CATCHING_CONTEST_RANKING, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map SanhaHouseB1F, TILESET_CAVE, INDOOR, LANDMARK_SPECIAL, MUSIC_BUG_CATCHING_CONTEST_RANKING, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	map SanhaACRoom, TILESET_ICE_PATH, INDOOR, LANDMARK_SPECIAL, MUSIC_BUG_CATCHING_CONTEST_RANKING, TRUE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_BROLOGUE_NORTH_MAPS

MapGroup_Metroid:
	table_width MAP_LENGTH, MapGroup_Metroid
	map MetroidIntro, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, TRUE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidHallway,  TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, TRUE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidVerticalHallway, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, TRUE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidEnd, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, TRUE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidCyberspaceExit, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_MOBILE_CENTER, TRUE, PALETTE_MORN, FISHGROUP_OCEAN
	assert_table_length NUM_METROID_MAPS

MapGroup_PalAtoll:
	table_width MAP_LENGTH, MapGroup_PalAtoll
	map Univercity, TILESET_KANTO, TOWN, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map UnivercityPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_UNIVERCITY, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_POND
	map UnivercityMart1F, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMart2F, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMart3F, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMart4F, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMart5F, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMartRoof, TILESET_MART, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnivercityMartB1F, TILESET_UNDERGROUND, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map CampusMission, TILESET_UNDERGROUND, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map SarahGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_UNIVERCITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Meeman1F, TILESET_UNDERGROUND, INDOOR, LANDMARK_UNIVERCITY, MUSIC_MOBILE_ADAPTER_MENU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Meeman2F, TILESET_UNDERGROUND, INDOOR, LANDMARK_UNIVERCITY, MUSIC_MOBILE_ADAPTER_MENU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MeemanRoof, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_MOBILE_ADAPTER_MENU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MeemanPool, TILESET_PORT, INDOOR, LANDMARK_UNIVERCITY, MUSIC_MOBILE_ADAPTER_MENU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Dorm1F, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Dorm2F, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Dorm3F, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Dorm4F, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Dorm5F, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map DormRoof, TILESET_MANSION, INDOOR, LANDMARK_UNIVERCITY, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Tracks, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_UNIVERCITY, MUSIC_BUG_CATCHING_CONTEST_RANKING, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RouteC, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_C, MUSIC_ROUTE_3, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map RouteD, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_D, MUSIC_ROUTE_3, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map RouteDNameRaterHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ROUTE_D, MUSIC_ROUTE_3, TRUE, PALETTE_DAY, FISHGROUP_POND
	map RouteE, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_E, MUSIC_ROUTE_3, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map GoodFisherFellowHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_E, MUSIC_ROUTE_3, TRUE, PALETTE_DAY, FISHGROUP_LAKE
	map RouteF, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_F, MUSIC_ROUTE_3, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map GenderClinic, TILESET_POKECOM_CENTER, INDOOR, LANDMARK_ROUTE_F, MUSIC_ROUTE_3, TRUE, PALETTE_DAY, FISHGROUP_POND
	map RouteFCave, TILESET_CAVE, CAVE, LANDMARK_ROUTE_F, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_POND
	map TonyHawkHouse, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_ROUTE_F, MUSIC_ROUTE_3, TRUE, PALETTE_DAY, FISHGROUP_POND
	assert_table_length NUM_PAL_ATOLL_MAPS

MapGroup_EeveeRanch:
	table_width MAP_LENGTH, MapGroup_EeveeRanch
	map EeveeRanchExterior, TILESET_CHUMELAGO, ROUTE, LANDMARK_EEVEE_RANCH, MUSIC_MOBILE_ADAPTER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map EeveeRanchPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_EEVEE_RANCH, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_POND
	map EeveeRanchInterior, TILESET_RADIO_TOWER, INDOOR, LANDMARK_EEVEE_RANCH, MUSIC_MOBILE_ADAPTER, TRUE, PALETTE_DAY, FISHGROUP_POND
	map EeveeRanchGroomers, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_EEVEE_RANCH, MUSIC_MOBILE_ADAPTER, TRUE, PALETTE_DAY, FISHGROUP_POND
	map EeveeRanchHives, TILESET_FOREST, CAVE, LANDMARK_EEVEE_RANCH, MUSIC_MOBILE_ADAPTER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_EEVEE_RANCH_MAPS

MapGroup_JungleArea:
	table_width MAP_LENGTH, MapGroup_JungleArea
	map JungleGate, TILESET_GATE, GATE, LANDMARK_MUSCLE_JUNGLE, MUSIC_VICTORY_ROAD, TRUE, PALETTE_DAY, FISHGROUP_LAKE
	map MuscleJungle, TILESET_JUNGLE, ROUTE, LANDMARK_MUSCLE_JUNGLE, MUSIC_VICTORY_ROAD, TRUE, PALETTE_DAY, FISHGROUP_LAKE
	map RouteG, TILESET_JUNGLE, ROUTE, LANDMARK_ROUTE_G, MUSIC_ROUTE_30, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map VolcanoExterior, TILESET_JUNGLE, ROUTE, LANDMARK_THE_BROCANO, MUSIC_DARK_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map RyanTrainingHut, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_MUSCLE_JUNGLE, MUSIC_VICTORY_ROAD, TRUE, PALETTE_DAY, FISHGROUP_POND
	map RouteGMetroidCave, TILESET_METROID, DUNGEON, LANDMARK_ROUTE_G, MUSIC_DARK_CAVE, TRUE, PALETTE_DAY, FISHGROUP_POND
	map VolcanoRestStop, TILESET_HOUSE, INDOOR, LANDMARK_THE_BROCANO, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_JUNGLE_AREA_MAPS

MapGroup_LinksAwakening:
	table_width MAP_LENGTH, MapGroup_LinksAwakening
	map AwakeningBeach2, TILESET_LINKS_AWAKENING, ROUTE, LANDMARK_AWAKENING_BEACH_2, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map MaybeVillage, TILESET_LINKS_AWAKENING, TOWN, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map MisplacedWoods, TILESET_LINKS_AWAKENING, ROUTE, LANDMARK_MISPLACED_WOODS, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_OCEAN
	map BadEggExterior, TILESET_LINKS_AWAKENING, INDOOR, LANDMARK_THE_WINDFISH_EGG, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_OCEAN
	map AwakeningTrainerClub, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map BeachfrontProperty, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_AWAKENING_BEACH_2, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map CaseysCabin, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MISPLACED_WOODS, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map DogLadyHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MarinsHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MaybeVillageMart, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MaybeVillagePokemonCenter1F, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map OldMansHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map PhoneRoom, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map QuadrupletsHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map SuperFisherFellowsHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MAYBE_VILLAGE, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MisplacedCavern1F, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_MISPLACED_WOODS, MUSIC_DARK_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MisplacedCavern2F, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_MISPLACED_WOODS, MUSIC_DARK_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MisplacedCavernB1F, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_MISPLACED_WOODS, MUSIC_MOBILE_ADAPTER, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MoblinWilkensHouse, TILESET_LINKS_AWAKENING_INTERIOR, INDOOR, LANDMARK_MISPLACED_WOODS, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map BeachfrontCavern, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_DARK_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map MaybeVillageWell, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_MAYBE_VILLAGE, MUSIC_DARK_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map DampCave, TILESET_LINKS_AWAKENING_DUNGEON, CAVE, LANDMARK_MAYBE_VILLAGE, MUSIC_MT_MOON, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map FrozenPassage, TILESET_ICE_PATH, CAVE, LANDMARK_MAYBE_VILLAGE, MUSIC_UNION_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map FrozenPassage2, TILESET_ICE_PATH, CAVE, LANDMARK_MAYBE_VILLAGE, MUSIC_UNION_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map FrozenPassage3, TILESET_ICE_PATH, CAVE, LANDMARK_MAYBE_VILLAGE, MUSIC_UNION_CAVE, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map GrateGuyCasino, TILESET_GAME_CORNER, INDOOR, LANDMARK_SPECIAL, MUSIC_CELADON_CITY, TRUE, PALETTE_DAY, FISHGROUP_POND
	assert_table_length NUM_LINKS_AWAKENING_MAPS

MapGroup_IvyRoad:
	table_width MAP_LENGTH, MapGroup_IvyRoad
	map IvyRoad, TILESET_CHUMELAGO, TOWN, LANDMARK_IVY_ROAD, MUSIC_PALLET_TOWN, TRUE, PALETTE_DAY, FISHGROUP_POND
	map CaseysHouse, TILESET_HOUSE, INDOOR, LANDMARK_IVY_ROAD, MUSIC_VIRIDIAN_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map BriansHouse, TILESET_HOUSE, INDOOR, LANDMARK_IVY_ROAD, MUSIC_VIRIDIAN_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map KylesHouse, TILESET_HOUSE, INDOOR, LANDMARK_IVY_ROAD, MUSIC_VIRIDIAN_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	map HauntedAttic, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_IVY_ROAD, MUSIC_RUINS_OF_ALPH_INTERIOR, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map SamsHouse, TILESET_HOUSE, INDOOR, LANDMARK_IVY_ROAD, MUSIC_VIRIDIAN_CITY, TRUE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_IVY_ROAD_MAPS

MapGroup_Dungeons:
	table_width MAP_LENGTH, MapGroup_Dungeons
	map DankCave1F, TILESET_DARK_CAVE, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_DARK_CAVE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	map DankCave2F, TILESET_CAVE, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map NorthernForest, TILESET_FOREST, CAVE, LANDMARK_NORTHERN_FOREST, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map CityGearHQ, TILESET_FACILITY, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map CityGearHQBasement, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_GEAR_CITY, MUSIC_RUINS_OF_ALPH_INTERIOR, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map VolcanoInteriorB1F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInteriorB1FHall, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map VolcanoInterior1F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map VolcanoInterior2F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map VolcanoInterior3F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInterior3FHall, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map VolcanoInterior4F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInterior5F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInterior5FHall, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInterior6F, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map VolcanoInterior6FHall, TILESET_CAVE, DUNGEON, LANDMARK_THE_BROCANO, MUSIC_MT_MOON, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map FrozenCavern1F, TILESET_ICE_PATH, DUNGEON, LANDMARK_SPECIAL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map FrozenCavernB1F, TILESET_ICE_PATH, DUNGEON, LANDMARK_SPECIAL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map FrozenCavern2F, TILESET_ICE_PATH, DUNGEON, LANDMARK_SPECIAL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map FrozenCavern3F, TILESET_ICE_PATH, DUNGEON, LANDMARK_SPECIAL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map FrozenGrotto, TILESET_ICE_PATH, DUNGEON, LANDMARK_SPECIAL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map MaybeVillageShrine, TILESET_LINKS_AWAKENING_DUNGEON, DUNGEON, LANDMARK_MAYBE_VILLAGE, MUSIC_MT_MOON, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map AwakeningDungeon, TILESET_LINKS_AWAKENING_DUNGEON, DUNGEON, LANDMARK_AWAKENING_BEACH_2, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map AwakeningDungeonB1F, TILESET_LINKS_AWAKENING_DUNGEON, DUNGEON, LANDMARK_AWAKENING_BEACH_2, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map AwakeningDungeonBossRoom, TILESET_LINKS_AWAKENING_DUNGEON, DUNGEON, LANDMARK_AWAKENING_BEACH_2, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map AwakeningDungeonTreasureRoom, TILESET_LINKS_AWAKENING_DUNGEON, DUNGEON, LANDMARK_AWAKENING_BEACH_2, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map TheDarkLab, TILESET_LAB, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map TheDarkLabBrianRoom, TILESET_LAB, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_AUTO, FISHGROUP_LAKE
	map TheBetweensSafariZone, TILESET_JUNGLE, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_DAY, FISHGROUP_LAKE
	map TheBetweensMetroid, TILESET_METROID, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensPokecenter1F, TILESET_POKECENTER, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_AUTO, FISHGROUP_LAKE 
	map TheBetweensVictoryRoad, TILESET_CAVE, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensIcePath, TILESET_ICE_PATH, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensTown, TILESET_KANTO, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensMart, TILESET_MART, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensFacility, TILESET_FACILITY, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensEliteFourRoom, TILESET_ELITE_FOUR_ROOM, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensForest, TILESET_FOREST, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensTraditionalHouse, TILESET_TRADITIONAL_HOUSE, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map TheBetweensLinksAwakeningInterior, TILESET_LINKS_AWAKENING_INTERIOR, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map KylesDesktopRoom, TILESET_ICE_PATH, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map ErrorRoom, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_THE_BETWEENS, MUSIC_RUINS_OF_ALPH_INTERIOR, TRUE, PALETTE_MORN, FISHGROUP_LAKE
	map ForestCave, TILESET_CAVE, CAVE, LANDMARK_NORTHERN_FOREST, MUSIC_MT_MOON, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map DankCaveB1F, TILESET_DARK_CAVE, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_DARK_CAVE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	assert_table_length NUM_DUNGEONS_MAPS