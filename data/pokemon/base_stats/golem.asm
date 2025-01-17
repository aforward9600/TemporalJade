	db 0 ; species ID placeholder

	db  80, 120, 130,  55,  55,  65
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ELECTRIC ; type
	db 45 ; catch rate
	db 223 ; base exp
	db NO_ITEM, MAGNET ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/golem/front.dimensions"
	db MAGNET_PULL, STURDY, GALVANIZE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, BULLDOZE, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, FOCUS_BLAST, SLEEP_TALK, POWERUPPUNCH, STONE_EDGE, IRON_HEAD, GIGA_IMPACT, FIRE_PUNCH, THUNDERPUNCH, VOLT_SWITCH
	; end
