 db WYRDEER

	db 103, 105,  72,  65, 105,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wyrdeer/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, ZEN_HEADBUTT, BODY_SLAM, DOUBLE_EDGE, PSYBEAM, SHOCK_WAVE, SWIFT, DIG, SLEEP_TALK, SUBSTITUTE, SHADOW_BALL, ENERGY_BALL, PSYCHIC_M, THUNDERBOLT, EARTHQUAKE, GIGA_IMPACT, HYPER_BEAM, THUNDER, SOLARBEAM
	; end
