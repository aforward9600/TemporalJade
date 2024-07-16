	db 0 ; species ID placeholder

	db  85, 105,  85,  40,  40,  50
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 142 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/gurdurr/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, BULLDOZE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, FOCUS_BLAST, SLEEP_TALK, POWERUPPUNCH, STONE_EDGE, IRON_HEAD, POISON_JAB, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, DRAIN_PUNCH, GRASS_KNOT
	; end
