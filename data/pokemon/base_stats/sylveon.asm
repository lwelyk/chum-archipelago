 db SYLVEON

	db  95,  65,  65,  60, 110, 130
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 70 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sylveon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BITE, BODY_SLAM, CALM_MIND, CUT, DIG, DOUBLE_EDGE, FLASH, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, HYPER_VOICE, MOONBLAST, PLAY_ROUGH, RAIN_DANCE, RETURN, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, TOXIC
	; end
