INCLUDE "data/trainers/party_pointers.asm"

Trainers:
; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

CaseyGroup:
	; CASEY (1)
	db "CASEY@", TRAINERTYPE_NORMAL
	db  1, DITTO
	db -1 ; end

JordanGroup:
	; JORDAN (1)
	db "SMOOTI@", TRAINERTYPE_NICKNAME | TRAINERTYPE_DVS | TRAINERTYPE_MOVES
	db 18, FLAREON, "FLARIE@",	ATKDEFDV_SHINY, SPDSPCDV_SHINY,	SINGE,			FLAME_WHEEL,	SLASH,			DOUBLE_KICK
	db 18, GLACEON,	"GLACIE@",	$99, $99, 						AURORA_BEAM,	ICE_BEAM,		HAIL,			PROTECT
	db 18, UMBREON, "UMBRIE@",	ATKDEFDV_SHINY, SPDSPCDV_SHINY, FAINT_ATTACK,	PURSUIT,		BITE,			HIDDEN_POWER
	db 18, ESPEON,  "ESPIE@",	$99, $99, 						PSYBEAM,		CALM_MIND,		DESTINY_BOND,	OMINOUS_WIND
	db 18, SYLVEON, "SYLVIE@",	$99, $99, 						DAZZLE_BEAM,	SWEET_KISS,		CHARM, 			RECOVER
	db 17, BUZZEON, "BEEIE@",	$99, $99, 						SIGNAL_BEAM, 	TWINEEDLE,		GIGA_DRAIN,		POISON_JAB
	db -1 ; end

	; JORDAN (2)
	db "SMOOTI@", TRAINERTYPE_MOVES
	db 15, COMBEE,		GUST,			STRUGGLE_BUG,	POISON_STING,	NO_MOVE		
	db 15, COMBEE,		GUST,			STRUGGLE_BUG,	SWIFT,			NO_MOVE
	db 21, VESPIQUEN,	STRUGGLE_BUG,	FURY_CUTTER,	WING_ATTACK,	TWINEEDLE
	db 17, BUZZEON, 	SIGNAL_BEAM, 	TWINEEDLE,		GIGA_DRAIN,		POISON_JAB
	db -1 ; end

KyleGroup:
	; KYLE (1)
	db "KYLE@", TRAINERTYPE_NORMAL
	db  1, SPIRRIP
	db  1, PORYGON
	db  1, BURGELA
	db  1, LITWICK
	db  1, GASTLY
	db  1, MISDREAVUS
	db -1 ; end

LeeGroup:
	; LEE (1)
	db "LEE@", TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	db 27, DRAMPA, "OLD TIMER@", GLARE, DRAGONBREATH, TAKE_DOWN, PROTECT
	db 26, APPLETUN, "MEGATUN@", EXPLOSION, MEAN_LOOK, ROAR, TOXIC
	db 28, DREEPY, "DREEPY@", ASTONISH, BITE, DRAGON_RAGE, BUG_BUZZ
	db 25, SKRELP, "SKRELP@", WATER_PULSE, DOUBLE_TEAM, ACID, FAINT_ATTACK
	db 27, NOIBAT, "SPOILER@", AIR_CUTTER, AEROBLAST, BITE, DRAGONBREATH
	db 24, UNOWN, "ETERNAMAX@", GLITCH_M, TRI_ATTACK, HIDDEN_POWER, SUPERSONIC
	db -1 ; end

MerGroup:
	; MADDIE (1)
	db "MADDIE@", TRAINERTYPE_MOVES
	db 30, KIRBY, SLASH, MIRROR_MOVE, METRONOME, HYPER_VOICE
	db -1 ; end

	; BRIAN (2)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 25, LUDICOLO
	db 25, LUDICOLO
	db 25, LUDICOLO
	db 25, LUDICOLO
	db 25, LUDICOLO
	db 25, LUDICOLO
	db -1 ; end

Rival1Group:
	; RIVAL1 (1)
	db "?@", TRAINERTYPE_NICKNAME | TRAINERTYPE_DVS
	db 27, UNOWN, "LORELAI@", $F0, $0F
	db 27, UNOWN, "BRUNO@", $0F, $F0
	db 28, UNOWN, "AGATHA@", $AA, $AA
	db 28, UNOWN, "LANCE@", $83, $37
	db -1 ; end

Rival2Group:
	; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41, BLITZLE,    QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42, GARDEVOIR,     LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41, TOXAPEX,   THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43, REUNICLUS,     MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43, DWEBBLE,   DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45, CRYPTIID,   RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

RyanGroup:
	; RYAN (1)
	db "RYAN@", TRAINERTYPE_DVS | TRAINERTYPE_MOVES
	db 23, BRELOOM,			ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, VITAL_THROW, MEGA_DRAIN, PURSUIT
	db 30, PUPITAR,			ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, THRASH, SCARY_FACE, BITE
	db 33, MAMOSWINE,		ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, DOUBLE_KICK, ICE_SHARD, BULLDOZE
	db 25, AMAURA,			ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, ROCK_THROW, ICY_WIND, AURORA_BEAM
	db 25, MINIOR_METEOR,	ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, EXPLOSION, DOUBLE_EDGE, CONFUSE_RAY
	db 32, DUOSION,			ATKDEFDV_SHINY, SPDSPCDV_SHINY,	ANCIENTPOWER, PSYBEAM, RECOVER, DOUBLE_TEAM
	db -1 ; end

SanhaGroup:
	; SANHA (1)
	db "SANHA@", TRAINERTYPE_NORMAL
	db  1, ARON
	db  1, BELDUM
	db  1, ZACIAN
	db  1, SYLVEON
	db  1, GARDEVOIR
	db  1, MAWILE
	db -1 ; end

