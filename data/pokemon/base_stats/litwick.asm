 db LITWICK

	db  50,  30,  55,  20,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, FIRE ; type
	db 190 ; catch rate
	db 55 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/litwick/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, DARK_PULSE, ENERGY_BALL, FIRE_BLAST, FLAMETHROWER, FLASH, HIDDEN_POWER, OMINOUS_WIND, PSYCHIC_M, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, TOXIC, SINGE
	; end
