	db 0 ; species ID placeholder

	db  60,  80,  70, 140,  80,  80
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GRASS ; type
	db 60 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/electrode/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, WILD_CHARGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, REFLECT, SUBSTITUTE, FLASH_CANNON, REST, ENERGY_BALL, SLEEP_TALK, NASTY_PLOT, IRON_HEAD, GIGA_IMPACT, STRENGTH_SAP, VOLT_SWITCH, GRASS_KNOT
	; end