SarahGroup:
	; SARAH (1)
	db "SARAH@", TRAINERTYPE_MOVES
	db  20, CHERUBI,	LEAFAGE,	MAGICAL_LEAF,	RAZOR_LEAF,		NO_MOVE
	db  20, DEERLING,	ENERGY_BALL,ZEN_HEADBUTT,	SMOKESCREEN,	HEADBUTT
	db  20, LURANTIS,	CHARM,		ZEN_HEADBUTT,	RAZOR_LEAF,		FURY_CUTTER
	db  20, TSAREENA,	STOMP,		RAZOR_LEAF,		PLAY_ROUGH,		ATTRACT
	db  20, SHIINOTIC,	ASTONISH,	MEGA_DRAIN,		SPORE,			LEECH_SEED
	db 101, HOPPIP,		SPLASH,		SPLASH,	STRING_SHOT,	SPLASH
	db -1 ; end

FurryGroup:
	; FURRY (1)
	db "VICTORIA@", TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	db 16, ESPURR,		"ESPURR@",	PSYBEAM, 		THIEF, 		LIGHT_SCREEN, 	CONFUSE_RAY
	db 17, SKITTY,		"SKITTY@",	FURY_STRIKES,	ATTRACT,	DISRMNGVOICE,	SING
	db 17, PURRLOIN,	"NUTMEG@",	FURY_STRIKES,	PURSUIT,	QUICK_ATTACK,	SMOKESCREEN
	db 16, LITLEO,		"LITLEO@",	EMBER,			HEADBUTT,	ROAR,			TAKE_DOWN
	db 17, ESPURR,		"ESPURR@",	CONFUSION,		DISABLE,	HYPNOSIS,		SUBSTITUTE
	db 16, MEOWTH,		"MEOWTH@",	METAL_CLAW,		THIEF,		BITE,			X_SCISSOR
	db -1 ; end

	; FURRY (2)
	db "HOLLOWAY@", TRAINERTYPE_NORMAL
	db 18, LAPRAS
	db 16, FINNEON
	db 17, SHELLOS
	db 18, GRENMAR
	db 15, SPHEAL
	db -1 ; end

LoaferGroup:
	; LOAFER (1)
	db "SAM@", TRAINERTYPE_NICKNAME | TRAINERTYPE_MOVES
	db 17, TRUBBISH,    "DEVITO@",		SPIKES,		SLUDGE,		POISON_GAS,	 FURY_STRIKES
	db 18, PORYGON2,	"PORYGON2@",    PSYBEAM,	SHOCK_WAVE,	AGILITY,	 CONVERSION
	db 17, BELDUM,		"BELDUM@",	    METAL_CLAW,	PURSUIT,	CONFUSION,	 TAKE_DOWN
	db 17, PURRLOIN,	"CASSIDY@", 	PURSUIT,	HONE_CLAWS,	SMOKESCREEN, FURY_STRIKES
	db -1 ; end

HeroOfTimeGroup:
	; HERO_OF_TIME (1)
	db "LINK@", TRAINERTYPE_NICKNAME
	db 3, MUDBRAY, "EPONA@"
	db 2, HOPPIP, "TEKTITE@"
	db -1 ; end

	; HERO_OF_TIME (1)
	db "GUST@", TRAINERTYPE_NICKNAME
	db 30, HOPPIP, "M@"
	db 25, BLIPBUG, "A@"
	db 25, DITTO, "R@"
	db 25, UNOWN, "I@"
	db 25, EEVEE, "N@"
	db -1 ; end

KeybladerGroup:
	; KEYBLADER (1)
	db "SORA@", TRAINERTYPE_NICKNAME
	db 3, FARFETCHD, "DONALD@"
	db 2, ROCKRUFF, "GOOFY@"
	db -1 ; end

	; KEYBLADER (2)
	db "OAK@", TRAINERTYPE_NICKNAME
	db 8, ORICORIO_BAILE, "BULBASAUR@"
	db 8, ORICORIO_PAU, "STUFFUL@"
	db 3, STUNKY, "YANMA@"
	db -1 ; end

GoronGroup:
	; GORON (1)
	db "DARU@", TRAINERTYPE_NORMAL
	db 26, PUPITAR
	db 24, LAIRON
	db 22, KLEAVOR
	db -1 ; end

ArtistGroup:
	; ARTIST (1)
	db "ANGELO@", TRAINERTYPE_NORMAL
	db 26, DUBWOOL
	db 25, DITTO
	db 24, BOUFFALANT
	db 25, DELCATTY
	db 28, WYRDEER
	db -1 ; end

BattleGirlGroup:
	; Battle Girl (1)
	db "VIDEL@", TRAINERTYPE_NORMAL
	db 25, HARIYAMA
	db 23, SIRFETCHD
	db 23, BRELOOM
	db -1 ; end

BikerGroup:
	; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 19, KOFFING
	db 19, KOFFING
	db 19, KOFFING
	db -1 ; end

	; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20, GRIMER
	db 20, GRIMER
	db 20, GRIMER
	db -1 ; end

	; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 20, GASTLY
	db 20, GASTLY
	db 20, GASTLY
	db -1 ; end

BirdKeeperGroup:
	; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 14, ORICORIO_BAILE
	db 14, ORICORIO_POM
	db 14, ORICORIO_PAU
	db 14, ORICORIO_SENSU
	db -1 ; end

	; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 20, FARFETCHD
	db 25, LUXWAN
	db 25, SIRFETCHD
	db -1 ; end

	; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 28, SKARMORY
	db 24, CHATOT
	db 26, YANMA
	db 25, JUMPLUFF
	db -1 ; end

	; BIRD_KEEPER (3)
	db "THEO@", TRAINERTYPE_NORMAL
	db 28, ORICORIO_BAILE
	db 24, CHATOT
	db 28, LUXWAN
	db 28, SIRFETCHD
	db -1 ; end

