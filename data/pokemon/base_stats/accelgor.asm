	db 0 ; species ID placeholder

	db  80,  70,  40, 145, 100,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 75 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/accelgor/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, SHADOW_BALL, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, SANDSTORM, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, FOCUS_BLAST, ENERGY_BALL, SLEEP_TALK, VENOSHOCK, GIGA_IMPACT, U_TURN
	; end
