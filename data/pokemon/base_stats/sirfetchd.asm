 db SIRFETCHD

	db  62, 135,  95,  65,  68,  82
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sirfetchd/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SUBMISSION, BODY_SLAM, CUT, DOUBLE_EDGE, FLY, HEADBUTT, HIDDEN_POWER, NIGHT_SLASH, POISON_JAB, RETURN, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC, STRENGTH
	; end
