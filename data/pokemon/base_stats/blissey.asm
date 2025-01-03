	db 0 ; species ID placeholder

	db 255,  10,  10,  55,  75, 135
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/blissey/front.dimensions"
	db NATURAL_CURE, SERENE_GRACE, SCRAPPY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BULLDOZE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, FOCUS_BLAST, ENERGY_BALL, CALM_MIND, SLEEP_TALK, POWERUPPUNCH, ICY_WIND, GIGA_IMPACT, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, DRAIN_PUNCH, MOONBLAST, GRASS_KNOT
	; end
