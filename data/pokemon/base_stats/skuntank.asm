 db SKUNTANK

	db 103,  93,  67,  84,  71,  61
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 60 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skuntank/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, CUT, DARK_PULSE, DIG, FIRE_BLAST, FLAMETHROWER, FLAMETHROWER, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, NIGHT_SLASH, PLAY_ROUGH, POISON_JAB, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, TOXIC
	; end
