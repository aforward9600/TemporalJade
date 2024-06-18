	db 0 ; species ID placeholder

	db  55,  55,  80,  15,  70,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 140 ; catch rate
	db 64 ; base exp
	db SPELL_TAG, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/sandygast/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, PROTECT, GIGA_DRAIN, SAFEGUARD, BULLDOZE, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, THIEF, ENERGY_BALL, SLEEP_TALK, STONE_EDGE, SWORDS_DANCE, WILL_O_WISP, STRENGTH_SAP
	; end
