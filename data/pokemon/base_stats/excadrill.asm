 db EXCADRILL

	db 110, 135,  60,  88,  50,  65
	;   hp  atk  def  spd  sat  sdf

	db GROUND, STEEL ; type
	db 60 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/excadrill/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CUT, DIG, DIG, EARTHQUAKE, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, IRON_HEAD, POISON_JAB, RETURN, ROCK_SLIDE, ROCK_SLIDE, SANDSTORM, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC
	; end
