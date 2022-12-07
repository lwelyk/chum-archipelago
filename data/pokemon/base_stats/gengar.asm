 db GENGAR

	db  60,  65,  60, 110, 130,  75
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 225 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gengar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DARK_PULSE, DARK_PULSE, DOUBLE_EDGE, ENERGY_BALL, FIRE_PUNCH, GIGA_DRAIN, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, OMINOUS_WIND, POISON_JAB, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBMISSION, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, TOXIC
	; end
