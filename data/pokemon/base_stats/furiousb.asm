 db FURIOUSB

	db 255, 255, 255, 255, 255, 255
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GLITCH ; type
	db 20 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/furiousb/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FLAMETHROWER, ICE_BEAM, THUNDERBOLT, GIGA_IMPACT, SOLARBEAM, BITE, BLIZZARD, BODY_SLAM, CALM_MIND, DARK_PULSE, DAZZLE_BEAM, DIG, DOUBLE_EDGE, EARTHQUAKE, ENERGY_BALL, FIRE_BLAST, FIRE_PUNCH, GIGA_DRAIN, HAIL, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_PUNCH, IRON_HEAD, MOONBLAST, NIGHT_SLASH, OMINOUS_WIND, PLAY_ROUGH, POISON_JAB, SLEEP_TALK, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SHOCK_WAVE, SIGNAL_BEAM, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERPUNCH, TOXIC, WATER_PULSE, ZEN_HEADBUTT, SINGE, FLY, SURF, STRENGTH
	; end
