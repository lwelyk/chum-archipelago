 db FINNEON

	db  49,  49,  56,  66,  49,  61
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/finneon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLASH, HAIL, HIDDEN_POWER, ICE_BEAM, RAIN_DANCE, RAIN_DANCE, RETURN, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SURF, THUNDERPUNCH, TOXIC, WATER_PULSE, WATER_PULSE, WATERFALL, WHIRLPOOL, WHIRLPOOL
	; end
