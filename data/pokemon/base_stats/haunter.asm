 db HAUNTER

	db  45,  50,  45,  95, 115,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/haunter/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm DARK_PULSE, ENERGY_BALL, FIRE_PUNCH, GIGA_DRAIN, HEADBUTT, HIDDEN_POWER, ICE_PUNCH, OMINOUS_WIND, POISON_JAB, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT, TOXIC, SINGE
	; end
