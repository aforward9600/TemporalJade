	db 0 ; species ID placeholder

	db  70, 135, 105,  20,  60, 105
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 75 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/escavalier/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, BULLDOZE, RETURN, BRICK_BREAK, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, SANDSTORM, AERIAL_ACE, SUBSTITUTE, FLASH_CANNON, REST, ATTRACT, THIEF, FOCUS_BLAST, ENERGY_BALL, SLEEP_TALK, X_SCISSOR, IRON_HEAD, SWORDS_DANCE, POISON_JAB, GIGA_IMPACT, STEEL_SLICE
	; end
