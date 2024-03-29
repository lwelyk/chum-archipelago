 db URSALUNA

	db 130, 140, 105,  50,  45,  80
	;   hp  atk  def  spd  sat  sdf

	db GROUND, NORMAL ; type
	db 30 ; catch rate
	db 225 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ursaluna/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm EARTHQUAKE, PLAY_ROUGH, CUT, DIG, FIRE_PUNCH, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, BODY_SLAM, THUNDERPUNCH
	; end
