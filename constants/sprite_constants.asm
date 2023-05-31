; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE ; 00
	const SPRITE_CHRIS ; 01
	const SPRITE_CHRIS_BIKE ; 02
	const SPRITE_GAMEBOY_KID ; 03
	const SPRITE_RIVAL ; 04
	const SPRITE_RED ; 05
	const SPRITE_BILL ; 06
	const SPRITE_MOM ; 07
	const SPRITE_BLAINE ; 08
	const SPRITE_DAISY ; 09
	const SPRITE_ELM ; 0a
	const SPRITE_FALKNER ; 0b
	const SPRITE_WHITNEY ; 0c
	const SPRITE_BUGSY ; 0d
	const SPRITE_MORTY ; 0e
	const SPRITE_JASMINE ; 0f
	const SPRITE_PRYCE ; 10
	const SPRITE_CLAIR ; 11
	const SPRITE_BROCK ; 12
	const SPRITE_BRUNO ; 13
	const SPRITE_MISTY ; 14
	const SPRITE_SURGE ; 15
	const SPRITE_ERIKA ; 16
	const SPRITE_SABRINA ; 17
	const SPRITE_COOLTRAINER_M ; 18
	const SPRITE_COOLTRAINER_F ; 19
	const SPRITE_BUG_CATCHER ; 1a
	const SPRITE_TWIN ; 1b
	const SPRITE_YOUNGSTER ; 1c
	const SPRITE_LASS ; 1d
	const SPRITE_TEACHER ; 1e
	const SPRITE_BEAUTY ; 1f
	const SPRITE_SUPER_NERD ; 20
	const SPRITE_ROCKER ; 21
	const SPRITE_POKEFAN_M ; 22
	const SPRITE_POKEFAN_F ; 23
	const SPRITE_GRAMPS ; 24
	const SPRITE_GRANNY ; 25
	const SPRITE_SWIMMER_GUY ; 26
	const SPRITE_SWIMMER_GIRL ; 27
	const SPRITE_BIG_SNORLAX ; 28
	const SPRITE_SURFING_PIKACHU ; 29
	const SPRITE_ROCKET ; 2a
	const SPRITE_ROCKET_GIRL ; 2b
	const SPRITE_NURSE ; 2c
	const SPRITE_LINK_RECEPTIONIST ; 2d
	const SPRITE_CLERK ; 2d
	const SPRITE_FISHER ; 2e
	const SPRITE_FISHING_GURU ; 2f
	const SPRITE_SCIENTIST ; 30
	const SPRITE_KIMONO_GIRL ; 31
	const SPRITE_SAGE ; 32
	const SPRITE_GENTLEMAN ; 33
	const SPRITE_BLACK_BELT ; 34
	const SPRITE_RECEPTIONIST ; 35
	const SPRITE_OFFICER ; 36
	const SPRITE_BIG_LAPRAS ; 37
	const SPRITE_GYM_GUIDE ; 38
	const SPRITE_SAILOR ; 39
	const SPRITE_BIKER ; 3a
	const SPRITE_PHARMACIST ; 3b
	const SPRITE_MONSTER ; 3c
	const SPRITE_FAIRY ; 3d
	const SPRITE_BIRD ; 3e
	const SPRITE_DRAGON ; 3f
	const SPRITE_BIG_ONIX ; 40
	const SPRITE_N64 ; 41
	const SPRITE_SUDOWOODO ; 42
	const SPRITE_SURF ; 43
	const SPRITE_POKE_BALL ; 44
	const SPRITE_POKEDEX ; 45
	const SPRITE_PAPER ; 46
	const SPRITE_VIRTUAL_BOY ; 47
	const SPRITE_ROCK ; 48
	const SPRITE_BOULDER ; 49
	const SPRITE_SNES ; 4a
	const SPRITE_FAMICOM ; 4b
	const SPRITE_FRUIT_TREE ; 4c
	const SPRITE_GOLD_TROPHY ; 4d
	const SPRITE_SILVER_TROPHY ; 4e
	const SPRITE_KRIS ; 4f
	const SPRITE_KRIS_BIKE ; 50
	const SPRITE_SUICUNE ; 51
	const SPRITE_KYLE ; 52
	const SPRITE_LINK ; 53
	const SPRITE_BIG_CLAY ; 54
	const SPRITE_MUSHROOM ; 55
	const SPRITE_ZOOMER ; 56
	const SPRITE_SKREE_RIPPER ; 57
	const SPRITE_MORPH_BALL ; 58
	const SPRITE_ENERGY_TANK ; 59
	const SPRITE_MISSILES ; 5a
	const SPRITE_LEVER_LEFT ; 5b
	const SPRITE_LEVER_RIGHT ; 5c
	const SPRITE_GORON ; 5d
	const SPRITE_REGIMAGMA ; 5e
	const SPRITE_ROLLY_BALL ; 5f
	const SPRITE_M_BLOCK ; 60
	const SPRITE_MARIN ; 61
	const SPRITE_TARIN ; 62
	const SPRITE_SHOPKEEPER ; 63
	const SPRITE_CHOMP ; 64
	const SPRITE_OCTOROK ; 65
	const SPRITE_CUCCO ; 66
	const SPRITE_KAEPORA ; 67
	const SPRITE_LA_YOUNGSTER ; 68
	const SPRITE_MOBLIN ; 69
	const SPRITE_GEL ; 6a
	const SPRITE_CRAB ; 6b
	const SPRITE_LA_GUY ; 6c
	const SPRITE_LA_GIRL ; 6d
	const SPRITE_LA_GRANNY ; 6e
	const SPRITE_LA_FISHER ; 6f
	const SPRITE_BLADE_TRAP ; 70
	const SPRITE_CARD ; 71
	const SPRITE_HEART ; 72
	const SPRITE_EGG ; 73
	const SPRITE_TM ; 74
	const SPRITE_LA_GRAMPS ; 75
	const SPRITE_GREAT_FAIRY ; 76
	const SPRITE_SWORD ; 77
