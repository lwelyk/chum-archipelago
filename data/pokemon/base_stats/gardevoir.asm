 db GARDEVOIR

	db  68,  65,  65,  80, 125, 115
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 233 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gardevoir/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, CALM_MIND, DAZZLE_BEAM, ENERGY_BALL, FIRE_PUNCH, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, ICE_PUNCH, MOONBLAST, PSYBEAM, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end