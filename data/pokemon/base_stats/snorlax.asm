	db 0 ; species ID placeholder

	db 160, 110,  65,  30,  65, 110
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp
	db LEFTOVERS, LEFTOVERS ; items
	db GENDER_F12_5 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	db IMMUNITY, THICK_FAT, GLUTTONY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, BULLDOZE, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, SUBSTITUTE, ROCK_TOMB, REST, ATTRACT, SURF, FOCUS_BLAST, SLEEP_TALK, POWERUPPUNCH, ICY_WIND, IRON_HEAD, POISON_JAB, GIGA_IMPACT, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, PIXIE_PUNCH
	; end
