 db PONYTA

	db  50,  85,  55,  90,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 82 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ponyta/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DAZZLE_BEAM, PSYBEAM, PSYCHIC_M, BODY_SLAM, CALM_MIND, PLAY_ROUGH, SLEEP_TALK, SUBSTITUTE, SWIFT, ZEN_HEADBUTT
	; end
