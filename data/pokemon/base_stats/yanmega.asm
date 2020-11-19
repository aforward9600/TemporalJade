	db 0 ; species ID placeholder

	db  96,  66,  86,  95, 116,  56
	;   hp  atk  def  spd  sat  sdf

	db BUG, ROCK ; type
	db 30 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/yanmega/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, SANDSTORM, ROCK_TOMB, SUBSTITUTE, FLASH_CANNON, ROCK_SLIDE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FOCUS_BLAST, DREAM_EATER, SLEEP_TALK, STONE_EDGE, SWORDS_DANCE, GIGA_IMPACT
	; end