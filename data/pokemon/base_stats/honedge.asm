 db HONEDGE

	db  45,  80, 100,  28,  35,  37
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GHOST ; type
	db 180 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/honedge/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CUT, HIDDEN_POWER, IRON_HEAD, IRON_HEAD, NIGHT_SLASH, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, SUBSTITUTE, TOXIC
	; end
