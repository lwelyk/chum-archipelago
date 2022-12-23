 db STANTLER

	db  73,  95,  62,  85,  85,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 115 ; catch rate
	db 163 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/stantler/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, EARTHQUAKE, ENERGY_BALL, FLASH, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, PSYCHIC_M, RAIN_DANCE, RETURN, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, SWIFT, THUNDER, THUNDERBOLT, TOXIC, ZEN_HEADBUTT
	; end
