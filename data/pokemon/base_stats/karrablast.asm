	db 0 ; species ID placeholder

	db  50,  75,  45,  60,  40,  45
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 200 ; catch rate
	db 63 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/karrablast/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, ENERGY_BALL, SLEEP_TALK, X_SCISSOR, SWORDS_DANCE, POISON_JAB
	; end
