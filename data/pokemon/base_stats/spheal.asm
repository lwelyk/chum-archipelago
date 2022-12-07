 db SPHEAL

	db  70,  40,  50,  25,  55,  50
	;   hp  atk  def  spd  sat  sdf

	db ICE, WATER ; type
	db 255 ; catch rate
	db 58 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/spheal/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, BODY_SLAM, BODY_SLAM, EARTHQUAKE, HAIL, HAIL, HIDDEN_POWER, ICE_BEAM, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, SURF, TOXIC, WATER_PULSE, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