DEF NUM_OVERWORLD_SPRITES EQU const_value - 1

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_next $80
DEF SPRITE_POKEMON EQU const_value
	const SPRITE_UNOWN ; 80
	const SPRITE_GEODUDE ; 81
	const SPRITE_GROWLITHE ; 82
	const SPRITE_WEEDLE ; 83
	const SPRITE_SHELLDER ; 84
	const SPRITE_ODDISH ; 85
	const SPRITE_GENGAR ; 86
	const SPRITE_ZUBAT ; 87
	const SPRITE_MAGIKARP ; 88
	const SPRITE_SQUIRTLE ; 89
	const SPRITE_TOGEPI ; 8a
	const SPRITE_BUTTERFREE ; 8b
	const SPRITE_DIGLETT ; 8c
	const SPRITE_POLIWAG ; 8d
	const SPRITE_PIKACHU ; 8e
	const SPRITE_CLEFAIRY ; 8f
	const SPRITE_CHARMANDER ; 90
	const SPRITE_JYNX ; 91
	const SPRITE_STARMIE ; 92
	const SPRITE_BULBASAUR ; 93
	const SPRITE_JIGGLYPUFF ; 94
	const SPRITE_GRIMER ; 95
	const SPRITE_EKANS ; 96
	const SPRITE_PARAS ; 97
	const SPRITE_TENTACOOL ; 98
	const SPRITE_TAUROS ; 99
	const SPRITE_MACHOP ; 9a
	const SPRITE_VOLTORB ; 9b
	const SPRITE_LAPRAS ; 9c
	const SPRITE_RHYDON ; 9d
	const SPRITE_MOLTRES ; 9e
	const SPRITE_SNORLAX ; 9f
	const SPRITE_GYARADOS ; a0
	const SPRITE_LUGIA ; a1
	const SPRITE_HO_OH ; a2
	const SPRITE_EEVEE
	const SPRITE_VAPOREON
	const SPRITE_JOLTEON
	const SPRITE_FLAREON
	const SPRITE_ESPEON
	const SPRITE_UMBREON
	const SPRITE_GLACEON
	const SPRITE_LEAFEON
	const SPRITE_SYLVEON
	const SPRITE_BUZZEON
DEF NUM_POKEMON_SPRITES EQU const_value - SPRITE_POKEMON

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_next $e0
	const SPRITE_DAY_CARE_MON_1 ; e0
	const SPRITE_DAY_CARE_MON_2 ; e1

; wVariableSprites indexes (see wram.asm)
	const_next $f0
DEF SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE ; f0
	const SPRITE_DOLL_1 ; f1
	const SPRITE_DOLL_2 ; f2
	const SPRITE_BIG_DOLL ; f3
	const SPRITE_WEIRD_TREE ; f4
	const SPRITE_OLIVINE_RIVAL ; f5
	const SPRITE_AZALEA_ROCKET ; f6
	const SPRITE_FUCHSIA_GYM_1 ; f7
	const SPRITE_FUCHSIA_GYM_2 ; f8
	const SPRITE_FUCHSIA_GYM_3 ; f9
	const SPRITE_FUCHSIA_GYM_4 ; fa
	const SPRITE_COPYCAT ; fb
	const SPRITE_JANINE_IMPERSONATOR ; fc
	const SPRITE_VOLCANO_3F_LEVER
	const SPRITE_VOLCANO_4F_LEVER
