 db FURIOUSB

	db 255, 255, 255, 255, 255, 255
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GLITCH ; type
	db 1 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/furiousb/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FLAMETHROWER, ICE_BEAM, THUNDERBOLT
	; end
