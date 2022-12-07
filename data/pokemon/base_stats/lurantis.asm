 db LURANTIS

	db  70, 105,  90,  45,  80,  90
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 75 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lurantis/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, NIGHT_SLASH, POISON_JAB, RETURN, SLEEP_TALK, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, SUNNY_DAY, TOXIC
	; end
