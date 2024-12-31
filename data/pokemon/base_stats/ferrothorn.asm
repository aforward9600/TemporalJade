	db 0 ; species ID placeholder

	db  74,  94, 131,  20,  54, 116
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 90 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ferrothorn/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, BULLDOZE, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, SUBSTITUTE, FLASH_CANNON, REST, ATTRACT, THIEF, ENERGY_BALL, SLEEP_TALK, IRON_HEAD, SWORDS_DANCE, POISON_JAB, GIGA_IMPACT, STEEL_SLICE, GRASS_KNOT
	; end
