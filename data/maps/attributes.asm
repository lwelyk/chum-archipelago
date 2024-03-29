MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + 3
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + 6) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
			DEF _win = \3_WIDTH + 7
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + 3 - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - 3
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt
			DEF _win = (\3_WIDTH + 6) * 2 - 6
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
			DEF _win = \3_WIDTH + 7
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + 3 - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win

	endc
ENDM

	map_attributes NewBarkTown, NEW_BARK_TOWN, $05, 0

	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $05, 0

	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0

	map_attributes BattleTower1F, BATTLE_TOWER_1F, $00, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $00, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $00, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $00, 0

	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0

	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
	
	map_attributes AwakeningBeach, AWAKENING_BEACH, $05, WEST
	connection west, RouteA, ROUTE_A, -2
	map_attributes AwakeningLab, AWAKENING_LAB, $00, 0
	map_attributes DrNuggzMDExterior, DR_NUGGZ_MD_EXTERIOR, $05, 0
	map_attributes DrNuggzMDInterior, DR_NUGGZ_MD_INTERIOR, $00, 0
	map_attributes RouteA, ROUTE_A, $05, WEST | EAST
	connection west, GearCity, GEAR_CITY, -13
	connection east, AwakeningBeach, AWAKENING_BEACH, 2
	map_attributes RouteAPokecenter1F, ROUTE_A_POKECENTER_1F, $00, 0
	map_attributes GearCity, GEAR_CITY, $05, EAST
	connection east, RouteA, ROUTE_A, 13
	map_attributes CityGearRetail, CITY_GEAR_RETAIL, $00, 0
	map_attributes GearCityPokecenter1F, GEAR_CITY_POKECENTER_1F, $00, 0
	map_attributes GearCityMart, GEAR_CITY_MART, $00, 0
	map_attributes OldFisherFellowHouse, OLD_FISHER_FELLOW_HOUSE, $00, 0
	map_attributes GearCityWhiltenHouse, GEAR_CITY_CHRIS_WHILTEN_HOUSE, $00, 0
	map_attributes DankCave1F, DANK_CAVE_1F, $09, 0
	map_attributes DankCave2F, DANK_CAVE_2F, $09, 0
	map_attributes NorthernForest, NORTHERN_FOREST, $00, 0
	map_attributes CityGearHQ, CITY_GEAR_HQ, $00, 0
	map_attributes CityGearHQBasement, CITY_GEAR_HQ_BASEMENT, $00, 0
	map_attributes GearCityNorthForestGate, GEAR_CITY_NORTH_FOREST_GATE, $00, 0

	map_attributes WardensCabin, WARDENS_CABIN, $00, 0
	map_attributes NorthernForestRouteBGate, NORTHERN_FOREST_ROUTE_B_GATE, $00, 0
	map_attributes RouteB, ROUTE_B, $05, NORTH | EAST
	connection north, RouteBNorth, ROUTE_B_NORTH, -1
	connection east, Cemetary, CEMETARY, 0
	map_attributes RouteBNorth, ROUTE_B_NORTH, $05, NORTH | SOUTH
	connection north, RouteH, ROUTE_H, 0
	connection south, RouteB, ROUTE_B, 1
	map_attributes Cemetary, CEMETARY, $82, WEST
	connection west, RouteB, ROUTE_B, 0
	map_attributes CemetaryLab, CEMETARY_LAB, $00, 0
	map_attributes DangerousCave, DANGEROUS_CAVE, $00, 0
	map_attributes RouteH, ROUTE_H, $05, NORTH | SOUTH
	connection north, IceTown, ICE_TOWN, -5
	connection south, RouteBNorth, ROUTE_B_NORTH, 0
	map_attributes OceanDetour, OCEAN_DETOUR, $00, 0
	map_attributes IceTown, ICE_TOWN, $05, SOUTH
	connection south, RouteH, ROUTE_H, 5
	map_attributes IceTownPokecenter1F, ICE_TOWN_POKECENTER_1F, $00, 0
	map_attributes IceTownHouse1, ICE_TOWN_HOUSE_1, $00, 0
	map_attributes IceTownHouse2, ICE_TOWN_HOUSE_2, $00, 0
	map_attributes IceTownMart, ICE_TOWN_MART, $00, 0
	map_attributes IceTownTrainerClub, ICE_TOWN_TRAINER_CLUB, $00, 0
	map_attributes SanhaHouse, SANHA_HOUSE, $00, 0
	map_attributes SanhaHouse2F, SANHA_HOUSE_2F, $00, 0
	map_attributes SanhaHouseB1F, SANHA_HOUSE_B1F, $00, 0
	map_attributes SanhaACRoom, SANHA_AC_ROOM, $00, 0

	map_attributes MetroidIntro, METROID_INTRO, $00, 0
	map_attributes MetroidHallway, METROID_HALLWAY, $00, 0
	map_attributes MetroidVerticalHallway, METROID_VERTICAL_HALLWAY, $00, 0
	map_attributes MetroidEnd, METROID_END, $00, 0
	map_attributes MetroidCyberspaceExit, METROID_CYBERSPACE_EXIT, $00, 0

	map_attributes Univercity, UNIVERCITY, $0A, SOUTH | WEST
	connection south, RouteE, ROUTE_E, 5
	connection west, RouteC, ROUTE_C, 4
	map_attributes UnivercityPokecenter1F, UNIVERCITY_POKECENTER_1F, $00, 0
	map_attributes UnivercityMart1F, UNIVERCITY_MART_1F, $00, 0
	map_attributes UnivercityMart2F, UNIVERCITY_MART_2F, $00, 0
	map_attributes UnivercityMart3F, UNIVERCITY_MART_3F, $00, 0
	map_attributes UnivercityMart4F, UNIVERCITY_MART_4F, $00, 0
	map_attributes UnivercityMart5F, UNIVERCITY_MART_5F, $00, 0
	map_attributes UnivercityMartRoof, UNIVERCITY_MART_ROOF, $24, 0
	map_attributes UnivercityMartB1F, UNIVERCITY_MART_B1F, $00, 0
	map_attributes CampusMission, CAMPUS_MISSION, $00, 0
	map_attributes SarahGym, SARAH_GYM, $00, 0
	map_attributes Meanman1F, MEEMAN_1F, $00, 0
	map_attributes Meanman2F, MEEMAN_2F, $00, 0
	map_attributes MeanmanRoof, MEEMAN_ROOF, $48, 0
	map_attributes MeanmanPool, MEEMAN_POOL, $00, 0
	map_attributes Dorm1F, DORM_1F, $00, 0
	map_attributes Dorm2F, DORM_2F, $00, 0
	map_attributes Dorm3F, DORM_3F, $00, 0
	map_attributes Dorm4F, DORM_4F, $00, 0
	map_attributes Dorm5F, DORM_5F, $00, 0
	map_attributes DormRoof, DORM_ROOF, $48, 0
	map_attributes Tracks, TRACKS, $00, 0
	map_attributes RouteC, ROUTE_C, $0A, NORTH |EAST
	connection north, RouteD, ROUTE_D, 0
	connection east, Univercity, UNIVERCITY, -4
	map_attributes RouteD, ROUTE_D, $0A, SOUTH
	connection south, RouteC, ROUTE_C, 0
	map_attributes RouteDNameRaterHouse, ROUTE_D_NAME_RATER_HOUSE, $00, 0
	map_attributes RouteE, ROUTE_E, $13, NORTH | EAST
	connection north, Univercity, UNIVERCITY, -5
	connection east, RouteF, ROUTE_F, 17
	map_attributes GoodFisherFellowHouse, GOOD_FISHER_FELLOW_HOUSE, $00, 0
	map_attributes RouteF, ROUTE_F, $13, WEST
	connection west, RouteE, ROUTE_E, -17
	map_attributes GenderClinic, GENDER_CLINIC, $00, 0
	map_attributes RouteFCave, ROUTE_F_CAVE, $09, 0
	map_attributes TonyHawkHouse, TONY_HAWK_HOUSE, $00, 0

	map_attributes EeveeRanchExterior, EEVEE_RANCH_EXTERIOR, $80, 0 
	map_attributes EeveeRanchPokecenter1F, EEVEE_RANCH_POKECENTER_1F, $00, 0
	map_attributes EeveeRanchInterior, EEVEE_RANCH_INTERIOR, $00, 0
	map_attributes EeveeRanchGroomers, EEVEE_RANCH_GROOMERS, $00, 0
	map_attributes EeveeRanchHives, EEVEE_RANCH_HIVES, $28, 0

	map_attributes JungleGate, JUNGLE_GATE, $00, 0
	map_attributes MuscleJungle, MUSCLE_JUNGLE, $01, NORTH
	connection north, RouteG, ROUTE_G, 8
	map_attributes RyanTrainingHut, RYAN_TRAINING_HUT, $00, 0
	map_attributes RouteG, ROUTE_G, $2a, SOUTH | EAST
	connection south, MuscleJungle, MUSCLE_JUNGLE, -8
	connection east, VolcanoExterior, VOLCANO_EXTERIOR, -15
	map_attributes RouteGMetroidCave, ROUTE_G_METROID_CAVE, $00, 0
	map_attributes VolcanoExterior, VOLCANO_EXTERIOR, $2a, WEST
	connection west, RouteG, ROUTE_G, 15
	map_attributes VolcanoRestStop, VOLCANO_REST_STOP, $00, 0

	map_attributes AwakeningBeach2, AWAKENING_BEACH_2, $00, NORTH
	connection north, MaybeVillage, MAYBE_VILLAGE, 0
	map_attributes MaybeVillage, MAYBE_VILLAGE, $00, NORTH | SOUTH
	connection north, MisplacedWoods, MISPLACED_WOODS, 0
	connection south, AwakeningBeach2, AWAKENING_BEACH_2, 0
	map_attributes MisplacedWoods, MISPLACED_WOODS, $00, SOUTH
	connection south, MaybeVillage, MAYBE_VILLAGE, 0
	map_attributes BadEggExterior, BAD_EGG_EXTERIOR, $B9, 0
	map_attributes AwakeningTrainerClub, AWAKENING_TRAINER_CLUB, $00, 0
	map_attributes BeachfrontProperty, BEACHFRONT_PROPERTY, $00, 0
	map_attributes CaseysCabin, CASEYS_CABIN, $00, 0
	map_attributes DogLadyHouse, DOG_LADY_HOUSE, $00, 0
	map_attributes MarinsHouse, MARINS_HOUSE, $00, 0
	map_attributes MaybeVillageMart, MAYBE_VILLAGE_MART, $00, 0
	map_attributes MaybeVillagePokemonCenter1F, MAYBE_VILLAGE_POKEMON_CENTER_1F, $00, 0
	map_attributes OldMansHouse, OLD_MANS_HOUSE, $00, 0
	map_attributes PhoneRoom, PHONE_ROOM, $00, 0
	map_attributes QuadrupletsHouse, QUADRUPLETS_HOUSE, $00, 0
	map_attributes SuperFisherFellowsHouse, SUPER_FISHER_FELLOWS_HOUSE, $00, 0
	map_attributes MisplacedCavern1F, MISPLACED_CAVERN_1F, $00, 0
	map_attributes MisplacedCavern2F, MISPLACED_CAVERN_2F, $00, 0
	map_attributes MisplacedCavernB1F, MISPLACED_CAVERN_B1F, $00, 0
	map_attributes MoblinWilkensHouse, MOBLIN_WILKENS_HOUSE, $00, 0
	map_attributes BeachfrontCavern, BEACHFRONT_CAVERN, $00, 0
	map_attributes MaybeVillageWell, MAYBE_VILLAGE_WELL, $00, 0
	map_attributes DampCave, DAMP_CAVE, $00, 0
	map_attributes FrozenPassage, FROZEN_PASSAGE, $00, 0
	map_attributes FrozenPassage2, FROZEN_PASSAGE_2, $00, 0
	map_attributes FrozenPassage3, FROZEN_PASSAGE_3, $00, 0
	map_attributes GrateGuyCasino, GRATE_GUY_CASINO, $00, 0

	map_attributes VolcanoInteriorB1F, VOLCANO_INTERIOR_B1F, $00, 0
	map_attributes VolcanoInteriorB1FHall, VOLCANO_INTERIOR_B1F_HALL, $09, 0
	map_attributes VolcanoInterior1F, VOLCANO_INTERIOR_1F, $00, 0
	map_attributes VolcanoInterior2F, VOLCANO_INTERIOR_2F, $09, 0
	map_attributes VolcanoInterior3F, VOLCANO_INTERIOR_3F, $00, 0
	map_attributes VolcanoInterior3FHall, VOLCANO_INTERIOR_3F_HALL, $09, 0
	map_attributes VolcanoInterior4F, VOLCANO_INTERIOR_4F, $09, 0
	map_attributes VolcanoInterior5F, VOLCANO_INTERIOR_5F, $00, 0
	map_attributes VolcanoInterior5FHall, VOLCANO_INTERIOR_5F_HALL, $09, 0
	map_attributes VolcanoInterior6F, VOLCANO_INTERIOR_6F, $64, 0
	map_attributes VolcanoInterior6FHall, VOLCANO_INTERIOR_6F_HALL, $00, 0

	map_attributes FrozenCavern1F, FROZEN_CAVERN_1F, $00, 0
	map_attributes FrozenCavernB1F, FROZEN_CAVERN_B1F, $00, 0
	map_attributes FrozenCavern2F, FROZEN_CAVERN_2F, $00, 0
	map_attributes FrozenCavern3F, FROZEN_CAVERN_3F, $00, 0
	map_attributes FrozenGrotto, FROZEN_GROTTO, $00, 0
	map_attributes MaybeVillageShrine, MAYBE_VILLAGE_SHRINE, $00, 0
	map_attributes AwakeningDungeon, AWAKENING_DUNGEON, $00, 0
	map_attributes AwakeningDungeonB1F, AWAKENING_DUNGEON_B1F, $00, 0
	map_attributes AwakeningDungeonBossRoom, AWAKENING_DUNGEON_BOSS_ROOM, $00, 0
	map_attributes AwakeningDungeonTreasureRoom, AWAKENING_DUNGEON_TREASURE_ROOM, $00, 0
	
	map_attributes IvyRoad, IVY_ROAD, $00, NORTH | SOUTH | WEST | EAST
	connection north, IvyRoad, IVY_ROAD, 0
	connection south, IvyRoad, IVY_ROAD, 0
	connection west, IvyRoad, IVY_ROAD, 0
	connection east, IvyRoad, IVY_ROAD, 0
	map_attributes CaseysHouse, CASEYS_HOUSE, $00, 0
	map_attributes BriansHouse, BRIANS_HOUSE, $00, 0
	map_attributes KylesHouse, KYLES_HOUSE, $00, 0
	map_attributes HauntedAttic, HAUNTED_ATTIC, $00, 0
	map_attributes SamsHouse, SAMS_HOUSE, $00, 0

	map_attributes TheDarkLab, THE_DARK_LAB, $00, 0
	map_attributes TheDarkLabBrianRoom, THE_DARK_LAB_BRIAN_ROOM, $00, 0
	map_attributes TheBetweensSafariZone, THE_BETWEENS_SAFARI_ZONE, $00, 0
	map_attributes TheBetweensMetroid, THE_BETWEENS_METROID, $00, 0
	map_attributes TheBetweensPokecenter1F, THE_BETWEENS_POKECENTER_1F, $00, 0
	map_attributes TheBetweensVictoryRoad, THE_BETWEENS_VICTORY_ROAD, $00, 0
	map_attributes TheBetweensIcePath, THE_BETWEENS_ICE_PATH, $00, 0
	map_attributes TheBetweensTown, THE_BETWEENS_TOWN, $00, 0
	map_attributes TheBetweensMart, THE_BETWEENS_MART, $00, 0
	map_attributes TheBetweensFacility, THE_BETWEENS_FACILITY, $00, 0
	map_attributes TheBetweensEliteFourRoom, THE_BETWEENS_ELITE_FOUR_ROOM, $00, 0
	map_attributes TheBetweensForest, THE_BETWEENS_FOREST, $00, 0
	map_attributes TheBetweensTraditionalHouse, THE_BETWEENS_TRADITIONAL_HOUSE, $00, 0
	map_attributes TheBetweensLinksAwakeningInterior, THE_BETWEENS_LINKS_AWAKENING_INTERIOR, $00, 0
	map_attributes KylesDesktopRoom, KYLES_DESKTOP_ROOM, $00, 0
	map_attributes ErrorRoom, ERROR_ROOM, $00, 0
	map_attributes ForestCave, FOREST_CAVE, $00, 0
	map_attributes DankCaveB1F, DANK_CAVE_B1F, $09, 0
	map_attributes KameHouse, KAME_HOUSE, $00, 0