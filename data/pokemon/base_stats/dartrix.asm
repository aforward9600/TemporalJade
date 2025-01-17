	db 0 ; species ID placeholder

	db  78,  75,  75,  52,  70,  70
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 147 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/dartrix/front.dimensions"
	db OVERGROW, OVERGROW, LONG_REACH ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, RETURN, DOUBLE_TEAM, ACROBATICS, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, STEEL_WING, FLY, ROOST, ENERGY_BALL, SLEEP_TALK, SWORDS_DANCE, STRENGTH_SAP, GRASS_KNOT
	; end
