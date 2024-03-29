MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB                               ;  1
	map_const POKECENTER_2F,                    8,  4 ;  1
	map_const TRADE_CENTER,                     5,  4 ;  2
	map_const COLOSSEUM,                        5,  4 ;  3
	map_const TIME_CAPSULE,                     5,  4 ;  4
	endgroup

	newgroup BATTLE_TOWER                             ;  2
	map_const BATTLE_TOWER_OUTSIDE,            10, 14 ;  1
	map_const BATTLE_TOWER_1F,                  8,  5 ;  2
	map_const BATTLE_TOWER_ELEVATOR,            2,  2 ;  3
	map_const BATTLE_TOWER_HALLWAY,            11,  2 ;  4
	map_const BATTLE_TOWER_BATTLE_ROOM,         4,  4 ;  5
	endgroup

	newgroup NEW_BARK                                 ;  3
	map_const NEW_BARK_TOWN,                   10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                 8,  5 ;  2
	map_const PLAYERS_HOUSE_2F,                 4,  3 ;  3
	endgroup

	newgroup INDIGO                                   ;  4
	map_const INDIGO_PLATEAU_POKECENTER_1F,     9,  7 ;  1
	map_const WILLS_ROOM,                       5,  9 ;  2
	map_const KOGAS_ROOM,                       5,  9 ;  3
	map_const BRUNOS_ROOM,                      5,  9 ;  4
	map_const KARENS_ROOM,                      5,  9 ;  5
	map_const LANCES_ROOM,                      5, 12 ;  6
	map_const HALL_OF_FAME,                     5,  7 ;  7
	endgroup

	newgroup BROLOGUE                                 ;  5
	map_const AWAKENING_BEACH,                 11, 23 ;  1
	map_const AWAKENING_LAB,                   15, 10 ;  2
	map_const DR_NUGGZ_MD_EXTERIOR,            10,  9 ;  3
	map_const DR_NUGGZ_MD_INTERIOR,             6,  5 ;  4
	map_const ROUTE_A,                         30,  9 ;  5
	map_const ROUTE_A_POKECENTER_1F,            5,  4 ;  6
	map_const GEAR_CITY,                       14, 19 ;  7
	map_const CITY_GEAR_RETAIL,                10,  6 ;  8
	map_const GEAR_CITY_POKECENTER_1F,          5,  4 ;  9
	map_const GEAR_CITY_MART,                   6,  4 ; 10
	map_const OLD_FISHER_FELLOW_HOUSE,          4,  4 ; 11
	map_const GEAR_CITY_CHRIS_WHILTEN_HOUSE,    4,  4 ; 12
	map_const GEAR_CITY_NORTH_FOREST_GATE,      8,  5 ; 13
	map_const KAME_HOUSE,                       4,  4 ; 14
	endgroup

	newgroup BROLOGUE_NORTH                           ; 6
	map_const WARDENS_CABIN,                    6,  5 ; 1
	map_const NORTHERN_FOREST_ROUTE_B_GATE,     5,  5 ; 2
	map_const ROUTE_B,							7, 30 ; 3
	map_const ROUTE_B_NORTH,                   10, 20 ; 4
	map_const CEMETARY,                        14, 14 ; 5
	map_const CEMETARY_LAB,				        9, 12 ; 6
	map_const DANGEROUS_CAVE,                   6,  5 ; 7
	map_const ROUTE_H,                         10, 30 ; 8
	map_const OCEAN_DETOUR,                    20,  9 ; 9
	map_const ICE_TOWN,                        20, 27 ; 10
	map_const ICE_TOWN_POKECENTER_1F,           5,  4 ; 11
	map_const ICE_TOWN_MART,                    6,  4 ; 12
	map_const ICE_TOWN_TRAINER_CLUB,           10, 12 ; 13
	map_const ICE_TOWN_HOUSE_1,                 4,  4 ; 14
	map_const ICE_TOWN_HOUSE_2,                 4,  4 ; 15
	map_const SANHA_HOUSE,                     10,  9 ; 16
	map_const SANHA_HOUSE_2F,                  10,  9 ; 17
	map_const SANHA_HOUSE_B1F,                 14, 24 ; 18
	map_const SANHA_AC_ROOM,                    5,  5 ; 19
	endgroup

	newgroup METROID                                  ; 7
	map_const METROID_INTRO,                   27,  7 ; 1
	map_const METROID_HALLWAY,                  8,  7 ; 2
	map_const METROID_VERTICAL_HALLWAY,         7, 17 ; 3
	map_const METROID_END,                     19,  7 ; 4
	map_const METROID_CYBERSPACE_EXIT,          5,  5 ; 5
	endgroup

	newgroup PAL_ATOLL                                ;  8
	map_const UNIVERCITY,                      20, 18 ;  1
	map_const UNIVERCITY_POKECENTER_1F,         5,  4 ;  2
	map_const UNIVERCITY_MART_1F,               8,  4 ;  3
	map_const UNIVERCITY_MART_2F,               8,  4 ;  4
	map_const UNIVERCITY_MART_3F,               8,  4 ;  5
	map_const UNIVERCITY_MART_4F,               8,  4 ;  6
	map_const UNIVERCITY_MART_5F,               8,  4 ;  7
	map_const UNIVERCITY_MART_ROOF,             8,  4 ;  8
	map_const UNIVERCITY_MART_B1F,             10, 10 ;  9
	map_const CAMPUS_MISSION,                   8,  5 ; 10
	map_const SARAH_GYM,                        8, 11 ; 11
	map_const MEEMAN_1F,                       15, 14 ; 12
	map_const MEEMAN_2F,                       15, 14 ; 13
	map_const MEEMAN_ROOF,                      7,  4 ; 14
	map_const MEEMAN_POOL,                      5,  5 ; 15
	map_const DORM_1F,                          6,  7 ; 16
	map_const DORM_2F,                          6,  7 ; 17
	map_const DORM_3F,                          6,  7 ; 18
	map_const DORM_4F,                          6,  7 ; 19
	map_const DORM_5F,                          6,  7 ; 20
	map_const DORM_ROOF,                        6,  7 ; 21
	map_const TRACKS,                          15,  6 ; 22
	map_const ROUTE_C,                         19,  9 ; 23
	map_const ROUTE_D,                          9, 20 ; 24
	map_const ROUTE_D_NAME_RATER_HOUSE, 		4,  4 ; 25
	map_const ROUTE_E,                         10, 27 ; 26
	map_const GOOD_FISHER_FELLOW_HOUSE,         4,  4 ; 27
	map_const ROUTE_F,                         10, 27 ; 28
	map_const GENDER_CLINIC,                    5,  5 ; 29
	map_const ROUTE_F_CAVE,                    10, 10 ; 30
	map_const TONY_HAWK_HOUSE,                  4,  4 ; 31
	endgroup

	newgroup EEVEE_RANCH                              ;  9
	map_const EEVEE_RANCH_EXTERIOR,            16, 20 ;  1
	map_const EEVEE_RANCH_POKECENTER_1F,        5,  4 ;  2
	map_const EEVEE_RANCH_INTERIOR,             9,  7 ;  3
	map_const EEVEE_RANCH_GROOMERS,             8,  6 ;  4
	map_const EEVEE_RANCH_HIVES,               10, 10 ;  5
	endgroup

	newgroup JUNGLE_AREA                              ; 10
	map_const JUNGLE_GATE,                      5,  5 ;  1
	map_const MUSCLE_JUNGLE,                   26, 27 ;  2
	map_const ROUTE_G,                         30,  9 ;  3
	map_const VOLCANO_EXTERIOR,                29, 28 ;  4
	map_const RYAN_TRAINING_HUT,               12,  6 ;  5
	map_const ROUTE_G_METROID_CAVE,            13,  5 ;  6
	map_const VOLCANO_REST_STOP,                5,  5 ;  7
	endgroup

	newgroup LINKS_AWAKENING                          ; 11
	map_const AWAKENING_BEACH_2,               30, 23 ;  1
	map_const MAYBE_VILLAGE,                   30, 17 ;  2
	map_const MISPLACED_WOODS,                 27, 20 ;  3
	map_const BAD_EGG_EXTERIOR,                14, 16 ;  4
	map_const AWAKENING_TRAINER_CLUB,           8,  9
	map_const BEACHFRONT_PROPERTY,              6,  5
	map_const CASEYS_CABIN,                     6,  5
	map_const DOG_LADY_HOUSE,                  10,  5
	map_const MARINS_HOUSE,                     6,  5
	map_const MAYBE_VILLAGE_MART,               6,  5
	map_const MAYBE_VILLAGE_POKEMON_CENTER_1F,  6,  5
	map_const OLD_MANS_HOUSE,                   6,  5
	map_const PHONE_ROOM,                       6,  5
	map_const QUADRUPLETS_HOUSE,               10,  5
	map_const SUPER_FISHER_FELLOWS_HOUSE,       6,  5
	map_const MISPLACED_CAVERN_1F,             10, 10
	map_const MISPLACED_CAVERN_2F,             10, 10
	map_const MISPLACED_CAVERN_B1F,             5,  4
	map_const MOBLIN_WILKENS_HOUSE,             6,  5
	map_const BEACHFRONT_CAVERN,               12, 13
	map_const MAYBE_VILLAGE_WELL,               6,  5
	map_const DAMP_CAVE,                       11, 10
	map_const FROZEN_PASSAGE,                  18, 11
	map_const FROZEN_PASSAGE_2,                28, 10
	map_const FROZEN_PASSAGE_3,                14, 13
	map_const GRATE_GUY_CASINO,                13,  8
	endgroup

	newgroup IVY_ROAD                                 ; 12
	map_const IVY_ROAD,                        32, 14 ; 1
	map_const CASEYS_HOUSE,                    11,  9 ; 2
	map_const BRIANS_HOUSE,                     7,  7 ; 3
	map_const KYLES_HOUSE,                      7,  7 ; 4
	map_const HAUNTED_ATTIC,                    6,  6 ; 5
	map_const SAMS_HOUSE,                      11,  8 ; 6
	endgroup

	newgroup DUNGEONS                                      ; 13
	map_const DANK_CAVE_1F,                         22,  7 ;  1
	map_const DANK_CAVE_2F,                         16, 14 ;  2
	map_const NORTHERN_FOREST,                      20, 30 ;  3
	map_const CITY_GEAR_HQ,                         12, 19 ;  4
	map_const CITY_GEAR_HQ_BASEMENT,                17,  8 ;  5
	map_const VOLCANO_INTERIOR_B1F,                 15, 18 ;  6
	map_const VOLCANO_INTERIOR_B1F_HALL,             9,  7 ;  7
	map_const VOLCANO_INTERIOR_1F,                  27, 18 ;  8
	map_const VOLCANO_INTERIOR_2F,                  14, 18 ;  9
	map_const VOLCANO_INTERIOR_3F,                  18, 21 ; 10
	map_const VOLCANO_INTERIOR_3F_HALL,             11,  4 ; 11
	map_const VOLCANO_INTERIOR_4F,                  33, 21 ; 12
	map_const VOLCANO_INTERIOR_5F,                  20, 20 ; 13
	map_const VOLCANO_INTERIOR_5F_HALL,              8,  8 ; 14
	map_const VOLCANO_INTERIOR_6F,                  30, 18 ; 15
	map_const VOLCANO_INTERIOR_6F_HALL,             10, 20 ; 16
	map_const FROZEN_CAVERN_1F,                     19, 17 ; 17
	map_const FROZEN_CAVERN_B1F,                    19, 17 ; 18
	map_const FROZEN_CAVERN_2F,                     19, 17 ; 19
	map_const FROZEN_CAVERN_3F,                     19, 17 ; 20
	map_const FROZEN_GROTTO,                         5,  5 ; 21
	map_const MAYBE_VILLAGE_SHRINE,                 13, 20 ; 22
	map_const AWAKENING_DUNGEON,                    28, 24 ; 23
	map_const AWAKENING_DUNGEON_B1F,                28, 24 ; 24
	map_const AWAKENING_DUNGEON_BOSS_ROOM,           8, 10 ; 25
	map_const AWAKENING_DUNGEON_TREASURE_ROOM,       8,  7 ; 26
	map_const THE_DARK_LAB,                         15, 10 ; 27
	map_const THE_DARK_LAB_BRIAN_ROOM,               5,  5 ; 28
	map_const THE_BETWEENS_SAFARI_ZONE,             16, 13 ; 29
	map_const THE_BETWEENS_METROID,                 17,  5 ; 30
	map_const THE_BETWEENS_POKECENTER_1F,            5,  4 ; 31
	map_const THE_BETWEENS_VICTORY_ROAD,            13, 12 ; 32
	map_const THE_BETWEENS_ICE_PATH,                13, 12 ; 33
	map_const THE_BETWEENS_TOWN,                    19, 18 ; 34
	map_const THE_BETWEENS_MART,                     5,  5 ; 35
	map_const THE_BETWEENS_FACILITY,                 7, 10 ; 36
	map_const THE_BETWEENS_ELITE_FOUR_ROOM,          5,  5 ; 37
	map_const THE_BETWEENS_FOREST,                   8,  8 ; 38
	map_const THE_BETWEENS_TRADITIONAL_HOUSE,        5,  5 ; 39
	map_const THE_BETWEENS_LINKS_AWAKENING_INTERIOR, 6,  5 ; 40
	map_const KYLES_DESKTOP_ROOM,                    5,  5 ; 41
	map_const ERROR_ROOM,                            6,  5 ; 42
	map_const FOREST_CAVE,                          10,  8 ; 43
	map_const DANK_CAVE_B1F,                         8,  8 ; 44
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 8