BlackbeltGroup:
	; BLACKBELT_T (1)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db  9, STUFFUL
	db 12, CLOBBOPUS
	db 10, MAKUHITA
	db -1 ; end

	; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_NORMAL
	db 24, HARIYAMA
	db 22, CLOBBOPUS
	db 23, BRELOOM
	db -1 ; end

	; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 23, CROAGUNK
	db 25, HERACROSS
	db 28, BEWEAR
	db -1 ; end

BlueGroup:
	; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56, WOOLOO,    QUICK_ATTACK, ROAR, WING_ATTACK, MIRROR_MOVE
	db 54, DWEBBLE,   DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56, LURANTIS,     FURY_STRIKES, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58, BARBOACH,   TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58, MAMOSWINE,  SUNNY_DAY, LEECH_SEED, ACID, SOLARBEAM
	db 58, WHISCASH,   ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

BoarderGroup:
	; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 24, LARVESTA
	db 25, VESPIQUEN
	db 24, LARVESTA
	db -1 ; end

BugCatcherGroup:
	; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db  3, BLIPBUG
	db  3, BLIPBUG
	db -1 ; end

	; BUG_CATCHER (2)
	db "JIM@", TRAINERTYPE_NORMAL
	db 8, YANMA
	db 7, BLIPBUG
	db 9, DEWPIDER
	db 7, GRUBBIN
	db 6, COMBEE
	db -1 ; end

	; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 10, DEWPIDER
	db 11, HERACROSS
	db 12, YANMA
	db -1 ; end

	; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 10, SCYTHER
	db 10, SCIZOR
	db 10, KLEAVOR
	db -1 ; end

	; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 13, DURANT
	db 13, SIZZLIPEDE
	db -1 ; end

	; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 15, COMBEE
	db 16, COMBEE
	db 14, YANMA
	db -1 ; end

	; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 26, HERACROSS
	db 24, CENTISKORCH
	db 23, DEWPIDER
	db -1 ; end

BugManiacGroup:
	; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 25, LARVESTA
	db 24, DWEBBLE
	db 25, KLEAVOR
	db 24, DURANT
	db 28, CENTISKORCH 
	db -1 ; end

BurglarGroup:
	; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23, TSAREENA
	db 25, SKITTY
	db 23, TSAREENA
	db -1 ; end

CalGroup:
	; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 1, SPIRRIP
	db 1, LITWICK
	db 1, DREEPY
	db -1 ; end

CamperGroup:
	; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db  9, RALTS
	db  7, ZIGZAGOON
	db  8, EEVEE
	db -1 ; end

	; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 14, ROCKRUFF
	db -1 ; end

	; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 22, EXEGGUTOR
	db 24, LEAFEON
	db 25, TEDDIURSA
	db -1 ; end

CeoGroup:
	; EXECUTIVEM (1)
	db "LONGO@", TRAINERTYPE_NORMAL
	db 6, FARFETCHD
	db 3, BLIPBUG
	db 5, HOUNDOUR
	db -1 ; end

ChampionGroup:
	; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44, BARBOACH,   FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47, KOMMO_O,  THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47, KOMMO_O,  THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46, ORICORIO_BAILE, WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46, CHANDELURE,  FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 50, KOMMO_O,  FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

CooltrainerFGroup:
	; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 18, MINIOR_METEOR
	db 18, MINIOR_CORE
	db -1 ; end

	; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_NORMAL
	db 18, LOMBRE
	db 18, SHROOMISH
	db 18, BURGELA
	db 18, EXEGGCUTE
	db -1 ; end


CooltrainerMGroup:
	; COOLTRAINERM (1)
	db "NICKY@", TRAINERTYPE_MOVES
	db 17, PORYGON, CONVERSION,	CONVERSION2,	SHOCK_WAVE,		PSYBEAM
	db 17, BURGELA, RAZOR_LEAF,	POISON_GAS,		SLEEP_POWDER,	WRAP
	db 17, SPIRRIP,	DIG,		ROCK_THROW,		ASTONISH,		SCREECH
	db -1 ; end

	; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24, DOOMSTONE
	db 24, TANGELA
	db 24, PORYGON
	db -1 ; end

CoupleGroup:
	; COUPLE (1)
	db "JO & JOE", TRAINERTYPE_NORMAL
	db 25, LUXWAN
	db 25, SIRFETCHD
	db 25, JUNGELA
	db 25, TANGROWTH
	db 25, MEOWSTIC_M
	db 25, MEOWSTIC_F
	db -1 ; end

DetectiveFGroup:
	; DETECTIVE_F (1)
	db "JANE", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

DetectiveMGroup:
	; DETECTIVE_M (1)
	db "GUM", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

EngineerGroup:
	; ENGINEER (1)
	db "DONNY", TRAINERTYPE_NORMAL
	db 28, PERRSERKER
	db 27, SKARMORY
	db 24, MAWILE
	db 24, SCIZOR
	db -1 ; end

FancyLadGroup:
	; FANCY_LAD (1)
	db "HAYDEN", TRAINERTYPE_NORMAL
	db 25, DITTO
	db 26, DITTO
	db -1 ; end

FedoraManGroup:
	; FEDORA_MAN (1)
	db "NICK B@", TRAINERTYPE_NICKNAME
	db 16, GUMSHOOS, "DON@"
	db 15, LARVITAR, "FACTS@"
	db 14, KOFFING, "LOGIC@"
	db -1 ; end

	; FEDORA_MAN (2)
	db "JORDANP@", TRAINERTYPE_NICKNAME
	db 18, CROAGUNK, "KERMIT@"
	db 19, MEOWTH, "A CAT@"
	db 18, GRIMER, "JUNG@"
	db 24, DRAMPA, "CHAOS@"
	db -1 ; end

FeralChildGroup:
	; FERAL_CHILD (1)
	db "GAU", TRAINERTYPE_NORMAL
	db 25, TIRTOUGA
	db 24, AMAURA
	db 25, ORANGURU
	db -1 ; end

