 db STUFFUL

	db  70,  75,  50,  50,  45,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FIGHTING ; type
	db 140 ; catch rate
	db 68 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/stufful/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DOUBLE_EDGE, EARTHQUAKE, HIDDEN_POWER, ICE_PUNCH, IRON_HEAD, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBMISSION, SUBSTITUTE, TOXIC, ZEN_HEADBUTT
	; end
