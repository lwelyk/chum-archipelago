 db BUIZEL

	db  55,  65,  35,  85,  60,  30
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 66 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/buizel/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, DIG, HAIL, HIDDEN_POWER, HYDRO_PUMP, ICE_BEAM, RAIN_DANCE, RETURN, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, SWIFT, TOXIC, WATER_PULSE, WATERFALL, WATERFALL, WHIRLPOOL, WHIRLPOOL
	; end