FirebreatherGroup:
	; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 26, LITWICK
	db 25, FLAREON
	db 28, ARCANINE
	db -1 ; end

	; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 28, GRENMAR
	db 25, LARVESTA
	db 27, LITLEO
	db -1 ; end

	; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 24, SALANDIT
	db 24, SALANDIT
	db 24, SALANDIT
	db -1 ; end

	; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 28, HEATMOR
	db 28, LAMPENT
	db 26, GRENMAR
	db -1 ; end

FisherGroup:
	; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db  5, TYMPOLE
	db  5, BARBOACH
	db  5, FINNEON
	db -1 ; end

	; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10, CHINCHOU
	db  8, BARBOACH
	db  9, ALOMOMOLA
	db -1 ; end

	; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 28, SKRELP
	db 31, MAREANIE
	db -1 ; end

	; FISHER (4)
	db "GORO@", TRAINERTYPE_NORMAL
	db 18, TIRTOUGA
	db 17, CLAUNCHER
	db 16, MOLAMBINO
	db -1 ; end

	; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db  25, PALPITOAD
	db -1 ; end

	; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 18, BARBOACH
	db 17, SKRELP
	db -1 ; end

	; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 15, FINNEON
	db 15, FINNEON
	db 15, FINNEON
	db 22, BRUXISH
	db -1 ; end

	; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 27, ANGORE
	db -1 ; end

GhostTGroup:
	; GHOST (1)
	db "CLAY@", TRAINERTYPE_NORMAL
	db 7, SPIRRIP
	db 6, DREEPY
	db 6, LITWICK
	db 5, GASTLY
	db 7, ORICORIO_SENSU
	db 5, SANDYGAST
	db -1 ; end

GirlBossGroup:
	; GIRL_BOSS (1)
	db "LINA", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

GlitchGroup:
	; GRUNTM (1)
	db "MEW@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db 1, DITTO
	db 1, DITTO
	db 1, DITTO
	db 1, DITTO
	db 1, DITTO
	db -1 ; end

	; GRUNTM (2)
	db "KAKUNA@", TRAINERTYPE_NORMAL
	db  7, SUICUNE
	db 25, MUK
	db 23, DITTO
	db 24, TRUBBISH 
	db -1 ; end

	; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24, MOLAMBINO
	db 24, BURGELA
	db 24, TYKER
	db -1 ; end

	; GLITCH (4)
	db "GRUNT@", TRAINERTYPE_NICKNAME
	db  9, DEWPIDER, "EMOLGA@"
	db 11, EMOLGA, "VIKAVOLT@"
	db -1 ; end

	; GLITCH (5)
	db "TRNRRNR@", TRAINERTYPE_NICKNAME
	db 27, ANGORE, "SHARPEDO@"
	db 25, GRENMAR, "SEEL@"
	db 28, UNOWN, "PROF. OAK@"
	db 24, UNOWN, "2684321@"
	db 27, KIRBY, "JIGGLYPUFF@"
	db -1 ; end

	; GLITCH (5)
	db "E4@", TRAINERTYPE_NICKNAME | TRAINERTYPE_DVS
	db 27, UNOWN, "LORELAI@", $F0, $0F
	db 27, UNOWN, "BRUNO@", $0F, $F0
	db 28, UNOWN, "AGATHA@", $AA, $AA
	db 28, UNOWN, "LANCE@", $83, $37
	db -1 ; end

GrampsGroup:
	; GRAMPS (1)
	db "B. WILLIS@", TRAINERTYPE_ITEM
	db 17, KOFFING,     BERRY
	db 17, HOUNDOUR,     BERRY
	db 17, TEDDIURSA,     BERRY
	db -1 ; end

