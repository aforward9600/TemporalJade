	db 0 ; species ID placeholder

	db  40,  55,  99,  47,  40,  79
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 120 ; catch rate
	db 126 ; base exp
	db PECHA_BERRY, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/whirlipede/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, REST, ATTRACT, SLEEP_TALK, X_SCISSOR, SWORDS_DANCE, POISON_JAB, VENOSHOCK
	; end
