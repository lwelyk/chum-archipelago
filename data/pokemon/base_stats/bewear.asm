 db BEWEAR

	db 120, 125,  80,  60,  55,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FIGHTING ; type
	db 70 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bewear/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DOUBLE_EDGE, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, ICE_PUNCH, IRON_HEAD, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC, ZEN_HEADBUTT
	; end