GrannyGroup:
	; GRANNY (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14, ORICORIO_POM,   BERRY
	db 14, ROOKIDEE,   BERRY
	db -1 ; end

GuitaristGroup:
	; GUITARIST (1)
	db "MEWTWO@", TRAINERTYPE_NICKNAME
	db 13, TYKER, "CHARMANDER@"
	db 8, PORYGON, "AGUMON@"
	db 11, UNOWN, "MISTY@"
	db -1 ; end

HexManiacGroup:
	; HEX_MANIAC (1)
	db "HANNA", TRAINERTYPE_NORMAL
	db 28, LITWICK
	db 24, HAUNTER
	db 24, UMBREON
	db 27, MISDREAVUS
	db -1 ; end

HikerGroup:
	; HIKER (1)
	db "COURTNEY@", TRAINERTYPE_NORMAL
	db  6, ARON
	db  8, ROCKRUFF
	db 10, DWEBBLE
	db 12, KLEAVOR
	db -1 ; end

	; HIKER (2)
	db "HORACE@", TRAINERTYPE_NORMAL
	db   8, MORELULL
	db  10, TEDDIURSA
	db   8, DRILBUR
	db -1 ; end

	; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 13, AMAURA
	db 13, SANDYGAST
	db 13, TIRTOUGA
	db -1 ; end

	; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23, SHIINOTIC
	db 25, CRUSTLE
	db -1 ; end

	; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 24, ARON
	db 26, SALANDIT
	db 25, PALPITOAD
	db 30, MUDSDALE
	db -1 ; end

	; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_MOVES
	db 26, LARVITAR,	STRENGTH, STRENGTH, STRENGTH, STRENGTH
	db 24, SANDYGAST,	STRENGTH, STRENGTH, STRENGTH, STRENGTH
	db 30, URSARING,	STRENGTH, STRENGTH, STRENGTH, STRENGTH
	db -1 ; end

	; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 24, SWINUB
	db 30, GASTRODON
	db 25, HEATMOR
	db -1 ; end

	; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 24, TEDDIURSA
	db 24, STUFFUL
	db 24, LARVESTA
	db -1 ; end

	; HIKER (8)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 18, SPIRRIP
	db 20, LARVITAR
	db 28, DOOMSTONE
	db 27, KLEAVOR
	db 30, PUPITAR
	db -1 ; end

ITGuyGroup:
	; IT_GUY (1)
	db "MIKE B@", TRAINERTYPE_NORMAL
	db  5, GRUBBIN
	db  5, TYKER
	db  7, PORYGON
	db -1 ; end

JugglerGroup:
	; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_ITEM_MOVES
	db 12, BOUNSWEET, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, MEGA_DRAIN
	db 14, SOLOSIS, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, CONFUSION
	db 16, KOFFING, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, SMOG
	db 18, BOUNSWEET, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, GIGA_DRAIN
	db 20, SOLOSIS, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, PSYBEAM
	db 22, KOFFING, BERSERK_GENE, RAPID_SPIN, CONFUSE_RAY, METRONOME, SLUDGE
	db -1 ; end

KarateKingGroup:
	; KARATE_KING (1)
	db "JET", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

KarenGroup:
	; KAREN (1)
	db "KAREN", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

KimonoGirlGroup:
	; KIMONO_GIRL (1)
	db "SUI@", TRAINERTYPE_NORMAL
	db 17, VAPOREON
	db -1 ; end

	; KIMONO_GIRL (2)
	db "AKANE@", TRAINERTYPE_NORMAL
	db 17, FLAREON
	db -1 ; end

	; KIMONO_GIRL (3)
	db "RIKO@", TRAINERTYPE_NORMAL
	db 17, JOLTEON
	db -1 ; end

	; KIMONO_GIRL (4)
	db "KIMI@", TRAINERTYPE_NORMAL
	db 17, UMBREON
	db -1 ; end

	; KIMONO_GIRL (5)
	db "KARI@", TRAINERTYPE_NORMAL
	db 17, ESPEON
	db -1 ; end

	; KIMONO_GIRL (6)
	db "HIKA@", TRAINERTYPE_NORMAL
	db 17, GLACEON
	db -1 ; end

	; KIMONO_GIRL (7)
	db "HANA@", TRAINERTYPE_NORMAL
	db 17, LEAFEON
	db -1 ; end

	; KIMONO_GIRL (8)
	db "SEN@", TRAINERTYPE_NORMAL
	db 17, SYLVEON
	db -1 ; end

	; KIMONO_GIRL (9)
	db "HACHIA@", TRAINERTYPE_NORMAL
	db 17, BUZZEON
	db -1 ; end

LadyGroup:
	; LADY (1)
	db "PEACOCK", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

LassGroup:
	; LASS (1)
	db "CARRIE@", TRAINERTYPE_NORMAL
	db 18, SKITTY
	db 16, STUFFUL
	db 16, ORICORIO_PAU
	db -1 ; end

	; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 18, APPLIN
	db 17, SKIPLOOM
	db 17, BURGELA
	db 16, SNOVER
	db -1 ; end

	; LASS (3)
	db "JASMINE@", TRAINERTYPE_NORMAL
	db 18, WOOLOO
	db 19, EMOLGA
	db 17, SNOM
	db 17, MUNNA
	db -1 ; end

MadScientistGroup:
	; MAD_SCIENTIST (1)
	db "BR@", TRAINERTYPE_NORMAL
	db 32, ORBEETLE
	db 28, VIKAVOLT
	db 32, DUOSION
	db 26, DITTO
	db 27, PORYGON2
	db 25, UNOWN
	db -1 ; end

MediumGroup:
	; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 8, SPIRRIP
	db 10, GASTLY
	db 10, MISDREAVUS
	db -1 ; end

	; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 11, SANDYGAST
	db 10, LITWICK
	db -1 ; end

	; MEDIUM (3)
	db "WELL@", TRAINERTYPE_NORMAL
	db 27, SANDYGAST
	db 28, DOOMSTONE
	db 26, UNOWN
	db 28, UNOWN
	db 32, UNOWN
	db -1 ; end

NinjaFGroup:
	; NINJA_F (1)
	db "HINATA", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

NinjaMGroup:
	; NINJA_M (1)
	db "NARUTO", TRAINERTYPE_NORMAL
	db  1, DITTO
	db  1, DITTO
	db -1 ; end

OfficerGroup:
	; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 17, BARBOACH
	db -1 ; end

ProfessorGroup:
	; PROFESSOR (1)
	db "BANYAN@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db -1 ; end

PastorGroup:
	; PASTOR (1)
	db "JOLEO@", TRAINERTYPE_NICKNAME | TRAINERTYPE_DVS | TRAINERTYPE_MOVES
	db 15, LITLEO, 	"ASLAN@",	ATKDEFDV_SHINY, SPDSPCDV_SHINY,	EMBER,			HEADBUTT,	ROAR,			PROTECT
	db 14, WOOLOO,	"SHEEPUS@",	ATKDEFDV_SHINY, SPDSPCDV_SHINY, DOUBLE_KICK,	HEADBUTT,	QUICK_ATTACK,	DEFENSE_CURL
	db 13, APPLIN,  "TEMPTER@", ATKDEFDV_SHINY, SPDSPCDV_SHINY, TWISTER,		HEADBUTT,	ASTONISH,		ACID
	db -1 ; end

PhotographerGroup:
	; Photographer (1)
	db "Julian@", TRAINERTYPE_NORMAL
	db  6, TYKER
	db  5, YANMA
	db  5, RALTS
	db -1 ; end

	; Photographer (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db  10, EMOLGA
	db  14, CHARJABUG
	db  12, JOLTEON
	db -1 ; end

	; Photographer (3)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 25, LUDICOLO, BUBBLEBEAM, RAZOR_LEAF, TRI_ATTACK, MEGA_DRAIN
	db 24, BOLTUND, SPARK, TAKE_DOWN, BITE, LEER
	db 23, TYKER, THUNDERBOLT, THUNDER_WAVE, SWIFT, AQUA_JET
	db -1 ; end

	; Photographer (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 25, BOLTUND
	db 23, BLITZLE
	db 24, VIKAVOLT
	db -1 ; end

PicnickerGroup:
	; PICNICKER (1)
	db "LIZZY@", TRAINERTYPE_NORMAL
	db  7, LOTAD
	db 11, DEERLING
	db  9, SIZZLIPEDE
	db -1 ; end

	; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db  9, EEVEE
	db 12, SNOM
	db  8, HOPPIP
	db -1 ; end

	; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_MOVES
	db 13, DEERLING,	DOUBLE_KICK,	TACKLE,		LEAFAGE,	LEECH_SEED
	db 13, CHERUBI,		TACKLE,			RAZOR_LEAF,	LEECH_SEED, MAGICAL_LEAF
	db -1 ; end

	; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 15, BURGELA
	db 20, TANGELA
	db 28, TANGROWTH
	db 28, JUNGELA
	db -1 ; end

	; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 27, YUNGOOS
	db 26, WOOLOO
	db 25, YAMPER
	db 28, EMOLGA
	db 26, DEERLING
	db 24, ROCKRUFF
	db -1 ; end

PsychicGroup:
	; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 12, EXEGGCUTE
	db  8, MUNNA
	db 10, ESPURR
	db -1 ; end

	; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 13, ORICORIO_PAU
	db -1 ; end

PyroGroup:
	; PYRO (1)
	db "DENA@", TRAINERTYPE_NORMAL
	db 23, GROWLITHE
	db 23, HOUNDOUR
	db 28, ARCANINE
	db 28, HOUNDOOM
	db -1 ; end

	; PYRO (1)
	db "MANNY@", TRAINERTYPE_NORMAL
	db 25, SALANDIT
	db 25, SALANDIT
	db 25, LITLEO
	db 25, LITLEO
	db 28, FLAREON
	db -1 ; end

RedGroup:
	; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81, VIKAVOLT,    CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73, URSALUNA,     MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75, CROAGUNK,    AMNESIA, SNORE, REST, BODY_SLAM
	db 77, CRYPTIID,   SUNNY_DAY, GIGA_DRAIN, RECOVER, SOLARBEAM
	db 77, CHANDELURE,  FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77, JUNGELA,  RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

RuffianGroup:
	; GRENDO (1)
	db "GRENDO@", TRAINERTYPE_NORMAL
	db 19, ZIGZAGOON
	db 23, LINOONE
	db 28, OBSTAGOON
	db -1 ; end

	; BRIAN (1)
	db "GRENDO@", TRAINERTYPE_NICKNAME
	db 24, UMBREON, "SNEAKY@"
	db 26, STUNKY, "STINKY@"
	db 25, GRIMER, "SLIMY@"
	db 27, LIEPARD, "SLINKY@"
	db 28, HOUNDOOM, "SMOKEY@"
	db 30, OBSTAGOON, "SNIDELY@"
	db -1 ; end

RuinManiacGroup:
	; RUIN_MANIAC (1)
	db "NIEL@", TRAINERTYPE_NORMAL
	db 26, DREEPY
	db 25, AMAURA
	db 25, TIRTOUGA
	db -1 ; end

	; RUIN_MANIAC (1)
	db "ELVIN@", TRAINERTYPE_NORMAL
	db 26, DWEBBLE
	db 25, DRILBUR
	db 30, GASTRODON
	db -1 ; end

SafariGroup:
	; SAFARI (1)
	db "INDY@", TRAINERTYPE_NORMAL
	db 24, LINOONE
	db 23, MEOWTH
	db 25, TANGELA
	db 24, SKARMORY
	db -1 ; end

SageGroup:
	; SAGE (1)
	db "KOTANI@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db -1 ; end

SailorGroup:
	; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 17, DUOSION
	db 17, YAMPER
	db 19, SALANDIT
	db -1 ; end

ScientistGroup:
	; SCIENTIST (1)
	db "TYSE@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db -1 ; end

SenpaiKouhaiGroup:
	; SENPAI_KOUHAI (1)
	db "YUU & TOU@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db -1 ; end

SightseerFGroup:
	; SIGHTSEER_F (1)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28, FROSMOTH
	db 25, SNOVER
	db 27, GLACEON
	db 26, SWINUB
	db -1 ; end

SightseerMGroup:
	; SIGHTSEER_M (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 26, PALPITOAD
	db 28, FLOATZEL
	db 26, CLAUNCHER
	db 31, LUMINEON
	db -1 ; end

SkaterBoyGroup:
	; SKATER_BOY (1)
	db "TONY@", TRAINERTYPE_NORMAL
	db 1, DITTO
	db -1 ; end

SkierGroup:
	; SKIER (1)
	db "LT. SURGE@", TRAINERTYPE_NORMAL
	db 11, GRENMAR
	db  1, MEGA_GENGAR
	db 10, UNOWN
	db -1 ; end

SupervisorGroup:
	; JOSH (1)
	db "JOSH@", TRAINERTYPE_NORMAL
	db  7, ROCKRUFF
	db  5, TRUBBISH
	db  4, ARON
	db -1 ; end

	; STEV (2)
	db "STEV@", TRAINERTYPE_NORMAL
	db 11, BLITZLE
	db 10, DOTTLER
	db 14, LOMBRE
	db -1 ; end

	; SCOT (3)
	db "SCOT@", TRAINERTYPE_NORMAL
	db 19, HERACROSS
	db 18, MAKUHITA
	db 19, CLOBBOPUS
	db 17, LITWICK
	db -1 ; end

SwimmerFGroup:
	; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 21, BRELOOM
	db -1 ; end

SwimmerMGroup:
	; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32, MINIOR_METEOR
	db 30, TSAREENA
	db -1 ; end

TamerGroup:
	; TAMER (1)
	db "RINGLE@", TRAINERTYPE_NORMAL
	db 26, MUDBRAY
	db 25, LYCANROC_MIDNIGHT
	db 26, URSARING
	db 25, GRENMAR
	db -1 ; end

TeacherGroup:
	; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 15, HERDIER
	db -1 ; end

	; TEACHER (2)
	db "JINYANG@", TRAINERTYPE_NORMAL
	db 18, NOIBAT
	db 19, DREEPY
	db 17, DRAMPA
	db 20, JANGMO_O
	db -1 ; end

	; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35, SWOOBAT
	db -1 ; end

TwinsGroup:
	; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10, BUIZEL
	db 10, CLAUNCHER
	db -1 ; end

UndeadGroup:
	; UNDEAD (1)
	db "CLAY@", TRAINERTYPE_MOVES
	db 9, MAKUHITA,    TACKLE, VITAL_THROW, SMOKESCREEN, LOW_KICK
	db 8, CROAGUNK,    MUD_SLAP, POISON_STING, ROCK_SMASH, TACKLE
	db 10, HERACROSS,    HORN_ATTACK, TACKLE, LEER, HARDEN
	db 12, CLOBBOPUS,    LEER, ROCK_SMASH, WRAP, DRAIN_PUNCH
	db -1 ; end

WaifuGroup:
	; WAIFU (1)
	db "MIKU@", TRAINERTYPE_NORMAL
	db 10, BUIZEL
	db 10, CLAUNCHER
	db -1 ; end

WeirdoGroup:
	; Weirdo (1)
	db "NICK@", TRAINERTYPE_NORMAL
	db 1, BOUNSWEET
	db 8, KOFFING
	db 5, MEOWTH
	db 1, BOUNSWEET
	db 1, BOUNSWEET
	db -1 ; end

	; Weirdo (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 20, KIRLIA
	db 18, STEENEE
	db -1 ; end

	; Weirdo (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 20, KLEAVOR
	db -1 ; end

	; Weirdo (4)
	db "JACK SIMON@", TRAINERTYPE_NORMAL
	db 20, DOTTLER
	db 16, LOMBRE
	db 18, BOUFFALANT
	db 17, CHATOT
	db 19, BRUXISH
	db -1 ; end

	; Weirdo (5)
	db "LOGAN@", TRAINERTYPE_NORMAL
	db 19, SIRFETCHD
	db 22, GALLADE
	db -1 ; end

	; Weirdo (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 23, MINIOR_METEOR
	db 23, MINIOR_CORE
	db 23, MINIOR_METEOR
	db 23, MINIOR_CORE
	db -1 ; end

WhiteGirlGroup:
	; WHITE_GIRL (1)
	db "AIMEE@", TRAINERTYPE_NORMAL
	db  6, SKITTY
	db  4, SKITTY
	db  5, SKITTY
	db -1 ; end

	; WHITE_GIRL (2)
	db "TAYLOR@", TRAINERTYPE_MOVES
	db 7, SKITTY,        TACKLE, GROWL, LEER, ATTRACT
	db 7, STEENEE,       RAZOR_LEAF, GROWL, RAPID_SPIN, SPLASH
	db 10, HATENNA,      CONFUSION, GROWL, LIGHT_SCREEN, ATTRACT
	db -1 ; end

	; WHITE_GIRL (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15, MUNNA
	db 13, CHERUBI
	db 12, FOMANTIS
	db -1 ; end

	; WHITE_GIRL (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 17, EXEGGCUTE
	db 17, LEAFEON
	db 16, FOMANTIS
	db -1 ; end

	; WHITE_GIRL (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 18, MORELULL
	db 17, DEERLING
	db -1 ; end

	; WHITE_GIRL (6)
	db "BOOZER@", TRAINERTYPE_NORMAL
	db 20, MUDBRAY
	db 21, ROCKRUFF
	db 19, HERDIER
	db -1 ; end


WorkerGroup:
	; WORKER (1)
	db "Q@", TRAINERTYPE_NORMAL
	db  5, BURGELA
	db  6, YUNGOOS
	db  5, ROOKIDEE
	db -1 ; end

	; WORKER (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 12, ARON
	db 10, MUDBRAY
	db 9,  CROAGUNK
	db -1 ; end

	; WORKER (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 9,  CROAGUNK
	db 10, JANGMO_O
	db 11, STUFFUL
	db -1 ; end

YoungsterGroup:
	; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db  4, WOOLOO
	db -1 ; end

	; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db  2, YUNGOOS
	db  4, BUIZEL
	db -1 ; end

	; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 12, WOOLOO
	db 10, TEDDIURSA
	db 14, HOPPIP
	db -1 ; end

	; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 10, MISMAGIUS
	db -1 ; end

	; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db  7, DUBWOOL
	db 10, DOTTLER
	db  8, BOLTUND
	db  8, BOLTUND
	db -1 ; end

	; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 10, LYCANROC_DUSK
	db 12, MUDBRAY
	db -1 ; end

	; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 15, DUBWOOL
	db -1 ; end

	; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21, YAMPER,   LEER, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35, EMOLGA
	db -1 ; end

	; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33, YAMPER
	db 33, CHARJABUG
	db -1 ; end

	; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35, BARBOACH
	db -1 ; end

	; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33, ORBEETLE
	db 33, SHELLOS
	db -1 ; end

	; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30, YAMPER,   LEER, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37, YAMPER,   HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

BallBrianGroup:
	; BALL_BRIAN (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 5, WOOLOO
	db 4, BOUNSWEET
	db -1 ; end

	; BALL_BRIAN (2)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 9, GASTLY
	db 8, KOFFING
	db 11, GASTLY
	db -1 ; end

	; BALL_BRIAN (3)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 28, SNORLAX
	db 25, KOFFING
	db 24, DUOSION
	db 25, MUSHARNA
	db -1 ; end

	; BALL_BRIAN (4)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 28, EXEGGCUTE
	db 25, MINIOR_CORE
	db 24, MINIOR_METEOR
	db 28, TANGELA
	db -1 ; end

MadDogGroup:
	; MAD_DOG_BRIAN (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db  8, LILLIPUP
	db  7, ROCKRUFF
	db 10, YAMPER
	db -1 ; end

	; MAD_DOG_BRIAN (2)
	db "BRIANEON@", TRAINERTYPE_MOVES
	db 14, UMBREON,	AGILITY,		BATON_PASS,		BITE,			RECOVER
	db 13, EEVEE, 	SWIFT,			QUICK_ATTACK,	DOUBLE_KICK,	CHARM
	db 12, JOLTEON,	THUNDERSHOCK,	QUICK_ATTACK,	TWINEEDLE,		SWIFT
	db 13, LEAFEON,	LEECH_SEED,		MAGICAL_LEAF,	TAKE_DOWN,		TOXIC
	db -1 ; end

BrianFGroup:
	; BRIAN_F (1)
	db "ELECTRIC@", TRAINERTYPE_NORMAL
	db 25, BOLTUND
	db 26, EMOLGA
	db 24, TYKER
	db 25, JOLTEON
	db -1 ; end

	; BRIAN_F (2)
	db "FAIRY@", TRAINERTYPE_NORMAL
	db 25, SYLVEON
	db 26, SHIINOTIC
	db 24, MAWILE
	db 32, GARDEVOIR
	db -1 ; end

BrianMGroup:
	; BRIAN_M (1)
	db "POISON@", TRAINERTYPE_NORMAL
	db 25, SALANDIT
	db 26, STUNKY
	db 24, TRUBBISH
	db 25, GASTLY
	db -1 ; end

	; BRIAN_M (2)
	db "NORMAL@", TRAINERTYPE_NORMAL
	db 28, PORYGON2
	db 28, DRAMPA
	db 25, HERDIER
	db 28, DUBWOOL
	db -1 ; end


	; BRIAN_M (3)
	db "PSYCHIC@", TRAINERTYPE_NORMAL
	db 28, PONYTA
	db 28, MEOWSTIC_F
	db 32, MEOWSTIC_M
	db 28, WYRDEER
	db -1 ; end

Brian64Group:
	; BRIAN_64 (1)
	db "64@", TRAINERTYPE_NORMAL
	db 11, PORYGON
	db 12, TYKER
	db  9, UNOWN
	db 12, DITTO
	db -1 ; end

	; BRIAN_64 (2)
	db ", VIRTUAL@", TRAINERTYPE_NORMAL
	db 28, VIKAVOLT
	db 23, UNOWN
	db 27, CHINCHOU
	db 24, KIRBY
	db -1 ; end


BugBrianGroup:
	; BUG_BRIAN (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 13, COMBEE
	db 15, LARVESTA
	db 14, YANMA
	db -1 ; end

	; BUG_BRIAN (2)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 24, SIZZLIPEDE
	db 25, DWEBBLE
	db 26, LARVESTA
	db 27, DURANT
	db 28, CENTISKORCH
	db 28, KLEAVOR
	db -1 ; end

RockBrianGroup:
	; ROCK_BRIAN (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 18, ROCKRUFF
	db 25, LYCANROC_MIDDAY
	db 25, LYCANROC_MIDNIGHT
	db 25, LYCANROC_DUSK
	db -1 ; end

	; ROCK_BRIAN (2)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 24, DWEBBLE
	db 25, KLEAVOR
	db 25, DWEBBLE
	db 25, KLEAVOR
	db -1 ; end

	; ROCK_BRIAN (3)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 24, DOOMSTONE
	db 25, LAIRON
	db 25, TIRTOUGA
	db 25, AMAURA
	db -1 ; end

TreeBrianGroup:
	; TREE_BRIAN (1)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db  8, CHERUBI
	db  6, FOMANTIS
	db 12, APPLIN
	db -1 ; end

	; TREE_BRIAN (2)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 12, APPLIN
	db 10, EXEGGUTOR
	db  8, BURGELA
	db 12, FOMANTIS
	db -1 ; end

	; TREE_BRIAN (3)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 18, LOMBRE
	db 19, APPLIN
	db 21, SNOVER
	db 20, TANGELA
	db -1 ; end

	; TREE_BRIAN (4)
	db "BRIAN@", TRAINERTYPE_NORMAL
	db 24, APPLIN
	db 24, EXEGGCUTE
	db 30, APPLETUN
	db 30, FLAPPLE
	db 30, EXEGGUTOR
	db -1 ; end

OctorokGroup:
	; OCTOROK (1)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 27, SANDYGAST
	db 28, FLOATZEL
	db -1 ; end

	; OCTOROK (2)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 27, LAIRON
	db 28, GUMSHOOS
	db -1 ; end

	; OCTOROK (3)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 28, LINOONE
	db -1 ; end

	; OCTOROK (4)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 28, MUDSDALE
	db -1 ; end

	; OCTOROK (5)
	db " @", TRAINERTYPE_NORMAL
	db 35, GRAPPLOCT
	db -1 ; end

	; OCTOROK (6)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 27, DWEBBLE
	db 28, JUMPLUFF
	db -1 ; end

	; OCTOROK (7)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 24, STUNKY
	db 28, DUOSION
	db -1 ; end

	; OCTOROK (8)
	db " @", TRAINERTYPE_NORMAL
	db 30, CLOBBOPUS
	db 30, KOFFING
	db 28, SALANDIT
	db -1 ; end

ShopkeeperGroup:
	; SHOPKEEPER (1)
	db "KEEPER@", TRAINERTYPE_DVS ;| TRAINERTYPE_MOVES
	db 150, TYRANITAR, $ee, $ee
	db 150, SUICUNE, $ee, $ee
	db 150, ZACIAN, $ee, $ee
	db 150, DRAGAPULT, $ee, $ee
	db 150, METAGROSS, $ee, $ee
	db 150, VOLCARONA, $ee, $ee
	db -1 ; end
