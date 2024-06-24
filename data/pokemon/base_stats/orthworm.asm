	db 0 ; species ID placeholder

	db  70,  85, 145,  75,  60,  65
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 25 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/orthworm/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, BULK_UP, WILD_CHARGE, HIDDEN_POWER, HYPER_BEAM, PROTECT, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, SANDSTORM, ROCK_TOMB, SUBSTITUTE, FLASH_CANNON, ROCK_SLIDE, REST, ATTRACT, THIEF, SLEEP_TALK, STONE_EDGE, IRON_HEAD, POISON_JAB, GIGA_IMPACT
	; end
