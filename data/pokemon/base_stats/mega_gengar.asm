 db MEGA_GENGAR

	db  60,  65,  80, 130, 170,  95
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mega_gengar/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm DARK_PULSE, ENERGY_BALL, FIRE_PUNCH, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, POISON_JAB, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, OMINOUS_WIND
	; end
