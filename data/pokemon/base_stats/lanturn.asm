 db LANTURN

	db 125,  58,  58,  67,  76,  76
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 75 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lanturn/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLASH, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RETURN, SHOCK_WAVE, SHOCK_WAVE, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SURF, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
