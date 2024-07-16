	db 0 ; species ID placeholder

	db  70,  77,  60, 118, 107,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, ELECTRIC ; type
	db 75 ; catch rate
	db 165 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/galvantula/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, WILD_CHARGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, SUBSTITUTE, FLASH_CANNON, REST, ATTRACT, THIEF, ENERGY_BALL, SLEEP_TALK, X_SCISSOR, ICY_WIND, SWORDS_DANCE, POISON_JAB, GIGA_IMPACT, THUNDER_FANG, STRENGTH_SAP, VOLT_SWITCH
	; end
