 db FROSMOTH

	db  70,  65,  60,  65, 125,  90
	;   hp  atk  def  spd  sat  sdf

	db ICE, BUG ; type
	db 75 ; catch rate
	db 168 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/frosmoth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, BLIZZARD, CALM_MIND, GIGA_DRAIN, GIGA_IMPACT, HAIL, HAIL, HYPER_BEAM, ICE_BEAM, PLAY_ROUGH, SLEEP_TALK, SUBSTITUTE
	; end
