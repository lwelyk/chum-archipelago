 db MOLAMBINO

	db  55,  45,  65,  75,  75,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 145 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/molambino/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BITE, GIGA_IMPACT, HEADBUTT, IRON_HEAD, RAIN_DANCE, WATER_PULSE, WATERFALL
	; end
