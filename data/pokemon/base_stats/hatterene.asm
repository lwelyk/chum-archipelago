 db HATTERENE

	db  57,  90,  95,  29, 136, 103
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hatterene/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, DAZZLE_BEAM, MOONBLAST, PSYBEAM, PSYCHIC_M, SWIFT, ENERGY_BALL, GIGA_DRAIN, THUNDERBOLT, SUBSTITUTE, SHADOW_BALL, HYPER_BEAM
	; end
