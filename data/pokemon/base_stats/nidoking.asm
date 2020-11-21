	db 0 ; species ID placeholder

	db  81,  92,  77,  85,  85,  75
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/nidoking/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, DRAGON_CLAW, CURSE, HEX, TOXIC, BULK_UP, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, HONE_CLAWS, FLAMETHROWER, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, ROCK_SLIDE, SUBSTITUTE, REST, ATTRACT, THIEF, SURF, FOCUS_BLAST, SLEEP_TALK, POWERUPPUNCH, STONE_EDGE, ICY_WIND, DRAGON_PULSE, IRON_HEAD, POISON_JAB, GIGA_DRAIN, FIRE_FANG, THUNDER_FANG, ICE_FANG, DRACO_FANG, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, PIXIE_PUNCH
	; end
